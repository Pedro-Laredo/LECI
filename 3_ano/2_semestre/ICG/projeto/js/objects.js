import * as THREE from 'three';
import { GLTFLoader } from 'three/addons/loaders/GLTFLoader.js';

function capitalise(s) { return s.charAt(0).toUpperCase() + s.slice(1); }

export class ObjectManager {
  constructor(scene, userObjects, callbacks) {
    this.scene = scene;
    this.userObjects = userObjects;
    // callbacks expects: { selectObject, refreshObjectList, getUIState }
    this.callbacks = callbacks;
    this.objectCounter = 0;
  }

  // ════════════════════════════════════════════════════════════════
  //  External Model Loader
  // ════════════════════════════════════════════════════════════════
  loadExternalModel(arrayBuffer, filename) {
    const loader = new GLTFLoader();
    loader.parse(arrayBuffer, '', (gltf) => {
      const model = gltf.scene;

      model.traverse((child) => {
        if (child.isMesh) {
          child.castShadow = true;
          child.receiveShadow = true;
          if (child.material && child.material.transparent) {
            this.applyTransparentShadow(child);
          }
        }
      });

      const group = new THREE.Group();
      group.add(model);

      this.objectCounter++;
      // Clean up the filename for display
      const displayName = filename.split('.')[0];
      group.name = `${displayName}_${this.objectCounter}`;
      group.userData.objectType = 'mesh'; // Treat as mesh for selection/transform
      group.userData.isExternalModel = true;

      // Adjust height to rest on the ground
      const box = new THREE.Box3().setFromObject(group);
      model.position.y = -box.min.y;

      this.scene.add(group);
      this.userObjects.push(group);
      this.callbacks.selectObject(group);
      this.callbacks.refreshObjectList();
    }, (error) => {
      console.error('Error loading external model:', error);
      alert('Failed to load 3D model. Make sure it is a valid .glb or standalone .gltf file.');
    });
  }

  // ════════════════════════════════════════════════════════════════
  //  Transparent Shadow Support
  // ════════════════════════════════════════════════════════════════
  applyTransparentShadow(mesh) {
    const opacity = mesh.material.opacity;

    const depthMat = new THREE.MeshDepthMaterial({
      depthPacking: THREE.RGBADepthPacking,
    });
    depthMat.onBeforeCompile = (shader) => {
      shader.uniforms.uOpacity = { value: opacity };
      shader.fragmentShader = 'uniform float uOpacity;\n' + shader.fragmentShader;
      shader.fragmentShader = shader.fragmentShader.replace(
        'void main() {',
        `void main() {
          float dither = fract(sin(dot(gl_FragCoord.xy, vec2(12.9898, 78.233))) * 43758.5453);
          if (dither > uOpacity) discard;`
      );
      depthMat.userData.shader = shader;
    };
    mesh.customDepthMaterial = depthMat;

    const distMat = new THREE.MeshDistanceMaterial();
    distMat.onBeforeCompile = (shader) => {
      shader.uniforms.uOpacity = { value: opacity };
      shader.fragmentShader = 'uniform float uOpacity;\n' + shader.fragmentShader;
      shader.fragmentShader = shader.fragmentShader.replace(
        'void main() {',
        `void main() {
          float dither = fract(sin(dot(gl_FragCoord.xy, vec2(12.9898, 78.233))) * 43758.5453);
          if (dither > uOpacity) discard;`
      );
      distMat.userData.shader = shader;
    };
    mesh.customDistanceMaterial = distMat;
  }

  updateShadowOpacity(mesh) {
    const opacity = mesh.material.opacity;
    if (mesh.customDepthMaterial?.userData.shader) {
      mesh.customDepthMaterial.userData.shader.uniforms.uOpacity.value = opacity;
    }
    if (mesh.customDistanceMaterial?.userData.shader) {
      mesh.customDistanceMaterial.userData.shader.uniforms.uOpacity.value = opacity;
    }
  }

