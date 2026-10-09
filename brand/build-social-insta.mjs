// Instagram-Paket Oktober 2026 (nur Deutsch): 50 Fakten-Posts, 10 Stories, 25 Extras, Posting-Plan mit Captions.
// Mutiger als das Social-Kit: Emojis und Zahlen laufen über den Rand, Hell und Dunkel werden schräg gemischt.
// Titel, Hooks, Kategorien und Emojis kommen aus der Fakten-Datenbank (scripts/facts-db.mjs). Große Zahlen prüft
// das Skript gegen den Titel des Fakts, Jahreszahlen bei „Was war zuerst?“ gegen den Text des Fakts.
// Emojis: Fluent Emoji Flat von Microsoft (MIT), als Vektor eingebettet.
//
// Einmalig nötig (wird nicht im Projekt installiert):
//   npm i --no-save opentype.js @resvg/resvg-js @fontsource/space-grotesk @fontsource/inter @iconify-json/fluent-emoji-flat
// Dann:  node --disable-warning=ExperimentalWarning brand/build-social-insta.mjs
import fs from 'node:fs';
import path from 'node:path';
import { createRequire } from 'node:module';
import { Resvg } from '@resvg/resvg-js';
import {
  ROOT, DISPLAY, TEXT, C, r2, measure, text, wrap, svg, png, out, wordmark, CAT_COLOR, iconG, chip, DOT_INK, DOT_INK_STRONG, dotInkFor, aiTag, L,
} from './brand-lib.mjs';
import { open as openFacts, readFacts } from '../scripts/facts-db.mjs';

const require = createRequire(import.meta.url);
const OUT = 'brand/social/insta-2026-10';
const W = 1080, PH = 1350, SH = 1920;
// Weitere Farben aus src/styles/global.css
const NIGHT = '#16131c', CREAM = '#fffaf0', NIGHT_MUTED = '#c9c4d1', PINK_TEXT = '#c8104f';
const DOT_LIGHT = '#fffaf01c'; // Punkte auf der dunklen Bühne
const CAT = L.de.cats;

// ---------- Fakten ----------
const db = openFacts({ root: ROOT });
const FACTS = readFacts(db).filter((f) => !f.draft && f.date);
db.close();
const fact = (key) => {
  const f = FACTS.find((x) => x.key === key);
  if (!f) throw new Error(`Fakt ${key} fehlt oder ist nicht eingeplant`);
  return { key, cat: f.category, emoji: f.emoji, date: f.date, title: f.de.title, teaser: f.de.teaser, hook: f.de.hook, body: f.de.body, sources: f.de.sources.length };
};

// ---------- Emojis (Fluent Emoji Flat) ----------
const EMO = require('@iconify-json/fluent-emoji-flat/icons.json');
const EMO_CHARS = require('@iconify-json/fluent-emoji-flat/chars.json');
function emojiIcon(e) {
  const cps = [...e].map((c) => c.codePointAt(0).toString(16));
  for (const k of [cps.join('-'), cps.filter((c) => c !== 'fe0f').join('-')]) {
    let name = EMO_CHARS[k];
    if (!name) continue;
    while (!EMO.icons[name] && EMO.aliases?.[name]) name = EMO.aliases[name].parent;
    const ic = EMO.icons[name];
    if (ic) return { body: ic.body, w: ic.width ?? EMO.width ?? 32, h: ic.height ?? EMO.height ?? 32 };
  }
  throw new Error(`Emoji ${e} (${cps.join('-')}) nicht gefunden`);
}

// ---------- Zeichenfläche ----------
const isDark = (hex) => {
  const [r, g, b] = [1, 3, 5].map((i) => parseInt(hex.slice(i, i + 2), 16) / 255);
  return 0.2126 * r + 0.7152 * g + 0.0722 * b < 0.25;
};
class Doc {
  constructor(w, h) { this.w = w; this.h = h; this.defs = new Map(); this.b = ''; this.n = 0; }
  add(s) { this.b += s; return this; }
  id(p) { return `${p}${++this.n}`; }
  def(id, s) { if (!this.defs.has(id)) this.defs.set(id, s); return id; }
  // Punktmuster passend zur Fläche: dunkle Punkte auf hellen und Kategorie-Farben, helle auf der Bühne
  pat(bg, grid = 44) {
    const ink = isDark(bg) ? DOT_LIGHT : dotInkFor(bg);
    return this.def(`d${ink.slice(1)}g${grid}`, `<pattern id="d${ink.slice(1)}g${grid}" width="${grid}" height="${grid}" patternUnits="userSpaceOnUse"><circle cx="${grid / 2}" cy="${grid / 2}" r="${r2(grid * 0.16)}" fill="${ink}"/></pattern>`);
  }
  sil(color) {
    const id = `sil${color.slice(1)}`;
    return this.def(id, `<filter id="${id}" x="-20%" y="-20%" width="140%" height="140%"><feFlood flood-color="${color}"/><feComposite in2="SourceAlpha" operator="in"/></filter>`);
  }
  clip(d) { const id = this.id('c'); this.def(id, `<clipPath id="${id}"><path d="${d}"/></clipPath>`); return id; }
  // Fläche mit Punkten
  area(d, fill, { stroke = null, sw = 8, grid = 44, extra = '' } = {}) {
    const p = this.pat(fill, grid);
    return `<path d="${d}" fill="${fill}"${extra}/><path d="${d}" fill="url(#${p})"/>` + (stroke ? `<path d="${d}" fill="none" stroke="${stroke}" stroke-width="${sw}" stroke-linejoin="round"/>` : '');
  }
  bg(fill) { return this.add(this.area(`M0 0H${this.w}V${this.h}H0Z`, fill)); }
  render() { return svg(this.w, this.h, `<defs>${[...this.defs.values()].join('')}</defs>${this.b}`); }
}
const rectD = (x, y, w, h, rx = 0) => rx
  ? `M${x + rx} ${y}H${x + w - rx}A${rx} ${rx} 0 0 1 ${x + w} ${y + rx}V${y + h - rx}A${rx} ${rx} 0 0 1 ${x + w - rx} ${y + h}H${x + rx}A${rx} ${rx} 0 0 1 ${x} ${y + h - rx}V${y + rx}A${rx} ${rx} 0 0 1 ${x + rx} ${y}Z`
  : `M${x} ${y}H${x + w}V${y + h}H${x}Z`;
const poly = (...pts) => `M${pts.map((p) => p.join(' ')).join('L')}Z`;
const rot = (a, cx, cy, s) => `<g transform="rotate(${a} ${r2(cx)} ${r2(cy)})">${s}</g>`;
// Kasten im Stil der Seite: harter Schatten, dicker Rand
function box(doc, x, y, w, h, fill, { rx = 36, sw = 8, off = 16, line = C.ink, shadow = C.ink, dots = true } = {}) {
  const d = rectD(x, y, w, h, rx);
  const sh = off ? `<path d="${rectD(x + off, y + off, w, h, rx)}" fill="${shadow}"/>` : '';
  return sh + (dots ? doc.area(d, fill, { stroke: line, sw }) : `<path d="${d}" fill="${fill}" stroke="${line}" stroke-width="${sw}"/>`);
}
function emoji(doc, e, x, y, size, { rot: a = 0, shadow = C.ink, off = 0.035 } = {}) {
  const ic = emojiIcon(e);
  const s = size / Math.max(ic.w, ic.h);
  const o = size * off;
  const g = (dx, dy, f = '') => `<g${f} transform="translate(${r2(x + dx)} ${r2(y + dy)}) scale(${r2(s * 1000) / 1000})">${ic.body}</g>`;
  return rot(a, x + size / 2, y + size / 2, (shadow ? g(o, o, ` filter="url(#${doc.sil(shadow)})"`) : '') + g(0, 0));
}

