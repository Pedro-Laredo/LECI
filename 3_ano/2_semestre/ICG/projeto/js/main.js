// ════════════════════════════════════════════════════════════════
//  ICG – 3D Scene Editor   (Three.js r164)
//  Features: primitives, lights, textures, shadows, park env
// ════════════════════════════════════════════════════════════════
import * as THREE from 'three';
import { OrbitControls }    from 'three/addons/controls/OrbitControls.js';
import { TransformControls } from 'three/addons/controls/TransformControls.js';

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

// ════════════════════════════════════════════════════════════════
//  Keyboard Navigation  (Arrow keys to move through the map)
// ════════════════════════════════════════════════════════════════
const keysPressed = new Set();
const NAV_BASE_SPEED = 12;          // units per second
const NAV_SPRINT_MULT = 2.5;        // multiplier when holding Ctrl

window.addEventListener('keydown', (e) => {
  if (e.target.tagName === 'INPUT') return;
  keysPressed.add(e.code);
  // Prevent arrow keys from scrolling the page
  if (e.code.startsWith('Arrow')) e.preventDefault();
});
window.addEventListener('keyup', (e) => {
  keysPressed.delete(e.code);
});
window.addEventListener('blur', () => keysPressed.clear());

// ════════════════════════════════════════════════════════════════
//  First-Person Mode  (Pointer Lock + mouse look)
// ════════════════════════════════════════════════════════════════
let fpsMode = false;
const FPS_EYE_HEIGHT   = 1.7;     // eye height above ground
const FPS_MOUSE_SENS   = 0.002;   // mouse sensitivity
let fpsPitch = 0;                  // vertical look angle (clamped)
let fpsYaw   = 0;                  // horizontal look angle

// Store editor camera state so we can restore it on exit
let savedCameraPos    = null;
let savedCameraTarget = null;

function enterFpsMode() {
  if (fpsMode) return;
  fpsMode = true;

  // Save editor camera state
  savedCameraPos    = camera.position.clone();
  savedCameraTarget = orbit.target.clone();

  // Place camera at player height, looking in the same direction
  const dir = new THREE.Vector3();
  camera.getWorldDirection(dir);
  fpsYaw   = Math.atan2(dir.x, dir.z);  // horizontal angle
  fpsPitch = Math.asin(THREE.MathUtils.clamp(dir.y, -1, 1));

  camera.position.y = FPS_EYE_HEIGHT;
  orbit.target.copy(camera.position).add(dir);

  // Disable editor controls
  orbit.enabled = false;
  transformCtrl.detach();
  transformCtrl.visible = false;

  // UI
  btnFps.classList.add('active');
  fpsOverlay.classList.remove('hidden');
  document.body.classList.add('fps-active');

  // Request pointer lock
  canvas.requestPointerLock();
}

function exitFpsMode() {
  if (!fpsMode) return;
  fpsMode = false;

  // Release pointer lock
  if (document.pointerLockElement === canvas) {
    document.exitPointerLock();
  }

  // Restore editor camera
  orbit.enabled = true;
  transformCtrl.visible = true;
  if (savedCameraPos) {
    camera.position.copy(savedCameraPos);
    orbit.target.copy(savedCameraTarget);
  }

  // UI
  btnFps.classList.remove('active');
  fpsOverlay.classList.add('hidden');
  document.body.classList.remove('fps-active');
}

function toggleFpsMode() {
  if (fpsMode) exitFpsMode(); else enterFpsMode();
}

btnFps.addEventListener('click', toggleFpsMode);

// Pointer lock change — exit FPS if lock is lost (user pressed Esc)
document.addEventListener('pointerlockchange', () => {
  if (fpsMode && document.pointerLockElement !== canvas) {
    exitFpsMode();
  }
});

// Mouse look while pointer is locked
document.addEventListener('mousemove', (e) => {
  if (!fpsMode || document.pointerLockElement !== canvas) return;

  fpsYaw   -= e.movementX * FPS_MOUSE_SENS;
  fpsPitch -= e.movementY * FPS_MOUSE_SENS;
  fpsPitch  = THREE.MathUtils.clamp(fpsPitch, -Math.PI / 2 + 0.05, Math.PI / 2 - 0.05);
});

// ════════════════════════════════════════════════════════════════
//  Texture Loader
// ════════════════════════════════════════════════════════════════
const textureLoader = new THREE.TextureLoader();

// ════════════════════════════════════════════════════════════════
//  Built-in Lights  (ambient scene lighting — not user-editable)
// ════════════════════════════════════════════════════════════════

