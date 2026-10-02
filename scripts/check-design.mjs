// Prüft, dass das Design-System eingehalten wird (läuft vor jedem Build).
// Regeln und Begründungen: docs/design-system.md
import { readFileSync, readdirSync, statSync } from 'node:fs';
import { join, relative } from 'node:path';

const ROOT = new URL('..', import.meta.url).pathname;
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
  const rel = relative(ROOT, file);
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
for (const m of tokensSrc.matchAll(/^\.cat-[\w-]+\s*\{([^}]*)\}/gm)) {
  if (!/color:\s*var\(--on-accent\)/.test(m[1])) errors.push(`${TOKENS}: ${m[0].split('{')[0].trim()} setzt keine Schriftfarbe var(--on-accent).`);
}

// --- 3. Kontraste (WCAG AA) --------------------------------------------------

function readTokens(block) {
  const t = {};
  for (const m of block.matchAll(/(--[\w-]+)\s*:\s*([^;]+);/g)) t[m[1]] = m[2].trim();
  return t;
}
const light = readTokens(tokensSrc.match(/^:root\s*\{([\s\S]*?)^\}/m)[1]);
const darkBlock = tokensSrc.match(/prefers-color-scheme:\s*dark\)\s*\{\s*:root\s*\{([^}]*)\}/);
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

if (errors.length) {
  console.error(`Design-Prüfung: ${errors.length} Problem(e)\n`);
  for (const e of errors) console.error(`  ✗ ${e}`);
  console.error('\nRegeln: docs/design-system.md');
  process.exit(1);
}
console.log(`Design-Prüfung: ${files.length} Dateien ok, Kontraste ok.`);
