// Prüft, dass das Design-System eingehalten wird (läuft vor jedem Build).
// Regeln und Begründungen: docs/design-system.md
import { readFileSync, readdirSync, statSync } from 'node:fs';
import { join, relative, sep } from 'node:path';
import { fileURLToPath } from 'node:url';

// fileURLToPath statt .pathname, sonst wird unter Windows aus C:\… ein kaputtes C:\C:\….
const ROOT = fileURLToPath(new URL('..', import.meta.url));
const TOKENS = 'src/styles/global.css';
const errors = [];

function walk(dir) {
  return readdirSync(dir).flatMap((name) => {
    const p = join(dir, name);
    return statSync(p).isDirectory() ? walk(p) : [p];
  });
}

const files = walk(join(ROOT, 'src')).filter((f) => /\.(astro|css)$/.test(f));

// --- 1. Werte nur aus Tokens -------------------------------------------------

// Eigenschaften, deren Werte aus Tokens kommen müssen.
const TOKEN_PROPS = /^(font|font-size|font-family|margin(-\w+)*|padding(-\w+)*|gap|row-gap|column-gap|border(-\w+)*|outline(-\w+)*|box-shadow|transition(-\w+)*|animation(-\w+)*|filter)$/;
const COLOR = /#[0-9a-f]{3,8}\b|\b(rgba?|hsla?|oklch|lab|lch)\(/i;
const LENGTH = /(?<![\w-])\d*\.?\d+(px|rem|em)\b/;
const TIME = /(?<![\w-])\d*\.?\d+m?s\b/;

function styleBlocks(file, src) {
  if (file.endsWith('.css')) return [{ css: src, offset: 0 }];
  const out = [];
  for (const m of src.matchAll(/<style[^>]*>([\s\S]*?)<\/style>/g)) {
    out.push({ css: m[1], offset: m.index + m[0].indexOf(m[1]) });
  }
  return out;
}

const lineAt = (src, i) => src.slice(0, i).split('\n').length;