// Sky
const skyColor    = 0x87CEEB;
const horizonColor = 0xd4e8c2;

const ambientLight = new THREE.AmbientLight(0xffffff, 0.35);
scene.add(ambientLight);

const hemiLight = new THREE.HemisphereLight(skyColor, 0x556633, 0.6);
scene.add(hemiLight);

// Sun
const sunLight = new THREE.DirectionalLight(0xffeedd, 1.0);
sunLight.position.set(25, 40, 20);
sunLight.castShadow = true;
sunLight.shadow.mapSize.set(4096, 4096);
sunLight.shadow.camera.near   = 0.5;
sunLight.shadow.camera.far    = 120;
sunLight.shadow.camera.left   = -40;
sunLight.shadow.camera.right  =  40;
sunLight.shadow.camera.top    =  40;
sunLight.shadow.camera.bottom = -40;
sunLight.shadow.bias = -0.0003;
scene.add(sunLight);

// ════════════════════════════════════════════════════════════════
//  PROCEDURAL SKY DOME
// ════════════════════════════════════════════════════════════════
function createSkyDome() {
  const skyGeo = new THREE.SphereGeometry(200, 32, 20);
  const skyMat = new THREE.ShaderMaterial({
    side: THREE.BackSide,
    depthWrite: false,
    uniforms: {
      topColor:    { value: new THREE.Color(0x4488cc) },
      bottomColor: { value: new THREE.Color(0xc8e6ff) },
      offset:      { value: 20 },
      exponent:    { value: 0.5 },
    },
    vertexShader: `
      varying vec3 vWorldPosition;
      void main() {
        vec4 worldPos = modelMatrix * vec4(position, 1.0);
        vWorldPosition = worldPos.xyz;
        gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
      }
    `,
    fragmentShader: `
      uniform vec3 topColor;
      uniform vec3 bottomColor;
      uniform float offset;
      uniform float exponent;
      varying vec3 vWorldPosition;
      void main() {
        float h = normalize(vWorldPosition + offset).y;
        gl_FragColor = vec4(mix(bottomColor, topColor, max(pow(max(h, 0.0), exponent), 0.0)), 1.0);
      }
    `,
  });
  return new THREE.Mesh(skyGeo, skyMat);
}

const skyDome = createSkyDome();
scene.add(skyDome);

// ════════════════════════════════════════════════════════════════
//  GROUND  (large grassy terrain)
// ════════════════════════════════════════════════════════════════
function createGround() {
  // A large ground plane with a grass-like material
  const groundGeo = new THREE.PlaneGeometry(200, 200, 60, 60);
  // Slight vertex displacement for gentle hills
  const pos = groundGeo.attributes.position;
  for (let i = 0; i < pos.count; i++) {
    const x = pos.getX(i);
    const y = pos.getY(i);
    const dist = Math.sqrt(x * x + y * y);
    // Keep center flat (for the editing area), hills further out
    if (dist > 15) {
      const h = Math.sin(x * 0.15) * Math.cos(y * 0.12) * 1.2 +
                Math.sin(x * 0.07 + 1.3) * Math.cos(y * 0.09 + 0.7) * 2.0;
      pos.setZ(i, h * Math.min((dist - 15) / 20, 1));
    }
  }
  groundGeo.computeVertexNormals();

  const groundMat = new THREE.MeshStandardMaterial({
    color:     0x4a7c3f,
    roughness: 0.95,
    metalness: 0.0,
  });

  const ground = new THREE.Mesh(groundGeo, groundMat);
  ground.rotation.x     = -Math.PI / 2;
  ground.receiveShadow  = true;
  ground.name           = '__ground';
  return ground;
}

const ground = createGround();
scene.add(ground);

// Flat transparent shadow catcher exactly at y=0 for the grid area
const shadowGeo = new THREE.PlaneGeometry(40, 40);
const shadowMat = new THREE.ShadowMaterial({ opacity: 0.25 });
const shadowPlane = new THREE.Mesh(shadowGeo, shadowMat);
shadowPlane.rotation.x = -Math.PI / 2;
shadowPlane.position.y = 0.01;
shadowPlane.receiveShadow = true;
scene.add(shadowPlane);

// Grid
const gridHelper = new THREE.GridHelper(40, 40, 0x5a7a5a, 0x3a5a3a);
gridHelper.position.y = 0.02;
scene.add(gridHelper);

