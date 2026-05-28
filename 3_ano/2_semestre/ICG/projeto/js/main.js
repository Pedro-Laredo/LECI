// ════════════════════════════════════════════════════════════════
//  ICG – 3D Scene Editor   (Three.js r164)
//  Features: primitives, lights, textures, shadows, park env
// ════════════════════════════════════════════════════════════════
import * as THREE from 'three';
import { OrbitControls }    from 'three/addons/controls/OrbitControls.js';
import { TransformControls } from 'three/addons/controls/TransformControls.js';
import { setupEnvironment, animateEnvironment } from './environment.js';
import { FPSControls } from './fps-controls.js';
import { SceneSerializer } from './serialization.js';
import { ObjectManager } from './objects.js';

// ── DOM References ──────────────────────────────────────────────
const canvas     = document.getElementById('canvas3d');
const objectList = document.getElementById('object-list');
const fileInput  = document.getElementById('file-input');

// Primitive buttons
const btnBox      = document.getElementById('btn-box');
const btnSphere   = document.getElementById('btn-sphere');
const btnCone     = document.getElementById('btn-cone');
const btnTorus    = document.getElementById('btn-torus');
const btnCylinder = document.getElementById('btn-cylinder');
const btnPlane    = document.getElementById('btn-plane');

// Model buttons
const btnLoadModel = document.getElementById('btn-load-model');
const modelInput   = document.getElementById('model-input');

// Light buttons
const btnPointLight = document.getElementById('btn-pointlight');
const btnSpotLight  = document.getElementById('btn-spotlight');
const btnDirLight   = document.getElementById('btn-dirlight');

// Transform buttons
const btnTranslate = document.getElementById('btn-translate');
const btnRotate    = document.getElementById('btn-rotate');
const btnScale     = document.getElementById('btn-scale');

// Material inputs
const inputColor     = document.getElementById('input-color');
const inputMetalness = document.getElementById('input-metalness');
const inputRoughness = document.getElementById('input-roughness');
const inputOpacity   = document.getElementById('input-opacity');
const inputWireframe = document.getElementById('input-wireframe');
const btnLoadTexture   = document.getElementById('btn-load-texture');
const btnRemoveTexture = document.getElementById('btn-remove-texture');
const textureInput     = document.getElementById('texture-input');
const inputTexRepeatX  = document.getElementById('input-tex-repeat-x');
const inputTexRepeatY  = document.getElementById('input-tex-repeat-y');

// Light inputs
const lightPanel         = document.getElementById('light-panel');
const materialPanel      = document.getElementById('material-panel');
const inputLightColor    = document.getElementById('input-light-color');
const inputLightIntensity = document.getElementById('input-light-intensity');
const inputLightDistance  = document.getElementById('input-light-distance');
const labelLightAngle    = document.getElementById('label-light-angle');
const inputLightAngle    = document.getElementById('input-light-angle');
const inputLightShadow   = document.getElementById('input-light-shadow');

// Environment inputs
const inputAmbientLighting = document.getElementById('input-ambient-lighting');
const inputSunIntensity    = document.getElementById('input-sun-intensity');
const inputFogDensity      = document.getElementById('input-fog-density');
const inputShowGrid        = document.getElementById('input-show-grid');
const inputAnimateEnv      = document.getElementById('input-animate-env');

// Scene actions
const btnDelete = document.getElementById('btn-delete');
const btnSave   = document.getElementById('btn-save');
const btnLoad   = document.getElementById('btn-load');

// First-person mode
const btnFps     = document.getElementById('btn-fps');
const fpsOverlay = document.getElementById('fps-overlay');

// ════════════════════════════════════════════════════════════════
//  Renderer
// ════════════════════════════════════════════════════════════════
const renderer = new THREE.WebGLRenderer({ canvas, antialias: true });
renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
renderer.setSize(window.innerWidth, window.innerHeight);
renderer.shadowMap.enabled = true;
renderer.shadowMap.type    = THREE.PCFSoftShadowMap;
renderer.toneMapping       = THREE.ACESFilmicToneMapping;
renderer.toneMappingExposure = 1.4;

// ════════════════════════════════════════════════════════════════
//  Scene
// ════════════════════════════════════════════════════════════════
const scene = new THREE.Scene();
scene.fog   = new THREE.FogExp2(0x88bbdd, 0.015);