for (const file of files) {
  const rel = relative(ROOT, file).split(sep).join('/');
  const src = readFileSync(file, 'utf8');

  for (const { css, offset } of styleBlocks(file, src)) {
    // Token-Definitionen (:root-Blöcke) in global.css sind die einzige erlaubte Quelle.
    const masked = rel === TOKENS
      ? css.replace(/:root\s*\{[^}]*\}/g, (m) => m.replace(/[^\n]/g, ' '))
      : css;
    const clean = masked.replace(/\/\*[\s\S]*?\*\//g, (m) => m.replace(/[^\n]/g, ' '));

    for (const m of clean.matchAll(/([a-z-]+)\s*:\s*([^;{}]+)/g)) {
      const [, prop, value] = m;
      const where = `${rel}:${lineAt(src, offset + m.index)}`;
      if (prop.startsWith('--')) continue;
      if (COLOR.test(value)) errors.push(`${where} Farbe "${value.trim()}" direkt gesetzt. Nutze ein Farb-Token aus ${TOKENS}.`);
      if (!TOKEN_PROPS.test(prop)) continue;
      if (/clamp\(/.test(value)) errors.push(`${where} ${prop}: clamp() direkt gesetzt. Nutze --fs-display-*.`);
      const v = value.replace(/var\([^)]*\)/g, '');
      if (LENGTH.test(v) && !/^\s*-1px\s*$/.test(v)) {
        errors.push(`${where} ${prop}: "${value.trim()}" enthält feste Größen. Nutze --space-*, --fs-*, --bw*, --radius-* oder --shadow-*.`);
      }
      if (/^(transition|animation)/.test(prop) && TIME.test(v.replace(/(?<![\w.-])0m?s\b/g, ""))) {
        errors.push(`${where} ${prop}: feste Zeit "${value.trim()}". Nutze var(--dur).`);
      }
    }
  }

  if (file.endsWith('.astro')) {
    const markup = src.replace(/<style[\s\S]*?<\/style>|<script[\s\S]*?<\/script>/g, '');
    for (const m of markup.matchAll(/\sstyle=["{]/g)) {
      errors.push(`${rel}:${lineAt(src, m.index)} Inline-Style. Nutze eine Klasse im <style>-Block.`);
    }
    for (const m of markup.matchAll(/<button\b(?![^>]*\btype=)[^>]*>/g)) {
      errors.push(`${rel}:${lineAt(src, m.index)} <button> ohne type="button".`);
    }
    for (const m of markup.matchAll(/class:list=\{[^}]*\bon\b|class="[^"]*\bon\b/g)) {
      errors.push(`${rel}:${lineAt(src, m.index)} Zustand per Klasse "on". Nutze aria-pressed oder aria-current.`);
    }
    for (const m of markup.matchAll(/role="group"(?![^>]*aria-label)/g)) {
      errors.push(`${rel}:${lineAt(src, m.index)} role="group" ohne aria-label.`);
    }
  }
}

// --- 2. Pflicht-Regeln in global.css -----------------------------------------

const tokensSrc = readFileSync(join(ROOT, TOKENS), 'utf8');
if (!/:focus-visible\s*\{/.test(tokensSrc)) errors.push(`${TOKENS}: globaler :focus-visible-Stil fehlt.`);
if (!/prefers-reduced-motion:\s*reduce/.test(tokensSrc)) errors.push(`${TOKENS}: Regel für prefers-reduced-motion fehlt.`);
const catRules = new Set();
const catDots = new Map(); // Kategorie -> '--dots' oder '--dots-strong'
for (const m of tokensSrc.matchAll(/^\.cat-([\w-]+)\s*\{([^}]*)\}/gm)) {
  const [, key, body] = m;
  catRules.add(key);
  if (!/color:\s*var\(--on-accent\)/.test(body)) errors.push(`${TOKENS}: .cat-${key} setzt keine Schriftfarbe var(--on-accent).`);
  // Punktmuster auf jeder Kategorie-Fläche (Wunsch von Eric, 2026-10-02); kräftige Variante siehe Abschnitt 4
  const dm = body.match(new RegExp(`background:\\s*var\\((--dots(?:-strong)?)\\),\\s*var\\(--cat-${key}\\)`));
  if (!dm || !/background-size:\s*var\(--dots-size\)/.test(body)) {
    errors.push(`${TOKENS}: .cat-${key} hat kein Punktmuster. Muster: background: var(--dots), var(--cat-${key}); background-size: var(--dots-size) var(--dots-size);`);
  } else catDots.set(key, dm[1]);
}
// Jede Kategorie aus src/config.ts braucht ihre .cat-*-Klasse (und damit das Punktmuster).
const cats = readFileSync(join(ROOT, 'src/config.ts'), 'utf8').match(/CATEGORIES\s*=\s*\[([^\]]*)\]/)[1].match(/[\w-]+/g);
for (const c of cats) if (!catRules.has(c)) errors.push(`${TOKENS}: Klasse .cat-${c} fehlt (Kategorie aus src/config.ts).`);
// Kategoriefarben nur über die .cat-*-Klasse, nie direkt als Fläche. Sonst fehlt das Punktmuster.
for (const file of files) {
  const rel = relative(ROOT, file).split(sep).join('/');
  const src = readFileSync(file, 'utf8');
  for (const { css, offset } of styleBlocks(file, src)) {
    const clean = (rel === TOKENS ? css.replace(/^\.cat-[\w-]+\s*\{[^}]*\}/gm, (x) => x.replace(/[^\n]/g, ' ')) : css)
      .replace(/\/\*[\s\S]*?\*\//g, (x) => x.replace(/[^\n]/g, ' '));
    for (const m of clean.matchAll(/(?<![-\w])(background(?:-color|-image)?|fill)\s*:\s*([^;{}]*var\(--cat-[^;{}]*)/g)) {
      errors.push(`${rel}:${lineAt(src, offset + m.index)} Kategoriefarbe direkt als Fläche. Nutze die Klasse .cat-*, dann kommt das Punktmuster automatisch mit.`);
    }
  }
}

// --- 3. Kontraste (WCAG AA) --------------------------------------------------

function readTokens(block) {
  const t = {};
  for (const m of block.matchAll(/(--[\w-]+)\s*:\s*([^;]+);/g)) t[m[1]] = m[2].trim();
  return t;
}
const light = readTokens(tokensSrc.match(/^:root\s*\{([\s\S]*?)^\}/m)[1]);
const darkBlock = tokensSrc.match(/prefers-color-scheme:\s*dark\)\s*\{\s*:root:not\(\[data-theme='light'\]\)\s*\{([^}]*)\}/);
const darkToggle = tokensSrc.match(/^:root\[data-theme='dark'\]\s*\{([^}]*)\}/m);
if (!darkBlock || !darkToggle) errors.push(`${TOKENS}: Dunkle Tokens brauchen zwei Blöcke: @media (prefers-color-scheme: dark) { :root:not([data-theme='light']) {…} } und :root[data-theme='dark'] {…}.`);
else if (JSON.stringify(readTokens(darkBlock[1])) !== JSON.stringify(readTokens(darkToggle[1]))) errors.push(`${TOKENS}: Die beiden Dark-Mode-Blöcke (System und Umschalter) sind unterschiedlich. Beide gleich halten.`);
const dark = { ...light, ...(darkBlock ? readTokens(darkBlock[1]) : {}) };

