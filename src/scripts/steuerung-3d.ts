// 3D-Teile der Übersicht im Dashboard (Wunsch von Eric, 2026-10-26, Variante „Mix“ aus zwei Entwürfen):
//   orbit()     = „Fakten-Orbit“ in der Bühne: Die kommenden 7 Tage kreisen um einen gelben Planeten. Drei Bahnen = die
//                 festen Zeiten, Mond = eingeplanter Fakt (Farbe = Kategorie, Winkel = Tag), Würfel = Pool, Sterne = live.
//   dayBlocks() = „Bewertungen pro Tag“ als Klötzchen-Säulen (gelb 👍, pink 👎) mit harten Schatten.
// Wird von src/scripts/steuerung.ts erst bei Bedarf geladen. Ohne WebGL bleibt alles beim 2D-Diagramm.
// Farben kommen aus den Tokens (global.css) und werden beim Wechsel hell/dunkel neu gelesen.
// Bei „weniger Bewegung“ ein Standbild; gezeichnet wird nur, solange die Szene sichtbar ist.
import * as THREE from 'three';

export type OrbitMoon = { ring: number; day: number; category: string; label: string; next: boolean };
export type OrbitData = { moons: OrbitMoon[]; pool: { category: string; label: string }[]; live: number; legend: string };
export type DayBlock = { label: string; like: number; meh: number; title: string };

const still = matchMedia('(prefers-reduced-motion: reduce)');
const tok = (name: string) => getComputedStyle(document.documentElement).getPropertyValue(name).trim() || 'gray';

type Pick = THREE.Object3D & { userData: { body?: THREE.Mesh; label?: string } };

/** Eine Szene in einem Kasten: Renderer, Größe, Zeigen (Titel), Antippen und die Schleife, die nur läuft, solange man sie sieht. */
class Scene3D {
  renderer: THREE.WebGLRenderer;
  scene = new THREE.Scene();
  picks: Pick[] = [];
  hover: Pick | null = null;
  pointer = new THREE.Vector2();
  onFrame: (t: number) => void = () => {};
  onResize: (w: number, h: number) => void = () => {};
  private tip: HTMLElement;
  private ray = new THREE.Raycaster();
  private visible = false;
  private running = false;
  private clock = new THREE.Clock();

  constructor(public box: HTMLElement, public cam: THREE.Camera, onPick?: (p: Pick) => void) {
    this.renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
    this.renderer.setPixelRatio(Math.min(devicePixelRatio, 2));
    const canvas = this.renderer.domElement;
    canvas.className = 'gl';
    this.tip = Object.assign(document.createElement('p'), { className: 'gl-tip', hidden: true });
    box.replaceChildren(canvas, this.tip);
    new ResizeObserver(() => this.resize()).observe(box);
    new IntersectionObserver(([e]) => {
      this.visible = e.isIntersecting;
      this.start();
    }).observe(box);
    document.addEventListener('visibilitychange', () => this.start());
    canvas.addEventListener('pointermove', (e) => this.move(e));
    canvas.addEventListener('pointerleave', () => this.setHover(null));
    if (onPick) canvas.addEventListener('click', () => this.hover && onPick(this.hover));
  }

  private move(e: PointerEvent) {
    const r = this.renderer.domElement.getBoundingClientRect();
    this.pointer.set(((e.clientX - r.left) / r.width) * 2 - 1, -((e.clientY - r.top) / r.height) * 2 + 1);
    this.ray.setFromCamera(this.pointer, this.cam);
    const hit = this.ray.intersectObjects(this.picks.map((p) => p.userData.body!))[0];
    this.setHover(hit ? (this.picks.find((p) => p.userData.body === hit.object) ?? null) : null);
    if (this.hover) {
      this.tip.style.left = `${e.clientX - r.left}px`;
      this.tip.style.top = `${e.clientY - r.top}px`;
    }
  }
  private setHover(p: Pick | null) {
    this.hover = p;
    this.tip.hidden = !p;
    if (p) this.tip.textContent = p.userData.label ?? '';
    this.renderer.domElement.style.cursor = p ? 'pointer' : '';
    this.draw();
  }
  resize() {
    const w = this.box.clientWidth, h = this.box.clientHeight;
    if (!w || !h) return;
    this.renderer.setSize(w, h);
    this.onResize(w, h);
    this.draw();
  }
  /** Inhalt neu aufbauen: alte Objekte samt Geometrie und Material freigeben. */
  clear() {
    this.scene.traverse((o) => {
      const m = o as THREE.Mesh;
      m.geometry?.dispose();
      for (const mat of [m.material].flat()) (mat as THREE.Material | undefined)?.dispose();
    });
    this.scene.clear();
    this.picks = [];
    this.setHover(null);
    this.clock.start();
  }
  draw() {
    this.onFrame(still.matches ? 1e3 : this.clock.getElapsedTime());
    this.renderer.render(this.scene, this.cam);
  }
  start() {
    if (this.running) return;
    const loop = () => {
      this.draw();
      this.running = this.visible && !document.hidden && !still.matches;
      if (this.running) requestAnimationFrame(loop);
    };
    loop();
  }
}

