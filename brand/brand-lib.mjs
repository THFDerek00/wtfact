// Gemeinsame Bausteine für die Marken-Grafiken (build-brand.mjs, build-social-kit.mjs):
// Farben, Schriften als Pfade, Logo, Symbole, Karten, Chips, Punktmuster.
import fs from 'node:fs';
import path from 'node:path';
import { createRequire } from 'node:module';
import { fileURLToPath } from 'node:url';
import { execFileSync } from 'node:child_process';
import opentype from 'opentype.js';
import { Resvg } from '@resvg/resvg-js';

const require = createRequire(import.meta.url);
export const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const loadFont = (f) => {
  const buf = fs.readFileSync(require.resolve(f));
  return opentype.parse(buf.buffer.slice(buf.byteOffset, buf.byteOffset + buf.byteLength));
};
export const DISPLAY = loadFont('@fontsource/space-grotesk/files/space-grotesk-latin-700-normal.woff');
export const TEXT = loadFont('@fontsource/inter/files/inter-latin-600-normal.woff');

// Farben aus src/styles/global.css
export const C = {
  bg: '#fffaf0', ink: '#141414', muted: '#5b5b5b', white: '#ffffff', night: '#111014', paper: '#f4f1ea',
  pink: '#ff3d7f', yellow: '#ffd23f', cyan: '#3ddcff', lime: '#b6f23a', violet: '#9b6bff', orange: '#ff8a3d',
};

// ---------- Hilfsfunktionen ----------
export const r2 = (n) => Math.round(n * 100) / 100;
export function measure(str, size, font = DISPLAY, track = 0) {
  let w = 0;
  for (const ch of str) w += (font.getAdvanceWidth(ch, size) + track * size);
  return w - track * size;
}
// Eigene Umwandlung, weil toPathData() von opentype.js bei manchen Zahlen "NaN" liefert.
export function pathData(p) {
  const n = (v) => String(r2(v));
  return p.commands.map((c) =>
    c.type === 'M' || c.type === 'L' ? `${c.type}${n(c.x)} ${n(c.y)}`
    : c.type === 'Q' ? `Q${n(c.x1)} ${n(c.y1)} ${n(c.x)} ${n(c.y)}`
    : c.type === 'C' ? `C${n(c.x1)} ${n(c.y1)} ${n(c.x2)} ${n(c.y2)} ${n(c.x)} ${n(c.y)}`
    : 'Z').join('');
}
// Text als SVG-Pfad. anchor: start | middle | end. track in em.
export function text(str, { x = 0, y = 0, size = 40, font = DISPLAY, fill = C.ink, anchor = 'start', track = 0 } = {}) {
  const w = measure(str, size, font, track);
  let cx = anchor === 'middle' ? x - w / 2 : anchor === 'end' ? x - w : x;
  let d = '';
  for (const ch of str) {
    d += pathData(font.getPath(ch, cx, y, size));
    cx += font.getAdvanceWidth(ch, size) + track * size;
  }
  return `<path fill="${fill}" d="${d}"/>`;
}
// Zeilenumbruch nach Breite
export function wrap(str, size, maxW, font = DISPLAY, track = 0) {
  const lines = [];
  let cur = '';
  for (const word of str.split(' ')) {
    const t = cur ? `${cur} ${word}` : word;
    if (measure(t, size, font, track) > maxW && cur) { lines.push(cur); cur = word; } else cur = t;
  }
  if (cur) lines.push(cur);
  return lines;
}
export const svg = (w, h, body, extra = '') =>
  `<svg xmlns="http://www.w3.org/2000/svg" width="${w}" height="${h}" viewBox="0 0 ${w} ${h}"${extra}>${body}</svg>\n`;

export function out(rel, content) {
  const p = path.join(ROOT, rel);
  fs.mkdirSync(path.dirname(p), { recursive: true });
  fs.writeFileSync(p, content);
  console.log('✓', rel);
}
export function png(rel, svgStr, width) {
  const r = new Resvg(svgStr, { fitTo: width ? { mode: 'width', value: width } : { mode: 'original' } });
  out(rel, r.render().asPng());
}