// ════════════════════════════════════════════════════════════════
//  PROCEDURAL TREES
// ════════════════════════════════════════════════════════════════
const envGroup = new THREE.Group();
envGroup.name  = '__environment';
scene.add(envGroup);

// Shared geometries / materials for performance
const trunkGeo     = new THREE.CylinderGeometry(0.15, 0.25, 2.5, 8);
const trunkMat     = new THREE.MeshStandardMaterial({ color: 0x6b4226, roughness: 0.9 });

const leafGeos = [
  new THREE.SphereGeometry(1.2, 8, 8),
  new THREE.SphereGeometry(1.0, 8, 8),
  new THREE.DodecahedronGeometry(1.1, 1),
];

const leafMats = [
  new THREE.MeshStandardMaterial({ color: 0x2d6b30, roughness: 0.85 }),
  new THREE.MeshStandardMaterial({ color: 0x3a8f3a, roughness: 0.85 }),
  new THREE.MeshStandardMaterial({ color: 0x267a28, roughness: 0.85 }),
  new THREE.MeshStandardMaterial({ color: 0x559944, roughness: 0.85 }),
];

// Pine tree geometry (cone-based)
const pineGeos = [
  new THREE.ConeGeometry(1.0, 2.5, 8),
  new THREE.ConeGeometry(0.8, 2.0, 8),
  new THREE.ConeGeometry(0.6, 1.5, 8),
];
const pineMat = new THREE.MeshStandardMaterial({ color: 0x1a5c20, roughness: 0.9 });

function createTree(x, z) {
  const tree = new THREE.Group();
  tree.userData.isTree = true;

  // Trunk
  const trunk = new THREE.Mesh(trunkGeo, trunkMat);
  trunk.position.y = 1.25;
  trunk.castShadow = true;
  tree.add(trunk);

  // Random type: round or pine
  const isPine = Math.random() > 0.5;

  if (isPine) {
    // Pine: stacked cones
    for (let i = 0; i < 3; i++) {
      const cone = new THREE.Mesh(pineGeos[i], pineMat);
      cone.position.y = 3.0 + i * 1.4;
      cone.castShadow = true;
      tree.add(cone);
    }
  } else {
    // Round canopy
    const leafGeo = leafGeos[Math.floor(Math.random() * leafGeos.length)];
    const leafMat2 = leafMats[Math.floor(Math.random() * leafMats.length)];
    const canopy   = new THREE.Mesh(leafGeo, leafMat2);
    canopy.position.y = 3.2 + Math.random() * 0.6;
    canopy.scale.set(
      0.9 + Math.random() * 0.6,
      0.8 + Math.random() * 0.5,
      0.9 + Math.random() * 0.6
    );
    canopy.castShadow = true;
    tree.add(canopy);

    // Sometimes a second smaller canopy
    if (Math.random() > 0.4) {
      const canopy2 = new THREE.Mesh(leafGeo, leafMat2);
      canopy2.position.set(
        (Math.random() - 0.5) * 0.8,
        3.8 + Math.random() * 0.8,
        (Math.random() - 0.5) * 0.8
      );
      canopy2.scale.setScalar(0.5 + Math.random() * 0.3);
      canopy2.castShadow = true;
      tree.add(canopy2);
    }
  }

  // Ground-height sampling: get approximate Y from the terrain
  const rayOrigin = new THREE.Vector3(x, 50, z);
  const rayDir    = new THREE.Vector3(0, -1, 0);
  const rc        = new THREE.Raycaster(rayOrigin, rayDir);
  const hits      = rc.intersectObject(ground);
  const groundY   = hits.length > 0 ? hits[0].point.y : 0;

  tree.position.set(x, groundY, z);

  // Random scale & rotation
  const s = 0.7 + Math.random() * 1.0;
  tree.scale.setScalar(s);
  tree.rotation.y = Math.random() * Math.PI * 2;

  // Store original Y for wind animation
  tree.userData.baseRotZ = 0;
  tree.userData.windPhase = Math.random() * Math.PI * 2;
  tree.userData.windAmp   = 0.01 + Math.random() * 0.02;

  return tree;
}

// Bush
const bushGeo = new THREE.DodecahedronGeometry(0.6, 1);
const bushMats = [
  new THREE.MeshStandardMaterial({ color: 0x3a7a3a, roughness: 0.9 }),
  new THREE.MeshStandardMaterial({ color: 0x4a8a2a, roughness: 0.9 }),
];