// ════════════════════════════════════════════════════════════════
//  Camera
// ════════════════════════════════════════════════════════════════
const camera = new THREE.PerspectiveCamera(50, window.innerWidth / window.innerHeight, 0.1, 500);
camera.position.set(10, 8, 14);

// ════════════════════════════════════════════════════════════════
//  Controls
// ════════════════════════════════════════════════════════════════
const orbit = new OrbitControls(camera, canvas);
orbit.enableDamping = true;
orbit.dampingFactor = 0.08;
orbit.maxPolarAngle = Math.PI / 2.05;   // prevent going under ground

const transformCtrl = new TransformControls(camera, canvas);
transformCtrl.addEventListener('dragging-changed', (e) => {
  orbit.enabled = !e.value;
});
scene.add(transformCtrl);

const fpsControls = new FPSControls(camera, canvas, orbit, transformCtrl, btnFps, fpsOverlay);

// ════════════════════════════════════════════════════════════════
//  Texture Loader
// ════════════════════════════════════════════════════════════════
const textureLoader = new THREE.TextureLoader();

const groundRef = { ground: null };
const { ambientLight, hemiLight, sunLight, skyDome, gridHelper, envGroup, cloudGroup } = setupEnvironment(scene, groundRef);
// Get reference to ground for raycaster usage
Object.defineProperty(window, 'ground', { get: () => groundRef.ground });
const ground = groundRef.ground;

// ════════════════════════════════════════════════════════════════
//  State
// ════════════════════════════════════════════════════════════════
let selectedObject = null;
const userObjects  = [];          // user-created meshes & lights

const getUIState = () => ({
  color: inputColor.value,
  metalness: parseFloat(inputMetalness.value),
  roughness: parseFloat(inputRoughness.value),
  wireframe: inputWireframe.checked,
  opacity: parseFloat(inputOpacity.value),
});

const objManager = new ObjectManager(scene, userObjects, {
  selectObject: (obj) => selectObject(obj),
  refreshObjectList: () => refreshObjectList(),
  getUIState
});

// ════════════════════════════════════════════════════════════════
//  Selection
// ════════════════════════════════════════════════════════════════
function selectObject(obj) {
  selectedObject = obj;
  if (obj) {
    transformCtrl.attach(obj);
    syncUIToObject(obj);
  } else {
    transformCtrl.detach();
  }
  updatePanelVisibility();
  refreshObjectList();
}

function updatePanelVisibility() {
  if (selectedObject && selectedObject.userData.objectType === 'light') {
    lightPanel.style.display    = '';
    materialPanel.style.display = 'none';
  } else {
    lightPanel.style.display    = 'none';
    materialPanel.style.display = '';
  }
}

function syncUIToObject(obj) {
  if (obj.userData.objectType === 'light') {
    // Sync light panel
    inputLightColor.value     = '#' + obj.color.getHexString();
    inputLightIntensity.value = obj.intensity;
    inputLightDistance.value   = obj.distance || 20;
    inputLightShadow.checked  = obj.castShadow;

    // Show angle control only for SpotLight
    if (obj.userData.lightType === 'spot') {
      labelLightAngle.style.display = '';
      inputLightAngle.value = THREE.MathUtils.radToDeg(obj.angle);
    } else {
      labelLightAngle.style.display = 'none';
    }
  } else {
    // Sync material panel
    const mat = obj.material;
    inputColor.value       = '#' + mat.color.getHexString();
    inputMetalness.value   = mat.metalness;
    inputRoughness.value   = mat.roughness;
    inputOpacity.value     = mat.opacity;
    inputWireframe.checked = mat.wireframe;

    if (mat.map) {
      inputTexRepeatX.value = mat.map.repeat.x;
      inputTexRepeatY.value = mat.map.repeat.y;
    } else {
      inputTexRepeatX.value = 1;
      inputTexRepeatY.value = 1;
    }
  }
}

// ── Raycaster click to select ───────────────────────────────────
const raycaster = new THREE.Raycaster();
const pointer   = new THREE.Vector2();
let pointerDownTime = 0;

canvas.addEventListener('pointerdown', (e) => {
  if (e.target !== canvas) return;
  pointerDownTime = Date.now();
});