function resolve(t, name) {
  let v = t[name];
  for (let i = 0; v && i < 5; i++) {
    const ref = v.match(/^var\((--[\w-]+)\)$/);
    if (!ref) break;
    v = t[ref[1]];
  }
  return v;
}
function lum(hex) {
  const h = hex.replace('#', '');
  const full = h.length === 3 ? [...h].map((c) => c + c).join('') : h;
  return [0, 2, 4]
    .map((i) => parseInt(full.slice(i, i + 2), 16) / 255)
    .map((c) => (c <= 0.03928 ? c / 12.92 : ((c + 0.055) / 1.055) ** 2.4))
    .reduce((s, c, i) => s + c * [0.2126, 0.7152, 0.0722][i], 0);
}
function ratio(a, b) {
  const [x, y] = [lum(a), lum(b)].sort((p, q) => q - p);
  return (x + 0.05) / (y + 0.05);
}

const accents = Object.keys(light).filter((k) => k.startsWith('--cat-')).concat('--yellow', '--orange', '--cyan', '--gold', '--gold-light', '--gold-deep');
const PAIRS = [
  ...['--ink', '--muted', '--pink-text'].flatMap((fg) => ['--bg', '--surface'].map((bg) => [fg, bg, 4.5])),
  ...accents.map((bg) => ['--on-accent', bg, 4.5]),
  ['--focus', '--bg', 3],
  ['--focus', '--surface', 3],
];
for (const [mode, t] of [['hell', light], ['dunkel', dark]]) {
  for (const [fg, bg, min] of PAIRS) {
    const a = resolve(t, fg);
    const b = resolve(t, bg);
    if (!/^#[0-9a-f]{3,6}$/i.test(a ?? '') || !/^#[0-9a-f]{3,6}$/i.test(b ?? '')) {
      errors.push(`${TOKENS}: Token ${fg} oder ${bg} fehlt oder ist keine Hex-Farbe (${mode}).`);
      continue;
    }
    const r = ratio(a, b);
    if (r < min) errors.push(`${TOKENS}: Kontrast ${fg} auf ${bg} (${mode}) ist ${r.toFixed(2)}:1, nötig ${min}:1.`);
  }
}

