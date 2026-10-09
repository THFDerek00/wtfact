// Reels / TikToks (1080×1920, MP4, ca. 10 Sekunden, ohne Ton) im Stil des Instagram-Pakets.
// Ablauf je Fakt: Frage knallt rein → dunkler Wisch → Zahl zählt hoch oder Titel baut sich auf → „WTF?!“-Stempel → Abspann.
// Titel, Kategorie und Emoji kommen aus der Fakten-Datenbank; die Riesenzahl muss im Titel stehen.
// Musik kommt erst in Instagram/TikTok dazu (lizenzierte Bibliothek der App).
//
// Einmalig nötig: wie build-social-insta.mjs, dazu ffmpeg auf dem System.
// Dann:  node --disable-warning=ExperimentalWarning brand/build-social-reels.mjs
import fs from 'node:fs';
import path from 'node:path';
import { spawn } from 'node:child_process';
import { Resvg } from '@resvg/resvg-js';
import { ROOT, C, TEXT, CAT_COLOR, text, measure, chip, aiTag } from './brand-lib.mjs';
import {
  Doc, fit, para, emoji, box, pill, logo, logoPlate, rot, poly, rectD, textStroke, fact, NIGHT, CREAM, NIGHT_MUTED, CTA, SLOGAN, CAT,
} from './build-social-insta.mjs';

const OUT = 'brand/social/insta-2026-10/reels';
const W = 1080, H = 1920, FPS = 30, DUR = 10.5;

// Fragen sind eigene Formulierungen, die nichts behaupten. `big` muss mit `must` im Titel stehen.
const REELS = [
  { key: 'greenland-shark', q: 'Wie alt kann ein Hai werden?', big: 400, unit: 'Jahre', must: '400 Jahre' },
  { key: 'wombat-cubes', q: 'Was ist an Wombat-Kot so besonders?' },
  { key: 'neutron-star-spoon', q: 'Wie schwer ist ein Teelöffel Stern?', big: 1e9, unit: 'Tonnen', must: '1 Milliarde Tonnen' },
  { key: 'pringles-can', q: 'Wo ruht der Erfinder der Pringles-Dose?' },
  { key: 'honey-forever', q: 'Kann Honig eigentlich schlecht werden?', big: 3000, unit: 'Jahre alt', must: '3.000 Jahre' },
];

// ---------- Bewegung ----------
const clamp = (x) => Math.max(0, Math.min(1, x));
const seg = (t, a, b) => clamp((t - a) / (b - a));
const outCubic = (x) => 1 - (1 - x) ** 3;
const outBack = (x) => { const c = 1.9; return 1 + (c + 1) * (x - 1) ** 3 + c * (x - 1) ** 2; };
const inOut = (x) => (x < 0.5 ? 4 * x ** 3 : 1 - (-2 * x + 2) ** 3 / 2);
const fmt = new Intl.NumberFormat('de-DE');
const scaleAt = (s, cx, cy, body) => `<g transform="translate(${cx} ${cy}) scale(${s}) translate(${-cx} ${-cy})">${body}</g>`;
const fade = (o, body) => (o >= 1 ? body : o <= 0 ? '' : `<g opacity="${o.toFixed(3)}">${body}</g>`);
// Hintergrund mit langsam wanderndem Punktraster
function bgDrift(doc, color, t) {
  const p = doc.pat(color);
  const o = (t * 18) % 44;
  return `<rect width="${W}" height="${H}" fill="${color}"/><g transform="translate(${-o} ${-o})"><rect width="${W + 88}" height="${H + 88}" fill="url(#${p})"/></g>`;
}

