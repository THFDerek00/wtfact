// Erzeugt alle Marken-Grafiken von WTFact (Logo, Icons, Social Media) als SVG und PNG.
// Schriften werden in Pfade umgewandelt, damit die Dateien überall gleich aussehen.
//
// Einmalig nötig (wird nicht im Projekt installiert):
//   npm i --no-save opentype.js @resvg/resvg-js @fontsource/space-grotesk @fontsource/inter
// Dann:  node brand/build-brand.mjs
import fs from 'node:fs';
import path from 'node:path';
import { createRequire } from 'node:module';
import { fileURLToPath } from 'node:url';
import { execFileSync } from 'node:child_process';
import opentype from 'opentype.js';
import { Resvg } from '@resvg/resvg-js';

const require = createRequire(import.meta.url);
const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const loadFont = (f) => {
  const buf = fs.readFileSync(require.resolve(f));
  return opentype.parse(buf.buffer.slice(buf.byteOffset, buf.byteOffset + buf.byteLength));
};
const DISPLAY = loadFont('@fontsource/space-grotesk/files/space-grotesk-latin-700-normal.woff');
const TEXT = loadFont('@fontsource/inter/files/inter-latin-600-normal.woff');

// Farben aus src/styles/global.css
const C = {
  bg: '#fffaf0', ink: '#141414', muted: '#5b5b5b', white: '#ffffff', night: '#111014', paper: '#f4f1ea',
  pink: '#ff3d7f', yellow: '#ffd23f', cyan: '#3ddcff', lime: '#b6f23a', violet: '#9b6bff', orange: '#ff8a3d',
};