  // ════════════════════════════════════════════════════════════════
  //  Primitive Factories
  // ════════════════════════════════════════════════════════════════
  createPrimitive(type) {
    let geometry;
    switch (type) {
      case 'box':      geometry = new THREE.BoxGeometry(1, 1, 1);               break;
      case 'sphere':   geometry = new THREE.SphereGeometry(0.6, 32, 32);        break;
      case 'cone':     geometry = new THREE.ConeGeometry(0.6, 1.2, 32);        break;
      case 'torus':    geometry = new THREE.TorusGeometry(0.5, 0.2, 16, 48);   break;
      case 'cylinder': geometry = new THREE.CylinderGeometry(0.5, 0.5, 1.2, 32); break;
      case 'plane':    geometry = new THREE.PlaneGeometry(2, 2);                break;
      default: return;
    }

    const ui = this.callbacks.getUIState();
    const material = new THREE.MeshStandardMaterial({
      color:       new THREE.Color(ui.color),
      metalness:   ui.metalness,
      roughness:   ui.roughness,
      wireframe:   ui.wireframe,
      transparent: true,
      opacity:     ui.opacity,
      side:        type === 'plane' ? THREE.DoubleSide : THREE.FrontSide,
    });

    const mesh = new THREE.Mesh(geometry, material);
    mesh.castShadow    = true;
    mesh.receiveShadow = true;
    mesh.position.y    = 1;
    this.applyTransparentShadow(mesh);

    this.objectCounter++;
    mesh.name = `${capitalise(type)}_${this.objectCounter}`;
    mesh.userData.primitiveType = type;
    mesh.userData.objectType    = 'mesh';

    this.scene.add(mesh);
    this.userObjects.push(mesh);
    this.callbacks.selectObject(mesh);
    this.callbacks.refreshObjectList();
    return mesh;
  }

  // ════════════════════════════════════════════════════════════════
  //  Light Icon Meshes
  // ════════════════════════════════════════════════════════════════
  createLightIcon(type) {
    const group = new THREE.Group();
    group.userData._isLightIcon = true;
    group.renderOrder = 999;

    const darkMetal = new THREE.MeshBasicMaterial({ color: 0x222222, depthTest: false });
    const silver    = new THREE.MeshBasicMaterial({ color: 0x888888, depthTest: false });
    const glass     = new THREE.MeshBasicMaterial({ color: 0xffee88, depthTest: false, transparent: true, opacity: 0.85 });
    const glow      = new THREE.MeshBasicMaterial({ color: 0xffdd44, depthTest: false, transparent: true, opacity: 0.7 });

    switch (type) {
      case 'spot': {
        const lensGeo = new THREE.CircleGeometry(0.2, 20);
        const lens = new THREE.Mesh(lensGeo, glass);
        lens.position.y = 0;
        lens.rotation.x = Math.PI / 2;
        group.add(lens);

        const bezelGeo = new THREE.TorusGeometry(0.22, 0.02, 8, 20);
        const bezel = new THREE.Mesh(bezelGeo, darkMetal);
        bezel.position.y = 0.02;
        bezel.rotation.x = Math.PI / 2;
        group.add(bezel);

        const headGeo = new THREE.CylinderGeometry(0.12, 0.22, 0.2, 16);
        const head = new THREE.Mesh(headGeo, silver);
        head.position.y = 0.02 + 0.1;
        group.add(head);

        const bodyGeo = new THREE.CylinderGeometry(0.1, 0.12, 0.15, 12);
        const body = new THREE.Mesh(bodyGeo, darkMetal);
        body.position.y = 0.22 + 0.075;
        group.add(body);

        const handleGeo = new THREE.CylinderGeometry(0.1, 0.1, 0.55, 12);
        const handle = new THREE.Mesh(handleGeo, darkMetal);
        handle.position.y = 0.37 + 0.275;
        group.add(handle);

        const ringGeo = new THREE.TorusGeometry(0.105, 0.015, 8, 16);
        for (let i = 0; i < 4; i++) {
          const ring = new THREE.Mesh(ringGeo, silver);
          ring.position.y = 0.42 + i * 0.1;
          ring.rotation.x = Math.PI / 2;
          group.add(ring);
        }

        const btnGeo = new THREE.SphereGeometry(0.03, 8, 8);
        const btn = new THREE.Mesh(btnGeo, new THREE.MeshBasicMaterial({ color: 0xff4444, depthTest: false }));
        btn.position.set(0.1, 0.55, 0);
        group.add(btn);

        const glowGeo = new THREE.ConeGeometry(0.3, 0.5, 16, 1, true);
        const glowMat = new THREE.MeshBasicMaterial({
          color: 0xffee66, transparent: true, opacity: 0.12,
          depthTest: false, side: THREE.DoubleSide,
        });
        const glowCone = new THREE.Mesh(glowGeo, glowMat);
        glowCone.position.y = -0.25;
        group.add(glowCone);
        break;
      }
      case 'point': {
        const bulbGeo = new THREE.SphereGeometry(0.2, 16, 16);
        const bulb = new THREE.Mesh(bulbGeo, glass);
        bulb.position.y = 0.15;
        group.add(bulb);

        const filGeo = new THREE.TorusGeometry(0.06, 0.01, 6, 12);
        const filMat = new THREE.MeshBasicMaterial({ color: 0xffaa00, depthTest: false });
        const fil = new THREE.Mesh(filGeo, filMat);
        fil.position.y = 0.15;
        group.add(fil);

        const baseGeo = new THREE.CylinderGeometry(0.1, 0.12, 0.12, 12);
        const base = new THREE.Mesh(baseGeo, silver);
        base.position.y = -0.03;
        group.add(base);

        const tipGeo = new THREE.SphereGeometry(0.06, 8, 8);
        const tip = new THREE.Mesh(tipGeo, darkMetal);
        tip.position.y = -0.09;
        group.add(tip);

        const auraGeo = new THREE.SphereGeometry(0.32, 12, 12);
        const auraMat = new THREE.MeshBasicMaterial({
          color: 0xffee66, transparent: true, opacity: 0.12,
          depthTest: false, side: THREE.BackSide,
        });
        group.add(new THREE.Mesh(auraGeo, auraMat));
        break;
      }
      case 'directional': {
        const discGeo = new THREE.CircleGeometry(0.2, 20);
        const disc = new THREE.Mesh(discGeo, glass);
        group.add(disc);

        const disc2 = disc.clone();
        disc2.rotation.y = Math.PI;
        group.add(disc2);

        const rayGeo = new THREE.BoxGeometry(0.06, 0.2, 0.03);
        const rayMat = new THREE.MeshBasicMaterial({ color: 0xffcc33, depthTest: false });
        for (let i = 0; i < 8; i++) {
          const ray = new THREE.Mesh(rayGeo, rayMat);
          const angle = (i / 8) * Math.PI * 2;
          ray.position.set(Math.cos(angle) * 0.35, Math.sin(angle) * 0.35, 0);
          ray.rotation.z = angle;
          group.add(ray);
        }

        const arrowGeo = new THREE.ConeGeometry(0.1, 0.25, 8);
        const arrow = new THREE.Mesh(arrowGeo, glow);
        arrow.position.y = -0.35;
        arrow.rotation.x = Math.PI;
        group.add(arrow);
        break;
      }
    }
    return group;
  }