// --- 4. Punktmuster: lesbar UND sichtbar --------------------------------------
// Zwei Varianten, beide dunkel (Eric, 2026-10-03: einheitlich dunkle Punkte): --dots (9 %) und --dots-strong (18 %).
// Auf warmen, kräftigen Farben (Rot, Orange, Pink) gehen 9 % unter (Körper, Geschichte, Essen), dort ist --dots-strong Pflicht.
// Schrift: auf der Fläche im Mittel (Punkte bedecken ca. 15 %) mindestens 4.5:1, direkt auf einem Punkt mindestens 3:1.
// Sichtbarkeit: der Punkt hebt sich mit Farbabstand ΔE ≥ 6 von der Fläche ab.
const share = (name) => Number((light[name] ?? '').match(/(\d+)%/)?.[1] ?? NaN) / 100;
const DOT = {
  '--dots': { share: share('--dots-ink'), max: 0.12 },
  '--dots-strong': { share: share('--dots-ink-strong'), max: 0.25 },
};
for (const [name, d] of Object.entries(DOT)) {
  if (!(d.share > 0 && d.share <= d.max)) errors.push(`${TOKENS}: ${name === '--dots' ? '--dots-ink' : '--dots-ink-strong'} muss color-mix(in srgb, var(--on-accent) N%, transparent) mit 0 < N ≤ ${d.max * 100} sein.`);
}
const DOT_COVERAGE = Math.PI * 0.22 * 0.22; // Punktradius 22 % des Rasters
const hex = (v) => /^#[0-9a-f]{6}$/i.test(v ?? '');
const mix = (a, b, w) => '#' + [0, 2, 4].map((i) => Math.round(parseInt(a.slice(1 + i, 3 + i), 16) * (1 - w) + parseInt(b.slice(1 + i, 3 + i), 16) * w).toString(16).padStart(2, '0')).join('');
// Farbton in Grad und Sättigung (HSL)
function hueSat(h) {
  const [r, g, b] = [0, 2, 4].map((i) => parseInt(h.slice(1 + i, 3 + i), 16) / 255);
  const mx = Math.max(r, g, b), mn = Math.min(r, g, b), d = mx - mn, l = (mx + mn) / 2;
  if (!d) return [0, 0];
  const hue = mx === r ? ((g - b) / d + 6) % 6 : mx === g ? (b - r) / d + 2 : (r - g) / d + 4;
  return [hue * 60, d / (1 - Math.abs(2 * l - 1))];
}
const isWarm = (h) => { const [hue, sat] = hueSat(h); return sat >= 0.6 && (hue >= 320 || hue <= 40); };
// Farbabstand (CIE76) als Maß, wie deutlich ein Punkt auf der Fläche zu sehen ist
function lab(h) {
  const lin = (c) => (c <= 0.04045 ? c / 12.92 : ((c + 0.055) / 1.055) ** 2.4);
  const [r, g, b] = [0, 2, 4].map((i) => lin(parseInt(h.slice(1 + i, 3 + i), 16) / 255));
  const f = (t) => (t > 0.008856 ? Math.cbrt(t) : 7.787 * t + 16 / 116);
  const [x, y, z] = [(0.4124 * r + 0.3576 * g + 0.1805 * b) / 0.95047, 0.2126 * r + 0.7152 * g + 0.0722 * b, (0.0193 * r + 0.1192 * g + 0.9505 * b) / 1.08883].map(f);
  return [116 * y - 16, 500 * (x - y), 200 * (y - z)];
}
const deltaE = (a, b) => { const p = lab(a), q = lab(b); return Math.hypot(p[0] - q[0], p[1] - q[1], p[2] - q[2]); };
const MIN_DOT_DELTA_E = 6;
for (const [key, variant] of catDots) {
  const lightBg = resolve(light, `--cat-${key}`);
  if (hex(lightBg) && isWarm(lightBg) && variant !== '--dots-strong') {
    errors.push(`${TOKENS}: .cat-${key} ist eine warme, kräftige Farbe, Punkte mit 9 % sind darauf kaum zu sehen. Nutze var(--dots-strong).`);
  }
  for (const [mode, t] of [['hell', light], ['dunkel', dark]]) {
    const bg = resolve(t, `--cat-${key}`), ink = resolve(t, '--on-accent'), d = DOT[variant];
    if (!hex(bg) || !hex(ink) || !(d.share > 0)) continue;
    const spot = mix(bg, ink, d.share);
    const avg = ratio(ink, mix(bg, ink, d.share * DOT_COVERAGE));
    if (avg < 4.5) errors.push(`${TOKENS}: Kontrast --on-accent auf --cat-${key} mit Punktmuster (${mode}) ist ${avg.toFixed(2)}:1, nötig 4.5:1.`);
    const r = ratio(ink, spot);
    if (r < 3) errors.push(`${TOKENS}: Kontrast --on-accent direkt auf einem Punkt (--cat-${key}, ${mode}) ist ${r.toFixed(2)}:1, nötig 3:1.`);
    const e = deltaE(bg, spot);
    if (e < MIN_DOT_DELTA_E) errors.push(`${TOKENS}: Punkte auf --cat-${key} (${mode}) kaum sichtbar (Farbabstand ${e.toFixed(1)}, nötig ${MIN_DOT_DELTA_E}).`);
  }
}

if (errors.length) {
  console.error(`Design-Prüfung: ${errors.length} Problem(e)\n`);
  for (const e of errors) console.error(`  ✗ ${e}`);
  console.error('\nRegeln: docs/design-system.md');
  process.exit(1);
}
console.log(`Design-Prüfung: ${files.length} Dateien ok, Kontraste ok.`);