function createBush(x, z) {
  const mat = bushMats[Math.floor(Math.random() * bushMats.length)];
  const bush = new THREE.Mesh(bushGeo, mat);

  const rc   = new THREE.Raycaster(new THREE.Vector3(x, 50, z), new THREE.Vector3(0, -1, 0));
  const hits = rc.intersectObject(ground);
  const y    = hits.length > 0 ? hits[0].point.y : 0;

  bush.position.set(x, y + 0.3, z);
  bush.scale.set(
    0.6 + Math.random() * 0.8,
    0.5 + Math.random() * 0.5,
    0.6 + Math.random() * 0.8
  );
  bush.castShadow = true;
  bush.userData.isTree = true;
  bush.userData.windPhase = Math.random() * Math.PI * 2;
  bush.userData.windAmp   = 0.005 + Math.random() * 0.01;
  bush.userData.baseRotZ  = 0;
  return bush;
}

// Rock
const rockGeo  = new THREE.DodecahedronGeometry(0.5, 0);
const rockMat  = new THREE.MeshStandardMaterial({ color: 0x888888, roughness: 0.95, metalness: 0.05 });

function createRock(x, z) {
  const rock = new THREE.Mesh(rockGeo, rockMat);
  const rc   = new THREE.Raycaster(new THREE.Vector3(x, 50, z), new THREE.Vector3(0, -1, 0));
  const hits = rc.intersectObject(ground);
  const y    = hits.length > 0 ? hits[0].point.y : 0;

  rock.position.set(x, y + 0.15, z);
  rock.scale.set(
    0.5 + Math.random() * 1.5,
    0.3 + Math.random() * 0.6,
    0.5 + Math.random() * 1.5
  );
  rock.rotation.set(Math.random(), Math.random(), Math.random());
  rock.castShadow    = true;
  rock.receiveShadow = true;
  return rock;
}

// Flower
function createFlower(x, z) {
  const group = new THREE.Group();
  const stemGeo = new THREE.CylinderGeometry(0.02, 0.02, 0.4, 4);
  const stemMat = new THREE.MeshStandardMaterial({ color: 0x2a6a2a });
  const stem    = new THREE.Mesh(stemGeo, stemMat);
  stem.position.y = 0.2;
  group.add(stem);

  const petalColors = [0xff6688, 0xffaa44, 0xffff66, 0xaa66ff, 0xff4444, 0xffffff];
  const petalGeo = new THREE.SphereGeometry(0.08, 6, 6);
  const petalMat = new THREE.MeshStandardMaterial({
    color: petalColors[Math.floor(Math.random() * petalColors.length)],
    roughness: 0.6,
  });
  const head = new THREE.Mesh(petalGeo, petalMat);
  head.position.y = 0.42;
  head.scale.set(1, 0.6, 1);
  group.add(head);

  const rc   = new THREE.Raycaster(new THREE.Vector3(x, 50, z), new THREE.Vector3(0, -1, 0));
  const hits = rc.intersectObject(ground);
  const y    = hits.length > 0 ? hits[0].point.y : 0;
  group.position.set(x, y, z);

  group.userData.isTree    = true;
  group.userData.windPhase = Math.random() * Math.PI * 2;
  group.userData.windAmp   = 0.015 + Math.random() * 0.02;
  group.userData.baseRotZ  = 0;
  return group;
}

// ── Place environment objects ───────────────────────────────────
function populateEnvironment() {
  const treeCount  = 80;
  const bushCount  = 50;
  const rockCount  = 25;
  const flowerCount = 60;

  for (let i = 0; i < treeCount; i++) {
    const angle  = Math.random() * Math.PI * 2;
    const radius = 18 + Math.random() * 75;
    const x = Math.cos(angle) * radius;
    const z = Math.sin(angle) * radius;
    envGroup.add(createTree(x, z));
  }

  for (let i = 0; i < bushCount; i++) {
    const angle  = Math.random() * Math.PI * 2;
    const radius = 14 + Math.random() * 60;
    envGroup.add(createBush(
      Math.cos(angle) * radius,
      Math.sin(angle) * radius
    ));
  }

  for (let i = 0; i < rockCount; i++) {
    const angle  = Math.random() * Math.PI * 2;
    const radius = 12 + Math.random() * 70;
    envGroup.add(createRock(
      Math.cos(angle) * radius,
      Math.sin(angle) * radius
    ));
  }

  for (let i = 0; i < flowerCount; i++) {
    const angle  = Math.random() * Math.PI * 2;
    const radius = 10 + Math.random() * 50;
    envGroup.add(createFlower(
      Math.cos(angle) * radius,
      Math.sin(angle) * radius
    ));
  }
}

