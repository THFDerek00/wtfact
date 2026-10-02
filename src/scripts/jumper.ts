// Science Jumper: ein Buch springt über Flammen und sammelt Reagenzgläser.
// Läuft komplett im Browser auf einem <canvas>. Farben kommen aus den Design-Tokens
// in global.css (getComputedStyle), damit das Spiel zum Rest der Seite passt.

export interface JumperText {
  tapToStart: string;
  paused: string;
  gameOver: string;
  again: string;
}

export interface JumperOptions {
  canvas: HTMLCanvasElement;
  text: JumperText;
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
const MAX_SPEED = 820;
const ACCEL = 9;

type Kind = 'flame-s' | 'flame-l' | 'flame-2' | 'crate' | 'barrel' | 'house';
interface Obstacle { kind: Kind; x: number; w: number; h: number; seed: number }
interface Flask { x: number; y: number; taken: boolean; t: number }
interface Ember { x: number; y: number; vy: number; life: number }
interface Pop { x: number; y: number; life: number }

const SIZES: Record<Kind, [number, number]> = {
  'flame-s': [22, 34],
  'flame-l': [30, 52],
  'flame-2': [50, 36],
  crate: [40, 58],
  barrel: [34, 62],
  house: [74, 78],
};

type Palette = Record<'night' | 'onNight' | 'muted' | 'yellow' | 'orange' | 'pink' | 'violet' | 'cyan' | 'flask' | 'flaskGlow' | 'ink' | 'paper', string>;

function readPalette(): Palette {
  const css = getComputedStyle(document.documentElement);
  const v = (name: string) => css.getPropertyValue(name).trim();
  return {
    night: v('--night'),
    onNight: v('--on-night'),
    muted: v('--on-night-muted'),
    yellow: v('--yellow'),
    orange: v('--orange'),
    pink: v('--pink'),
    violet: v('--violet'),
    cyan: v('--cyan'),
    flask: v('--flask'),
    flaskGlow: v('--flask-glow'),
    ink: v('--on-accent'),
    paper: v('--on-night'),
  };
}

export function createJumper({ canvas, text, onCollect, onGameOver }: JumperOptions) {
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

  const book = { x: 90, y: GROUND, vy: 0, w: 34, h: 44, holding: false, fast: false };
  let obstacles: Obstacle[] = [];
  let flasks: Flask[] = [];
  let embers: Ember[] = [];
  let pops: Pop[] = [];
  let nextObstacle = 0;
  let nextFlask = 0;
  // Hintergrund: Sterne und Silhouetten, einmal pro Spiel gewürfelt.
  const stars = Array.from({ length: 40 }, () => ({ x: Math.random() * W, y: Math.random() * (GROUND - 90), r: Math.random() < 0.2 ? 1.6 : 1 }));
  const skyline = Array.from({ length: 14 }, (_, i) => ({ x: i * 70, w: 40 + Math.random() * 30, h: 30 + Math.random() * 60 }));

  const onGround = () => book.y >= GROUND;

  function reset() {
    speed = START_SPEED;
    score = 0;
    distance = 0;
    time = 0;
    obstacles = [];
    flasks = [];
    embers = [];
    pops = [];
    book.y = GROUND;
    book.vy = 0;
    nextObstacle = W + 120;
    nextFlask = W * 0.6;
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
    if (time > 40) pool.push('house', 'flame-2');
    return pool[Math.floor(Math.random() * pool.length)];
  }

  function spawnObstacle() {
    const kind = pickKind();
    const [w, h] = SIZES[kind];
    obstacles.push({ kind, x: W + 20, w, h, seed: Math.random() * 10 });
    // Belohnung für Mut: manchmal schwebt ein Reagenzglas genau über dem Hindernis.
    if (Math.random() < 0.45) flasks.push({ x: W + 20 + w / 2 - 7, y: GROUND - h - 58, taken: false, t: Math.random() * 6 });
    const gap = speed * 0.62 + 170 + Math.random() * (260 + speed * 0.25);
    nextObstacle = distance + gap;
  }

  function spawnFlask() {
    const heights = [GROUND - 30, GROUND - 30, GROUND - 90, GROUND - 140];
    const y = heights[Math.floor(Math.random() * heights.length)];
    const x = W + 20;
    // Nicht direkt in eine Flamme setzen.
    const blocked = obstacles.some((o) => Math.abs(o.x + o.w / 2 - x) < o.w + 30 && y > GROUND - o.h - 30);
    if (!blocked) flasks.push({ x, y, taken: false, t: Math.random() * 6 });
    nextFlask = distance + 160 + Math.random() * 260;
  }

  // --- Spiellogik -----------------------------------------------------------------

  function hit(o: Obstacle) {
    // Etwas großzügige Trefferzone, damit Fast-Treffer nicht frustrieren.
    const pad = 6;
    const bx = book.x + pad, by = book.y - book.h + pad, bw = book.w - pad * 2, bh = book.h - pad;
    const ox = o.x + 4, oy = GROUND - o.h + 8, ow = o.w - 8, oh = o.h - 8;
    return bx < ox + ow && bx + bw > ox && by < oy + oh && by + bh > oy;
  }

  function update(dt: number) {
    time += dt;
    speed = Math.min(MAX_SPEED, speed + ACCEL * dt);
    const dx = speed * dt;
    distance += dx;

    // Buch
    const g = book.fast && !onGround() ? FAST_FALL : GRAVITY;
    book.vy += g * dt;
    book.y += book.vy * dt;
    if (book.y >= GROUND) { book.y = GROUND; book.vy = 0; }

    if (distance >= nextObstacle) spawnObstacle();
    if (distance >= nextFlask) spawnFlask();

    for (const o of obstacles) {
      o.x -= dx;
      if (Math.random() < 0.25) embers.push({ x: o.x + Math.random() * o.w, y: GROUND - o.h * Math.random(), vy: -30 - Math.random() * 60, life: 1 });
    }
    obstacles = obstacles.filter((o) => o.x + o.w > -20);

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

    for (const e of embers) { e.x -= dx * 0.9; e.y += e.vy * dt; e.life -= dt * 1.4; }
    embers = embers.filter((e) => e.life > 0);
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

  // --- Zeichnen -------------------------------------------------------------------

  function flame(x: number, base: number, w: number, h: number, seed: number) {
    const flick = Math.sin(time * 18 + seed * 3) * 0.08 + Math.sin(time * 11 + seed) * 0.05;
    const layers: [string, number][] = [[pal.pink, 1], [pal.orange, 0.78], [pal.yellow, 0.5]];
    for (const [color, k] of layers) {
      const lw = w * k, lh = h * k * (1 + flick);
      const cx = x + w / 2;
      ctx.fillStyle = color;
      ctx.beginPath();
      ctx.moveTo(cx - lw / 2, base);
      ctx.quadraticCurveTo(cx - lw / 2 - lw * 0.1, base - lh * 0.55, cx + Math.sin(time * 9 + seed) * lw * 0.12, base - lh);
      ctx.quadraticCurveTo(cx + lw / 2 + lw * 0.1, base - lh * 0.55, cx + lw / 2, base);
      ctx.closePath();
      ctx.fill();
    }
  }

  function outlineRect(x: number, y: number, w: number, h: number, fill: string) {
    ctx.fillStyle = fill;
    ctx.fillRect(x, y, w, h);
    ctx.strokeStyle = pal.ink;
    ctx.lineWidth = 2.5;
    ctx.strokeRect(x, y, w, h);
  }

  function drawObstacle(o: Obstacle) {
    const base = GROUND;
    switch (o.kind) {
      case 'flame-s':
      case 'flame-l':
        flame(o.x, base, o.w, o.h, o.seed);
        break;
      case 'flame-2':
        flame(o.x, base, o.w * 0.5, o.h * 0.85, o.seed);
        flame(o.x + o.w * 0.45, base, o.w * 0.55, o.h, o.seed + 2);
        break;
      case 'crate': {
        const bh = 34;
        outlineRect(o.x, base - bh, o.w, bh, pal.orange);
        ctx.beginPath();
        ctx.moveTo(o.x, base - bh); ctx.lineTo(o.x + o.w, base);
        ctx.moveTo(o.x + o.w, base - bh); ctx.lineTo(o.x, base);
        ctx.stroke();
        flame(o.x + 4, base - bh, o.w - 8, o.h - bh, o.seed);
        break;
      }
      case 'barrel': {
        const bh = 40;
        outlineRect(o.x, base - bh, o.w, bh, pal.violet);
        ctx.beginPath();
        ctx.moveTo(o.x, base - bh * 0.33); ctx.lineTo(o.x + o.w, base - bh * 0.33);
        ctx.moveTo(o.x, base - bh * 0.66); ctx.lineTo(o.x + o.w, base - bh * 0.66);
        ctx.stroke();
        flame(o.x + 3, base - bh, o.w - 6, o.h - bh, o.seed);
        break;
      }
      case 'house': {
        const wallH = 46, roofH = 18;
        outlineRect(o.x, base - wallH, o.w, wallH, pal.muted);
        ctx.fillStyle = pal.pink;
        ctx.beginPath();
        ctx.moveTo(o.x - 4, base - wallH); ctx.lineTo(o.x + o.w / 2, base - wallH - roofH); ctx.lineTo(o.x + o.w + 4, base - wallH);
        ctx.closePath(); ctx.fill(); ctx.stroke();
        // Fenster mit Feuerschein
        for (const fx of [o.x + 10, o.x + o.w - 26]) outlineRect(fx, base - wallH + 10, 16, 14, pal.yellow);
        outlineRect(o.x + o.w / 2 - 8, base - 20, 16, 20, pal.night);
        flame(o.x + 6, base - wallH - roofH + 6, o.w * 0.45, o.h - wallH - roofH + 22, o.seed);
        flame(o.x + o.w * 0.45, base - wallH - 4, o.w * 0.5, o.h - wallH + 4, o.seed + 1);
        break;
      }
    }
  }

  function drawFlask(f: Flask) {
    const bob = Math.sin(f.t * 4) * 3;
    const x = f.x, y = f.y + bob;
    ctx.save();
    ctx.shadowColor = pal.flaskGlow;
    ctx.shadowBlur = 12;
    // Glas
    ctx.fillStyle = pal.paper;
    ctx.strokeStyle = pal.ink;
    ctx.lineWidth = 2;
    ctx.beginPath();
    ctx.roundRect(x, y + 4, 14, 26, [0, 0, 7, 7]);
    ctx.fill();
    ctx.shadowBlur = 0;
    // Flüssigkeit
    ctx.fillStyle = pal.flask;
    ctx.beginPath();
    ctx.roundRect(x + 1.5, y + 14, 11, 14.5, [0, 0, 6, 6]);
    ctx.fill();
    ctx.fillStyle = pal.flaskGlow;
    ctx.fillRect(x + 3.5, y + 16, 2, 8);
    // Rand und Korken
    ctx.beginPath();
    ctx.roundRect(x, y + 4, 14, 26, [0, 0, 7, 7]);
    ctx.stroke();
    ctx.fillStyle = pal.orange;
    ctx.fillRect(x - 1, y, 16, 6);
    ctx.strokeRect(x - 1, y, 16, 6);
    ctx.restore();
  }

  function drawBook() {
    const { x, y, w, h } = book;
    const airborne = !onGround();
    const run = state === 'running' && !airborne ? Math.sin(time * 22) : 0;
    ctx.save();
    ctx.translate(x + w / 2, y - h / 2 + (run > 0 ? -2 : 0));
    ctx.rotate(airborne ? Math.max(-0.35, Math.min(0.35, book.vy / 2400)) : 0);
    // Beine
    ctx.strokeStyle = pal.onNight;
    ctx.lineWidth = 3;
    ctx.lineCap = 'round';
    ctx.beginPath();
    ctx.moveTo(-7, h / 2); ctx.lineTo(-7 + run * 5, h / 2 + 6);
    ctx.moveTo(7, h / 2); ctx.lineTo(7 - run * 5, h / 2 + 6);
    ctx.stroke();
    // Seiten (Papierkante rechts)
    ctx.fillStyle = pal.paper;
    ctx.fillRect(-w / 2 + 6, -h / 2 + 3, w - 4, h - 6);
    ctx.strokeStyle = pal.ink;
    ctx.lineWidth = 1;
    for (let i = 0; i < 4; i++) {
      ctx.beginPath();
      ctx.moveTo(w / 2 + 0.5, -h / 2 + 8 + i * 9);
      ctx.lineTo(w / 2 - 3, -h / 2 + 8 + i * 9);
      ctx.stroke();
    }
    // Einband
    ctx.lineWidth = 2.5;
    ctx.fillStyle = pal.cyan;
    ctx.beginPath();
    ctx.roundRect(-w / 2, -h / 2, w - 2, h, 4);
    ctx.fill();
    ctx.stroke();
    // Buchrücken
    ctx.fillStyle = pal.violet;
    ctx.fillRect(-w / 2 + 1.5, -h / 2 + 1.5, 6, h - 3);
    // Gesicht
    ctx.fillStyle = pal.ink;
    const blink = Math.sin(time * 1.7) > 0.97;
    const eyeY = -h / 2 + 15;
    if (state === 'over') {
      ctx.lineWidth = 2;
      for (const ex of [3, 12]) {
        ctx.beginPath();
        ctx.moveTo(ex - 3, eyeY - 3); ctx.lineTo(ex + 3, eyeY + 3);
        ctx.moveTo(ex + 3, eyeY - 3); ctx.lineTo(ex - 3, eyeY + 3);
        ctx.stroke();
      }
    } else {
      for (const ex of [3, 12]) ctx.fillRect(ex - 2, eyeY - (blink ? 0.5 : 3), 4, blink ? 1 : 6);
    }
    ctx.lineWidth = 2;
    ctx.beginPath();
    if (state === 'over') ctx.arc(7.5, eyeY + 14, 4, Math.PI * 1.15, Math.PI * 1.85);
    else ctx.arc(7.5, eyeY + 7, 4, Math.PI * 0.15, Math.PI * 0.85);
    ctx.stroke();
    // Titel-Etikett
    ctx.fillStyle = pal.yellow;
    ctx.fillRect(-1, h / 2 - 12, 18, 6);
    ctx.restore();
  }

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
      const sx = ((s.x - distance * 0.05) % W + W) % W;
      ctx.fillRect(sx, s.y, s.r, s.r);
    }
    // Ferne Stadt, langsamer (Parallaxe)
    ctx.globalAlpha = 0.1;
    ctx.fillStyle = pal.muted;
    const span = skyline.length * 70;
    for (const b of skyline) {
      const bx = ((b.x - distance * 0.2) % span + span) % span - 70;
      ctx.fillRect(bx, GROUND - b.h, b.w, b.h);
    }
    ctx.globalAlpha = 1;
    // Boden
    ctx.fillStyle = pal.onNight;
    ctx.fillRect(0, GROUND + 6, W, 3);
    ctx.fillStyle = pal.muted;
    for (let i = 0; i < 26; i++) {
      const gx = ((i * 53 - distance) % W + W) % W;
      ctx.fillRect(gx, GROUND + 16 + (i % 3) * 8, 8 + (i % 4) * 4, 2);
    }

    for (const o of obstacles) drawObstacle(o);
    for (const e of embers) {
      ctx.globalAlpha = Math.max(0, e.life);
      ctx.fillStyle = pal.yellow;
      ctx.fillRect(e.x, e.y, 2, 2);
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

    // Anzeige oben rechts: Reagenzglas + Zähler
    drawFlask({ x: W - 74, y: 14, taken: false, t: 0 });
    ctx.fillStyle = pal.onNight;
    ctx.font = `700 24px ${font}`;
    ctx.textAlign = 'left';
    ctx.fillText(String(score), W - 52, 40);

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