// ---------- Text ----------
function fit(str, { maxW, maxH = 9999, max, min = 30, lh = 1.06, font = DISPLAY, maxLines = 8, track = 0 }) {
  for (let s = max; s >= min; s -= 2) {
    const lines = wrap(str, s, maxW, font, track);
    if (lines.length <= maxLines && lines.length * s * lh <= maxH && lines.every((l) => measure(l, s, font, track) <= maxW)) return { size: s, lines, lh, font, h: lines.length * s * lh, track };
  }
  throw new Error(`Text passt nicht: „${str}“`);
}
// Absatz ab Oberkante y; gibt SVG zurück
function para(t, x, y, fill, anchor = 'start') {
  return t.lines.map((l, i) => text(l, { x, y: y + t.size * 0.8 + i * t.size * t.lh, size: t.size, font: t.font, fill, anchor, track: t.track })).join('');
}
const textStroke = (s, stroke, sw) => s.replaceAll('<path fill=', `<path stroke="${stroke}" stroke-width="${sw}" stroke-linejoin="round" paint-order="stroke" fill=`);
const logo = (x, y, size, dark = false) => wordmark({ size, x, y, ink: dark ? CREAM : C.ink, act: C.pink, line: C.ink }).body;
// Logo auf Kategorie-Farbe: auf einem hellen Schild, damit das pinke „act“ auch auf Rot und Orange lesbar bleibt
function logoPlate(doc, x, y, size, a = -3) {
  const pad = size * 0.28;
  const m = wordmark({ size, x: x + pad * 1.3, y: 0, ink: C.ink, act: C.pink, line: C.ink });
  const w = m.width + pad * 2.6, h = m.bottom - m.top + pad * 2;
  return rot(a, x + w / 2, y + h / 2, box(doc, x, y, w, h, CREAM, { rx: size * 0.3, sw: 6, off: 10, dots: false }) +
    `<g transform="translate(0 ${r2(y + pad - m.top)})">${m.body}</g>`);
}
const CTA = 'Ganzer Fakt + Quellen: Link in Bio';
const SLOGAN = 'Und ja, das stimmt wirklich.';
// Pille mit Text, mittig um cx
function pill(doc, label, cx, y, { fill = C.yellow, size = 38, a = 0, line = C.ink, shadow = C.ink, ink = C.ink, padX = 1.1 } = {}) {
  const w = measure(label, size, DISPLAY) + size * padX * 2, h = size * 1.9;
  const x = cx - w / 2;
  return rot(a, cx, y + h / 2, box(doc, x, y, w, h, fill, { rx: h / 2, sw: 6, off: 10, line, shadow, dots: false }) +
    text(label, { x: cx, y: y + h / 2 + size * 0.36, size, anchor: 'middle', fill: ink }));
}
const chev = (dir, x, y, size, color, sw = 3) => {
  const d = { down: 'm6 9 6 6 6-6', up: 'm18 15-6-6-6 6', right: 'm9 18 6-6-6-6', left: 'm15 18-6-6 6-6' }[dir];
  return `<g transform="translate(${r2(x)} ${r2(y)}) scale(${r2(size / 24)})" fill="none" stroke="${color}" stroke-width="${sw}" stroke-linecap="round" stroke-linejoin="round"><path d="${d}"/></g>`;
};
// Band mit wiederholtem Text, das über beide Ränder läuft
function tape(doc, label, cy, a, fill, { h = 96, size = 46, ink = C.ink } = {}) {
  const x0 = -400, w = doc.w + 800;
  const unit = `${label}   ·   `;
  const uw = measure(unit, size, DISPLAY);
  let t = '';
  for (let x = x0 + 10; x < x0 + w; x += uw) t += text(unit, { x, y: cy + size * 0.36, size, fill: ink });
  return rot(a, doc.w / 2, cy, `<path d="${rectD(x0 + 14, cy - h / 2 + 14, w, h)}" fill="${C.ink}"/>` +
    doc.area(rectD(x0, cy - h / 2, w, h), fill, { stroke: C.ink, sw: 7 }) + t);
}
const tag = (doc, dark) => aiTag(doc.w, doc.h, 'de', { fill: dark ? '#fffaf099' : '#14141499' });