// ---------- Logo ----------
// Wortmarke: "WTF" + "act" in Pink + gekipptes "?!" auf gelbem Kästchen, wie im Seitenkopf.
export function wordmark({ size = 100, x = 0, y = 0, ink = C.ink, line = C.ink, act = C.pink } = {}) {
  const track = -0.04;
  const wWTF = measure('WTF', size, DISPLAY, track);
  const wAct = measure('act', size, DISPLAY, track);
  const cap = size * 0.7; // Versalhöhe Space Grotesk
  const bx = x + wWTF + wAct + size * 0.1;
  const bw = measure('?!', size, DISPLAY, 0) + size * 0.34;
  const bh = size * 0.98;
  const by = y - cap - (bh - cap) / 2;
  const sw = size * 0.05;
  const cxB = bx + bw / 2, cyB = by + bh / 2;
  const body =
    text('WTF', { x, y, size, fill: ink, track }) +
    text('act', { x: x + wWTF + track * size, y, size, fill: act, track }) +
    `<g transform="rotate(-6 ${r2(cxB)} ${r2(cyB)})">` +
    `<rect x="${r2(bx)}" y="${r2(by)}" width="${r2(bw)}" height="${r2(bh)}" rx="${r2(size * 0.14)}" fill="${C.yellow}" stroke="${line}" stroke-width="${r2(sw)}"/>` +
    text('?!', { x: cxB, y: cyB + cap / 2, size, fill: C.ink, anchor: 'middle' }) +
    `</g>`;
  return { body, width: bx + bw - x + sw, top: by - sw, bottom: by + bh + sw };
}
export function logoFile(ink, act, line) {
  const pad = 12;
  const m = wordmark({ size: 100, x: pad, y: 0, ink, act, line });
  const h = m.bottom - m.top + pad * 2;
  const w = m.width + pad * 2 + 4;
  return svg(r2(w), r2(h), `<g transform="translate(0 ${r2(-m.top + pad)})">${m.body}</g>`, ' role="img" aria-label="WTFact"');
}

// Bildzeichen: gelbes Kästchen mit "?!" und hartem Schatten (wie die Karten auf der Seite).
export function mark({ size = 512, shadow = true, bg = null, maskable = false } = {}) {
  const s = size;
  const inset = maskable ? s * 0.2 : shadow ? s * 0.07 : s * 0.06;
  const off = shadow ? s * 0.05 : 0;
  const box = s - inset * 2 - off;
  const sw = Math.max(s * 0.055, 2);
  const x = inset, y = inset;
  let body = bg ? `<rect width="${s}" height="${s}" fill="${bg}"/>` : '';
  if (shadow) body += `<rect x="${r2(x + off)}" y="${r2(y + off)}" width="${r2(box)}" height="${r2(box)}" rx="${r2(box * 0.24)}" fill="${C.ink}"/>`;
  body += `<rect x="${r2(x + sw / 2)}" y="${r2(y + sw / 2)}" width="${r2(box - sw)}" height="${r2(box - sw)}" rx="${r2(box * 0.22)}" fill="${C.yellow}" stroke="${C.ink}" stroke-width="${r2(sw)}"/>`;
  const fs_ = box * 0.62;
  body += `<g transform="rotate(-6 ${r2(x + box / 2)} ${r2(y + box / 2)})">` +
    text('?!', { x: x + box / 2, y: y + box / 2 + fs_ * 0.35, size: fs_, anchor: 'middle', track: -0.02 }) + `</g>`;
  return svg(s, s, body);
}