canvas.addEventListener('pointerup', (e) => {
  if (e.target !== canvas) return;
  // Only select on short clicks (not drags)
  if (Date.now() - pointerDownTime > 250) return;

  pointer.x =  (e.clientX / window.innerWidth)  * 2 - 1;
  pointer.y = -(e.clientY / window.innerHeight) * 2 + 1;

  raycaster.setFromCamera(pointer, camera);

  // Build a list of selectable objects (meshes) and light helpers
  const selectableMeshes = userObjects.filter(o => o.userData.objectType === 'mesh');
  const hits = raycaster.intersectObjects(selectableMeshes, false);

  if (hits.length > 0) {
    selectObject(hits[0].object);
    return;
  }

  // Try selecting lights by their helpers
  const helpers = userObjects
    .filter(o => o.userData.objectType === 'light' && o.userData.helper)
    .map(o => ({ light: o, helper: o.userData.helper }));

  for (const { light, helper } of helpers) {
    const helperHits = raycaster.intersectObject(helper, true);
    if (helperHits.length > 0) {
      selectObject(light);
      return;
    }
  }
});

canvas.addEventListener('dblclick', () => selectObject(null));

// ════════════════════════════════════════════════════════════════
//  Object List Panel
// ════════════════════════════════════════════════════════════════
function refreshObjectList() {
  objectList.innerHTML = '';
  userObjects.forEach((obj) => {
    const li   = document.createElement('li');
    li.classList.toggle('selected', obj === selectedObject);

    const isLight = obj.userData.objectType === 'light';

    if (isLight) {
      const icon = document.createElement('span');
      icon.className = 'icon';
      icon.textContent = obj.userData.lightType === 'point' ? '💡'
                       : obj.userData.lightType === 'spot'  ? '🔦' : '☀';
      li.appendChild(icon);
    } else {
      const dot = document.createElement('span');
      dot.className = 'dot';
      dot.style.background = '#' + obj.material.color.getHexString();
      li.appendChild(dot);
    }

    li.appendChild(document.createTextNode(obj.name));
    li.addEventListener('click', () => selectObject(obj));
    objectList.appendChild(li);
  });
}

// ════════════════════════════════════════════════════════════════
//  Material Controls
// ════════════════════════════════════════════════════════════════
inputColor.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  selectedObject.material.color.set(inputColor.value);
  refreshObjectList();
});

inputMetalness.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  selectedObject.material.metalness = parseFloat(inputMetalness.value);
});

inputRoughness.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  selectedObject.material.roughness = parseFloat(inputRoughness.value);
});

inputOpacity.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  selectedObject.material.opacity = parseFloat(inputOpacity.value);
  objManager.updateShadowOpacity.bind(objManager)(selectedObject);
});

inputWireframe.addEventListener('change', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  selectedObject.material.wireframe = inputWireframe.checked;
});

// ── Texture ─────────────────────────────────────────────────────
btnLoadTexture.addEventListener('click', () => textureInput.click());

textureInput.addEventListener('change', (e) => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  const file = e.target.files[0];
  if (!file) return;

  const reader = new FileReader();
  reader.onload = () => {
    const tex = textureLoader.load(reader.result);
    tex.wrapS = THREE.RepeatWrapping;
    tex.wrapT = THREE.RepeatWrapping;
    tex.repeat.set(parseFloat(inputTexRepeatX.value), parseFloat(inputTexRepeatY.value));
    tex.colorSpace = THREE.SRGBColorSpace;
    selectedObject.material.map = tex;
    selectedObject.material.needsUpdate = true;
    // Store data URL so we can serialize it
    selectedObject.userData.textureDataURL = reader.result;
  };
  reader.readAsDataURL(file);
  textureInput.value = '';
});

btnRemoveTexture.addEventListener('click', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  if (selectedObject.material.map) {
    selectedObject.material.map.dispose();
    selectedObject.material.map = null;
    selectedObject.material.needsUpdate = true;
    delete selectedObject.userData.textureDataURL;
  }
});

inputTexRepeatX.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  if (selectedObject.material.map) {
    selectedObject.material.map.repeat.x = parseFloat(inputTexRepeatX.value);
  }
});

inputTexRepeatY.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'mesh') return;
  if (selectedObject.material.map) {
    selectedObject.material.map.repeat.y = parseFloat(inputTexRepeatY.value);
  }
});

// ════════════════════════════════════════════════════════════════
//  Light Controls
// ════════════════════════════════════════════════════════════════
inputLightColor.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'light') return;
  selectedObject.color.set(inputLightColor.value);
  if (selectedObject.userData.helper) selectedObject.userData.helper.update();
  // Sync icon glow color to match the light
  if (selectedObject.userData.icon) {
    selectedObject.userData.icon.traverse((child) => {
      if (child.isMesh && child.material && child.material.color) {
        // Tint emissive parts (glass, glow) but keep dark/silver parts
        const hex = child.material.color.getHex();
        if (hex !== 0x222222 && hex !== 0x888888 && hex !== 0xff4444) {
          child.material.color.set(inputLightColor.value);
        }
      }
    });
  }
});