populateEnvironment();

// Clouds (simple translucent spheres drifting)
const cloudGroup = new THREE.Group();
cloudGroup.name  = '__clouds';
scene.add(cloudGroup);

const cloudGeo = new THREE.SphereGeometry(1, 8, 6);
const cloudMat = new THREE.MeshStandardMaterial({
  color: 0xffffff,
  transparent: true,
  opacity: 0.6,
  roughness: 1,
  metalness: 0,
});

for (let i = 0; i < 30; i++) {
  const cloud = new THREE.Mesh(cloudGeo, cloudMat.clone());
  cloud.material.opacity = 0.3 + Math.random() * 0.35;
  cloud.position.set(
    (Math.random() - 0.5) * 180,
    30 + Math.random() * 30,
    (Math.random() - 0.5) * 180
  );
  cloud.scale.set(
    3 + Math.random() * 6,
    1 + Math.random() * 1.5,
    2 + Math.random() * 4
  );
  cloud.userData.speed = 0.3 + Math.random() * 0.8;
  cloudGroup.add(cloud);
}

// ════════════════════════════════════════════════════════════════
//  State
// ════════════════════════════════════════════════════════════════
let selectedObject = null;
const userObjects  = [];          // user-created meshes & lights
let objectCounter  = 0;

// ════════════════════════════════════════════════════════════════
//  Transparent Shadow Support  (dithered shadows based on opacity)
// ════════════════════════════════════════════════════════════════
function applyTransparentShadow(mesh) {
  const opacity = mesh.material.opacity;

  // Custom depth material (used by Directional / Spot light shadows)
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

  // Custom distance material (used by PointLight shadows)
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

function updateShadowOpacity(mesh) {
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
function createPrimitive(type) {
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

  const material = new THREE.MeshStandardMaterial({
    color:       new THREE.Color(inputColor.value),
    metalness:   parseFloat(inputMetalness.value),
    roughness:   parseFloat(inputRoughness.value),
    wireframe:   inputWireframe.checked,
    transparent: true,
    opacity:     parseFloat(inputOpacity.value),
    side:        type === 'plane' ? THREE.DoubleSide : THREE.FrontSide,
  });

  const mesh = new THREE.Mesh(geometry, material);
  mesh.castShadow    = true;
  mesh.receiveShadow = true;
  mesh.position.y    = 1;
  applyTransparentShadow(mesh);

  objectCounter++;
  mesh.name = `${capitalise(type)}_${objectCounter}`;
  mesh.userData.primitiveType = type;
  mesh.userData.objectType    = 'mesh';

  scene.add(mesh);
  userObjects.push(mesh);
  selectObject(mesh);
  refreshObjectList();
}

function capitalise(s) { return s.charAt(0).toUpperCase() + s.slice(1); }

// ════════════════════════════════════════════════════════════════
//  Light Icon Meshes  (visible markers in the viewport)
// ════════════════════════════════════════════════════════════════
function createLightIcon(type) {
  const group = new THREE.Group();
  group.userData._isLightIcon = true;
  group.renderOrder = 999;

  // Shared materials
  const darkMetal = new THREE.MeshBasicMaterial({ color: 0x222222, depthTest: false });
  const silver    = new THREE.MeshBasicMaterial({ color: 0x888888, depthTest: false });
  const glass     = new THREE.MeshBasicMaterial({ color: 0xffee88, depthTest: false, transparent: true, opacity: 0.85 });
  const glow      = new THREE.MeshBasicMaterial({ color: 0xffdd44, depthTest: false, transparent: true, opacity: 0.7 });

  switch (type) {
    case 'spot': {
      // ── 3D Flashlight ──────────────────────────
      // Built so y=0 is the LENS TIP (where light emits),
      // and the body extends in +Y (above the light source).

      // Lens (glass disc) at y=0 — the emission point
      const lensGeo = new THREE.CircleGeometry(0.2, 20);
      const lens = new THREE.Mesh(lensGeo, glass);
      lens.position.y = 0;
      lens.rotation.x = Math.PI / 2; // face downward (-Y)
      group.add(lens);

      // Bezel ring just above the lens
      const bezelGeo = new THREE.TorusGeometry(0.22, 0.02, 8, 20);
      const bezel = new THREE.Mesh(bezelGeo, darkMetal);
      bezel.position.y = 0.02;
      bezel.rotation.x = Math.PI / 2;
      group.add(bezel);

      // Head / reflector
      const headGeo = new THREE.CylinderGeometry(0.12, 0.22, 0.2, 16);
      const head = new THREE.Mesh(headGeo, silver);
      head.position.y = 0.02 + 0.1;
      group.add(head);

      // Body / barrel
      const bodyGeo = new THREE.CylinderGeometry(0.1, 0.12, 0.15, 12);
      const body = new THREE.Mesh(bodyGeo, darkMetal);
      body.position.y = 0.22 + 0.075;
      group.add(body);

      // Handle
      const handleGeo = new THREE.CylinderGeometry(0.1, 0.1, 0.55, 12);
      const handle = new THREE.Mesh(handleGeo, darkMetal);
      handle.position.y = 0.37 + 0.275;
      group.add(handle);

      // Grip rings on handle
      const ringGeo = new THREE.TorusGeometry(0.105, 0.015, 8, 16);
      for (let i = 0; i < 4; i++) {
        const ring = new THREE.Mesh(ringGeo, silver);
        ring.position.y = 0.42 + i * 0.1;
        ring.rotation.x = Math.PI / 2;
        group.add(ring);
      }

      // Button on the side
      const btnGeo = new THREE.SphereGeometry(0.03, 8, 8);
      const btn = new THREE.Mesh(btnGeo, new THREE.MeshBasicMaterial({ color: 0xff4444, depthTest: false }));
      btn.position.set(0.1, 0.55, 0);
      group.add(btn);

      // Small glow cone at the tip so user sees the beam start
      const glowGeo = new THREE.ConeGeometry(0.3, 0.5, 16, 1, true);
      const glowMat = new THREE.MeshBasicMaterial({
        color: 0xffee66, transparent: true, opacity: 0.12,
        depthTest: false, side: THREE.DoubleSide,
      });
      const glowCone = new THREE.Mesh(glowGeo, glowMat);
      glowCone.position.y = -0.25; // extends below the lens
      group.add(glowCone);

      break;
    }
    case 'point': {
      // ── Light bulb ─────────────────────────────
      // Bulb glass
      const bulbGeo = new THREE.SphereGeometry(0.2, 16, 16);
      const bulb = new THREE.Mesh(bulbGeo, glass);
      bulb.position.y = 0.15;
      group.add(bulb);

      // Filament inside
      const filGeo = new THREE.TorusGeometry(0.06, 0.01, 6, 12);
      const filMat = new THREE.MeshBasicMaterial({ color: 0xffaa00, depthTest: false });
      const fil = new THREE.Mesh(filGeo, filMat);
      fil.position.y = 0.15;
      group.add(fil);

      // Screw base
      const baseGeo = new THREE.CylinderGeometry(0.1, 0.12, 0.12, 12);
      const base = new THREE.Mesh(baseGeo, silver);
      base.position.y = -0.03;
      group.add(base);

      // Base tip
      const tipGeo = new THREE.SphereGeometry(0.06, 8, 8);
      const tip = new THREE.Mesh(tipGeo, darkMetal);
      tip.position.y = -0.09;
      group.add(tip);

      // Glow aura
      const auraGeo = new THREE.SphereGeometry(0.32, 12, 12);
      const auraMat = new THREE.MeshBasicMaterial({
        color: 0xffee66, transparent: true, opacity: 0.12,
        depthTest: false, side: THREE.BackSide,
      });
      group.add(new THREE.Mesh(auraGeo, auraMat));

      break;
    }
    case 'directional': {
      // ── Sun icon ───────────────────────────────
      // Center disc
      const discGeo = new THREE.CircleGeometry(0.2, 20);
      const disc = new THREE.Mesh(discGeo, glass);
      group.add(disc);
      // Back disc
      const disc2 = disc.clone();
      disc2.rotation.y = Math.PI;
      group.add(disc2);

      // Rays
      const rayGeo = new THREE.BoxGeometry(0.06, 0.2, 0.03);
      const rayMat = new THREE.MeshBasicMaterial({ color: 0xffcc33, depthTest: false });
      for (let i = 0; i < 8; i++) {
        const ray = new THREE.Mesh(rayGeo, rayMat);
        const angle = (i / 8) * Math.PI * 2;
        ray.position.set(Math.cos(angle) * 0.35, Math.sin(angle) * 0.35, 0);
        ray.rotation.z = angle;
        group.add(ray);
      }

      // Arrow pointing down to show direction
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
function createUserLight(type) {
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
      // Target follows the light – offset below so it points straight down
      light.target.position.set(0, 0, 0);
      scene.add(light.target);
      light.userData.targetOffset = new THREE.Vector3(0, -6, 0); // beam direction (local -Y = out of flashlight tip)
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
      scene.add(light.target);
      helper = new THREE.DirectionalLightHelper(light, 1);
      break;
    }
    default: return;
  }

  // Create a visible 3D icon for this light
  const icon = createLightIcon(type);

  objectCounter++;
  light.name = `${capitalise(type)}Light_${objectCounter}`;
  light.userData.objectType = 'light';
  light.userData.lightType  = type;
  light.userData.helper     = helper;
  light.userData.icon       = icon;

  scene.add(light);
  scene.add(helper);
  if (icon) {
    light.add(icon);  // child of light so it follows automatically
  }

  userObjects.push(light);
  selectObject(light);
  refreshObjectList();
}

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
  updateShadowOpacity(selectedObject);
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
    toggleFpsMode();
    return;
  }

  // Block editor shortcuts while in FPS mode
  if (fpsMode) return;

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
//  Save / Load  (JSON)  — now includes lights + textures
// ════════════════════════════════════════════════════════════════
function serializeScene() {
  return userObjects.map((obj) => {
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

      // Texture (stored as base64 data URL)
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

function saveScene() {
  const json = JSON.stringify(serializeScene(), null, 2);
  const blob = new Blob([json], { type: 'application/json' });
  const url  = URL.createObjectURL(blob);
  const a    = document.createElement('a');
  a.href     = url;
  a.download = 'scene.json';
  a.click();
  URL.revokeObjectURL(url);
}

function loadScene(json) {
  // Clear existing user objects
  while (userObjects.length) {
    const obj = userObjects.pop();
    transformCtrl.detach();
    scene.remove(obj);
    if (obj.userData.objectType === 'light') {
      if (obj.userData.helper) {
        scene.remove(obj.userData.helper);
        obj.userData.helper.dispose?.();
      }
      if (obj.target) scene.remove(obj.target);
    } else {
      obj.geometry.dispose();
      if (obj.material.map) obj.material.map.dispose();
      obj.material.dispose();
    }
  }
  selectedObject = null;
  objectCounter  = 0;

  const data = JSON.parse(json);
  data.forEach((entry) => {
    if (entry.objectType === 'mesh') {
      createPrimitive(entry.primitiveType);
      const mesh = userObjects[userObjects.length - 1];
      mesh.name = entry.name;
      mesh.position.fromArray(entry.position);
      mesh.rotation.set(entry.rotation[0], entry.rotation[1], entry.rotation[2]);
      mesh.scale.fromArray(entry.scale);
      mesh.material.color.set(entry.color);
      mesh.material.metalness = entry.metalness;
      mesh.material.roughness = entry.roughness;
      mesh.material.opacity   = entry.opacity ?? 1;
      mesh.material.wireframe = entry.wireframe;
      updateShadowOpacity(mesh);

      // Restore texture
      if (entry.textureDataURL) {
        const tex = textureLoader.load(entry.textureDataURL);
        tex.wrapS = THREE.RepeatWrapping;
        tex.wrapT = THREE.RepeatWrapping;
        tex.repeat.set(entry.texRepeatX || 1, entry.texRepeatY || 1);
        tex.colorSpace = THREE.SRGBColorSpace;
        mesh.material.map = tex;
        mesh.material.needsUpdate = true;
        mesh.userData.textureDataURL = entry.textureDataURL;
      }
    } else if (entry.objectType === 'light') {
      createUserLight(entry.lightType);
      const light = userObjects[userObjects.length - 1];
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

  selectObject(null);
  refreshObjectList();
}

btnSave.addEventListener('click', saveScene);

btnLoad.addEventListener('click', () => fileInput.click());
fileInput.addEventListener('change', (e) => {
  const file = e.target.files[0];
  if (!file) return;
  const reader = new FileReader();
  reader.onload = () => loadScene(reader.result);
  reader.readAsText(file);
  fileInput.value = '';
});

// ════════════════════════════════════════════════════════════════
//  Primitive & Light Buttons
// ════════════════════════════════════════════════════════════════
btnBox.addEventListener('click',      () => createPrimitive('box'));
btnSphere.addEventListener('click',   () => createPrimitive('sphere'));
btnCone.addEventListener('click',     () => createPrimitive('cone'));
btnTorus.addEventListener('click',    () => createPrimitive('torus'));
btnCylinder.addEventListener('click', () => createPrimitive('cylinder'));
btnPlane.addEventListener('click',    () => createPrimitive('plane'));

btnPointLight.addEventListener('click', () => createUserLight('point'));
btnSpotLight.addEventListener('click',  () => createUserLight('spot'));
btnDirLight.addEventListener('click',   () => createUserLight('directional'));

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

  // ── First-person camera orientation ────────────────────────
  if (fpsMode) {
    // Build look direction from yaw + pitch
    const lookDir = new THREE.Vector3(
      Math.sin(fpsYaw) * Math.cos(fpsPitch),
      Math.sin(fpsPitch),
      Math.cos(fpsYaw) * Math.cos(fpsPitch)
    );
    const lookTarget = camera.position.clone().add(lookDir);
    camera.lookAt(lookTarget);
  }

  // ── Keyboard navigation ──────────────────────────────────
  if (keysPressed.size > 0) {
    const sprint = keysPressed.has('ControlLeft') || keysPressed.has('ControlRight');
    const speed  = NAV_BASE_SPEED * (sprint ? NAV_SPRINT_MULT : 1);
    const step   = speed * (dt || 0.016);

    if (fpsMode) {
      // FPS movement: forward is where we're looking (XZ plane)
      const forward = new THREE.Vector3(Math.sin(fpsYaw), 0, Math.cos(fpsYaw)).normalize();
      const right   = new THREE.Vector3().crossVectors(forward, camera.up).normalize();
      const move    = new THREE.Vector3();

      if (keysPressed.has('KeyW') || keysPressed.has('ArrowUp'))    move.add(forward);
      if (keysPressed.has('KeyS') || keysPressed.has('ArrowDown'))  move.sub(forward);
      if (keysPressed.has('KeyA') || keysPressed.has('ArrowLeft'))  move.sub(right);
      if (keysPressed.has('KeyD') || keysPressed.has('ArrowRight')) move.add(right);
      if (keysPressed.has('Space'))    move.y += 1;
      if (keysPressed.has('ShiftLeft') || keysPressed.has('ShiftRight')) move.y -= 1;

      if (move.lengthSq() > 0) {
        move.normalize().multiplyScalar(step);
        camera.position.add(move);
        // Keep minimum eye height
        camera.position.y = Math.max(camera.position.y, FPS_EYE_HEIGHT * 0.3);
      }
    } else {
      // Editor mode: move camera + orbit target together
      const forward = new THREE.Vector3();
      camera.getWorldDirection(forward);
      forward.y = 0;
      forward.normalize();

      const right = new THREE.Vector3();
      right.crossVectors(forward, camera.up).normalize();

      const move = new THREE.Vector3();

      if (keysPressed.has('ArrowUp')    || (keysPressed.has('KeyW') && !keysPressed.has('ShiftLeft'))) move.add(forward);
      if (keysPressed.has('ArrowDown')  || keysPressed.has('KeyS'))  move.sub(forward);
      if (keysPressed.has('ArrowLeft')  || keysPressed.has('KeyA'))  move.sub(right);
      if (keysPressed.has('ArrowRight') || keysPressed.has('KeyD'))  move.add(right);

      if (keysPressed.has('ShiftLeft') || keysPressed.has('ShiftRight')) {
        if (keysPressed.has('ArrowUp')  || keysPressed.has('KeyW')) move.y += 1;
        if (keysPressed.has('ArrowDown') || keysPressed.has('KeyS')) move.y -= 1;
      }
      if (keysPressed.has('KeyQ')) move.y -= 1;
      if (keysPressed.has('KeyE') && !keysPressed.has('ShiftLeft')) move.y += 1;

      if (move.lengthSq() > 0) {
        move.normalize().multiplyScalar(step);
        camera.position.add(move);
        orbit.target.add(move);
      }
    }
  }

  // ── Wind animation on trees/bushes/flowers ──
  if (inputAnimateEnv.checked) {
    envGroup.traverse((child) => {
      if (child.userData.windPhase !== undefined) {
        child.rotation.z = child.userData.baseRotZ +
          Math.sin(t * 1.5 + child.userData.windPhase) * child.userData.windAmp;
      }
    });

    // Drift clouds
    cloudGroup.children.forEach((cloud) => {
      cloud.position.x += cloud.userData.speed * 0.016;
      if (cloud.position.x > 100) cloud.position.x = -100;
    });
  }

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
