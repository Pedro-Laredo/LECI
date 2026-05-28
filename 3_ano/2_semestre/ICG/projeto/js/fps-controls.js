import * as THREE from 'three';

export class FPSControls {
  constructor(camera, canvas, orbit, transformCtrl, btnFps, fpsOverlay) {
    this.camera = camera;
    this.canvas = canvas;
    this.orbit = orbit;
    this.transformCtrl = transformCtrl;
    this.btnFps = btnFps;
    this.fpsOverlay = fpsOverlay;

    this.fpsMode = false;
    this.fpsPitch = 0;
    this.fpsYaw = 0;
    this.savedCameraPos = null;
    this.savedCameraTarget = null;
    
    this.keysPressed = new Set();
    this.NAV_BASE_SPEED = 12;
    this.NAV_SPRINT_MULT = 2.5;
    this.FPS_EYE_HEIGHT = 1.7;
    this.FPS_MOUSE_SENS = 0.002;

    this.initEvents();
  }

  initEvents() {
    window.addEventListener('keydown', (e) => {
      if (e.target.tagName === 'INPUT') return;
      this.keysPressed.add(e.code);
      if (e.code.startsWith('Arrow')) e.preventDefault();
    });
    window.addEventListener('keyup', (e) => {
      this.keysPressed.delete(e.code);
    });
    window.addEventListener('blur', () => this.keysPressed.clear());

    this.btnFps.addEventListener('click', () => this.toggleFpsMode());

    document.addEventListener('pointerlockchange', () => {
      if (this.fpsMode && document.pointerLockElement !== this.canvas) {
        this.exitFpsMode();
      }
    });

    document.addEventListener('mousemove', (e) => {
      if (!this.fpsMode || document.pointerLockElement !== this.canvas) return;
      this.fpsYaw   -= e.movementX * this.FPS_MOUSE_SENS;
      this.fpsPitch -= e.movementY * this.FPS_MOUSE_SENS;
      this.fpsPitch  = THREE.MathUtils.clamp(this.fpsPitch, -Math.PI / 2 + 0.05, Math.PI / 2 - 0.05);
    });
  }

  enterFpsMode() {
    if (this.fpsMode) return;
    this.fpsMode = true;

    this.savedCameraPos    = this.camera.position.clone();
    this.savedCameraTarget = this.orbit.target.clone();

    const dir = new THREE.Vector3();
    this.camera.getWorldDirection(dir);
    this.fpsYaw   = Math.atan2(dir.x, dir.z);
    this.fpsPitch = Math.asin(THREE.MathUtils.clamp(dir.y, -1, 1));

    this.camera.position.y = this.FPS_EYE_HEIGHT;
    this.orbit.target.copy(this.camera.position).add(dir);

    this.orbit.enabled = false;
    this.transformCtrl.detach();
    this.transformCtrl.visible = false;

    this.btnFps.classList.add('active');
    this.fpsOverlay.classList.remove('hidden');
    document.body.classList.add('fps-active');

    this.canvas.requestPointerLock();
  }

  exitFpsMode() {
    if (!this.fpsMode) return;
    this.fpsMode = false;

    if (document.pointerLockElement === this.canvas) {
      document.exitPointerLock();
    }

    this.orbit.enabled = true;
    this.transformCtrl.visible = true;
    if (this.savedCameraPos) {
      this.camera.position.copy(this.savedCameraPos);
      this.orbit.target.copy(this.savedCameraTarget);
    }

    this.btnFps.classList.remove('active');
    this.fpsOverlay.classList.add('hidden');
    document.body.classList.remove('fps-active');
  }

  toggleFpsMode() {
    if (this.fpsMode) this.exitFpsMode(); else this.enterFpsMode();
  }

  update(dt) {
    if (this.fpsMode) {
      const lookDir = new THREE.Vector3(
        Math.sin(this.fpsYaw) * Math.cos(this.fpsPitch),
        Math.sin(this.fpsPitch),
        Math.cos(this.fpsYaw) * Math.cos(this.fpsPitch)
      );
      const lookTarget = this.camera.position.clone().add(lookDir);
      this.camera.lookAt(lookTarget);
    }

    if (this.keysPressed.size > 0) {
      const sprint = this.keysPressed.has('ControlLeft') || this.keysPressed.has('ControlRight');
      const speed  = this.NAV_BASE_SPEED * (sprint ? this.NAV_SPRINT_MULT : 1);
      const step   = speed * (dt || 0.016);

      if (this.fpsMode) {
        const forward = new THREE.Vector3(Math.sin(this.fpsYaw), 0, Math.cos(this.fpsYaw)).normalize();
        const right   = new THREE.Vector3().crossVectors(forward, this.camera.up).normalize();
        const move    = new THREE.Vector3();

        if (this.keysPressed.has('KeyW') || this.keysPressed.has('ArrowUp'))    move.add(forward);
        if (this.keysPressed.has('KeyS') || this.keysPressed.has('ArrowDown'))  move.sub(forward);
        if (this.keysPressed.has('KeyA') || this.keysPressed.has('ArrowLeft'))  move.sub(right);
        if (this.keysPressed.has('KeyD') || this.keysPressed.has('ArrowRight')) move.add(right);
        if (this.keysPressed.has('Space'))    move.y += 1;
        if (this.keysPressed.has('ShiftLeft') || this.keysPressed.has('ShiftRight')) move.y -= 1;

        if (move.lengthSq() > 0) {
          move.normalize().multiplyScalar(step);
          this.camera.position.add(move);
          this.camera.position.y = Math.max(this.camera.position.y, this.FPS_EYE_HEIGHT * 0.3);
        }
      } else {
        const forward = new THREE.Vector3();
        this.camera.getWorldDirection(forward);
        forward.y = 0;
        forward.normalize();

        const right = new THREE.Vector3();
        right.crossVectors(forward, this.camera.up).normalize();

        const move = new THREE.Vector3();

        if (this.keysPressed.has('ArrowUp')    || (this.keysPressed.has('KeyW') && !this.keysPressed.has('ShiftLeft'))) move.add(forward);
        if (this.keysPressed.has('ArrowDown')  || this.keysPressed.has('KeyS'))  move.sub(forward);
        if (this.keysPressed.has('ArrowLeft')  || this.keysPressed.has('KeyA'))  move.sub(right);
        if (this.keysPressed.has('ArrowRight') || this.keysPressed.has('KeyD'))  move.add(right);

        if (this.keysPressed.has('ShiftLeft') || this.keysPressed.has('ShiftRight')) {
          if (this.keysPressed.has('ArrowUp')  || this.keysPressed.has('KeyW')) move.y += 1;
          if (this.keysPressed.has('ArrowDown') || this.keysPressed.has('KeyS')) move.y -= 1;
        }
        if (this.keysPressed.has('KeyQ')) move.y -= 1;
        if (this.keysPressed.has('KeyE') && !this.keysPressed.has('ShiftLeft')) move.y += 1;

        if (move.lengthSq() > 0) {
          move.normalize().multiplyScalar(step);
          this.camera.position.add(move);
          this.orbit.target.add(move);
        }
      }
    }
  }
}