inputLightIntensity.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'light') return;
  selectedObject.intensity = parseFloat(inputLightIntensity.value);
});

inputLightDistance.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'light') return;
  if ('distance' in selectedObject) {
    selectedObject.distance = parseFloat(inputLightDistance.value);
  }
});

inputLightAngle.addEventListener('input', () => {
  if (!selectedObject || selectedObject.userData.lightType !== 'spot') return;
  selectedObject.angle = THREE.MathUtils.degToRad(parseFloat(inputLightAngle.value));
  if (selectedObject.userData.helper) selectedObject.userData.helper.update();
});

inputLightShadow.addEventListener('change', () => {
  if (!selectedObject || selectedObject.userData.objectType !== 'light') return;
  selectedObject.castShadow = inputLightShadow.checked;
});

// ════════════════════════════════════════════════════════════════
//  Environment Controls
// ════════════════════════════════════════════════════════════════
function updateAmbientLighting() {
  const enabled = inputAmbientLighting.checked;
  ambientLight.visible = enabled;
  hemiLight.visible    = enabled;
  sunLight.visible     = enabled;
  // When ambient is off, the sky dome goes dark for dramatic effect
  skyDome.material.uniforms.topColor.value.set(enabled ? 0x4488cc : 0x050510);
  skyDome.material.uniforms.bottomColor.value.set(enabled ? 0xc8e6ff : 0x0a0a18);
}

inputAmbientLighting.addEventListener('change', updateAmbientLighting);

inputSunIntensity.addEventListener('input', () => {
  sunLight.intensity = parseFloat(inputSunIntensity.value);
});

inputFogDensity.addEventListener('input', () => {
  scene.fog.density = parseFloat(inputFogDensity.value);
});

inputShowGrid.addEventListener('change', () => {
  gridHelper.visible = inputShowGrid.checked;
});

// ════════════════════════════════════════════════════════════════
//  Transform Mode
// ════════════════════════════════════════════════════════════════
function setTransformMode(mode) {
  transformCtrl.setMode(mode);
  // Use world space for translation so axes always align with world X/Y/Z
  // (fixes SpotLight whose local frame is rotated toward its target)
  transformCtrl.setSpace(mode === 'translate' ? 'world' : 'local');
  btnTranslate.classList.toggle('active', mode === 'translate');
  btnRotate.classList.toggle('active',    mode === 'rotate');
  btnScale.classList.toggle('active',     mode === 'scale');
}

btnTranslate.addEventListener('click', () => setTransformMode('translate'));
btnRotate.addEventListener('click',    () => setTransformMode('rotate'));
btnScale.addEventListener('click',     () => setTransformMode('scale'));

window.addEventListener('keydown', (e) => {
  // Don't intercept when typing in inputs
  if (e.target.tagName === 'INPUT') return;

  // F key toggles first-person mode
  if (e.key.toLowerCase() === 'f') {
    fpsControls.toggleFpsMode();
    return;
  }

  // Block editor shortcuts while in FPS mode
  if (fpsControls.fpsMode) return;

  switch (e.key.toLowerCase()) {
    case 'w': setTransformMode('translate'); break;
    case 'e': setTransformMode('rotate');    break;
    case 'r': setTransformMode('scale');     break;
    case 'delete':
    case 'backspace':
      deleteSelected();
      break;
  }
});

// ════════════════════════════════════════════════════════════════
//  Delete
// ════════════════════════════════════════════════════════════════
function deleteSelected() {
  if (!selectedObject) return;
  transformCtrl.detach();

  const obj = selectedObject;
  scene.remove(obj);

  if (obj.userData.objectType === 'light') {
    // Remove helper
    if (obj.userData.helper) {
      scene.remove(obj.userData.helper);
      obj.userData.helper.dispose?.();
    }
    // Remove icon (it's a Group with many children)
    if (obj.userData.icon) {
      obj.userData.icon.traverse((child) => {
        if (child.isMesh) {
          child.geometry?.dispose();
          child.material?.dispose();
        }
      });
      obj.remove(obj.userData.icon);
    }
    // Remove target if exists
    if (obj.target) scene.remove(obj.target);
    obj.dispose?.();
  } else {
    obj.geometry.dispose();
    if (obj.material.map) obj.material.map.dispose();
    obj.material.dispose();
  }

  const idx = userObjects.indexOf(obj);
  if (idx !== -1) userObjects.splice(idx, 1);
  selectedObject = null;
  updatePanelVisibility();
  refreshObjectList();
}