function frame(r, f, t) {
  const doc = new Doc(W, H), col = CAT_COLOR[f.cat];
  // Szene 1: Frage (0–2,8 s)
  if (t < 3.1) {
    doc.add(bgDrift(doc, col, t));
    const fly = outBack(seg(t, 0, 0.7));
    const ex = 1250 - fly * 760, bob = Math.sin(t * 3) * 14;
    doc.add(emoji(doc, f.emoji, ex, 820 + bob, 720, { rot: -24 + fly * 30 }));
    doc.add(logoPlate(doc, 70, 230, 50));
    doc.add(fade(seg(t, 0.15, 0.4), chip(CAT[f.cat], 80, 360, CREAM, 36).svg));
    const q = fit(r.q, { maxW: 880, max: 112, min: 70, maxLines: 4 });
    const s = 1 + (1 - outBack(seg(t, 0.3, 0.75))) * 0.9;
    doc.add(fade(seg(t, 0.3, 0.42), scaleAt(s, 540, 560, rot(-3, 540, 560, para(q, 90, 470, C.ink)))));
  }
  // Wisch: dunkle Fläche schiebt sich schräg ins Bild (2,6–3,1 s)
  if (t >= 2.6 && t < 3.1) {
    const x = -1600 + inOut(seg(t, 2.6, 3.1)) * 1600;
    doc.add(`<path d="${poly([x - 300, 0], [x + 1500, 0], [x + 1200, H], [x - 600, H])}" fill="${NIGHT}"/>`);
    doc.add(`<path d="${poly([x + 1500, 0], [x + 1560, 0], [x + 1260, H], [x + 1200, H])}" fill="${col}"/>`);
  }
  // Szene 2: Auflösung (3,1–7,4 s)
  if (t >= 3.1 && t < 8.9) {
    doc.add(bgDrift(doc, NIGHT, t));
    const head = fit(f.title, { maxW: 840, max: r.big ? 76 : 92, min: 50, maxLines: 5 });
    const hook = fit(f.hook, { maxW: 820, max: 40, min: 30, font: TEXT, lh: 1.4, maxLines: 5 });
    let headTop = 760;
    if (r.big) {
      const p = outCubic(seg(t, 3.2, 4.6));
      const n = Math.round(r.big * p);
      const label = fmt.format(n);
      const size = Math.min(300, 1000 / (measure(fmt.format(r.big), 100) / 100));
      const shake = t > 4.6 && t < 4.9 ? Math.sin(t * 90) * 6 : 0;
      const num = text(label, { x: 80 + shake, y: 940, size, track: -0.03 });
      doc.add(rot(-4 + shake * 0.2, 540, 860, `<g transform="translate(14 14)">${num.replace(/fill="[^"]+"/, `fill="${col}"`)}</g>` + textStroke(num.replace(/fill="[^"]+"/, `fill="${C.yellow}"`), C.ink, 10)));
      doc.add(fade(seg(t, 4.5, 4.8), text(r.unit, { x: 90, y: 1060, size: 80, fill: CREAM })));
      headTop = 1130;
    } else {
      const s = outBack(seg(t, 3.1, 3.6));
      doc.add(scaleAt(Math.max(0.01, s), 780, 600, emoji(doc, f.emoji, 560, 380, 440, { rot: 10, shadow: col })));
      headTop = 900;
    }
    const start = r.big ? 4.7 : 3.4;
    head.lines.forEach((l, i) => {
      const a = seg(t, start + i * 0.28, start + i * 0.28 + 0.3);
      const y = headTop + head.size * 0.8 + i * head.size * head.lh + (1 - outCubic(a)) * 60;
      doc.add(fade(a, text(l, { x: 90, y, size: head.size, fill: CREAM })));
    });
    const hs = start + head.lines.length * 0.28 + 0.3;
    doc.add(fade(seg(t, hs, hs + 0.4), para(hook, 90, headTop + head.h + 40, NIGHT_MUTED)));
    // Stempel (7,2 s)
    if (t >= 7.2) {
      const [sx, sy] = r.big ? [760, 520] : [300, 520];
      const a = seg(t, 7.2, 7.5);
      const s = 1 + (1 - outBack(a)) * 2.2;
      doc.add(fade(a * 3, scaleAt(s, sx, sy, rot(-10, sx, sy, box(doc, sx - 210, sy - 80, 420, 160, C.yellow, { rx: 26, sw: 8, off: 14, dots: false }) + text('WTF?!', { x: sx, y: sy + 38, size: 104, anchor: 'middle' })))));
    }
  }
  // Szene 3: Abspann (8,9–10,5 s)
  if (t >= 8.9) {
    const a = outCubic(seg(t, 8.9, 9.3));
    doc.add(bgDrift(doc, NIGHT, t));
    const yl = 1100 - a * 200;
    doc.add(doc.area(poly([0, 0], [W, 0], [W, yl - 200], [0, yl]), C.yellow));
    doc.add(`<path d="${poly([0, yl - 4], [W, yl - 204], [W, yl - 184], [0, yl + 16])}" fill="${C.ink}"/>`);
    doc.add(scaleAt(0.6 + a * 0.4, 540, 560, logo(150, 600, 150)));
    doc.add(fade(seg(t, 9.2, 9.5), pill(doc, CTA, W / 2, 1060, { fill: CREAM, size: 40, a: -2, shadow: col })));
    doc.add(fade(seg(t, 9.4, 9.7), text(SLOGAN, { x: W / 2, y: 1300, size: 44, anchor: 'middle', fill: CREAM })));
    doc.add(fade(seg(t, 9.5, 9.8), text('Folg für mehr Fakten', { x: W / 2, y: 1380, size: 38, anchor: 'middle', fill: NIGHT_MUTED })));
  }
  doc.add(aiTag(W, H, 'de', { fill: t < 3.1 ? '#14141499' : '#fffaf099', inset: 40 }));
  return doc.render();
}

async function render(r, i) {
  const f = fact(r.key);
  if (r.must && !f.title.includes(r.must)) throw new Error(`„${r.must}“ steht nicht im Titel von ${r.key}`);
  const file = path.join(ROOT, OUT, `${String(i + 1).padStart(2, '0')}-${r.key}.mp4`);
  fs.mkdirSync(path.dirname(file), { recursive: true });
  const ff = spawn('ffmpeg', ['-y', '-loglevel', 'error', '-f', 'image2pipe', '-framerate', String(FPS), '-i', '-', '-c:v', 'libx264', '-pix_fmt', 'yuv420p', '-crf', '20', '-preset', 'medium', '-movflags', '+faststart', file], { stdio: ['pipe', 'inherit', 'inherit'] });
  const done = new Promise((res, rej) => ff.on('close', (c) => (c ? rej(new Error(`ffmpeg ${c}`)) : res())));
  const frames = Math.round(DUR * FPS);
  for (let n = 0; n < frames; n++) {
    const buf = new Resvg(frame(r, f, n / FPS)).render().asPng();
    if (!ff.stdin.write(buf)) await new Promise((res) => ff.stdin.once('drain', res));
  }
  ff.stdin.end();
  await done;
  // Titelbild für das Reel (Szene 2, nach dem Stempel)
  const cover = new Resvg(frame(r, f, 8.0)).render().asPng();
  fs.writeFileSync(file.replace('.mp4', '-cover.png'), cover);
  console.log('✓', path.relative(ROOT, file));
  return { file: path.relative(path.join(ROOT, OUT), file), f, r };
}

// Vorschau einzelner Momente statt Video: REEL_PREVIEW=1.5,4,8 node brand/build-social-reels.mjs
if (process.env.REEL_PREVIEW) {
  const dir = path.join(ROOT, OUT, 'vorschau');
  fs.mkdirSync(dir, { recursive: true });
  for (const [i, r] of REELS.entries()) for (const t of process.env.REEL_PREVIEW.split(',').map(Number)) {
    fs.writeFileSync(path.join(dir, `${i + 1}-${t}.png`), new Resvg(frame(r, fact(r.key), t)).render().asPng());
  }
  process.exit(0);
}
const made = [];
for (const [i, r] of REELS.entries()) made.push(await render(r, i));
const TAGS = '#wtfact #funfact #wusstestdu #fakten #reels #fyp #lernenmittiktok';
const md = ['# Reels / TikToks', '', 'Je ca. 10 Sekunden, 1080×1920, ohne Ton. Musik direkt in Instagram oder TikTok aus der App-Bibliothek drunterlegen (lizenziert). Das passende Titelbild liegt jeweils als `-cover.png` daneben.', ''];
made.forEach(({ file, f, r }, i) => {
  md.push(`## ${i + 1}. ${f.title}`, '', `\`reels/${file}\``, '', '```', `${r.q} 👀`, '', f.hook, '', `${CTA}.`, '', TAGS, '```', '');
});
fs.writeFileSync(path.join(ROOT, OUT, 'REELS.md'), md.join('\n'));
console.log('✓', `${OUT}/REELS.md`);
