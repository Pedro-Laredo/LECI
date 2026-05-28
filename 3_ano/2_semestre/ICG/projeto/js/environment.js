import * as THREE from 'three';

export function setupEnvironment(scene, groundRef) {
  // ════════════════════════════════════════════════════════════════
  //  Built-in Lights  (ambient scene lighting — not user-editable)
  // ════════════════════════════════════════════════════════════════
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
    const groundGeo = new THREE.PlaneGeometry(200, 200, 60, 60);
    const pos = groundGeo.attributes.position;
    for (let i = 0; i < pos.count; i++) {
      const x = pos.getX(i);
      const y = pos.getY(i);
      const dist = Math.sqrt(x * x + y * y);
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
  groundRef.ground = ground;

  const shadowGeo = new THREE.PlaneGeometry(40, 40);
  const shadowMat = new THREE.ShadowMaterial({ opacity: 0.25 });
  const shadowPlane = new THREE.Mesh(shadowGeo, shadowMat);
  shadowPlane.rotation.x = -Math.PI / 2;
  shadowPlane.position.y = 0.01;
  shadowPlane.receiveShadow = true;
  scene.add(shadowPlane);

  const gridHelper = new THREE.GridHelper(40, 40, 0x5a7a5a, 0x3a5a3a);
  gridHelper.position.y = 0.02;
  scene.add(gridHelper);

  // ════════════════════════════════════════════════════════════════
  //  PROCEDURAL TREES
  // ════════════════════════════════════════════════════════════════
  const envGroup = new THREE.Group();
  envGroup.name  = '__environment';
  scene.add(envGroup);

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

  const pineGeos = [
    new THREE.ConeGeometry(1.0, 2.5, 8),
    new THREE.ConeGeometry(0.8, 2.0, 8),
    new THREE.ConeGeometry(0.6, 1.5, 8),
  ];
  const pineMat = new THREE.MeshStandardMaterial({ color: 0x1a5c20, roughness: 0.9 });

  function createTree(x, z) {
    const tree = new THREE.Group();
    tree.userData.isTree = true;

    const trunk = new THREE.Mesh(trunkGeo, trunkMat);
    trunk.position.y = 1.25;
    trunk.castShadow = true;
    tree.add(trunk);

    const isPine = Math.random() > 0.5;

    if (isPine) {
      for (let i = 0; i < 3; i++) {
        const cone = new THREE.Mesh(pineGeos[i], pineMat);
        cone.position.y = 3.0 + i * 1.4;
        cone.castShadow = true;
        tree.add(cone);
      }
    } else {
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

    const rayOrigin = new THREE.Vector3(x, 50, z);
    const rayDir    = new THREE.Vector3(0, -1, 0);
    const rc        = new THREE.Raycaster(rayOrigin, rayDir);
    const hits      = rc.intersectObject(ground);
    const groundY   = hits.length > 0 ? hits[0].point.y : 0;

    tree.position.set(x, groundY, z);

    const s = 0.7 + Math.random() * 1.0;
    tree.scale.setScalar(s);
    tree.rotation.y = Math.random() * Math.PI * 2;

    tree.userData.baseRotZ = 0;
    tree.userData.windPhase = Math.random() * Math.PI * 2;
    tree.userData.windAmp   = 0.01 + Math.random() * 0.02;

    return tree;
  }

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

  return { ambientLight, hemiLight, sunLight, skyDome, ground, gridHelper, envGroup, cloudGroup };
}

export function animateEnvironment(envGroup, cloudGroup, t, animateEnv) {
  if (animateEnv) {
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
}