// ---------- Kategorie-Symbole (24er-Raster, Linien) ----------
export const ICONS = {
  science: '<circle cx="12" cy="12" r="1.6" fill="currentColor"/><ellipse cx="12" cy="12" rx="10" ry="4"/><ellipse cx="12" cy="12" rx="10" ry="4" transform="rotate(60 12 12)"/><ellipse cx="12" cy="12" rx="10" ry="4" transform="rotate(120 12 12)"/>',
  history: '<path d="M6 2.5h12M6 21.5h12M7 2.5c0 5 10 5.5 10 9.5s-10 4.5-10 9.5M17 2.5c0 5-10 5.5-10 9.5s10 4.5 10 9.5"/><path d="M9.5 19h5" />',
  tech: '<rect x="6" y="6" width="12" height="12" rx="2"/><rect x="9.5" y="9.5" width="5" height="5" rx="1"/><path d="M9 2.5V6M15 2.5V6M9 18v3.5M15 18v3.5M2.5 9H6M2.5 15H6M18 9h3.5M18 15h3.5"/>',
  nature: '<path d="M4.5 20C4 11 9 4.5 20.5 3.5 20.5 14 15 20 6.5 19.5"/><path d="M4.5 20 13 11.5"/>',
  body: '<path d="M12 20.5S3 15 3 8.8C3 5.9 5.2 3.8 7.8 3.8c1.8 0 3.3 1 4.2 2.4.9-1.4 2.4-2.4 4.2-2.4C18.8 3.8 21 5.9 21 8.8c0 6.2-9 11.7-9 11.7z"/><path d="M6.5 11h3l1.5-2.5 2 5 1.5-2.5h3"/>',
  weird: '<path d="M2 12s3.6-6.5 10-6.5S22 12 22 12s-3.6 6.5-10 6.5S2 12 2 12z"/><circle cx="12" cy="12" r="3.2"/><circle cx="12" cy="12" r="1" fill="currentColor"/>',
  survival: '<path d="M12 22c4 0 7-2.7 7-6.6 0-3.4-2.3-5.6-4-7.4-.4 2-1.4 3.2-2.6 3.6C12.8 8 11.5 4.5 9 2c.3 3.6-1.8 5.6-3.4 7.8C4.6 11.2 5 13 5 15.4 5 19.3 8 22 12 22z"/><path d="M12 22c-1.7 0-3-1.2-3-2.9 0-1.6 1.2-2.6 2-3.6.4 1 1 1.4 1.6 1.5.4-.8.4-1.8 0-2.8 1.6.9 2.4 2.6 2.4 4.1 0 2.1-1.3 3.7-3 3.7z"/>',
  food: '<path d="M7 2.5v19"/><path d="M4 2.5v5.5a3 3 0 0 0 6 0V2.5"/><path d="M17 21.5v-19c-2.8 1.4-4 4.3-4 8.2 0 2 1 3.3 4 3.3"/>',
  language: '<path d="M4 4.5h16a1.5 1.5 0 0 1 1.5 1.5v10a1.5 1.5 0 0 1-1.5 1.5h-8.5L6 21.5v-4H4A1.5 1.5 0 0 1 2.5 16V6A1.5 1.5 0 0 1 4 4.5z"/><path d="M7 9.5h10M7 13h6"/>',
  sport: '<circle cx="12" cy="12" r="9.5"/><path d="M12 7.2l4.2 3-1.6 5h-5.2l-1.6-5z"/><path d="M12 7.2V2.5M16.2 10.2l4.6-1.5M14.6 15.2l2.8 3.9M9.4 15.2l-2.8 3.9M7.8 10.2 3.2 8.7"/>',
  new: '<path d="M12 2.5l2.4 6.1 6.1 2.4-6.1 2.4-2.4 6.1-2.4-6.1-6.1-2.4 6.1-2.4z"/><path d="M19 17v4M17 19h4"/>',
  quiz: '<path d="M8.5 8.5a3.5 3.5 0 1 1 5.2 3c-1.1.7-1.7 1.4-1.7 2.7v.6"/><circle cx="12" cy="19" r="1.1" fill="currentColor"/>',
};
export const CAT_COLOR = { science: C.cyan, history: C.orange, tech: C.violet, nature: C.lime, body: C.pink, weird: C.yellow, survival: '#3de0b0', food: '#ff5947', language: '#e7a6ff', sport: '#5c95ff', new: C.yellow, quiz: C.pink };
export const iconG = (name, x, y, size, color = C.ink, sw = 2) =>
  `<g transform="translate(${r2(x)} ${r2(y)}) scale(${r2(size / 24)})" fill="none" stroke="${color}" stroke-width="${sw}" stroke-linecap="round" stroke-linejoin="round" color="${color}">${ICONS[name]}</g>`;

// ---------- Bausteine für Social-Grafiken ----------
export const card = (x, y, w, h, fill, { sw = 8, off = 14, rx = 36 } = {}) =>
  `<rect x="${x + off}" y="${y + off}" width="${w}" height="${h}" rx="${rx}" fill="${C.ink}"/>` +
  `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="${rx}" fill="${fill}" stroke="${C.ink}" stroke-width="${sw}"/>`;