// ---------- Hilfsfunktionen ----------
const r2 = (n) => Math.round(n * 100) / 100;
function measure(str, size, font = DISPLAY, track = 0) {
  let w = 0;
  for (const ch of str) w += (font.getAdvanceWidth(ch, size) + track * size);
  return w - track * size;
}
// Eigene Umwandlung, weil toPathData() von opentype.js bei manchen Zahlen "NaN" liefert.
function pathData(p) {
  const n = (v) => String(r2(v));
  return p.commands.map((c) =>
    c.type === 'M' || c.type === 'L' ? `${c.type}${n(c.x)} ${n(c.y)}`
    : c.type === 'Q' ? `Q${n(c.x1)} ${n(c.y1)} ${n(c.x)} ${n(c.y)}`
    : c.type === 'C' ? `C${n(c.x1)} ${n(c.y1)} ${n(c.x2)} ${n(c.y2)} ${n(c.x)} ${n(c.y)}`
    : 'Z').join('');
}
// Text als SVG-Pfad. anchor: start | middle | end. track in em.
function text(str, { x = 0, y = 0, size = 40, font = DISPLAY, fill = C.ink, anchor = 'start', track = 0 } = {}) {
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
function wrap(str, size, maxW, font = DISPLAY, track = 0) {
  const lines = [];
  let cur = '';
  for (const word of str.split(' ')) {
    const t = cur ? `${cur} ${word}` : word;
    if (measure(t, size, font, track) > maxW && cur) { lines.push(cur); cur = word; } else cur = t;
  }
  if (cur) lines.push(cur);
  return lines;
}
const svg = (w, h, body, extra = '') =>
  `<svg xmlns="http://www.w3.org/2000/svg" width="${w}" height="${h}" viewBox="0 0 ${w} ${h}"${extra}>${body}</svg>\n`;

function out(rel, content) {
  const p = path.join(ROOT, rel);
  fs.mkdirSync(path.dirname(p), { recursive: true });
  fs.writeFileSync(p, content);
  console.log('✓', rel);
}
function png(rel, svgStr, width) {
  const r = new Resvg(svgStr, { fitTo: width ? { mode: 'width', value: width } : { mode: 'original' } });
  out(rel, r.render().asPng());
}

// ---------- Logo ----------
// Wortmarke: "WTF" + "act" in Pink + gekipptes "?!" auf gelbem Kästchen, wie im Seitenkopf.
function wordmark({ size = 100, x = 0, y = 0, ink = C.ink, line = C.ink, act = C.pink } = {}) {
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
function logoFile(ink, act, line) {
  const pad = 12;
  const m = wordmark({ size: 100, x: pad, y: 0, ink, act, line });
  const h = m.bottom - m.top + pad * 2;
  const w = m.width + pad * 2 + 4;
  return svg(r2(w), r2(h), `<g transform="translate(0 ${r2(-m.top + pad)})">${m.body}</g>`, ' role="img" aria-label="WTFact"');
}

// Bildzeichen: gelbes Kästchen mit "?!" und hartem Schatten (wie die Karten auf der Seite).
function mark({ size = 512, shadow = true, bg = null, maskable = false } = {}) {
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
const ICONS = {
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
const CAT_COLOR = { science: C.cyan, history: C.orange, tech: C.violet, nature: C.lime, body: C.pink, weird: C.yellow, survival: '#3de0b0', food: '#ff5947', language: '#e7a6ff', sport: '#5c95ff', new: C.yellow, quiz: C.pink };
const iconG = (name, x, y, size, color = C.ink, sw = 2) =>
  `<g transform="translate(${r2(x)} ${r2(y)}) scale(${r2(size / 24)})" fill="none" stroke="${color}" stroke-width="${sw}" stroke-linecap="round" stroke-linejoin="round" color="${color}">${ICONS[name]}</g>`;

// ---------- Bausteine für Social-Grafiken ----------
const card = (x, y, w, h, fill, { sw = 8, off = 14, rx = 36 } = {}) =>
  `<rect x="${x + off}" y="${y + off}" width="${w}" height="${h}" rx="${rx}" fill="${C.ink}"/>` +
  `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="${rx}" fill="${fill}" stroke="${C.ink}" stroke-width="${sw}"/>`;
const chip = (label, x, y, fill, size = 34) => {
  const w = measure(label, size, DISPLAY) + size * 1.3;
  const h = size * 1.7;
  return { w, svg: `<rect x="${x}" y="${y}" width="${r2(w)}" height="${r2(h)}" rx="${r2(h / 2)}" fill="${fill}" stroke="${C.ink}" stroke-width="5"/>` +
    text(label, { x: x + w / 2, y: y + h / 2 + size * 0.36, size, anchor: 'middle' }) };
};
// Konfetti aus Kreisen/Quadraten in Markenfarben, deterministisch
function confetti(w, h, n, seed = 7, avoid = null) {
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
const dots = (w, h, fill = '#14141414') =>
  `<defs><pattern id="dots" width="36" height="36" patternUnits="userSpaceOnUse"><circle cx="4" cy="4" r="3" fill="${fill}"/></pattern></defs><rect width="${w}" height="${h}" fill="url(#dots)"/>`;

// ---------- Texte ----------
const L = {
  de: { tagline: ['Jeden Tag ein Fakt,', 'der dich „WTF?!" sagen lässt.'], short: 'Jeden Tag ein Fakt.', sources: 'mit Quellen belegt', cta: 'Ganzer Fakt + Quellen: Link in Bio', swipe: 'Wusstest du das?', daily: 'Täglich neu',
    cats: { science: 'Wissenschaft', history: 'Geschichte', tech: 'Technik', nature: 'Natur', body: 'Körper', weird: 'Kurioses', survival: 'Survival', food: 'Essen', language: 'Sprache', sport: 'Sport', new: 'Neu', quiz: 'Quiz' } },
  en: { tagline: ['One fact a day that', 'makes you go "WTF?!"'], short: 'One fact a day.', sources: 'backed by sources', cta: 'Full fact + sources: link in bio', swipe: 'Did you know?', daily: 'New every day',
    cats: { science: 'Science', history: 'History', tech: 'Tech', nature: 'Nature', body: 'Body', weird: 'Weird', survival: 'Survival', food: 'Food', language: 'Language', sport: 'Sport', new: 'New', quiz: 'Quiz' } },
};
const EXAMPLE = {
  de: { cat: 'nature', title: 'Wombats kacken Würfel. Kein Witz.', hook: 'Rund 80 bis 100 kleine Würfel pro Nacht. Kein anderes bekanntes Tier schafft das.' },
  en: { cat: 'nature', title: 'Wombats poop cubes. Seriously.', hook: 'Around 80 to 100 little cubes a night. No other known animal does that.' },
};

// =====================================================================
// 1) Logo-Dateien
out('public/brand/logo.svg', logoFile(C.ink, C.pink, C.ink));
out('public/brand/logo-dark.svg', logoFile(C.paper, C.pink, C.ink));
out('public/brand/mark.svg', mark({ size: 512 }));
png('brand/export/logo-1600.png', logoFile(C.ink, C.pink, C.ink), 1600);
png('brand/export/logo-dark-1600.png', logoFile(C.paper, C.pink, C.ink), 1600);
png('brand/export/mark-1024.png', mark({ size: 1024 }));

// 2) Favicon und App-Icons
out('public/favicon.svg', mark({ size: 64, shadow: false }));
png('public/apple-touch-icon.png', mark({ size: 180, shadow: false, bg: C.bg }));
png('public/icon-192.png', mark({ size: 192 }));
png('public/icon-512.png', mark({ size: 512 }));
png('public/icon-maskable-512.png', mark({ size: 512, shadow: false, bg: C.yellow, maskable: true }));
for (const s of [16, 32, 48]) png(`brand/.tmp/fav-${s}.png`, mark({ size: s, shadow: false }));
execFileSync('convert', [16, 32, 48].map((s) => path.join(ROOT, `brand/.tmp/fav-${s}.png`)).concat(path.join(ROOT, 'public/favicon.ico')));
fs.rmSync(path.join(ROOT, 'brand/.tmp'), { recursive: true });
console.log('✓ public/favicon.ico');
out('public/site.webmanifest', JSON.stringify({
  name: 'WTFact', short_name: 'WTFact', start_url: '/', display: 'standalone',
  background_color: C.bg, theme_color: C.yellow,
  icons: [
    { src: '/icon-192.png', sizes: '192x192', type: 'image/png' },
    { src: '/icon-512.png', sizes: '512x512', type: 'image/png' },
    { src: '/icon-maskable-512.png', sizes: '512x512', type: 'image/png', purpose: 'maskable' },
  ],
}, null, 2) + '\n');

// 3) Standard-Vorschaubild (Startseite, Über uns ...) 1200×630
for (const lang of ['de', 'en']) {
  const t = L[lang];
  const W = 1200, H = 630;
  const m = wordmark({ size: 150, x: 0, y: 0 });
  const lx = (W - m.width) / 2;
  let b = `<rect width="${W}" height="${H}" fill="${C.bg}"/>` + dots(W, H) + confetti(W, H, 34, 11, [140, 110, 1060, 520]);
  b += `<rect x="7" y="7" width="${W - 14}" height="${H - 14}" fill="none" stroke="${C.ink}" stroke-width="14"/>`;
  b += `<g transform="translate(${r2(lx)} 290)">${m.body}</g>`;
  b += text(t.tagline[0], { x: W / 2, y: 405, size: 44, font: TEXT, anchor: 'middle' });
  b += text(t.tagline[1], { x: W / 2, y: 462, size: 44, font: TEXT, anchor: 'middle' });
  png(`public/og-default-${lang}.png`, svg(W, H, b));
}

// 4) Social Media
// Profilbild 1080×1080 (Instagram, TikTok, Pinterest, YouTube; rund beschnitten sicher)
{
  const S = 1080;
  let b = `<rect width="${S}" height="${S}" fill="${C.pink}"/>` + dots(S, S, '#14141422');
  const inner = mark({ size: 640 }).replace(/^<svg[^>]*>|<\/svg>\n$/g, '');
  b += `<g transform="translate(220 220)">${inner}</g>`;
  png('brand/social/profilbild-1080.png', svg(S, S, b));
}

for (const lang of ['de', 'en']) {
  const t = L[lang];
  // X/Twitter-Header 1500×500
  {
    const W = 1500, H = 500;
    let b = `<rect width="${W}" height="${H}" fill="${C.yellow}"/>` + dots(W, H, '#14141420') + confetti(W, H, 30, 5, [380, 90, 1450, 430]);
    const m = wordmark({ size: 130, x: 0, y: 0 });
    b += `<g transform="translate(${r2(W - 90 - m.width)} 225)">${m.body}</g>`;
    b += text(t.tagline[0], { x: W - 90, y: 330, size: 42, font: TEXT, anchor: 'end' });
    b += text(t.tagline[1], { x: W - 90, y: 384, size: 42, font: TEXT, anchor: 'end' });
    png(`brand/social/${lang}/x-header-1500x500.png`, svg(W, H, b));
  }
  // YouTube/Facebook-Banner 2560×1440 (Text in der sicheren Mitte 1546×423)
  {
    const W = 2560, H = 1440;
    let b = `<rect width="${W}" height="${H}" fill="${C.cyan}"/>` + dots(W, H, '#14141420') + confetti(W, H, 70, 3, [480, 460, 2080, 980]);
    b += card(560, 500, 1440, 440, C.bg, { sw: 10, off: 20, rx: 48 });
    const m = wordmark({ size: 150, x: 0, y: 0 });
    b += `<g transform="translate(${r2(1280 - m.width / 2)} 700)">${m.body}</g>`;
    b += text(t.tagline.join(' '), { x: 1280, y: 830, size: 46, font: TEXT, anchor: 'middle' });
    png(`brand/social/${lang}/banner-youtube-2560x1440.png`, svg(W, H, b));
  }
  // Instagram-Story-Highlight-Cover 1080×1920 (Symbol bleibt im runden Ausschnitt)
  for (const key of Object.keys(ICONS)) {
    const W = 1080, H = 1920;
    let b = `<rect width="${W}" height="${H}" fill="${CAT_COLOR[key]}"/>`;
    b += `<circle cx="${W / 2 + 18}" cy="${H / 2 + 18}" r="330" fill="${C.ink}"/>`;
    b += `<circle cx="${W / 2}" cy="${H / 2}" r="330" fill="${C.bg}" stroke="${C.ink}" stroke-width="16"/>`;
    b += iconG(key, W / 2 - 190, H / 2 - 190, 380, C.ink, 1.8);
    b += text(t.cats[key], { x: W / 2, y: H / 2 + 520, size: 90, anchor: 'middle' });
    png(`brand/social/${lang}/highlight-${key}.png`, svg(W, H, b));
  }
  // Vorlagen für Beitrags-Posts mit Beispiel-Fakt
  const ex = EXAMPLE[lang];
  const feedOrStory = (W, H, name) => {
    let b = `<rect width="${W}" height="${H}" fill="${C.bg}"/>` + dots(W, H);
    const pad = 80;
    const top = H > 1500 ? 260 : 90; // Story: Platz für Profilzeile oben
    const m = wordmark({ size: 78, x: 0, y: 0 });
    b += `<g transform="translate(${pad} ${top + 60})">${m.body}</g>`;
    const c = chip(t.cats[ex.cat], 0, 0, CAT_COLOR[ex.cat], 34);
    b += `<g transform="translate(${r2(W - pad - c.w)} ${top})">${c.svg}</g>`;
    const cardW = W - pad * 2 - 14;
    const tSize = 92;
    const tl = wrap(ex.title, tSize, cardW - 120);
    const hl = wrap(ex.hook, 40, cardW - 120, TEXT);
    const cardH = 120 + tl.length * tSize * 1.05 + 40 + hl.length * 56 + 60;
    const by = H > 1500 ? H - 420 : H - 150;
    const cardY = r2((top + 120 + by - 80) / 2 - cardH / 2);
    b += card(pad, cardY, cardW, cardH, C.white);
    b += text(t.swipe, { x: pad + 60, y: cardY + 90, size: 36, font: TEXT, fill: C.pink });
    tl.forEach((l, i) => (b += text(l, { x: pad + 60, y: cardY + 120 + (i + 1) * tSize * 1.02, size: tSize, track: -0.02 })));
    const hy = cardY + 120 + tl.length * tSize * 1.05 + 70;
    hl.forEach((l, i) => (b += text(l, { x: pad + 60, y: hy + i * 56, size: 40, font: TEXT, fill: C.muted })));
    const btnW = cardW;
    b += `<rect x="${pad + 8}" y="${by + 8}" width="${btnW}" height="96" rx="48" fill="${C.ink}"/>`;
    b += `<rect x="${pad}" y="${by}" width="${btnW}" height="96" rx="48" fill="${C.yellow}" stroke="${C.ink}" stroke-width="6"/>`;
    b += text(t.cta, { x: pad + btnW / 2, y: by + 62, size: 40, anchor: 'middle' });
    b += text(`${t.daily} · ${t.sources}`, { x: W / 2, y: by - 40, size: 32, font: TEXT, fill: C.muted, anchor: 'middle' });
    png(`brand/social/${lang}/${name}`, svg(W, H, b));
  };
  feedOrStory(1080, 1350, 'vorlage-instagram-post-1080x1350.png');
  feedOrStory(1080, 1920, 'vorlage-story-tiktok-1080x1920.png');
  // Pinterest-Pin 1000×1500
  {
    const W = 1000, H = 1500;
    let b = `<rect width="${W}" height="${H}" fill="${C.lime}"/>` + dots(W, H, '#14141420');
    const tl = wrap(ex.title, 96, 720);
    const hl = wrap(ex.hook, 40, 720, TEXT);
    const ch = 60 + 120 + 40 + tl.length * 100 + 40 + hl.length * 56 + 50;
    const cy = r2((1220 - ch) / 2);
    b += card(70, cy, 846, ch, C.white);
    b += iconG(ex.cat, 130, cy + 60, 120, C.ink, 2);
    const ty = cy + 60 + 120 + 40;
    tl.forEach((l, i) => (b += text(l, { x: 130, y: ty + 80 + i * 100, size: 96, track: -0.02 })));
    const hy = ty + tl.length * 100 + 60;
    hl.forEach((l, i) => (b += text(l, { x: 130, y: hy + i * 56, size: 40, font: TEXT, fill: C.muted })));
    const m = wordmark({ size: 90, x: 0, y: 0 });
    b += `<g transform="translate(${r2(W / 2 - m.width / 2)} 1330)">${m.body}</g>`;
    b += text(t.short, { x: W / 2, y: 1420, size: 36, font: TEXT, anchor: 'middle' });
    png(`brand/social/${lang}/vorlage-pinterest-pin-1000x1500.png`, svg(W, H, b));
  }
}

// 5) Kategorie-Symbole als einzelne SVGs (für die Seite oder Social Media)
for (const key of Object.keys(ICONS)) {
  out(`public/brand/icons/${key}.svg`, `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">${ICONS[key]}</svg>\n`);
}

// 6) 404-Grafik: verwirrtes Kästchen
{
  const W = 640, H = 420;
  let b = confetti(W, H, 16, 19, [150, 40, 500, 400]);
  b += card(200, 70, 240, 240, C.yellow, { sw: 10, off: 16, rx: 52 });
  b += `<g transform="rotate(8 320 190)">` + text('404', { x: 320, y: 225, size: 100, anchor: 'middle', track: -0.04 }) + `</g>`;
  out('public/brand/404.svg', svg(W, H, b, ' role="img" aria-hidden="true"'));
}