/** Stufen-Schattierung wie gezeichnet: drei Helligkeiten statt weichem Verlauf. */
let ramp: THREE.DataTexture | null = null;
function toon(color: string) {
  if (!ramp) {
    ramp = new THREE.DataTexture(new Uint8Array([90, 170, 255]), 3, 1, THREE.RedFormat);
    ramp.minFilter = ramp.magFilter = THREE.NearestFilter;
    ramp.needsUpdate = true;
  }
  return new THREE.MeshToonMaterial({ color, gradientMap: ramp });
}
/** Körper mit Kontur (umgestülpte, etwas größere Hülle in der Linienfarbe). */
function outlined(geo: THREE.BufferGeometry, color: string, line: string, k: number) {
  const g = new THREE.Group() as Pick;
  const body = new THREE.Mesh(geo, toon(color));
  const hull = new THREE.Mesh(geo, new THREE.MeshBasicMaterial({ color: line, side: THREE.BackSide }));
  hull.scale.setScalar(k);
  g.add(body, hull);
  g.userData.body = body;
  return g;
}
/** Klotz mit Kanten als Linien, wirft und fängt harte Schatten. */
function block(w: number, h: number, d: number, color: string, line: string) {
  const g = new THREE.Group() as Pick;
  const geo = new THREE.BoxGeometry(w, h, d);
  const body = new THREE.Mesh(geo, new THREE.MeshLambertMaterial({ color }));
  body.castShadow = body.receiveShadow = true;
  g.add(body, new THREE.LineSegments(new THREE.EdgesGeometry(geo), new THREE.LineBasicMaterial({ color: line })));
  g.userData.body = body;
  return g;
}
function webgl() {
  try {
    const c = document.createElement('canvas');
    return !!(c.getContext('webgl2') ?? c.getContext('webgl'));
  } catch {
    return false;
  }
}
const themed: (() => void)[] = [];
addEventListener('wtfact-theme', () => themed.forEach((f) => f()));
matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => themed.forEach((f) => f()));

// ---------- Fakten-Orbit ----------

let orbitScene: Scene3D | null = null;
let orbitData: OrbitData | null = null;
const RADIUS = [2.4, 3.2, 4.0, 4.8]; // feste Zeiten von innen nach außen, ganz außen Sonder

/** Baut den Orbit in box (oder aktualisiert ihn). false = kein WebGL, nichts gezeichnet. */
export function orbit(box: HTMLElement, data: OrbitData, onPick: () => void): boolean {
  if (!orbitScene) {
    if (!webgl()) return false;
    const cam = new THREE.PerspectiveCamera(35, 1, 0.1, 200);
    orbitScene = new Scene3D(box, cam, onPick);
    orbitScene.onResize = (w, h) => {
      cam.aspect = w / h;
      cam.position.z = Math.max(13.5, 20 / cam.aspect); // ganze Szene in der Breite sichtbar
      cam.updateProjectionMatrix();
    };
    themed.push(() => orbitData && buildOrbit(orbitScene!, orbitData));
  }
  orbitData = data;
  buildOrbit(orbitScene, data);
  orbitScene.resize();
  orbitScene.start();
  return true;
}