  // ════════════════════════════════════════════════════════════════
  //  Light Factories
  // ════════════════════════════════════════════════════════════════
  createUserLight(type) {
    let light, helper;

    switch (type) {
      case 'point': {
        light = new THREE.PointLight(0xffffff, 5, 20);
        light.position.set(0, 4, 0);
        light.castShadow = true;
        light.shadow.mapSize.set(1024, 1024);
        helper = new THREE.PointLightHelper(light, 0.4);
        break;
      }
      case 'spot': {
        light = new THREE.SpotLight(0xffffff, 5, 20, Math.PI / 4, 0.3, 1);
        light.position.set(0, 6, 0);
        light.castShadow = true;
        light.shadow.mapSize.set(1024, 1024);
        light.target.position.set(0, 0, 0);
        this.scene.add(light.target);
        light.userData.targetOffset = new THREE.Vector3(0, -6, 0);
        helper = new THREE.SpotLightHelper(light);
        break;
      }
      case 'directional': {
        light = new THREE.DirectionalLight(0xffffff, 1.5);
        light.position.set(5, 10, 5);
        light.castShadow = true;
        light.shadow.mapSize.set(2048, 2048);
        light.shadow.camera.near = 0.5;
        light.shadow.camera.far  = 50;
        light.shadow.camera.left = light.shadow.camera.bottom = -15;
        light.shadow.camera.right = light.shadow.camera.top    =  15;
        light.target.position.set(0, 0, 0);
        this.scene.add(light.target);
        helper = new THREE.DirectionalLightHelper(light, 1);
        break;
      }
      default: return;
    }

    const icon = this.createLightIcon(type);

    this.objectCounter++;
    light.name = `${capitalise(type)}Light_${this.objectCounter}`;
    light.userData.objectType = 'light';
    light.userData.lightType  = type;
    light.userData.helper     = helper;
    light.userData.icon       = icon;

    this.scene.add(light);
    this.scene.add(helper);
    if (icon) {
      light.add(icon);
    }

    this.userObjects.push(light);
    this.callbacks.selectObject(light);
    this.callbacks.refreshObjectList();
    return light;
  }
}
