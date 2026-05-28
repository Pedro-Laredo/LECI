import * as THREE from 'three';

export class SceneSerializer {
  constructor(deps) {
    this.scene = deps.scene;
    this.userObjects = deps.userObjects;
    this.transformCtrl = deps.transformCtrl;
    this.createPrimitive = deps.createPrimitive;
    this.createUserLight = deps.createUserLight;
    this.updateShadowOpacity = deps.updateShadowOpacity;
    this.textureLoader = deps.textureLoader;
    this.selectObject = deps.selectObject;
    this.refreshObjectList = deps.refreshObjectList;
    this.resetObjectCounter = deps.resetObjectCounter;
  }

  serializeScene() {
    return this.userObjects.map((obj) => {
      const base = {
        name:       obj.name,
        objectType: obj.userData.objectType,
        position:   obj.position.toArray(),
        rotation:   [obj.rotation.x, obj.rotation.y, obj.rotation.z],
        scale:      obj.scale.toArray(),
      };

      if (obj.userData.objectType === 'mesh') {
        base.primitiveType = obj.userData.primitiveType;
        base.color         = '#' + obj.material.color.getHexString();
        base.metalness     = obj.material.metalness;
        base.roughness     = obj.material.roughness;
        base.opacity       = obj.material.opacity;
        base.wireframe     = obj.material.wireframe;

        if (obj.userData.textureDataURL) {
          base.textureDataURL = obj.userData.textureDataURL;
          base.texRepeatX     = obj.material.map?.repeat.x ?? 1;
          base.texRepeatY     = obj.material.map?.repeat.y ?? 1;
        }
      } else if (obj.userData.objectType === 'light') {
        base.lightType   = obj.userData.lightType;
        base.lightColor  = '#' + obj.color.getHexString();
        base.intensity   = obj.intensity;
        base.distance    = obj.distance || 0;
        base.castShadow  = obj.castShadow;
        if (obj.userData.lightType === 'spot') {
          base.angle = obj.angle;
        }
      }

      return base;
    });
  }

  saveScene() {
    const json = JSON.stringify(this.serializeScene(), null, 2);
    const blob = new Blob([json], { type: 'application/json' });
    const url  = URL.createObjectURL(blob);
    const a    = document.createElement('a');
    a.href     = url;
    a.download = 'scene.json';
    a.click();
    URL.revokeObjectURL(url);
  }

  loadScene(json) {
    while (this.userObjects.length) {
      const obj = this.userObjects.pop();
      this.transformCtrl.detach();
      this.scene.remove(obj);
      if (obj.userData.objectType === 'light') {
        if (obj.userData.helper) {
          this.scene.remove(obj.userData.helper);
          obj.userData.helper.dispose?.();
        }
        if (obj.target) this.scene.remove(obj.target);
      } else {
        obj.geometry.dispose();
        if (obj.material.map) obj.material.map.dispose();
        obj.material.dispose();
      }
    }
    this.selectObject(null);
    this.resetObjectCounter();

    const data = JSON.parse(json);
    data.forEach((entry) => {
      if (entry.objectType === 'mesh') {
        this.createPrimitive(entry.primitiveType);
        const mesh = this.userObjects[this.userObjects.length - 1];
        mesh.name = entry.name;
        mesh.position.fromArray(entry.position);
        mesh.rotation.set(entry.rotation[0], entry.rotation[1], entry.rotation[2]);
        mesh.scale.fromArray(entry.scale);
        mesh.material.color.set(entry.color);
        mesh.material.metalness = entry.metalness;
        mesh.material.roughness = entry.roughness;
        mesh.material.opacity   = entry.opacity ?? 1;
        mesh.material.wireframe = entry.wireframe;
        this.updateShadowOpacity(mesh);

        if (entry.textureDataURL) {
          const tex = this.textureLoader.load(entry.textureDataURL);
          tex.wrapS = THREE.RepeatWrapping;
          tex.wrapT = THREE.RepeatWrapping;
          tex.repeat.set(entry.texRepeatX || 1, entry.texRepeatY || 1);
          tex.colorSpace = THREE.SRGBColorSpace;
          mesh.material.map = tex;
          mesh.material.needsUpdate = true;
          mesh.userData.textureDataURL = entry.textureDataURL;
        }
      } else if (entry.objectType === 'light') {
        this.createUserLight(entry.lightType);
        const light = this.userObjects[this.userObjects.length - 1];
        light.name = entry.name;
        light.position.fromArray(entry.position);
        light.rotation.set(entry.rotation[0], entry.rotation[1], entry.rotation[2]);
        light.color.set(entry.lightColor);
        light.intensity  = entry.intensity;
        light.castShadow = entry.castShadow;
        if ('distance' in light) light.distance = entry.distance;
        if (entry.lightType === 'spot' && entry.angle) {
          light.angle = entry.angle;
        }
        if (light.userData.helper) light.userData.helper.update();
      }
    });

    this.selectObject(null);
    this.refreshObjectList();
  }
}