function buildOrbit(s: Scene3D, data: OrbitData) {
  s.clear();
  const cam = s.cam as THREE.PerspectiveCamera;
  const line = tok('--on-night');
  s.scene.add(new THREE.AmbientLight('white', 1.1));
  const sun = new THREE.DirectionalLight('white', 2.2);
  sun.position.set(-4, 6, 5);
  s.scene.add(sun);

  const world = new THREE.Group();
  world.rotation.set(0.32, 0.4, -0.12);
  s.scene.add(world);
  const planet = outlined(new THREE.SphereGeometry(1.25, 48, 32), tok('--yellow'), line, 1.05);
  const band = outlined(new THREE.TorusGeometry(1.75, 0.07, 12, 96), tok('--pink'), line, 1.12);
  band.rotation.x = Math.PI / 2;
  world.add(planet, band);

  // Sterne: einer pro Live-Fakt, feste Plätze (gleicher Himmel bei jedem Neuaufbau)
  let seed = 11;
  const rnd = () => (seed = (seed * 16807) % 2147483647) / 2147483647;
  const pts = new Float32Array(data.live * 3);
  for (let i = 0; i < data.live; i++) {
    const r = 18 + rnd() * 20, t = rnd() * Math.PI * 2, p = Math.acos(2 * rnd() - 1);
    pts.set([r * Math.sin(p) * Math.cos(t), r * Math.cos(p) * 0.6, r * Math.sin(p) * Math.sin(t) - 10], i * 3);
  }
  const stars = new THREE.BufferGeometry();
  stars.setAttribute('position', new THREE.BufferAttribute(pts, 3));
  s.scene.add(new THREE.Points(stars, new THREE.PointsMaterial({ color: line, size: 0.12, transparent: true, opacity: 0.7 })));

  for (const [i, r] of RADIUS.entries()) {
    const extra = i === RADIUS.length - 1;
    const ring = new THREE.Mesh(new THREE.TorusGeometry(r, extra ? 0.02 : 0.012, 6, 160), new THREE.MeshBasicMaterial({ color: extra ? tok('--violet') : line, transparent: true, opacity: extra ? 0.6 : 0.35 }));
    ring.rotation.x = Math.PI / 2;
    world.add(ring);
  }
  let halo: THREE.Mesh | null = null;
  for (const m of data.moons) {
    const moon = outlined(new THREE.SphereGeometry(m.next ? 0.32 : 0.22, 24, 16), tok(`--cat-${m.category}`), line, 1.14);
    const a = (m.day / 7) * Math.PI * 2 + (m.ring + 1) * 0.35;
    const r = RADIUS[Math.min(m.ring, RADIUS.length - 1)];
    moon.position.set(Math.cos(a) * r, 0, Math.sin(a) * r);
    moon.userData.label = m.label;
    world.add(moon);
    s.picks.push(moon);
    if (m.next) {
      halo = new THREE.Mesh(new THREE.TorusGeometry(0.5, 0.03, 8, 48), new THREE.MeshBasicMaterial({ color: tok('--yellow') }));
      moon.add(halo);
    }
  }
  const cubes = data.pool.slice(0, 12).map((f, i) => {
    const c = outlined(new THREE.BoxGeometry(0.34, 0.34, 0.34), tok(`--cat-${f.category}`), line, 1.16);
    c.position.set(5.1 + Math.cos(i * 2.1) * 0.6, 2.6 - i * 0.48, -1.5 + Math.sin(i) * 0.8);
    c.userData.label = f.label;
    s.scene.add(c);
    s.picks.push(c);
    return { c, spin: 0.3 + (i % 4) * 0.15, y: c.position.y };
  });

  const grow = new THREE.Vector3();
  s.onFrame = (t) => {
    world.rotation.y = 0.4 + t * 0.06;
    planet.rotation.y = -t * 0.2;
    for (const { c, spin, y } of cubes) {
      c.rotation.set(t * spin, t * spin * 0.7, 0);
      c.position.y = y + Math.sin(t + c.position.x) * 0.08;
    }
    for (const p of s.picks) p.scale.lerp(grow.setScalar(p === s.hover ? 1.35 : 1), 0.2);
    if (halo) {
      halo.lookAt(cam.position);
      halo.scale.setScalar(1 + Math.sin(t * 4) * 0.12);
    }
    // Leichtes Mitgehen mit der Maus
    cam.position.x += (s.pointer.x * 0.8 - cam.position.x) * 0.04;
    cam.position.y += (3.2 + s.pointer.y * 0.6 - cam.position.y) * 0.04;
    cam.lookAt(0.4, 0, 0);
  };
  cam.position.set(0, 3.2, cam.position.z || 13.5);
  s.box.dataset.legend = data.legend;
}

