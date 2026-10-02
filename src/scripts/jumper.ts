// Science Jumper: ein Buch springt über Flammen und sammelt Reagenzgläser.
// Läuft komplett im Browser auf einem <canvas>. Farben kommen aus den Design-Tokens
// in global.css (getComputedStyle), damit das Spiel zum Rest der Seite passt.

export interface JumperText {
  tapToStart: string;
  paused: string;
  gameOver: string;
  again: string;
  best: string;
}

export interface JumperOptions {
  canvas: HTMLCanvasElement;
  text: JumperText;
  /** Aktueller Highscore für die Anzeige im Spielfeld. */
  best: () => number;
  /** Wird bei jedem eingesammelten Reagenzglas aufgerufen. */
  onCollect: (runScore: number) => void;
  /** Wird am Ende eines Laufs aufgerufen. */
  onGameOver: (runScore: number) => void;
}

// Logische Spielfeldgröße. Das Canvas wird auf die echte Breite skaliert.
// Auf schmalen Bildschirmen ist das Spielfeld kürzer, damit Buch und Flammen groß genug bleiben.
const WIDE = 800;
const NARROW = 480;
let W = WIDE;
const H = 260;
const GROUND = 214;
const GRAVITY = 2600;
const JUMP_V = 860;
const SHORT_JUMP_V = 380;
const FAST_FALL = 5200;
const START_SPEED = 340;
const MAX_SPEED = 760;
const ACCEL = 8;
const TAU = Math.PI * 2;

type Kind = 'flame-s' | 'flame-l' | 'flame-2' | 'crate' | 'barrel' | 'house';
interface Obstacle { kind: Kind; x: number; w: number; h: number; seed: number }
interface Flask { x: number; y: number; taken: boolean; t: number }
interface Ember { x: number; y: number; vx: number; vy: number; life: number; size: number }
interface Puff { x: number; y: number; r: number; life: number }
interface Pop { x: number; y: number; life: number }

const SIZES: Record<Kind, [number, number]> = {
  'flame-s': [24, 36],
  'flame-l': [32, 54],
  'flame-2': [52, 40],
  crate: [44, 62],
  barrel: [36, 66],
  house: [86, 88],
};

const TOKENS = {
  night: '--night', onNight: '--on-night', muted: '--on-night-muted', ink: '--on-accent',
  yellow: '--yellow', orange: '--orange', pink: '--pink', violet: '--violet', cyan: '--cyan',
  gold: '--gold', goldLight: '--gold-light',
  flask: '--flask', flaskGlow: '--flask-glow',
  cover: '--book-cover', spine: '--book-spine', page: '--book-page', pageLine: '--book-page-line',
  wood: '--wood', woodDark: '--wood-dark', woodLight: '--wood-light', metal: '--metal',
  brick: '--brick', brickDark: '--brick-dark', roof: '--roof', roofLight: '--roof-light', smoke: '--smoke',
} as const;
type Palette = Record<keyof typeof TOKENS, string>;

function readPalette(): Palette {
  const css = getComputedStyle(document.documentElement);
  return Object.fromEntries(Object.entries(TOKENS).map(([k, name]) => [k, css.getPropertyValue(name).trim()])) as Palette;
}