btnDelete.addEventListener('click', deleteSelected);

// ════════════════════════════════════════════════════════════════
//  Save / Load
// ════════════════════════════════════════════════════════════════
const sceneSerializer = new SceneSerializer({
  scene,
  userObjects,
  transformCtrl,
  createPrimitive: objManager.createPrimitive.bind(objManager),
  createUserLight: objManager.createUserLight.bind(objManager),
  updateShadowOpacity: objManager.updateShadowOpacity.bind(objManager),
  textureLoader,
  selectObject,
  refreshObjectList,
  resetObjectCounter: () => { objManager.objectCounter = 0; }
});

btnSave.addEventListener('click', () => sceneSerializer.saveScene());

btnLoad.addEventListener('click', () => fileInput.click());
fileInput.addEventListener('change', (e) => {
  const file = e.target.files[0];
  if (!file) return;
  const reader = new FileReader();
  reader.onload = () => sceneSerializer.loadScene(reader.result);
  reader.readAsText(file);
  fileInput.value = '';
});

// ════════════════════════════════════════════════════════════════
//  Primitive & Light Buttons
// ════════════════════════════════════════════════════════════════
btnLoadModel.addEventListener('click', () => modelInput.click());
modelInput.addEventListener('change', (e) => {
  const file = e.target.files[0];
  if (!file) return;
  const reader = new FileReader();
  reader.onload = () => objManager.loadExternalModel(reader.result, file.name);
  reader.readAsArrayBuffer(file);
  modelInput.value = '';
});

btnBox.addEventListener('click',      () => objManager.createPrimitive('box'));
btnSphere.addEventListener('click',   () => objManager.createPrimitive('sphere'));
btnCone.addEventListener('click',     () => objManager.createPrimitive('cone'));
btnTorus.addEventListener('click',    () => objManager.createPrimitive('torus'));
btnCylinder.addEventListener('click', () => objManager.createPrimitive('cylinder'));
btnPlane.addEventListener('click',    () => objManager.createPrimitive('plane'));

btnPointLight.addEventListener('click', () => objManager.createUserLight('point'));
btnSpotLight.addEventListener('click',  () => objManager.createUserLight('spot'));
btnDirLight.addEventListener('click',   () => objManager.createUserLight('directional'));

// ════════════════════════════════════════════════════════════════
//  Resize
// ════════════════════════════════════════════════════════════════
window.addEventListener('resize', () => {
  camera.aspect = window.innerWidth / window.innerHeight;
  camera.updateProjectionMatrix();
  renderer.setSize(window.innerWidth, window.innerHeight);
});

// ════════════════════════════════════════════════════════════════
//  Animation Loop
// ════════════════════════════════════════════════════════════════
const clock = new THREE.Clock();

function animate() {
  requestAnimationFrame(animate);
  const t  = clock.getElapsedTime();
  const dt = clock.getDelta();

  orbit.update();

  fpsControls.update(dt);

  // ── Wind animation on trees/bushes/flowers ──
  animateEnvironment(envGroup, cloudGroup, t, inputAnimateEnv.checked);

  // Update light helpers, targets & pulse icons for moved lights
  userObjects.forEach((obj) => {
    if (obj.userData.objectType === 'light') {
      // Keep spotlight target relative: apply the light's rotation to the offset
      // so rotating the flashlight changes the beam direction
      if (obj.userData.lightType === 'spot' && obj.userData.targetOffset) {
        const dir = obj.userData.targetOffset.clone().applyEuler(obj.rotation);
        obj.target.position.copy(obj.position).add(dir);
        obj.target.updateMatrixWorld();
      }
      if (obj.userData.helper) obj.userData.helper.update();
      // Gentle pulse on the icon so it's clearly visible
      if (obj.userData.icon) {
        const pulse = 0.8 + Math.sin(t * 3 + obj.id) * 0.2;
        obj.userData.icon.scale.setScalar(pulse);
      }
    }
  });

  renderer.render(scene, camera);
}

animate();