export const chip = (label, x, y, fill, size = 34) => {
  const w = measure(label, size, DISPLAY) + size * 1.3;
  const h = size * 1.7;
  // Kategorie-Chips tragen das Punktmuster wie auf der Seite (eigenes, feineres Raster)
  const pat = `<defs><pattern id="chipdots" width="14" height="14" patternUnits="userSpaceOnUse"><circle cx="3" cy="3" r="2" fill="${DOT_INK}"/></pattern></defs>`;
  return { w, svg: `<rect x="${x}" y="${y}" width="${r2(w)}" height="${r2(h)}" rx="${r2(h / 2)}" fill="${fill}" stroke="${C.ink}" stroke-width="5"/>` +
    pat + `<rect x="${x}" y="${y}" width="${r2(w)}" height="${r2(h)}" rx="${r2(h / 2)}" fill="url(#chipdots)"/>` +
    text(label, { x: x + w / 2, y: y + h / 2 + size * 0.36, size, anchor: 'middle' }) };
};
// Konfetti aus Kreisen/Quadraten in Markenfarben, deterministisch
export function confetti(w, h, n, seed = 7, avoid = null) {
  let s = seed;
  const rnd = () => ((s = (s * 16807) % 2147483647) / 2147483647);
  const cols = [C.pink, C.yellow, C.cyan, C.lime, C.violet, C.orange];
  let o = '';
  for (let i = 0; i < n; i++) {
    const x = rnd() * w, y = rnd() * h, r = 10 + rnd() * 22, c = cols[i % cols.length];
    if (avoid && x > avoid[0] && x < avoid[2] && y > avoid[1] && y < avoid[3]) continue;
    const kind = i % 3;
    if (kind === 0) o += `<circle cx="${r2(x)}" cy="${r2(y)}" r="${r2(r)}" fill="${c}" stroke="${C.ink}" stroke-width="4"/>`;
    else if (kind === 1) o += `<rect x="${r2(x)}" y="${r2(y)}" width="${r2(r * 1.6)}" height="${r2(r * 1.6)}" rx="6" fill="${c}" stroke="${C.ink}" stroke-width="4" transform="rotate(${r2(rnd() * 40 - 20)} ${r2(x)} ${r2(y)})"/>`;
    else o += `<path d="M${r2(x)} ${r2(y)}l${r2(r)} ${r2(r * 1.8)}h${r2(-r * 2)}z" fill="${c}" stroke="${C.ink}" stroke-width="4" stroke-linejoin="round"/>`;
  }
  return o;
}
// Punktfarbe auf Kategorie-Flächen: wie --dots-ink in src/styles/global.css (9 % Schwarz)
export const DOT_INK = '#14141417';
// Punktmuster wie --dots auf der Seite: Punktdurchmesser etwa 1/3 des Rasters.
// Raster 44 px entspricht auf dem Handy (Grafik ca. 3-fach verkleinert) den 16 px der Seite.
export const DOT_GRID = 44;
export const dots = (w, h, fill = DOT_INK, grid = DOT_GRID) =>
  `<defs><pattern id="dots" width="${grid}" height="${grid}" patternUnits="userSpaceOnUse"><circle cx="${grid / 2}" cy="${grid / 2}" r="${r2(grid * 0.16)}" fill="${fill}"/></pattern></defs><rect width="${w}" height="${h}" fill="url(#dots)"/>`;

// Dezenter Hinweis auf KI-Erstellung (Transparenz nach EU-KI-Verordnung), unten rechts
export const AI_LABEL = { de: 'KI-generiert', en: 'AI-generated' };
export const aiTag = (W, H, lang, { fill = '#14141499', size = 22, inset = 26 } = {}) =>
  text(AI_LABEL[lang], { x: W - inset, y: H - inset, size, font: TEXT, fill, anchor: 'end' });

// ---------- Texte ----------
export const L = {
  de: { tagline: ['Jeden Tag ein Fakt,', 'der dich „WTF?!" sagen lässt.'], short: 'Jeden Tag ein Fakt.', sources: 'mit Quellen belegt', cta: 'Ganzer Fakt + Quellen: Link in Bio', swipe: 'Wusstest du das?', daily: 'Täglich neu',
    cats: { science: 'Wissenschaft', history: 'Geschichte', tech: 'Technik', nature: 'Natur', body: 'Körper', weird: 'Kurioses', survival: 'Survival', food: 'Essen', language: 'Sprache', sport: 'Sport', new: 'Neu', quiz: 'Quiz' } },
  en: { tagline: ['One fact a day that', 'makes you go "WTF?!"'], short: 'One fact a day.', sources: 'backed by sources', cta: 'Full fact + sources: link in bio', swipe: 'Did you know?', daily: 'New every day',
    cats: { science: 'Science', history: 'History', tech: 'Tech', nature: 'Nature', body: 'Body', weird: 'Weird', survival: 'Survival', food: 'Food', language: 'Language', sport: 'Sport', new: 'New', quiz: 'Quiz' } },
};