export function createJumper({ canvas, text, best, onCollect, onGameOver }: JumperOptions) {
  const ctx = canvas.getContext('2d')!;
  let pal = readPalette();
  const font = getComputedStyle(document.documentElement).getPropertyValue('--font-display').trim() || 'sans-serif';

  type State = 'ready' | 'running' | 'paused' | 'over';
  let state: State = 'ready';
  let speed = START_SPEED;
  let score = 0;
  let distance = 0;
  let time = 0;
  let last = 0;
  let raf = 0;
  let overAt = 0;
  let landed = 0; // Zeitpunkt der letzten Landung, für den kleinen Stauch-Effekt

  const book = { x: 90, y: GROUND, vy: 0, w: 36, h: 46, holding: false, fast: false };
  let obstacles: Obstacle[] = [];
  let flasks: Flask[] = [];
  let embers: Ember[] = [];
  let puffs: Puff[] = [];
  let pops: Pop[] = [];
  let nextObstacle = 0;
  let nextFlask = 0;
  // Hintergrund: Sterne und Häuserzeile mit erleuchteten Fenstern, einmal pro Spiel gewürfelt.
  const stars = Array.from({ length: 46 }, () => ({ x: Math.random() * WIDE, y: Math.random() * (GROUND - 100), r: Math.random() < 0.2 ? 1.6 : 1, tw: Math.random() * TAU }));
  const SKY_SPAN = 16 * 64;
  const skyline = Array.from({ length: 16 }, (_, i) => {
    const w = 38 + Math.random() * 26, h = 34 + Math.random() * 70;
    const lit = Array.from({ length: 6 }, () => ({ x: 6 + Math.random() * (w - 14), y: 8 + Math.random() * (h - 18) }));
    return { x: i * 64, w, h, lit };
  });

  const onGround = () => book.y >= GROUND;

  function reset() {
    speed = START_SPEED;
    score = 0;
    distance = 0;
    time = 0;
    obstacles = [];
    flasks = [];
    embers = [];
    puffs = [];
    pops = [];
    book.y = GROUND;
    book.vy = 0;
    nextObstacle = W + 120;
    nextFlask = W * 0.5;
  }

  function resize() {
    const dpr = Math.min(window.devicePixelRatio || 1, 2);
    const cssW = canvas.clientWidth || W;
    W = cssW < 600 ? NARROW : WIDE;
    canvas.style.aspectRatio = `${W} / ${H}`;
    canvas.width = Math.round(cssW * dpr);
    canvas.height = Math.round((cssW * H) / W * dpr);
    draw();
  }

  // --- Steuerung -------------------------------------------------------------

  function press() {
    if (state === 'ready') return start();
    if (state === 'paused') return resume();
    if (state === 'over') {
      // Kurze Sperre, damit ein hektischer Doppel-Tipp nicht sofort neu startet.
      if (performance.now() - overAt > 450) start();
      return;
    }
    book.holding = true;
    if (onGround()) book.vy = -JUMP_V;
  }
  function release() {
    book.holding = false;
    if (book.vy < -SHORT_JUMP_V) book.vy = -SHORT_JUMP_V;
  }

  function start() {
    reset();
    state = 'running';
    last = performance.now();
    cancelAnimationFrame(raf);
    raf = requestAnimationFrame(loop);
  }
  function pause() {
    if (state !== 'running') return;
    state = 'paused';
    cancelAnimationFrame(raf);
    draw();
  }
  function resume() {
    state = 'running';
    last = performance.now();
    raf = requestAnimationFrame(loop);
  }

  // --- Spawnen ----------------------------------------------------------------

  function pickKind(): Kind {
    const pool: Kind[] = ['flame-s', 'flame-s', 'flame-l', 'flame-2'];
    if (time > 8) pool.push('crate', 'barrel');
    if (time > 20) pool.push('house', 'flame-l');
    if (time > 40) pool.push('house', 'flame-2', 'crate');
    return pool[Math.floor(Math.random() * pool.length)];
  }

  function spawnObstacle() {
    const kind = pickKind();
    const [w, h] = SIZES[kind];
    const x = W + 20;
    obstacles.push({ kind, x, w, h, seed: Math.random() * 10 });
    // Belohnung für Mut: oft liegt ein Bogen aus Reagenzgläsern genau auf der Sprungbahn.
    if (Math.random() < 0.55) {
      const n = 3 + Math.floor(Math.random() * 2);
      for (let i = 0; i < n; i++) {
        const k = n === 1 ? 0.5 : i / (n - 1);
        const fx = x + w / 2 - 7 + (k - 0.5) * (70 + w);
        const fy = GROUND - h - 44 - Math.sin(k * Math.PI) * 30;
        flasks.push({ x: fx, y: fy, taken: false, t: i * 0.4 });
      }
    }
    const gap = speed * 0.62 + 180 + Math.random() * (260 + speed * 0.25);
    nextObstacle = distance + gap;
  }

  function spawnFlasks() {
    // Mal ein einzelnes Glas, mal eine kleine Reihe in Bodennähe oder in Sprunghöhe.
    const rows = [GROUND - 30, GROUND - 30, GROUND - 92, GROUND - 140];
    const y = rows[Math.floor(Math.random() * rows.length)];
    const n = Math.random() < 0.55 ? 3 + Math.floor(Math.random() * 3) : 1;
    for (let i = 0; i < n; i++) {
      const x = W + 20 + i * 26;
      const blocked = obstacles.some((o) => x + 14 > o.x - 30 && x < o.x + o.w + 30 && y > GROUND - o.h - 34);
      if (!blocked) flasks.push({ x, y, taken: false, t: i * 0.4 });
    }
    nextFlask = distance + 220 + Math.random() * 260;
  }

  // --- Spiellogik -----------------------------------------------------------------

  function hit(o: Obstacle) {
    // Etwas großzügige Trefferzone, damit Fast-Treffer nicht frustrieren.
    const pad = 7;
    const bx = book.x + pad, by = book.y - book.h + pad, bw = book.w - pad * 2, bh = book.h - pad;
    const ox = o.x + 5, oy = GROUND - o.h + 10, ow = o.w - 10, oh = o.h - 10;
    return bx < ox + ow && bx + bw > ox && by < oy + oh && by + bh > oy;
  }

  function update(dt: number) {
    time += dt;
    speed = Math.min(MAX_SPEED, speed + ACCEL * dt);
    const dx = speed * dt;
    distance += dx;

    // Buch
    const wasAir = !onGround();
    const g = book.fast && !onGround() ? FAST_FALL : GRAVITY;
    book.vy += g * dt;
    book.y += book.vy * dt;
    if (book.y >= GROUND) {
      book.y = GROUND;
      book.vy = 0;
      if (wasAir) landed = time;
    }

    if (distance >= nextObstacle) spawnObstacle();
    if (distance >= nextFlask) spawnFlasks();

    for (const o of obstacles) {
      o.x -= dx;
      if (Math.random() < 0.3) embers.push({ x: o.x + Math.random() * o.w, y: GROUND - o.h * (0.4 + Math.random() * 0.6), vx: -20 + Math.random() * 40, vy: -40 - Math.random() * 70, life: 1, size: Math.random() < 0.3 ? 3 : 2 });
      if ((o.kind === 'house' || o.kind === 'crate' || o.kind === 'barrel') && Math.random() < 0.18)
        puffs.push({ x: o.x + o.w * (0.3 + Math.random() * 0.4), y: GROUND - o.h, r: 6 + Math.random() * 6, life: 1 });
    }
    obstacles = obstacles.filter((o) => o.x + o.w > -30);

    for (const f of flasks) {
      f.x -= dx;
      f.t += dt;
      if (f.taken) continue;
      const bx = book.x, by = book.y - book.h;
      if (bx < f.x + 16 && bx + book.w > f.x - 2 && by < f.y + 30 && by + book.h > f.y) {
        f.taken = true;
        score++;
        pops.push({ x: f.x, y: f.y, life: 1 });
        onCollect(score);
      }
    }
    flasks = flasks.filter((f) => f.x > -30 && !f.taken);

    for (const e of embers) { e.x += e.vx * dt - dx * 0.9; e.y += e.vy * dt; e.life -= dt * 1.3; }
    embers = embers.filter((e) => e.life > 0);
    for (const p of puffs) { p.x -= dx * 0.85; p.y -= 26 * dt; p.r += 14 * dt; p.life -= dt * 0.7; }
    puffs = puffs.filter((p) => p.life > 0);
    for (const p of pops) { p.y -= 40 * dt; p.life -= dt * 1.5; }
    pops = pops.filter((p) => p.life > 0);

    if (obstacles.some(hit)) {
      state = 'over';
      overAt = performance.now();
      book.holding = false;
      onGameOver(score);
    }
  }

  function loop(now: number) {
    const dt = Math.min(0.033, (now - last) / 1000);
    last = now;
    if (state === 'running') update(dt);
    draw();
    if (state === 'running') raf = requestAnimationFrame(loop);
  }

  // --- Zeichnen: Hilfen -----------------------------------------------------------

  function rrect(x: number, y: number, w: number, h: number, r: number | number[]) {
    ctx.beginPath();
    ctx.roundRect(x, y, w, h, r);
  }
  function outline(width = 2.5) {
    ctx.strokeStyle = pal.ink;
    ctx.lineWidth = width;
    ctx.lineJoin = 'round';
    ctx.stroke();
  }

  /** Flamme aus mehreren Zungen, mit Glühen. base = Unterkante, cx = Mitte. */
  function flame(cx: number, base: number, w: number, h: number, seed: number, glow = true) {
    const tongues = w > 34 ? 3 : 2;
    const layers: [string, number][] = [[pal.pink, 1], [pal.orange, 0.74], [pal.yellow, 0.48], [pal.goldLight, 0.24]];
    ctx.save();
    if (glow) {
      ctx.shadowColor = pal.orange;
      ctx.shadowBlur = 18;
    }
    layers.forEach(([color, k], li) => {
      ctx.fillStyle = color;
      ctx.beginPath();
      const lw = w * k, lh = h * (0.35 + 0.65 * k);
      ctx.moveTo(cx - lw / 2, base);
      for (let i = 0; i < tongues; i++) {
        const t0 = i / tongues, t1 = (i + 1) / tongues;
        const sway = Math.sin(time * (9 + i * 2) + seed * 3 + i) * lw * 0.12;
        const flick = 1 + Math.sin(time * (15 + i * 3) + seed + i * 2) * 0.1;
        // höchste Zunge in der Mitte
        const peak = lh * flick * (i === Math.floor(tongues / 2) ? 1 : 0.72);
        const xa = cx - lw / 2 + lw * t0, xb = cx - lw / 2 + lw * t1;
        const tipX = (xa + xb) / 2 + sway;
        ctx.quadraticCurveTo(xa - lw * 0.04, base - peak * 0.55, tipX, base - peak);
        ctx.quadraticCurveTo(xb + lw * 0.04, base - peak * 0.5, xb, base - (i < tongues - 1 ? peak * 0.28 : 0));
      }
      ctx.closePath();
      ctx.fill();
      if (li === 0) ctx.shadowBlur = 0;
    });
    ctx.restore();
  }

  // --- Zeichnen: Hindernisse --------------------------------------------------------

  function drawCrate(o: Obstacle) {
    const bh = 40, x = o.x, y = GROUND - bh, w = o.w;
    flame(x + w / 2, y + 6, w * 0.9, o.h - bh + 10, o.seed);
    // Bretter
    const boards = 3, bH = bh / boards;
    for (let i = 0; i < boards; i++) {
      ctx.fillStyle = i % 2 ? pal.woodLight : pal.wood;
      ctx.fillRect(x, y + i * bH, w, bH);
      ctx.fillStyle = pal.woodDark;
      ctx.fillRect(x, y + (i + 1) * bH - 1.5, w, 1.5);
    }
    // Rahmen und Strebe
    ctx.fillStyle = pal.woodDark;
    ctx.fillRect(x, y, 5, bh);
    ctx.fillRect(x + w - 5, y, w > 0 ? 5 : 0, bh);
    ctx.save();
    ctx.beginPath();
    ctx.rect(x + 5, y, w - 10, bh);
    ctx.clip();
    ctx.strokeStyle = pal.woodDark;
    ctx.lineWidth = 5;
    ctx.beginPath();
    ctx.moveTo(x + 5, y + bh); ctx.lineTo(x + w - 5, y);
    ctx.stroke();
    ctx.restore();
    // Nägel
    ctx.fillStyle = pal.metal;
    for (const [nx, ny] of [[x + 2.5, y + 4], [x + w - 2.5, y + 4], [x + 2.5, y + bh - 4], [x + w - 2.5, y + bh - 4]]) {
      ctx.beginPath(); ctx.arc(nx, ny, 1.4, 0, TAU); ctx.fill();
    }
    // angekohlte Oberkante
    ctx.globalAlpha = 0.45;
    ctx.fillStyle = pal.ink;
    ctx.fillRect(x, y, w, 4);
    ctx.globalAlpha = 1;
    rrect(x, y, w, bh, 2);
    outline();
    flame(x + w / 2 + 4, y + 2, w * 0.55, (o.h - bh) * 0.7, o.seed + 4, false);
  }

  function drawBarrel(o: Obstacle) {
    const bh = 44, x = o.x, y = GROUND - bh, w = o.w, bulge = 4;
    flame(x + w / 2, y + 6, w * 0.95, o.h - bh + 8, o.seed);
    const shape = () => {
      ctx.beginPath();
      ctx.moveTo(x + 3, y);
      ctx.lineTo(x + w - 3, y);
      ctx.quadraticCurveTo(x + w + bulge, y + bh / 2, x + w - 3, y + bh);
      ctx.lineTo(x + 3, y + bh);
      ctx.quadraticCurveTo(x - bulge, y + bh / 2, x + 3, y);
      ctx.closePath();
    };
    shape();
    ctx.fillStyle = pal.wood;
    ctx.fill();
    ctx.save();
    shape();
    ctx.clip();
    // Dauben
    ctx.strokeStyle = pal.woodDark;
    ctx.lineWidth = 1.5;
    for (let i = 1; i < 4; i++) {
      const sx = x + (w / 4) * i;
      ctx.beginPath(); ctx.moveTo(sx, y); ctx.quadraticCurveTo(sx + (sx - (x + w / 2)) * 0.15, y + bh / 2, sx, y + bh); ctx.stroke();
    }
    ctx.fillStyle = pal.woodLight;
    ctx.fillRect(x + w * 0.22, y, 4, bh);
    // Metallreifen
    ctx.fillStyle = pal.metal;
    for (const hy of [y + 7, y + bh - 11]) ctx.fillRect(x - bulge, hy, w + bulge * 2, 4);
    ctx.globalAlpha = 0.45;
    ctx.fillStyle = pal.ink;
    ctx.fillRect(x, y, w, 4);
    ctx.globalAlpha = 1;
    ctx.restore();
    shape();
    outline();
    flame(x + w / 2 - 2, y + 2, w * 0.6, (o.h - bh) * 0.7, o.seed + 3, false);
  }

  function drawHouse(o: Obstacle) {
    const x = o.x, w = o.w, wallH = 50, roofH = 24, wallY = GROUND - wallH, roofY = wallY - roofH;
    // Glut hinter dem Haus
    flame(x + w * 0.62, roofY + 10, w * 0.55, o.h - wallH - roofH + 22, o.seed);
    // Schornstein
    ctx.fillStyle = pal.brickDark;
    rrect(x + w * 0.66, roofY - 4, 11, 18, 1);
    ctx.fill();
    outline(2);
    // Wand mit Ziegeln
    ctx.fillStyle = pal.brick;
    ctx.fillRect(x, wallY, w, wallH);
    ctx.save();
    ctx.beginPath(); ctx.rect(x, wallY, w, wallH); ctx.clip();
    ctx.strokeStyle = pal.brickDark;
    ctx.lineWidth = 1;
    for (let r = 0; r < wallH / 8; r++) {
      const ry = wallY + r * 8;
      ctx.beginPath(); ctx.moveTo(x, ry); ctx.lineTo(x + w, ry); ctx.stroke();
      for (let c = (r % 2) * 8; c < w; c += 16) {
        ctx.beginPath(); ctx.moveTo(x + c, ry); ctx.lineTo(x + c, ry + 8); ctx.stroke();
      }
    }
    ctx.restore();
    rrect(x, wallY, w, wallH, 1);
    outline();
    // Dach mit Ziegelreihen
    const roof = () => {
      ctx.beginPath();
      ctx.moveTo(x - 7, wallY + 1);
      ctx.lineTo(x + w / 2, roofY);
      ctx.lineTo(x + w + 7, wallY + 1);
      ctx.closePath();
    };
    roof();
    ctx.fillStyle = pal.roof;
    ctx.fill();
    ctx.save();
    roof();
    ctx.clip();
    ctx.strokeStyle = pal.roofLight;
    ctx.lineWidth = 1.2;
    for (let i = 1; i < 4; i++) {
      const ry = roofY + (roofH / 4) * i;
      ctx.beginPath(); ctx.moveTo(x - 7, ry); ctx.lineTo(x + w + 7, ry); ctx.stroke();
    }
    ctx.restore();
    roof();
    outline();
    // Fenster mit Feuerschein und Flammen, die herausschlagen
    for (const fx of [x + 10, x + w - 30]) {
      const fy = wallY + 10, fw = 20, fh = 17;
      ctx.save();
      ctx.shadowColor = pal.orange;
      ctx.shadowBlur = 14;
      ctx.fillStyle = Math.sin(time * 12 + fx) > 0.2 ? pal.yellow : pal.goldLight;
      rrect(fx, fy, fw, fh, 1);
      ctx.fill();
      ctx.restore();
      ctx.strokeStyle = pal.ink;
      ctx.lineWidth = 2;
      ctx.beginPath(); ctx.moveTo(fx + fw / 2, fy); ctx.lineTo(fx + fw / 2, fy + fh); ctx.moveTo(fx, fy + fh / 2); ctx.lineTo(fx + fw, fy + fh / 2); ctx.stroke();
      rrect(fx, fy, fw, fh, 1);
      outline(2);
      flame(fx + fw / 2, fy + 3, fw * 0.95, 20, o.seed + fx, false);
    }
    // Tür
    ctx.fillStyle = pal.woodDark;
    rrect(x + w / 2 - 9, GROUND - 25, 18, 25, [7, 7, 0, 0]);
    ctx.fill();
    outline(2);
    ctx.fillStyle = pal.gold;
    ctx.beginPath(); ctx.arc(x + w / 2 + 4, GROUND - 12, 1.6, 0, TAU); ctx.fill();
    // Flammen auf dem Dach
    flame(x + w * 0.3, roofY + roofH * 0.55, w * 0.38, 30, o.seed + 1, false);
    flame(x + w * 0.58, roofY + 6, w * 0.32, 26, o.seed + 2, false);
  }

  function drawObstacle(o: Obstacle) {
    switch (o.kind) {
      case 'flame-s':
      case 'flame-l':
        coals(o.x, o.w);
        flame(o.x + o.w / 2, GROUND + 2, o.w, o.h, o.seed);
        break;
      case 'flame-2':
        coals(o.x, o.w);
        flame(o.x + o.w * 0.28, GROUND + 2, o.w * 0.56, o.h * 0.8, o.seed);
        flame(o.x + o.w * 0.66, GROUND + 2, o.w * 0.64, o.h, o.seed + 2);
        break;
      case 'crate': drawCrate(o); break;
      case 'barrel': drawBarrel(o); break;
      case 'house': drawHouse(o); break;
    }
  }

  /** Glühende Holzscheite unter freien Flammen. */
  function coals(x: number, w: number) {
    ctx.save();
    ctx.translate(x + w / 2, GROUND + 3);
    for (const [ang, len] of [[-0.25, w * 0.95], [0.25, w * 0.95]]) {
      ctx.save();
      ctx.rotate(ang);
      rrect(-len / 2, -3.5, len, 7, 3.5);
      ctx.fillStyle = pal.woodDark;
      ctx.fill();
      outline(1.8);
      ctx.restore();
    }
    ctx.restore();
  }

  function drawFlask(f: Flask) {
    const bob = Math.sin(f.t * 4) * 3;
    const x = f.x, y = f.y + bob;
    ctx.save();
    ctx.shadowColor = pal.flaskGlow;
    ctx.shadowBlur = 12;
    ctx.fillStyle = pal.onNight;
    rrect(x, y + 4, 14, 26, [0, 0, 7, 7]);
    ctx.fill();
    ctx.shadowBlur = 0;
    ctx.fillStyle = pal.flask;
    rrect(x + 1.5, y + 14, 11, 14.5, [0, 0, 6, 6]);
    ctx.fill();
    ctx.fillStyle = pal.flaskGlow;
    ctx.fillRect(x + 3.5, y + 16, 2, 8);
    // Bläschen
    ctx.beginPath(); ctx.arc(x + 9, y + 20 - ((f.t * 12) % 6), 1.3, 0, TAU); ctx.fill();
    rrect(x, y + 4, 14, 26, [0, 0, 7, 7]);
    outline(2);
    ctx.fillStyle = pal.orange;
    rrect(x - 1, y, 16, 6, 1.5);
    ctx.fill();
    outline(2);
    ctx.restore();
  }

  // --- Zeichnen: das Buch ---------------------------------------------------------------

  function drawBook() {
    const { x, y, w, h } = book;
    const airborne = !onGround();
    const running = state === 'running' && !airborne;
    const phase = time * 20;
    const step = running ? Math.sin(phase) : 0;

    // Schatten am Boden, kleiner je höher das Buch springt
    const lift = Math.min(1, (GROUND - y) / 140);
    ctx.save();
    ctx.globalAlpha = 0.35 * (1 - lift * 0.6);
    ctx.fillStyle = pal.ink;
    ctx.beginPath();
    ctx.ellipse(x + w / 2, GROUND + 8, (w / 2 + 4) * (1 - lift * 0.4), 4, 0, 0, TAU);
    ctx.fill();
    ctx.restore();

    // Stauchen und Strecken: beim Absprung lang, nach der Landung kurz platt
    let sx = 1, sy = 1;
    if (airborne && book.vy < 0) { sx = 0.94; sy = 1.07; }
    const since = time - landed;
    if (!airborne && since < 0.12) { const k = 1 - since / 0.12; sx = 1 + 0.12 * k; sy = 1 - 0.1 * k; }

    ctx.save();
    ctx.translate(x + w / 2, y);
    ctx.scale(sx, sy);
    const tilt = airborne ? Math.max(-0.28, Math.min(0.28, book.vy / 2600)) : 0;

    // Beine mit Schuhen
    const legY = -2 + (running && step > 0 ? -2 : 0);
    ctx.strokeStyle = pal.ink;
    ctx.lineWidth = 3;
    ctx.lineCap = 'round';
    const legs: [number, number][] = airborne ? [[-7, -4], [7, 4]] : [[-7, step * 6], [7, -step * 6]];
    for (const [lx, sw] of legs) {
      ctx.beginPath();
      ctx.moveTo(lx, legY);
      ctx.lineTo(lx + sw, 6);
      ctx.stroke();
      ctx.fillStyle = pal.onNight;
      rrect(lx + sw - 4, 4, 10, 5, [3, 3, 1, 1]);
      ctx.fill();
      outline(1.6);
    }

    ctx.rotate(tilt);
    const top = -h + legY, left = -w / 2;

    // Lesebändchen, flattert nach hinten
    ctx.strokeStyle = pal.yellow;
    ctx.lineWidth = 3.5;
    ctx.lineCap = 'round';
    ctx.beginPath();
    ctx.moveTo(left + 12, top + 2);
    const flap = Math.sin(time * 14) * 4;
    ctx.bezierCurveTo(left + 4, top - 8 + flap, left - 6, top + 4 - flap, left - 14, top - 2 + flap);
    ctx.stroke();

    // Seitenblock (hinten rechts, leicht versetzt)
    ctx.fillStyle = pal.page;
    rrect(left + 5, top + 3, w - 2, h - 6, [2, 5, 5, 2]);
    ctx.fill();
    outline(2);
    ctx.strokeStyle = pal.pageLine;
    ctx.lineWidth = 1;
    for (let i = 0; i < 6; i++) {
      const py = top + 8 + i * ((h - 16) / 5);
      ctx.beginPath(); ctx.moveTo(left + w - 1, py); ctx.lineTo(left + w + 2.5, py); ctx.stroke();
    }

    // Einband
    rrect(left, top, w - 3, h, 5);
    ctx.fillStyle = pal.cover;
    ctx.fill();
    outline();
    // Glanzkante
    ctx.globalAlpha = 0.3;
    ctx.fillStyle = pal.onNight;
    ctx.fillRect(left + 10, top + 3, w - 17, 2);
    ctx.globalAlpha = 1;
    // Buchrücken mit goldenen Bünden
    ctx.fillStyle = pal.spine;
    rrect(left + 1.5, top + 1.5, 8, h - 3, [4, 0, 0, 4]);
    ctx.fill();
    ctx.fillStyle = pal.gold;
    for (const by of [top + 7, top + h - 10]) ctx.fillRect(left + 1.5, by, 8, 3);
    // Titelschild
    ctx.fillStyle = pal.gold;
    rrect(left + 14, top + h - 15, 16, 8, 2);
    ctx.fill();
    outline(1.5);
    ctx.fillStyle = pal.ink;
    ctx.fillRect(left + 17, top + h - 12, 10, 1.4);

    // Gesicht
    const eyeY = top + 15;
    const look = airborne ? (book.vy < 0 ? -1.5 : 1.5) : 0;
    if (state === 'over') {
      ctx.strokeStyle = pal.ink;
      ctx.lineWidth = 2;
      for (const ex of [left + 17, left + 27]) {
        ctx.beginPath();
        ctx.moveTo(ex - 3, eyeY - 3); ctx.lineTo(ex + 3, eyeY + 3);
        ctx.moveTo(ex + 3, eyeY - 3); ctx.lineTo(ex - 3, eyeY + 3);
        ctx.stroke();
      }
      ctx.beginPath();
      ctx.arc(left + 22, eyeY + 13, 3.5, Math.PI * 1.15, Math.PI * 1.85);
      ctx.stroke();
    } else {
      const blink = Math.sin(time * 1.7) > 0.985;
      for (const ex of [left + 17, left + 27]) {
        ctx.fillStyle = pal.onNight;
        ctx.beginPath();
        ctx.ellipse(ex, eyeY, 4, blink ? 0.8 : 5, 0, 0, TAU);
        ctx.fill();
        outline(1.5);
        if (!blink) {
          ctx.fillStyle = pal.ink;
          ctx.beginPath(); ctx.arc(ex + 1.3, eyeY + look, 2.2, 0, TAU); ctx.fill();
          ctx.fillStyle = pal.onNight;
          ctx.beginPath(); ctx.arc(ex + 2, eyeY + look - 1, 0.8, 0, TAU); ctx.fill();
        }
      }
      // Wangen
      ctx.globalAlpha = 0.5;
      ctx.fillStyle = pal.orange;
      for (const cx of [left + 13, left + 31]) { ctx.beginPath(); ctx.ellipse(cx, eyeY + 7, 2.6, 1.6, 0, 0, TAU); ctx.fill(); }
      ctx.globalAlpha = 1;
      // Mund: beim Springen ein staunendes „o“
      ctx.strokeStyle = pal.ink;
      ctx.lineWidth = 2;
      ctx.beginPath();
      if (airborne) ctx.ellipse(left + 22, eyeY + 9, 2.2, 2.8, 0, 0, TAU);
      else ctx.arc(left + 22, eyeY + 6, 3.5, Math.PI * 0.15, Math.PI * 0.85);
      ctx.stroke();
    }

    // Arme
    ctx.strokeStyle = pal.ink;
    ctx.lineWidth = 2.5;
    ctx.lineCap = 'round';
    const arm = airborne ? -6 : step * 4;
    ctx.beginPath();
    ctx.moveTo(left + w - 3, top + h * 0.55);
    ctx.lineTo(left + w + 4, top + h * 0.55 + arm);
    ctx.stroke();
    ctx.restore();
  }

  // --- Zeichnen: Szene ---------------------------------------------------------------

  function centerText(lines: string[], y: number) {
    ctx.textAlign = 'center';
    ctx.fillStyle = pal.onNight;
    lines.forEach((l, i) => {
      ctx.font = `700 ${i === 0 ? 30 : 16}px ${font}`;
      ctx.fillText(l, W / 2, y + i * 30);
    });
  }

  function draw() {
    const scale = canvas.width / W;
    ctx.setTransform(scale, 0, 0, scale, 0, 0);
    // Himmel
    ctx.fillStyle = pal.night;
    ctx.fillRect(0, 0, W, H);
    ctx.fillStyle = pal.muted;
    for (const s of stars) {
      ctx.globalAlpha = 0.5 + Math.sin(time * 2 + s.tw) * 0.3;
      const sx = ((s.x - distance * 0.04) % W + W) % W;
      ctx.fillRect(sx, s.y, s.r, s.r);
    }
    ctx.globalAlpha = 1;
    // Mondsichel
    ctx.save();
    ctx.fillStyle = pal.goldLight;
    ctx.globalAlpha = 0.85;
    ctx.beginPath(); ctx.arc(W * 0.16, 44, 16, 0, TAU); ctx.fill();
    ctx.globalAlpha = 1;
    ctx.fillStyle = pal.night;
    ctx.beginPath(); ctx.arc(W * 0.16 + 7, 39, 15, 0, TAU); ctx.fill();
    ctx.restore();
    // Ferne Stadt mit erleuchteten Fenstern (Parallaxe)
    for (const b of skyline) {
      const bx = ((b.x - distance * 0.2) % SKY_SPAN + SKY_SPAN) % SKY_SPAN - 64;
      if (bx > W) continue;
      ctx.globalAlpha = 0.12;
      ctx.fillStyle = pal.muted;
      ctx.fillRect(bx, GROUND - b.h, b.w, b.h);
      ctx.globalAlpha = 0.25;
      ctx.fillStyle = pal.gold;
      for (const l of b.lit) ctx.fillRect(bx + l.x, GROUND - b.h + l.y, 4, 5);
    }
    ctx.globalAlpha = 1;
    // Rauch hinter den Hindernissen
    for (const p of puffs) {
      ctx.globalAlpha = Math.max(0, p.life) * 0.35;
      ctx.fillStyle = pal.smoke;
      ctx.beginPath(); ctx.arc(p.x, p.y, p.r, 0, TAU); ctx.fill();
    }
    ctx.globalAlpha = 1;
    // Boden: Straße mit Kante und Mittelstreifen
    ctx.fillStyle = pal.onNight;
    ctx.fillRect(0, GROUND + 6, W, 3);
    ctx.globalAlpha = 0.08;
    ctx.fillRect(0, GROUND + 9, W, H - GROUND);
    ctx.globalAlpha = 1;
    ctx.fillStyle = pal.muted;
    for (let i = 0; i < Math.ceil(W / 60) + 1; i++) {
      const gx = ((i * 60 - distance) % (W + 60) + W + 60) % (W + 60) - 30;
      ctx.fillRect(gx, GROUND + 26, 26, 3);
    }

    for (const o of obstacles) drawObstacle(o);
    for (const e of embers) {
      ctx.globalAlpha = Math.max(0, e.life);
      ctx.fillStyle = e.life > 0.5 ? pal.yellow : pal.orange;
      ctx.fillRect(e.x, e.y, e.size, e.size);
    }
    ctx.globalAlpha = 1;
    for (const f of flasks) drawFlask(f);
    drawBook();
    for (const p of pops) {
      ctx.globalAlpha = Math.max(0, p.life);
      ctx.fillStyle = pal.flaskGlow;
      ctx.font = `700 18px ${font}`;
      ctx.textAlign = 'center';
      ctx.fillText('+1', p.x + 7, p.y);
    }
    ctx.globalAlpha = 1;

    // Anzeige oben rechts: Highscore und Reagenzgläser in diesem Lauf
    ctx.textAlign = 'right';
    ctx.fillStyle = pal.muted;
    ctx.font = `700 14px ${font}`;
    ctx.fillText(`${text.best} ${Math.max(best(), score)}`, W - 72, 36);
    drawFlask({ x: W - 62, y: 14, taken: false, t: 0 });
    ctx.fillStyle = pal.onNight;
    ctx.font = `700 24px ${font}`;
    ctx.textAlign = 'left';
    ctx.fillText(String(score), W - 42, 40);

    if (state === 'ready') centerText(['Science Jumper', text.tapToStart], 100);
    if (state === 'paused') centerText(['II', text.paused], 100);
    if (state === 'over') centerText([text.gameOver, text.again], 100);
  }

  // --- Ereignisse -------------------------------------------------------------------

  const JUMP_KEYS = new Set([' ', 'Spacebar', 'ArrowUp', 'w', 'W']);
  function keydown(e: KeyboardEvent) {
    if (JUMP_KEYS.has(e.key)) {
      e.preventDefault();
      if (!e.repeat) press();
    } else if (e.key === 'ArrowDown' && state === 'running') {
      e.preventDefault();
      book.fast = true;
    } else if ((e.key === 'p' || e.key === 'P' || e.key === 'Escape') && state === 'running') {
      pause();
    }
  }
  function keyup(e: KeyboardEvent) {
    if (JUMP_KEYS.has(e.key)) release();
    if (e.key === 'ArrowDown') book.fast = false;
  }
  canvas.addEventListener('keydown', keydown);
  canvas.addEventListener('keyup', keyup);
  canvas.addEventListener('pointerdown', (e) => {
    e.preventDefault();
    canvas.focus({ preventScroll: true });
    press();
  });
  window.addEventListener('pointerup', release);
  canvas.addEventListener('blur', pause);
  document.addEventListener('visibilitychange', () => document.hidden && pause());
  window.addEventListener('resize', resize);
  matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => { pal = readPalette(); draw(); });
  document.fonts?.ready.then(draw);

  reset();
  resize();

  return {
    start() {
      canvas.focus({ preventScroll: true });
      start();
    },
  };
}