// ---------- Layouts für Fakten-Posts (1080×1350) ----------
// A: dunkle Bühne, Riesen-Emoji auf Kategorie-Kachel läuft oben rechts aus dem Bild
function postA(f) {
  const doc = new Doc(W, PH), col = CAT_COLOR[f.cat];
  doc.bg(NIGHT);
  doc.add(rot(11, 820, 300, box(doc, 520, -20, 680, 680, col, { rx: 64, line: CREAM, sw: 8, off: 0 })));
  doc.add(emoji(doc, f.emoji, 560, 60, 540, { rot: -8, shadow: C.ink }));
  doc.add(logo(72, 140, 60, true));
  doc.add(chip(CAT[f.cat], 72, 190, col, 32).svg);
  const hook = fit(f.hook, { maxW: 936, max: 32, min: 26, font: TEXT, lh: 1.4, maxLines: 4 });
  const head = fit(f.title, { maxW: 936, max: 92, min: 54, maxH: 1110 - 640 - hook.h - 36, maxLines: 6 });
  const top = 1110 - hook.h - 36 - head.h;
  doc.add(para(head, 72, top, CREAM));
  doc.add(para(hook, 72, top + head.h + 30, NIGHT_MUTED));
  doc.add(pill(doc, CTA, W / 2, 1170, { a: -2, size: 36, shadow: col }));
  doc.add(tag(doc, true));
  return doc.render();
}
// B: Diagonal geteilt, oben hell, unten dunkel; die Überschrift läuft über die Kante und wechselt die Farbe
function postB(f) {
  const doc = new Doc(W, PH), col = CAT_COLOR[f.cat];
  const yl = 880, yr = 650, band = 46; // Kante links / rechts
  const light = poly([0, 0], [W, 0], [W, yr], [0, yl]);
  const dark = poly([0, yl + band], [W, yr + band], [W, PH], [0, PH]);
  doc.add(doc.area(light, CREAM));
  doc.add(doc.area(dark, NIGHT));
  doc.add(doc.area(poly([-10, yl], [W + 10, yr], [W + 10, yr + band], [-10, yl + band]), col, { stroke: C.ink, sw: 7 }));
  doc.add(emoji(doc, f.emoji, 700, 90, 400, { rot: 9 }));
  doc.add(logo(72, 140, 60));
  doc.add(chip(CAT[f.cat], 72, 190, col, 32).svg);
  const head = fit(f.title, { maxW: 860, max: 96, min: 54, maxH: 470, maxLines: 5 });
  const top = 765 - head.h / 2;
  const cl = doc.clip(poly([0, 0], [W, 0], [W, yr + band], [0, yl + band]));
  const cd = doc.clip(dark);
  doc.add(`<g clip-path="url(#${cl})">${para(head, 72, top, C.ink)}</g><g clip-path="url(#${cd})">${para(head, 72, top, CREAM)}</g>`);
  const hookTop = Math.max(top + head.h + 34, yl + band + 30);
  const hook = fit(f.hook, { maxW: 936, max: 32, min: 24, font: TEXT, lh: 1.4, maxLines: 4, maxH: 1170 - hookTop - 20 });
  doc.add(para(hook, 72, hookTop, NIGHT_MUTED));
  doc.add(text(SLOGAN, { x: 72, y: 1252, size: 30, fill: CREAM }));
  doc.add(text('Quellen: Link in Bio', { x: W - 72, y: 1252, size: 30, fill: C.yellow, anchor: 'end' }));
  doc.add(tag(doc, true));
  return doc.render();
}
// C: Riesenzahl auf Kategorie-Farbe läuft links raus, darunter dunkle schräge Karte (über den rechten Rand)
function postC(f, big) {
  const doc = new Doc(W, PH), col = CAT_COLOR[f.cat];
  doc.bg(col);
  doc.add(logoPlate(doc, 60, 70, 52));
  const ch = chip(CAT[f.cat], 0, 0, CREAM, 30);
  doc.add(`<g transform="translate(${W - 72 - ch.w} 88)">${ch.svg}</g>`);
  // Zahl so groß, dass sie etwa 1,2-mal so breit ist wie das Bild
  const size = Math.min(430, (W * 1.04) / (measure(big, 100) / 100));
  const num = text(big, { x: -30, y: 300 + size * 0.7, size, track: -0.03 });
  doc.add(rot(-5, W / 2, 400, `<g transform="translate(14 14)">${num.replace(/fill="[^"]+"/, `fill="${C.ink}"`)}</g>` + textStroke(num.replace(/fill="[^"]+"/, `fill="${CREAM}"`), C.ink, 10)));
  const cardTop = Math.max(320 + size * 0.75, 660);
  const cardH = 1180 - cardTop;
  const inner = (ty) => {
    const hook = fit(f.hook, { maxW: 820, max: 31, min: 24, font: TEXT, lh: 1.4, maxLines: 4 });
    const head = fit(f.title, { maxW: 840, max: 72, min: 44, maxH: cardH - 120 - hook.h, maxLines: 5 });
    return para(head, 110, ty + 56, CREAM) + para(hook, 110, ty + 56 + head.h + 26, NIGHT_MUTED);
  };
  doc.add(rot(2.5, W / 2, cardTop + cardH / 2, box(doc, 60, cardTop, W, cardH, NIGHT, { rx: 40, line: C.ink, off: 18 }) + inner(cardTop)));
  doc.add(text(CTA, { x: W / 2, y: 1272, size: 34, anchor: 'middle' }));
  doc.add(tag(doc, false));
  return doc.render();
}
// D: helle Karte schräg auf Kategorie-Farbe (läuft links raus), Emoji-Sticker auf der Ecke, dunkler Fuß
function postD(f) {
  const doc = new Doc(W, PH), col = CAT_COLOR[f.cat];
  doc.bg(col);
  doc.add(logoPlate(doc, 60, 70, 52));
  const cy = 300, ch = 780;
  const hook = fit(f.hook, { maxW: 800, max: 32, min: 24, font: TEXT, lh: 1.4, maxLines: 5 });
  const head = fit(f.title, { maxW: 820, max: 84, min: 48, maxH: ch - 150 - hook.h - 30, maxLines: 6 });
  const tTop = cy + (ch - head.h - 30 - hook.h) / 2 + 20;
  doc.add(rot(-4, 440, cy + ch / 2, box(doc, -80, cy, 1040, ch, CREAM, { rx: 40, off: 20 }) +
    chip(CAT[f.cat], 100, cy + 46, col, 30).svg +
    para(head, 100, tTop, C.ink) + para(hook, 100, tTop + head.h + 30, C.muted)));
  doc.add(emoji(doc, f.emoji, 760, 150, 300, { rot: 12 }));
  // WTF?!-Sticker
  doc.add(rot(-10, 900, 1060, box(doc, 790, 1010, 230, 100, C.yellow, { rx: 18, sw: 6, off: 10, dots: false }) + text('WTF?!', { x: 905, y: 1078, size: 54, anchor: 'middle' })));
  const foot = poly([0, 1200], [W, 1160], [W, PH], [0, PH]);
  doc.add(`<path d="${poly([0, 1192], [W, 1152], [W, 1168], [0, 1208])}" fill="${C.ink}"/>`);
  doc.add(doc.area(foot, NIGHT));
  doc.add(text(SLOGAN, { x: 72, y: 1272, size: 30, fill: CREAM }));
  doc.add(text('Quellen: Link in Bio', { x: W - 72, y: 1272, size: 30, fill: C.yellow, anchor: 'end' }));
  doc.add(tag(doc, true));
  return doc.render();
}
// E: dunkle Bühne mit zwei Klebebändern quer über den Rand, helle Karte in der Mitte
function postE(f) {
  const doc = new Doc(W, PH), col = CAT_COLOR[f.cat];
  doc.bg(NIGHT);
  doc.add(tape(doc, 'WTF?!', 150, -8, C.yellow));
  const cy = 300, ch = 760;
  const hook = fit(f.hook, { maxW: 780, max: 31, min: 24, font: TEXT, lh: 1.4, maxLines: 5 });
  const head = fit(f.title, { maxW: 780, max: 76, min: 44, maxH: ch - 260 - hook.h, maxLines: 6 });
  doc.add(rot(2, W / 2, cy + ch / 2, box(doc, 90, cy, 900, ch, CREAM, { rx: 40, line: C.ink, shadow: col, off: 20 }) +
    box(doc, 150, cy + 56, 150, 150, col, { rx: 26, sw: 6, off: 8 }) +
    emoji(doc, f.emoji, 167, cy + 73, 116, { shadow: null }) +
    chip(CAT[f.cat], 330, cy + 100, col, 30).svg +
    para(head, 150, cy + 250, C.ink) + para(hook, 150, cy + 250 + head.h + 26, C.muted)));
  doc.add(tape(doc, CAT[f.cat].toUpperCase(), 1130, 5, col));
  doc.add(logo(72, 1278, 46, true));
  doc.add(text('Quellen: Link in Bio', { x: W - 72, y: 1272, size: 30, fill: C.yellow, anchor: 'end' }));
  doc.add(tag(doc, true));
  return doc.render();
}

// ---------- Stories (1080×1920) ----------
// Oben ca. 250 px und unten ca. 340 px verdeckt Instagram; Inhalt liegt dazwischen.
// Wo ein Sticker hin soll (Link, Umfrage, Emoji-Regler), bleibt Platz frei und Chevrons zeigen darauf.
function stickerHint(doc, label, cy, dark) {
  const c = dark ? CREAM : C.ink;
  return text(label, { x: W / 2, y: cy, size: 40, anchor: 'middle', fill: c }) +
    chev('down', W / 2 - 30, cy + 20, 60, c, 3) + chev('down', W / 2 - 30, cy + 56, 60, c, 3);
}
const VOTE_Q = 'Welcher Fakt war der beste der letzten 7 Tage?';
const VOTE_SUB = 'Der Gewinner ist ab morgen eine Woche lang Fakt der Woche. Abstimmen bis heute 24 Uhr.';
// Montag 1: dunkel, „MONTAG“ läuft links und rechts aus dem Bild
function storyMonday1() {
  const doc = new Doc(W, SH);
  doc.bg(NIGHT);
  const big = text('MONTAG', { x: -60, y: 760, size: 330, track: -0.04 });
  doc.add(rot(-7, W / 2, 640, `<g transform="translate(16 16)">${big.replace(/fill="[^"]+"/, `fill="${C.pink}"`)}</g>` + textStroke(big.replace(/fill="[^"]+"/, `fill="${C.yellow}"`), C.ink, 10)));
  doc.add(pill(doc, 'Heute ist Abstimmung', W / 2, 300, { size: 40, a: 3, shadow: C.pink }));
  const q = fit(VOTE_Q, { maxW: 920, max: 92, min: 60, maxLines: 4 });
  doc.add(para(q, 80, 900, CREAM));
  const sub = fit(VOTE_SUB, { maxW: 920, max: 38, min: 30, font: TEXT, lh: 1.4, maxLines: 4 });
  doc.add(para(sub, 80, 900 + q.h + 36, NIGHT_MUTED));
  doc.add(stickerHint(doc, 'Hier abstimmen', 1380, true));
  doc.add(logo(80, 1700, 56, true));
  doc.add(tag(doc, true));
  return doc.render();
}
// Montag 2: schräg geteilt, Wahlurne läuft links raus
function storyMonday2() {
  const doc = new Doc(W, SH);
  const light = poly([0, 0], [W, 0], [W, 760], [0, 1000]);
  doc.add(doc.area(light, C.yellow));
  doc.add(doc.area(poly([0, 1000], [W, 760], [W, SH], [0, SH]), NIGHT));
  doc.add(`<path d="${poly([0, 990], [W, 750], [W, 770], [0, 1010])}" fill="${C.ink}"/>`);
  doc.add(emoji(doc, '🗳️', -170, 230, 760, { rot: -10 }));
  doc.add(rot(-6, 800, 420, text('Stimm', { x: 800, y: 400, size: 140, anchor: 'middle' }) + text('ab!', { x: 800, y: 540, size: 140, anchor: 'middle' })));
  const q = fit(VOTE_Q, { maxW: 920, max: 84, min: 56, maxLines: 4 });
  doc.add(para(q, 80, 1060, CREAM));
  const sub = fit(VOTE_SUB, { maxW: 920, max: 36, min: 28, font: TEXT, lh: 1.4, maxLines: 4 });
  doc.add(para(sub, 80, 1060 + q.h + 30, NIGHT_MUTED));
  doc.add(stickerHint(doc, 'Zur Abstimmung', 1540, true));
  doc.add(tag(doc, true));
  return doc.render();
}
// Montag 3: zehn Kategorie-Balken quer über das Bild, helle Karte darauf
function storyMonday3() {
  const doc = new Doc(W, SH);
  doc.bg(CREAM);
  const cats = Object.keys(CAT).filter((k) => !['new', 'quiz'].includes(k));
  cats.forEach((k, i) => {
    const y = 200 + i * 150, len = 500 + ((i * 37) % 5) * 130;
    doc.add(rot(-8, W / 2, y, box(doc, -60, y, len, 110, CAT_COLOR[k], { rx: 0, sw: 6, off: 10 }) + iconG(k, len - 140, y + 25, 60, C.ink, 2.4)));
  });
  const cy = 620, ch = 640;
  const q = fit(VOTE_Q, { maxW: 760, max: 72, min: 48, maxLines: 5 });
  doc.add(rot(3, W / 2, cy + ch / 2, box(doc, 110, cy, 860, ch, NIGHT, { rx: 40, line: C.ink, shadow: C.pink, off: 22 }) +
    pill(doc, 'Montag = Abstimmung', W / 2, cy + 50, { size: 34 }) + para(q, 160, cy + 170, CREAM) +
    para(fit('Abstimmen bis heute 24 Uhr.', { maxW: 760, max: 34, min: 28, font: TEXT }), 160, cy + 190 + q.h, NIGHT_MUTED)));
  doc.add(rot(-3, W / 2, 1420, box(doc, 180, 1340, 720, 200, CREAM, { rx: 30, sw: 6, off: 12, dots: false })));
  doc.add(stickerHint(doc, 'Deine Stimme', 1400, false));
  doc.add(tag(doc, false));
  return doc.render();
}
// Montag 4: gelb, riesiges „?!“ läuft rechts raus
function storyMonday4() {
  const doc = new Doc(W, SH);
  doc.bg(C.yellow);
  const qm = text('?!', { x: 600, y: 860, size: 700, track: -0.02 });
  doc.add(rot(12, 800, 600, `<g transform="translate(20 20)">${qm}</g>` + textStroke(qm.replace(/fill="[^"]+"/, `fill="${C.pink}"`), C.ink, 12)));
  doc.add(logoPlate(doc, 70, 260, 56));
  doc.add(rot(-4, 100, 560, text('Heute', { x: 80, y: 540, size: 128 }) + text('wird', { x: 80, y: 670, size: 128 }) + text('gewählt.', { x: 80, y: 800, size: 128 })));
  const cy = 980, ch = 310;
  const q = fit(VOTE_Q, { maxW: 820, max: 64, min: 44, maxLines: 4 });
  doc.add(rot(-2, W / 2, cy + ch / 2, box(doc, 80, cy, 920, ch, NIGHT, { rx: 36 }) + para(q, 130, cy + 50, CREAM) +
    para(fit('Der Gewinner wird Fakt der Woche.', { maxW: 820, max: 34, min: 26, font: TEXT }), 130, cy + 70 + q.h, NIGHT_MUTED)));
  doc.add(stickerHint(doc, 'Abstimmen', 1470, false));
  doc.add(tag(doc, false));
  return doc.render();
}
// Dienstag: Fakt der Woche steht fest
function storyWeekWinner() {
  const doc = new Doc(W, SH);
  doc.bg(NIGHT);
  doc.add(rot(-10, W / 2, 560, box(doc, 240, 260, 600, 600, C.orange, { rx: 80, line: CREAM, off: 0 })));
  doc.add(emoji(doc, '🏆', 190, 160, 700, { rot: 8 }));
  doc.add(tape(doc, 'FAKT DER WOCHE', 960, -6, C.yellow, { h: 110, size: 54 }));
  const h = fit('Der Fakt der Woche steht fest.', { maxW: 920, max: 96, min: 60, maxLines: 3 });
  doc.add(para(h, 80, 1090, CREAM));
  doc.add(para(fit('Ihr habt gestern abgestimmt. Welcher Fakt gewonnen hat, steht in der Hall of Fame.', { maxW: 920, max: 36, min: 28, font: TEXT, lh: 1.4, maxLines: 3 }), 80, 1110 + h.h, NIGHT_MUTED));
  doc.add(stickerHint(doc, 'Zum Gewinner', 1480, true));
  doc.add(tag(doc, true));
  return doc.render();
}
// Neuer Fakt online (hell)
function storyNew1() {
  const doc = new Doc(W, SH);
  doc.bg(CREAM);
  doc.add(tape(doc, 'NEU', 330, -9, C.lime, { h: 120, size: 64 }));
  doc.add(emoji(doc, '👀', 380, 470, 860, { rot: -12 }));
  doc.add(logo(80, 560, 70));
  const h = fit('Frischer Fakt ist online.', { maxW: 860, max: 96, min: 64, maxLines: 3 });
  doc.add(rot(-3, W / 2, 1150, box(doc, 60, 930, 960, h.h + 210, NIGHT, { rx: 40, shadow: C.pink, off: 18 }) + para(h, 110, 975, CREAM) +
    para(fit('Jeden Tag drei neue. Welcher haut dich heute um?', { maxW: 860, max: 36, min: 28, font: TEXT, lh: 1.4, maxLines: 2 }), 110, 1000 + h.h, NIGHT_MUTED)));
  doc.add(stickerHint(doc, 'Hier lesen', 1470, false));
  doc.add(tag(doc, false));
  return doc.render();
}
// Neuer Fakt online (dunkel mit Kategorie-Kacheln)
function storyNew2() {
  const doc = new Doc(W, SH);
  doc.bg(NIGHT);
  const tiles = [['🤯', C.pink, -140, 230, -12], ['🦈', C.lime, 700, 300, 10], ['⚡', C.cyan, 160, 620, 6], ['🍕', '#ff5947', 800, 640, -8]];
  for (const [e, c, x, y, a] of tiles) doc.add(rot(a, x + 180, y + 180, box(doc, x, y, 360, 360, c, { rx: 50, line: CREAM, off: 0 }) + emoji(doc, e, x + 50, y + 50, 260, { shadow: null })));
  const h = fit('Kurze Pause? Hol dir einen Fakt.', { maxW: 920, max: 100, min: 60, maxLines: 3 });
  doc.add(para(h, 80, 1120, CREAM));
  doc.add(para(fit('Dauert eine Minute. Danach weißt du etwas, das sonst keiner am Tisch weiß.', { maxW: 920, max: 36, min: 28, font: TEXT, lh: 1.4, maxLines: 3 }), 80, 1140 + h.h, NIGHT_MUTED));
  doc.add(stickerHint(doc, 'Hier entlang', 1500, true));
  doc.add(logo(80, 1780, 48, true));
  doc.add(tag(doc, true));
  return doc.render();
}
// WTF-Skala: Fakt plus Platz für den Emoji-Regler
function storyScale(f) {
  const doc = new Doc(W, SH), col = CAT_COLOR[f.cat];
  doc.add(doc.area(poly([0, 0], [W, 0], [W, 1060], [0, 1260]), col));
  doc.add(doc.area(poly([0, 1260], [W, 1060], [W, SH], [0, SH]), NIGHT));
  doc.add(`<path d="${poly([0, 1250], [W, 1050], [W, 1070], [0, 1270])}" fill="${C.ink}"/>`);
  doc.add(emoji(doc, f.emoji, 640, 180, 520, { rot: 10 }));
  doc.add(logoPlate(doc, 70, 260, 52));
  doc.add(chip(CAT[f.cat], 80, 400, CREAM, 34).svg);
  const head = fit(f.title, { maxW: 900, max: 84, min: 52, maxLines: 5 });
  doc.add(rot(-3, W / 2, 900, box(doc, 50, 720, 1000, head.h + 120, CREAM, { rx: 40, off: 18 }) + para(head, 100, 780, C.ink)));
  doc.add(text('Wie WTF ist das?', { x: W / 2, y: 1360, size: 76, anchor: 'middle', fill: C.yellow }));
  doc.add(stickerHint(doc, 'Schieb den Regler', 1460, true));
  doc.add(text(CTA, { x: W / 2, y: 1660, size: 32, anchor: 'middle', fill: CREAM }));
  doc.add(tag(doc, true));
  return doc.render();
}
// Kategorie-Umfrage
function storyCategories() {
  const doc = new Doc(W, SH);
  doc.bg(CREAM);
  const cats = Object.keys(CAT).filter((k) => !['new', 'quiz'].includes(k));
  cats.forEach((k, i) => {
    const x = 70 + (i % 2) * 480 + (i % 4 === 1 ? 20 : 0), y = 640 + Math.floor(i / 2) * 120;
    const c = chip(CAT[k], 0, 0, CAT_COLOR[k], 44);
    doc.add(rot(((i * 7) % 9) - 4, x + c.w / 2, y + 37, `<g transform="translate(${x} ${y})">${c.svg}</g>`));
  });
  const h = fit('Wovon willst du mehr sehen?', { maxW: 920, max: 110, min: 70, maxLines: 3 });
  doc.add(rot(-4, W / 2, 400, para(h, 80, 280, C.ink)));
  doc.add(rot(2, W / 2, 1400, box(doc, 90, 1290, 900, 300, NIGHT, { rx: 36, shadow: C.pink })));
  doc.add(stickerHint(doc, 'Stimm hier ab', 1360, true));
  doc.add(tag(doc, false));
  return doc.render();
}

// ---------- Extras (Feed, 1080×1350) ----------
const swipeHint = (doc, label, y, dark) => text(label, { x: W - 130, y, size: 32, anchor: 'end', fill: dark ? CREAM : C.ink }) + chev('right', W - 120, y - 38, 52, dark ? CREAM : C.ink, 3.2);
// Wahr oder Fake? Bild 1: links Fake (pink), rechts Wahr (grün), wie die Wisch-Knöpfe der Seite
function wfQuestion(claim) {
  const doc = new Doc(W, PH);
  doc.add(doc.area(poly([0, 0], [600, 0], [480, PH], [0, PH]), C.pink));
  doc.add(doc.area(poly([600, 0], [W, 0], [W, PH], [480, PH]), C.lime));
  doc.add(`<path d="M600 0L480 ${PH}" stroke="${C.ink}" stroke-width="10"/>`);
  const fk = text('FAKE', { x: -40, y: 1330, size: 300, fill: '#14141422', track: -0.04 });
  const wh = text('WAHR', { x: W + 40, y: 1330, size: 300, fill: '#14141422', track: -0.04, anchor: 'end' });
  doc.add(fk + wh);
  doc.add(rot(-3, W / 2, 150, box(doc, 200, 90, 680, 120, NIGHT, { rx: 60, sw: 6, off: 12 }) + text('Wahr oder Fake?', { x: W / 2, y: 172, size: 62, anchor: 'middle', fill: CREAM })));
  const c = fit(`„${claim}“`, { maxW: 780, max: 80, min: 48, maxLines: 6 });
  const ch = c.h + 140, cy = 640 - ch / 2;
  doc.add(rot(-2, W / 2, 640, box(doc, 90, cy, 900, ch, CREAM, { rx: 40, off: 20 }) + para(c, 150, cy + 70, C.ink)));
  doc.add(pill(doc, 'Fake', 250, 1040, { fill: CREAM, size: 44, a: -6 }) + pill(doc, 'Wahr', 830, 1040, { fill: CREAM, size: 44, a: 6 }));
  doc.add(rot(0, 0, 0, text('Tipp in die Kommentare', { x: W / 2, y: 1220, size: 36, anchor: 'middle' })));
  doc.add(swipeHint(doc, 'Auflösung', 1290, false));
  doc.add(tag(doc, false));
  return doc.render();
}
function wfAnswer(f, isTrue) {
  const doc = new Doc(W, PH);
  doc.bg(isTrue ? C.lime : C.pink);
  const word = isTrue ? 'WAHR' : 'FAKE';
  const big = text(word, { x: W / 2, y: 470, size: 380, anchor: 'middle', track: -0.04 });
  doc.add(rot(-10, W / 2, 330, `<g transform="translate(18 18)">${big}</g>` + textStroke(big.replace(/fill="[^"]+"/, `fill="${CREAM}"`), C.ink, 12)));
  const hook = fit(f.hook, { maxW: 820, max: 32, min: 24, font: TEXT, lh: 1.4, maxLines: 5 });
  const head = fit(f.title, { maxW: 820, max: 64, min: 42, maxLines: 4 });
  const cy = 620, ch = head.h + hook.h + 190;
  doc.add(rot(2, W / 2, cy + ch / 2, box(doc, 70, cy, 940, ch, NIGHT, { rx: 40 }) + chip(CAT[f.cat], 120, cy + 40, CAT_COLOR[f.cat], 30).svg +
    para(head, 120, cy + 120, CREAM) + para(hook, 120, cy + 140 + head.h, NIGHT_MUTED)));
  doc.add(text(CTA, { x: W / 2, y: 1270, size: 34, anchor: 'middle' }));
  doc.add(tag(doc, false));
  return doc.render();
}
// Was war zuerst? Zwei Karten, hell und dunkel, schräg gegeneinander
function wzSlide(a, b, reveal) {
  const doc = new Doc(W, PH);
  doc.bg(C.violet);
  doc.add(rot(-3, W / 2, 150, textStroke(text('Was war zuerst?', { x: W / 2, y: 180, size: 92, anchor: 'middle', fill: CREAM }), C.ink, 10)));
  const card = (it, x, y, a2, dark) => {
    const t = fit(it.label, { maxW: 470, max: 54, min: 36, maxLines: 4 });
    const win = reveal && it.first;
    return rot(a2, x + 330, y + 210, box(doc, x, y, 660, 420, dark ? NIGHT : CREAM, { rx: 40, shadow: win ? C.yellow : C.ink, off: 20 }) +
      emoji(doc, it.emoji, x + 40, y + 40, 130, { shadow: null }) +
      para(t, x + 40, y + 200, dark ? CREAM : C.ink) +
      (reveal ? text(String(it.year), { x: x + 620, y: y + 150, size: 110, anchor: 'end', fill: dark ? C.yellow : PINK_TEXT }) : '') +
      (win ? pill(doc, it.tie ? 'Gleichzeitig!' : 'Zuerst!', x + 330, y + 400, { size: 34 }) : ''));
  };
  doc.add(card(a, 50, 280, -4, false));
  doc.add(card(b, 370, 760, 3, true));
  if (!reveal) {
    doc.add(rot(-12, 300, 980, box(doc, 170, 900, 230, 150, C.yellow, { rx: 30, sw: 7, off: 12 }) + text('VS', { x: 285, y: 1005, size: 90, anchor: 'middle' })));
    doc.add(swipeHint(doc, 'Auflösung', 1290, true));
  } else {
    doc.add(text(CTA, { x: W / 2, y: 1290, size: 32, anchor: 'middle', fill: CREAM }));
  }
  doc.add(tag(doc, true));
  return doc.render();
}
// Emoji-Rätsel
function erQuestion(emojis) {
  const doc = new Doc(W, PH);
  doc.bg(C.yellow);
  doc.add(rot(-4, W / 2, 170, text('Emoji-Rätsel', { x: 80, y: 200, size: 104 })));
  const cols = [C.pink, C.cyan, C.lime];
  const pos = [[-60, 330, -10], [380, 470, 7], [720, 300, -6]];
  emojis.forEach((e, i) => {
    const [x, y, a] = pos[i];
    doc.add(rot(a, x + 210, y + 210, box(doc, x, y, 420, 420, cols[i], { rx: 60, off: 18 }) + emoji(doc, e, x + 60, y + 60, 300, { shadow: null })));
  });
  const q = fit('Welcher Fakt steckt hier drin?', { maxW: 900, max: 80, min: 50, maxLines: 2 });
  doc.add(rot(-2, W / 2, 1060, box(doc, 60, 980, 960, q.h + 90, NIGHT, { rx: 36 }) + para(q, 110, 1025, CREAM)));
  doc.add(text('Rate in den Kommentaren', { x: 80, y: 1290, size: 34 }));
  doc.add(swipeHint(doc, 'Lösung', 1290, false));
  doc.add(tag(doc, false));
  return doc.render();
}
function erAnswer(f, emojis) {
  const doc = new Doc(W, PH);
  doc.bg(NIGHT);
  emojis.forEach((e, i) => doc.add(emoji(doc, e, 80 + i * 200, 120, 170, { rot: (i - 1) * 8, shadow: CAT_COLOR[f.cat] })));
  doc.add(pill(doc, 'Lösung', 880, 160, { size: 40, a: 6, fill: C.lime }));
  const hook = fit(f.hook, { maxW: 860, max: 33, min: 24, font: TEXT, lh: 1.4, maxLines: 5 });
  const head = fit(f.title, { maxW: 860, max: 76, min: 46, maxLines: 5 });
  const cy = 400, ch = head.h + hook.h + 200;
  doc.add(rot(-2, W / 2, cy + ch / 2, box(doc, 60, cy, 960, ch, CREAM, { rx: 40, shadow: CAT_COLOR[f.cat], off: 20 }) + chip(CAT[f.cat], 110, cy + 44, CAT_COLOR[f.cat], 30).svg +
    para(head, 110, cy + 130, C.ink) + para(hook, 110, cy + 150 + head.h, C.muted)));
  doc.add(text(SLOGAN, { x: 80, y: 1270, size: 30, fill: CREAM }));
  doc.add(text('Quellen: Link in Bio', { x: W - 80, y: 1270, size: 30, fill: C.yellow, anchor: 'end' }));
  doc.add(tag(doc, true));
  return doc.render();
}
// Karussell: Deckblatt, 4 Fakten, Schluss
function kCover(k) {
  const doc = new Doc(W, PH);
  doc.add(doc.area(poly([0, 0], [W, 0], [W, 700], [0, 900]), CAT_COLOR[k.cat]));
  doc.add(doc.area(poly([0, 900], [W, 700], [W, PH], [0, PH]), NIGHT));
  doc.add(`<path d="${poly([0, 890], [W, 690], [W, 710], [0, 910])}" fill="${C.ink}"/>`);
  k.facts.forEach((f, i) => doc.add(emoji(doc, f.emoji, [560, 800, 600, 830][i], [60, 200, 380, 470][i], [260, 220, 200, 170][i], { rot: [-10, 8, 12, -6][i] })));
  doc.add(logoPlate(doc, 60, 70, 48));
  const big = text('4', { x: -30, y: 760, size: 640 });
  doc.add(rot(-6, 200, 500, `<g transform="translate(18 18)">${big}</g>` + textStroke(big.replace(/fill="[^"]+"/, `fill="${CREAM}"`), C.ink, 12)));
  const t = fit(k.title, { maxW: 900, max: 84, min: 50, maxLines: 4 });
  doc.add(para(t, 80, 940, CREAM));
  doc.add(swipeHint(doc, 'Wisch', 1290, true));
  doc.add(tag(doc, true));
  return doc.render();
}
function kFact(k, f, i) {
  const doc = new Doc(W, PH), col = CAT_COLOR[f.cat];
  const dark = i % 2 === 1;
  doc.bg(dark ? NIGHT : CREAM);
  const n = text(String(i + 1), { x: W - 10, y: 560, size: 560, anchor: 'end' });
  doc.add(rot(8, 800, 300, `<g transform="translate(18 18)">${n.replace(/fill="[^"]+"/, `fill="${C.ink}"`)}</g>` + textStroke(n.replace(/fill="[^"]+"/, `fill="${col}"`), C.ink, 12)));
  doc.add(rot(-8, 210, 280, box(doc, 80, 150, 260, 260, col, { rx: 44, line: dark ? CREAM : C.ink, off: dark ? 0 : 16 }) + emoji(doc, f.emoji, 110, 180, 200, { shadow: null })));
  const hook = fit(f.hook, { maxW: 900, max: 34, min: 24, font: TEXT, lh: 1.4, maxLines: 6 });
  const head = fit(f.title, { maxW: 920, max: 80, min: 46, maxLines: 5, maxH: 1180 - 640 - hook.h - 30 });
  const top = 1180 - hook.h - 30 - head.h;
  doc.add(chip(CAT[f.cat], 80, top - 90, col, 30).svg);
  doc.add(para(head, 80, top, dark ? CREAM : C.ink) + para(hook, 80, top + head.h + 26, dark ? NIGHT_MUTED : C.muted));
  doc.add(text(`${i + 1}/4`, { x: 80, y: 1290, size: 30, fill: dark ? CREAM : C.ink }));
  if (i < 3) doc.add(swipeHint(doc, 'Weiter', 1290, dark));
  doc.add(tag(doc, dark));
  return doc.render();
}
function kEnd(k) {
  const doc = new Doc(W, PH);
  doc.bg(C.yellow);
  doc.add(tape(doc, 'WTF?!', 200, -8, C.pink));
  const t = fit('Welcher war neu für dich?', { maxW: 900, max: 104, min: 60, maxLines: 3 });
  doc.add(para(t, 80, 380, C.ink));
  doc.add(para(fit('Schreib die Nummer in die Kommentare. Und speicher dir das für den nächsten Smalltalk.', { maxW: 900, max: 38, min: 28, font: TEXT, lh: 1.4, maxLines: 3 }), 80, 400 + t.h, C.ink));
  k.facts.forEach((f, i) => doc.add(rot((i - 1.5) * 6, 150 + i * 260, 1000, box(doc, 60 + i * 250, 900, 200, 200, CAT_COLOR[f.cat], { rx: 36, off: 12 }) + emoji(doc, f.emoji, 85 + i * 250, 925, 150, { shadow: null }))));
  doc.add(pill(doc, 'Alle Quellen: Link in Bio', W / 2, 1170, { fill: CREAM, size: 38, a: -2 }));
  doc.add(tag(doc, false));
  return doc.render();
}
// Profil-Specials zum Anpinnen
function spAbout(samples) {
  const doc = new Doc(W, PH);
  doc.bg(NIGHT);
  samples.forEach((f, i) => {
    const x = [560, 640, 520][i], y = [60, 300, 560][i], a = [12, -8, 6][i];
    doc.add(rot(a, x + 280, y + 120, box(doc, x, y, 600, 240, CAT_COLOR[f.cat], { rx: 36, line: CREAM, off: 0 }) + emoji(doc, f.emoji, x + 30, y + 40, 160, { shadow: null }) +
      para(fit(f.title, { maxW: 360, max: 30, min: 22, maxLines: 5 }), x + 210, y + 40, C.ink)));
  });
  doc.add(logo(80, 240, 100, true));
  const h = fit('Jeden Tag drei Fakten, bei denen du „WTF?!“ sagst.', { maxW: 920, max: 84, min: 54, maxLines: 4 });
  doc.add(para(h, 80, 860, CREAM));
  doc.add(para(fit('Jeder Fakt mit Quellen. Folg uns für deine tägliche Dosis.', { maxW: 920, max: 36, min: 28, font: TEXT, lh: 1.4 }), 80, 880 + h.h, NIGHT_MUTED));
  doc.add(pill(doc, SLOGAN, W / 2, 1200, { size: 36, a: -2, shadow: C.pink }));
  doc.add(tag(doc, true));
  return doc.render();
}
function spVote() {
  const doc = new Doc(W, PH);
  doc.bg(CREAM);
  doc.add(emoji(doc, '🗳️', 720, -70, 420, { rot: 12 }));
  const h = fit('Jeden Montag wählt ihr den Fakt der Woche.', { maxW: 600, max: 80, min: 50, maxLines: 5 });
  doc.add(para(h, 80, 120, C.ink));
  const steps = [['Montag', 'Abstimmen: Welcher Fakt war der beste der letzten 7 Tage?', C.yellow], ['Dienstag', 'Der Gewinner wird für eine Woche Fakt der Woche.', C.lime], ['Für immer', 'Alle Sieger landen in der Hall of Fame.', C.cyan]];
  steps.forEach(([d, t, c], i) => {
    const y = 560 + i * 210, a = [-3, 2, -2][i];
    const tt = fit(t, { maxW: 560, max: 36, min: 26, font: TEXT, lh: 1.35, maxLines: 3 });
    doc.add(rot(a, W / 2, y + 85, box(doc, i === 1 ? 140 : 60, y, 900, 170, i === 1 ? NIGHT : c, { rx: 30, sw: 7, off: 14 }) +
      text(d, { x: (i === 1 ? 140 : 60) + 40, y: y + 100, size: 52, fill: i === 1 ? C.lime : C.ink }) +
      para(tt, (i === 1 ? 140 : 60) + 330, y + 85 - tt.h / 2, i === 1 ? CREAM : C.ink)));
  });
  doc.add(text('Abstimmen: Link in Bio', { x: W / 2, y: 1270, size: 36, anchor: 'middle' }));
  doc.add(tag(doc, false));
  return doc.render();
}
function spJumper() {
  const doc = new Doc(W, PH);
  doc.add(doc.area(poly([0, 0], [W, 0], [W, 760], [0, 640]), NIGHT));
  doc.add(doc.area(poly([0, 640], [W, 760], [W, PH], [0, PH]), C.yellow));
  doc.add(`<path d="${poly([0, 630], [W, 750], [W, 770], [0, 650])}" fill="${C.ink}"/>`);
  doc.add(emoji(doc, '📕', 120, 330, 260, { rot: -14, shadow: C.pink }));
  doc.add(emoji(doc, '🔥', 470, 470, 200, { shadow: C.pink }));
  doc.add(emoji(doc, '🔥', 640, 500, 170, { shadow: C.pink }));
  doc.add(emoji(doc, '🧪', 860, 220, 230, { rot: 14, shadow: C.cyan }));
  doc.add(emoji(doc, '⭐', 860, 470, 150, { rot: -10, shadow: C.pink }));
  doc.add(rot(-4, W / 2, 180, text('Science Jumper', { x: W / 2, y: 220, size: 110, anchor: 'middle', fill: C.yellow })));
  const h = fit('Spring über die Flammen, sammle Reagenzgläser.', { maxW: 920, max: 70, min: 48, maxLines: 3 });
  doc.add(para(h, 80, 820, C.ink));
  doc.add(para(fit('Mit jedem Highscore schaltest du Gold-Fakten frei. Gratis im Browser, ohne Anmeldung.', { maxW: 920, max: 36, min: 28, font: TEXT, lh: 1.4, maxLines: 3 }), 80, 840 + h.h, C.ink));
  doc.add(pill(doc, 'Spielen: Link in Bio', W / 2, 1180, { fill: NIGHT, ink: CREAM, size: 40, a: -2, shadow: C.pink }));
  doc.add(tag(doc, false));
  return doc.render();
}

// ---------- Inhalte ----------
// 50 Fakten-Posts, je Kategorie 5, stärkste zuerst. `big` = Riesenzahl (Layout C), muss mit `must` im Titel stehen.
const POST_QUEUES = {
  nature: ['wombat-cubes', 'greenland-shark', 'mantis-shrimp', 'crows-faces', 'pando-one-tree-forest'],
  weird: ['pringles-can', 'swiss-guinea-pig-rental', 'bubble-wrap', 'michelin-guide-tires', 'monopoly-landlords-game'],
  science: ['honey-forever', 'neutron-star-spoon', 'venus-day-year', 'saturn-floats', 'trees-vs-stars'],
  history: ['byron-college-bear', 'cleopatra-timeline', 'roman-urine', 'eiffel-tower-radio-saved', 'ketchup-medicine'],
  body: ['humans-glow', 'cant-tickle-yourself', 'cornea-breathes-air', 'astronauts-taller', 'missing-palmaris-longus'],
  tech: ['first-bug-moth', 'apollo-computer', 'recaptcha-books', 'first-hard-drive-ton', 'trabant-cotton-body'],
  food: ['pistachio-combustion', 'nachos-named-after-nacho', 'run-manhattan', 'german-chocolate-cake-sam-german', 'pineapple-bromelain'],
  sport: ['moon-golf', 'isner-mahut-longest-match', 'olympic-art-medals', 'olympic-gold-silver', 'volleyball-mintonette'],
  survival: ['apollo-13-co2-mailbox', 'conan-bacterium', 'shackleton-endurance', 'methuselah-palm', 'icefish-antifreeze'],
  language: ['muscle-little-mouse', 'dord-ghost-word', 'vatican-latin-atm', 'silbo-gomero', 'ampersand-27th-letter'],
};
const BIG = {
  'greenland-shark': ['400', '400 Jahre'], 'mantis-shrimp': ['83 km/h', '83 km/h'], 'pando-one-tree-forest': ['6000 t', '6000 Tonnen'],
  'neutron-star-spoon': ['1.000.000.000 t', '1 Milliarde Tonnen'], 'saturn-floats': ['−30 %', '30 Prozent'], 'humans-glow': ['1000×', '1000-mal'],
  'missing-palmaris-longus': ['26 %', '26 Prozent'], 'isner-mahut-longest-match': ['70:68', '70:68'], 'olympic-gold-silver': ['6 g', '6 Gramm'],
  'conan-bacterium': ['28.000×', '28.000-mal'], 'methuselah-palm': ['2000', '2000 Jahre'],
};
const CAT_ORDER = ['nature', 'weird', 'science', 'history', 'body', 'tech', 'food', 'sport', 'survival', 'language'];
const LAYOUTS = { A: postA, B: postB, D: postD, E: postE };
function buildPostList() {
  const list = [];
  const cycle = ['A', 'D', 'B', 'E'];
  let li = 0;
  for (let r = 0; r < 5; r++) for (const c of CAT_ORDER) {
    const key = POST_QUEUES[c][r];
    if (BIG[key]) { list.push({ key, layout: 'C' }); continue; }
    list.push({ key, layout: cycle[li++ % cycle.length] });
  }
  return list;
}

// Wahr oder Fake?
const WF = [
  { key: 'glass-not-liquid', ok: false, claim: 'Altes Fensterglas ist unten dicker, weil Glas über Jahrhunderte langsam nach unten fließt.' },
  { key: 'bananas-berries', ok: true, claim: 'Botanisch gesehen ist die Banane eine Beere.' },
  { key: 'viking-helmets', ok: false, claim: 'Wikinger trugen im Kampf Helme mit Hörnern.' },
  { key: 'scotland-unicorn', ok: true, claim: 'Das Nationaltier von Schottland ist ein Einhorn.' },
  { key: 'napoleon-height', ok: false, claim: 'Napoleon war für seine Zeit auffällig klein.' },
  { key: 'camel-hump', ok: false, claim: 'Im Höcker speichert das Kamel Wasser für lange Wüstentouren.' },
  { key: 'koala-fingerprints', ok: true, claim: 'Koalas haben Fingerabdrücke, die menschlichen zum Verwechseln ähneln.' },
  { key: 'wifi-name', ok: false, claim: '„Wi-Fi“ ist die Abkürzung für „Wireless Fidelity“.' },
];
// Was war zuerst? Jahreszahlen werden gegen den Text des Fakts geprüft
const WZ = [
  [{ key: 'basketball-peach-baskets', label: 'Das erste Basketballspiel', cap: 'die Erfindung von Basketball', emoji: '🏀', year: 1891 }, { key: 'nintendo-1889', label: 'Nintendo wird gegründet', cap: 'die Gründung von Nintendo', emoji: '🎴', year: 1889 }],
  [{ key: 'play-doh', label: 'Play-Doh kommt als Spielzeug in den Handel', cap: 'Play-Doh als Spielzeug', emoji: '🧽', year: 1956 }, { key: 'first-mouse-wood', label: 'Die erste Computermaus', cap: 'die erste Computermaus', emoji: '🖱️', year: 1964 }],
  [{ key: 'ok-origin', label: '„OK“ steht zum ersten Mal in der Zeitung', cap: 'das erste „OK“ in der Zeitung', emoji: '👌', year: 1839 }, { key: 'ketchup-medicine', label: 'Ein Arzt erklärt Tomaten zur Medizin', cap: 'Tomaten als Medizin', emoji: '🍅', year: 1834 }],
  [{ key: 'coffee-pot-webcam', label: 'Die Kaffeemaschinen-Kamera in Cambridge', cap: 'die Kaffeemaschinen-Kamera in Cambridge', emoji: '☕', year: 1991 }, { key: 'first-sms', label: 'Die erste SMS der Welt', cap: 'die erste SMS', emoji: '💬', year: 1992 }],
  [{ key: 'at-sign-email', label: 'Die erste E-Mail', cap: 'die erste E-Mail', emoji: '📧', year: 1971 }, { key: 'moon-golf', label: 'Golf auf dem Mond', cap: 'Golf auf dem Mond', emoji: '⛳', year: 1971 }],
  [{ key: 'popsicle-epperson', label: 'Ein 11-Jähriger erfindet das Eis am Stiel', cap: 'das Eis am Stiel', emoji: '🧊', year: 1905 }, { key: 'monopoly-landlords-game', label: 'Der Vorläufer von Monopoly wird patentiert', cap: 'der Vorläufer von Monopoly', emoji: '🎲', year: 1904 }],
];
// Emoji-Rätsel
const ER = [
  { key: 'pickles-world-cup', emojis: ['🐕', '🏆', '🔍'] },
  { key: 'immortal-jellyfish', emojis: ['🪼', '🔄', '👶'] },
  { key: 'sea-otters-hands', emojis: ['🦦', '🌿', '😴'] },
  { key: 'flamingo-pink', emojis: ['🦩', '🦐', '🎨'] },
  { key: 'marathon-distance', emojis: ['🏃', '🏰', '👑'] },
];
// Karussells
const KS = [
  { id: 'regelbrecher', cat: 'survival', title: '4 Lebewesen, die sich an keine Regel halten', keys: ['tardigrade-space', 'wood-frog-freeze', 'lichen-mars', 'bamboo-91-cm-day'] },
  { id: 'klassiker', cat: 'food', title: '4 Klassiker, die nicht sind, was du denkst', keys: ['caesar-salad-tijuana', 'fortune-cookie-origin', 'hawaiian-pizza', 'fake-wasabi'] },
  { id: 'woerter', cat: 'language', title: '4 Wörter mit überraschender Herkunft', keys: ['nice-meant-foolish', 'dollar-from-thaler', 'emoji-word-of-the-year', 'broiler-english-word'] },
];

// ---------- Captions ----------
const TAGS_BASE = '#wtfact #funfact #wusstestdu #fakten #unnützeswissen';
const TAGS_CAT = {
  science: '#wissenschaft #physik #science', history: '#geschichte #historisch #history', tech: '#technik #internetgeschichte #nerdwissen',
  nature: '#natur #tiere #tierfakten', body: '#körper #biologie #menschlicherkörper', weird: '#kurios #skurril #verrücktewelt',
  survival: '#überleben #extrem #survival', food: '#essen #foodfacts #küchenwissen', language: '#sprache #wortherkunft #etymologie',
  sport: '#sport #sportgeschichte #olympia',
};
const QUESTIONS = ['Wusstest du das schon?', 'Wem schickst du das?', 'Hättest du das gedacht?', 'Speichern für den nächsten Smalltalk.', 'Schreib „WTF“ in die Kommentare, wenn das neu für dich war.', 'Markier jemanden, der das wissen muss.'];
const tags = (cat, extra = '') => `${TAGS_BASE} ${TAGS_CAT[cat]}${extra ? ' ' + extra : ''}`;
const capPost = (f, i) => `${f.teaser}\n\n${QUESTIONS[i % QUESTIONS.length]}\n\n${CTA}.\n\n${tags(f.cat)}`;

// ---------- Erzeugen ----------
const files = { posts: [], stories: [], extras: [] };
const put = (group, name, svgStr) => { png(`${OUT}/${group}/${name}.png`, svgStr); files[group].push(`${group}/${name}.png`); return `${group}/${name}.png`; };
const plan = []; // Feed-Einheiten in Reihenfolge: { kind, files, caption, title }

function checkYear(it) {
  const f = fact(it.key);
  if (![f.title, f.hook, f.body].some((t) => t.includes(String(it.year)))) throw new Error(`Jahr ${it.year} steht nicht in ${it.key}`);
}

function main() {
  fs.rmSync(path.join(ROOT, OUT), { recursive: true, force: true });
  // Posts
  const posts = buildPostList().map((p, i) => {
    const f = fact(p.key);
    const n = String(i + 1).padStart(2, '0');
    let s;
    if (p.layout === 'C') {
      const [big, must] = BIG[p.key];
      if (!f.title.includes(must)) throw new Error(`„${must}“ steht nicht im Titel von ${p.key}`);
      s = postC(f, big);
    } else s = LAYOUTS[p.layout](f);
    const file = put('posts', `${n}-${p.key}`, s);
    return { kind: 'Post', title: f.title, files: [file], caption: capPost(f, i) };
  });
  // Stories
  const stories = [
    ['01-montag-abstimmung-a', storyMonday1(), 'Montag, Abstimmung (Variante A)', 'Link-Sticker auf die Hall of Fame (Abstimmung).'],
    ['02-montag-abstimmung-b', storyMonday2(), 'Montag, Abstimmung (Variante B)', 'Link-Sticker auf die Hall of Fame (Abstimmung).'],
    ['03-montag-abstimmung-c', storyMonday3(), 'Montag, Abstimmung (Variante C)', 'Link-Sticker in das helle Feld unten.'],
    ['04-montag-abstimmung-d', storyMonday4(), 'Montag, Abstimmung (Variante D)', 'Link-Sticker auf die Hall of Fame (Abstimmung).'],
    ['05-dienstag-fakt-der-woche', storyWeekWinner(), 'Dienstag, Fakt der Woche steht fest', 'Link-Sticker auf die Hall of Fame.'],
    ['06-neuer-fakt-hell', storyNew1(), 'Neuer Fakt online (hell)', 'Link-Sticker auf den neuesten Fakt oder die Startseite.'],
    ['07-neuer-fakt-dunkel', storyNew2(), 'Neuer Fakt online (dunkel)', 'Link-Sticker auf den neuesten Fakt oder die Startseite.'],
    ['08-wtf-skala-babyknochen', storyScale(fact('baby-bones')), 'WTF-Skala: Babyknochen', 'Emoji-Regler-Sticker (🤯) unter die Frage, Link-Sticker optional.'],
    ['09-wtf-skala-18-stunden-tag', storyScale(fact('earth-day-18-hours')), 'WTF-Skala: 18-Stunden-Tag', 'Emoji-Regler-Sticker (🤯) unter die Frage, Link-Sticker optional.'],
    ['10-umfrage-kategorien', storyCategories(), 'Umfrage: Wovon willst du mehr?', 'Umfrage-Sticker mit 2 bis 4 Kategorien, z. B. „Tiere“ / „Geschichte“.'],
  ].map(([name, s, title, how]) => ({ file: put('stories', name, s), title, how }));
  // Extras
  const extras = [];
  let ex = 0;
  const xn = () => String(++ex).padStart(2, '0');
  extras.push({ kind: 'Anpinnen', title: 'Was ist WTFact?', files: [put('extras', `${xn()}-anpinnen-was-ist-wtfact`, spAbout(['wombat-cubes', 'honey-forever', 'pringles-can'].map(fact)))],
    caption: `Hi! Hier gibt's jeden Tag Fakten, bei denen du erst „WTF?!“ sagst und dann klüger bist. Jeder einzelne mit Quellen.\n\nFolg uns für deine tägliche Dosis. Alle Fakten: Link in Bio.\n\n${TAGS_BASE} #wissen #lernen` });
  extras.push({ kind: 'Anpinnen', title: 'Jeden Montag Abstimmung', files: [put('extras', `${xn()}-anpinnen-montags-abstimmung`, spVote())],
    caption: `Jeden Montag stimmt ihr ab: Welcher Fakt war der beste der letzten 7 Tage? Der Gewinner ist eine Woche lang Fakt der Woche und landet in der Hall of Fame.\n\nAbstimmen: Link in Bio. Montags erinnern wir dich in der Story.\n\n${TAGS_BASE} #abstimmung #faktderwoche` });
  extras.push({ kind: 'Anpinnen', title: 'Science Jumper', files: [put('extras', `${xn()}-anpinnen-science-jumper`, spJumper())],
    caption: `Auf WTFact gibt's ein Spiel: Science Jumper. Spring als Buch über Flammen, sammle Reagenzgläser und schalte mit jedem Highscore goldene Fakten frei.\n\nWie weit kommst du? Screenshot vom Highscore gern in die Kommentare. Spielen: Link in Bio.\n\n${TAGS_BASE} #browsergame #highscore #sciencejumper` });
  for (const w of WF) {
    const f = fact(w.key), n = xn(), slug = w.key;
    extras.push({ kind: 'Wahr oder Fake? (2 Bilder)', title: `Wahr oder Fake: ${w.claim}`,
      files: [put('extras', `${n}-wahr-oder-fake-${slug}-1`, wfQuestion(w.claim)), put('extras', `${n}-wahr-oder-fake-${slug}-2`, wfAnswer(f, w.ok))],
      caption: `Wahr oder Fake? Erst tippen, dann wischen. 👉\n\nAuflösung auf Bild 2, den ganzen Fakt mit Quellen gibt's über den Link in Bio.\n\n${tags(f.cat, '#wahroderfake #quiz')}` });
  }
  for (const [a, b] of WZ) {
    checkYear(a); checkYear(b);
    const tie = a.year === b.year;
    a.first = tie || a.year < b.year; b.first = tie || b.year < a.year; a.tie = b.tie = tie;
    const n = xn(), slug = `${a.key}-vs-${b.key}`.slice(0, 60);
    const fa = fact(a.key);
    extras.push({ kind: 'Was war zuerst? (2 Bilder)', title: `${a.label} oder ${b.label}`,
      files: [put('extras', `${n}-was-war-zuerst-${slug}-1`, wzSlide(a, b, false)), put('extras', `${n}-was-war-zuerst-${slug}-2`, wzSlide(a, b, true))],
      caption: `Was war zuerst: ${a.cap} oder ${b.cap}? Tipp ab, dann wischen. 👉\n\nBeide Fakten mit Quellen: Link in Bio.\n\n${tags(fa.cat, '#quiz #wasistälter')}` });
  }
  for (const e of ER) {
    const f = fact(e.key), n = xn();
    extras.push({ kind: 'Emoji-Rätsel (2 Bilder)', title: `Emoji-Rätsel: ${e.emojis.join('')}`,
      files: [put('extras', `${n}-emoji-raetsel-${e.key}-1`, erQuestion(e.emojis)), put('extras', `${n}-emoji-raetsel-${e.key}-2`, erAnswer(f, e.emojis))],
      caption: `${e.emojis.join(' ')}\nWelcher Fakt steckt hier drin? Rate in den Kommentaren, die Lösung ist auf Bild 2. 👉\n\n${CTA}.\n\n${tags(f.cat, '#emojirätsel #quiz')}` });
  }
  for (const k of KS) {
    const kk = { ...k, facts: k.keys.map(fact) };
    const n = xn();
    const fs_ = [put('extras', `${n}-karussell-${k.id}-1`, kCover(kk))];
    kk.facts.forEach((f, i) => fs_.push(put('extras', `${n}-karussell-${k.id}-${i + 2}`, kFact(kk, f, i))));
    fs_.push(put('extras', `${n}-karussell-${k.id}-6`, kEnd(kk)));
    extras.push({ kind: 'Karussell (6 Bilder)', title: k.title, files: fs_,
      caption: `${k.title}. Welcher war neu für dich? Schreib die Nummer in die Kommentare.\n\n${kk.facts.map((f, i) => `${i + 1}. ${f.title}`).join('\n')}\n\nAlle Quellen: Link in Bio.\n\n${tags(k.cat, '#karussell #speichern')}` });
  }
  if (extras.length !== 25) throw new Error(`${extras.length} Extras statt 25`);
  if (posts.length !== 50) throw new Error(`${posts.length} Posts statt 50`);
  writePlan(posts, stories, extras);
  overview('posts', 5);
  overview('stories', 5);
  overview('extras', 6);
}

// ---------- Übersichtsbilder ----------
function overview(group, cols) {
  const list = files[group];
  const tw = 216, th = group === 'stories' ? 384 : 270, gap = 12;
  const rows = Math.ceil(list.length / cols);
  const w = cols * tw + (cols + 1) * gap, h = rows * th + (rows + 1) * gap;
  let body = `<rect width="${w}" height="${h}" fill="${NIGHT}"/>`;
  list.forEach((f, i) => {
    const b64 = fs.readFileSync(path.join(ROOT, OUT, f)).toString('base64');
    body += `<image x="${gap + (i % cols) * (tw + gap)}" y="${gap + Math.floor(i / cols) * (th + gap)}" width="${tw}" height="${th}" href="data:image/png;base64,${b64}"/>`;
  });
  png(`${OUT}/uebersicht-${group}.png`, svg(w, h, body), w * 2);
}

// ---------- Plan und Captions ----------
const DAYS = ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'];
const fmt = (d) => `${DAYS[d.getUTCDay()]} ${String(d.getUTCDate()).padStart(2, '0')}.${String(d.getUTCMonth() + 1).padStart(2, '0')}.`;
function writePlan(posts, stories, extras) {
  // Reihenfolge im Feed: die drei Anpinn-Posts in den ersten drei Wochen, sonst zwei Posts, dann ein Extra
  const pins = extras.slice(0, 3), xs = extras.slice(3);
  const feed = [];
  let pi = 0, xi = 0;
  while (pi < posts.length || xi < xs.length || pins.length) {
    if (feed.length % 2 === 0 && pins.length && feed.length < 6) { feed.push(pins.shift()); continue; }
    const slotInCycle = (feed.length - 3) % 3;
    if (feed.length > 6 && slotInCycle === 2 && xi < xs.length) { feed.push(xs[xi++]); continue; }
    if (pi < posts.length) feed.push(posts[pi++]); else if (xi < xs.length) feed.push(xs[xi++]);
  }
  // Termine: Feed dienstags und freitags, Stories montags (Abstimmung), dienstags (Fakt der Woche), donnerstags (Extra)
  const start = new Date(Date.UTC(2026, 9, 12)); // Montag, 12. Oktober 2026
  const rows = [];
  const weeks = Math.ceil(feed.length / 2);
  const extraStories = [5, 6, 7, 8, 9]; // Index in stories
  for (let w = 0; w < weeks; w++) {
    const mo = new Date(start.getTime() + w * 7 * 864e5);
    const di = new Date(mo.getTime() + 864e5), doo = new Date(mo.getTime() + 3 * 864e5), fr = new Date(mo.getTime() + 4 * 864e5);
    const nr = (i) => (i < feed.length ? i + 1 : null);
    rows.push({ w: w + 1, mo, di, doo, fr, a: nr(w * 2), b: nr(w * 2 + 1), ms: stories[w % 4], xs: stories[extraStories[w % extraStories.length]] });
  }
  const lines = [];
  lines.push('# Instagram-Paket Oktober 2026', '');
  lines.push('Alles fertig zum Posten: 50 Fakten-Posts, 10 Stories, 25 Extras. Alle Fakten kommen von der Seite und haben dort ihre Quellen. Erzeugt von `brand/build-social-insta.mjs` im Repo.', '');
  lines.push('## So wenig Aufwand wie möglich', '');
  lines.push('1. **Dienstag und Freitag:** den nächsten Feed-Post aus der Liste unten posten. Bild(er) hochladen, Caption kopieren, fertig. Bei mehreren Bildern alle in der Reihenfolge 1, 2, 3 … als Karussell hochladen.');
  lines.push('2. **Montag morgens:** die Montags-Story posten (vier Varianten, die sich abwechseln) und einen Link-Sticker auf die Hall of Fame setzen, dort ist die Abstimmung.');
  lines.push('3. **Optional dienstags:** Story 05 „Fakt der Woche steht fest“ mit Link-Sticker auf die Hall of Fame.');
  lines.push('4. **Optional donnerstags:** eine Extra-Story aus `stories/06` bis `10` oder einfach den letzten Feed-Post in die Story teilen (Papierflieger unter dem Post, „Zu deiner Story hinzufügen“). Das kostet zehn Sekunden.');
  lines.push('5. **Anpinnen:** Die ersten drei Feed-Posts (Was ist WTFact?, Montags-Abstimmung, Science Jumper) nach dem Posten oben im Profil anpinnen (… am Post, „An Profil anheften“).', '');
  lines.push('Faustregel, wenn mal eine Woche ausfällt: einfach mit der nächsten Nummer weitermachen. Die Liste hat kein Verfallsdatum, Daten unten sind nur ein Vorschlag.', '');
  lines.push('**Regeln:** Der Slogan „WTFact?! Und ja, das stimmt wirklich.“ steht nur auf Bildern mit belegtem Fakt, nie auf Rätsel- oder Umfrage-Bildern. Der Hinweis „KI-generiert“ unten rechts bleibt auf jedem Bild.', '');
  lines.push('## Wochenplan', '');
  lines.push('| Woche | Mo Story | Di Feed | Do Story (optional) | Fr Feed |', '|---|---|---|---|---|');
  for (const r of rows) {
    const s = (st) => `\`${st.file.split('/')[1].replace('.png', '').slice(0, 2)}\``;
    lines.push(`| ${r.w} | ${fmt(r.mo)} ${s(r.ms)} | ${fmt(r.di)} ${r.a ? `**#${r.a}**` : ''} | ${fmt(r.doo)} ${s(r.xs)} | ${fmt(r.fr)} ${r.b ? `**#${r.b}**` : ''} |`);
  }
  lines.push('', '## Stories', '');
  for (const s of stories) lines.push(`- \`${s.file}\`: ${s.title}. ${s.how}`);
  lines.push('', 'Stories haben bewusst keinen Text unten: Dort liegt bei Instagram das Antwortfeld. Wo die Chevrons hinzeigen, kommt der Sticker hin.', '');
  lines.push('## Feed-Posts mit Captions', '');
  feed.forEach((u, i) => {
    lines.push(`### #${i + 1} · ${u.kind}: ${u.title}`, '');
    lines.push(u.files.map((f) => `\`${f}\``).join(', '), '');
    lines.push('```', u.caption, '```', '');
  });
  out(`${OUT}/PLAN.md`, lines.join('\n'));
}

main();