// ---------- Klötzchen-Säulen ----------

let dayScene: Scene3D | null = null;
let dayData: DayBlock[] = [];

/** Säulen je Tag in box. false = kein WebGL, das 2D-Diagramm bleibt. */
export function dayBlocks(box: HTMLElement, items: DayBlock[]): boolean {
  if (!dayScene) {
    if (!webgl()) return false;
    const cam = new THREE.OrthographicCamera(-1, 1, 1, -1, -100, 100);
    dayScene = new Scene3D(box, cam);
    dayScene.renderer.shadowMap.enabled = true;
    dayScene.renderer.shadowMap.type = THREE.BasicShadowMap; // harte Kante wie --shadow-*
    dayScene.onResize = (w, h) => {
      // Zoom so, dass alle Säulen auch im schmalen Kasten hineinpassen
      const zoom = Math.max(2, 5.4 / (w / h));
      Object.assign(cam, { left: -zoom * (w / h), right: zoom * (w / h), top: zoom, bottom: -zoom });
      cam.updateProjectionMatrix();
    };
    themed.push(() => buildDays(dayScene!, dayData));
  }
  dayData = items;
  buildDays(dayScene, items);
  dayScene.resize();
  dayScene.start();
  return true;
}

function label(text: string, color: string) {
  const c = document.createElement('canvas');
  c.width = 256;
  c.height = 64;
  const x = c.getContext('2d')!;
  x.font = `700 40px ${tok('--font-display')}`;
  x.fillStyle = color;
  x.textAlign = 'center';
  x.textBaseline = 'middle';
  x.fillText(text, 128, 32);
  const t = new THREE.CanvasTexture(c);
  t.colorSpace = THREE.SRGBColorSpace;
  const s = new THREE.Sprite(new THREE.SpriteMaterial({ map: t, transparent: true, depthWrite: false }));
  s.scale.set(1.1, 0.275, 1);
  return s;
}

function buildDays(s: Scene3D, items: DayBlock[]) {
  s.clear();
  const line = tok('--line');
  s.scene.add(new THREE.AmbientLight('white', 1.6));
  const sun = new THREE.DirectionalLight('white', 1.6);
  sun.position.set(-3, 10, 6);
  sun.castShadow = true;
  sun.shadow.mapSize.set(2048, 2048);
  Object.assign(sun.shadow.camera, { left: -8, right: 8, top: 8, bottom: -8 });
  s.scene.add(sun);
  const cam = s.cam as THREE.OrthographicCamera;
  cam.position.set(2.5, 3.5, 10);
  cam.lookAt(0, 1.1, 0);

  const gap = 0.62;
  const floor = block(items.length * gap + 0.3, 0.12, 1.1, tok('--surface'), line);
  floor.position.y = -0.06;
  floor.userData.body!.castShadow = false;
  s.scene.add(floor);
  const max = Math.max(1, ...items.map((i) => i.like + i.meh));
  const cols: { b: Pick; base: number; h: number }[] = [];
  items.forEach((it, i) => {
    const x = (i - (items.length - 1) / 2) * gap;
    const hl = (it.like / max) * 3, hm = (it.meh / max) * 3;
    for (const [h, base, color] of [[hl, 0, tok('--yellow')], [hm, hl, tok('--pink')]] as const) {
      if (!h) continue;
      const b = block(0.42, h, 0.42, color, line);
      b.position.x = x;
      b.userData.label = it.title;
      s.scene.add(b);
      s.picks.push(b);
      cols.push({ b, base, h });
    }
    const l = label(it.label, tok('--muted'));
    l.position.set(x, -0.28, 0.6);
    s.scene.add(l);
  });
  // Säulen wachsen beim Anzeigen hoch, die gezeigte Säule hebt sich etwas
  s.onFrame = (t) => {
    const k = Math.min(1, t / 1.2), e = 1 - (1 - k) ** 3;
    for (const { b, base, h } of cols) {
      b.scale.y = Math.max(0.001, e);
      b.position.y = (base + h / 2) * e + (b === s.hover ? 0.08 : 0);
    }
  };
}
