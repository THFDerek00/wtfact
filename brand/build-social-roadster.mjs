// Sonderaktion zum neuen Tesla Roadster (Oktober 2026), Entwürfe zur Abstimmung mit Eric:
// 1. Reel „Kopfüber“ (1080×1920, MP4): Einkaufswagen und Schnecke auf einer Rampe im WTFact-Stil
// 2. Rauch-Post (1080×1350, 2 Bilder): Eine Kuh scheint im weißen Nebel zu fliegen, Bild 2 zeigt den Trick
// 3. Karussell „Gezeigt vs. behauptet“ (1080×1350, 6 Bilder)
// 4. Story für die Sonderseite (1080×1920)
// Kein Tesla-Logo, kein fremdes Bild- oder Videomaterial: alles ist gezeichnet, Fahrzeuge sind neutrale Emojis.
// Quellen der Fakten stehen in brand/social/roadster-2026-10/README.md.
//
// Einmalig nötig: wie build-social-insta.mjs, dazu ffmpeg.
// Dann:  node --disable-warning=ExperimentalWarning brand/build-social-roadster.mjs
// Nur Bilder, kein Video: ROADSTER_NO_VIDEO=1
import fs from 'node:fs';
import path from 'node:path';
import { spawn } from 'node:child_process';
import { Resvg } from '@resvg/resvg-js';
import { ROOT, C, TEXT, text, measure, chip, aiTag, r2 } from './brand-lib.mjs';
import { Doc, fit, para, emoji, box, pill, chev, logo, logoPlate, rot, poly, rectD, textStroke, NIGHT, CREAM, NIGHT_MUTED, SLOGAN } from './build-social-insta.mjs';

const OUT = 'brand/social/roadster-2026-10';
const W = 1080, PH = 1350, SH = 1920, FPS = 30;
const CTA = 'Ganze Story + Quellen: Link in Bio';
const SMOKE = '#f4f1f8', SMOKE_LINE = '#c9c4d1';

// ---------- Bewegung ----------
const clamp = (x) => Math.max(0, Math.min(1, x));
const seg = (t, a, b) => clamp((t - a) / (b - a));
const outCubic = (x) => 1 - (1 - x) ** 3;
const inQuad = (x) => x * x;
const outBack = (x) => { const c = 1.9; return 1 + (c + 1) * (x - 1) ** 3 + c * (x - 1) ** 2; };
const inOut = (x) => (x < 0.5 ? 4 * x ** 3 : 1 - (-2 * x + 2) ** 3 / 2);
const at = (s, cx, cy, body) => (s === 1 ? body : `<g transform="translate(${r2(cx)} ${r2(cy)}) scale(${r2(s * 1000) / 1000}) translate(${r2(-cx)} ${r2(-cy)})">${body}</g>`);
const mv = (dx, dy, body) => `<g transform="translate(${r2(dx)} ${r2(dy)})">${body}</g>`;
const fade = (o, body) => (o >= 1 ? body : o <= 0 ? '' : `<g opacity="${o.toFixed(3)}">${body}</g>`);
const slamS = (t, t0, d = 0.24, from = 2.4) => 1 + (1 - outBack(seg(t, t0, t0 + d))) * (from - 1);
const flipX = (cx, body) => `<g transform="translate(${r2(2 * cx)} 0) scale(-1 1)">${body}</g>`;

// ---------- Bausteine ----------
function bigWord(str, x, y, size, { fill = CREAM, shadow = C.ink, anchor = 'start' } = {}) {
  const o = size * 0.05, sw = size * 0.06;
  const base = text(str, { x, y, size, anchor, fill });
  return mv(o, o, textStroke(base.replace(/fill="[^"]+"/, `fill="${shadow}"`), shadow, sw)) + textStroke(base, C.ink, sw);
}
const paraBold = (tt, x, y, fill, shadow, anchor = 'start') => tt.lines.map((l, i) => bigWord(l, x, y + tt.size * 0.8 + i * tt.size * tt.lh, tt.size, { fill, shadow, anchor })).join('');
function stamp(doc, label, cx, cy, t, t0, { fill = C.yellow, size = 104, a = -10 } = {}) {
  if (t < t0) return '';
  const w = measure(label, size) + size * 0.9, h = size * 1.55;
  const s = 1 + (1 - outBack(seg(t, t0, t0 + 0.3))) * 2.2;
  return fade(seg(t, t0, t0 + 0.1), at(s, cx, cy, rot(a, cx, cy, box(doc, cx - w / 2, cy - h / 2, w, h, fill, { rx: 26, sw: 8, off: 14, dots: false }) + text(label, { x: cx, y: cy + size * 0.37, size, anchor: 'middle' }))));
}
function band(doc, label, cy, a, fill, t, { h = 92, size = 46, ink = C.ink, speed = 160 } = {}) {
  const unit = `${label}   ·   `, uw = measure(unit, size);
  const x0 = -500 - ((t * speed) % uw);
  let s = '';
  for (let x = x0; x < W + 500; x += uw) s += text(unit, { x, y: cy + size * 0.36, size, fill: ink });
  return rot(a, W / 2, cy, `<path d="${rectD(-500 + 12, cy - h / 2 + 12, W + 1000, h)}" fill="${C.ink}"/>` +
    doc.area(rectD(-500, cy - h / 2, W + 1000, h), fill, { stroke: C.ink, sw: 7 }) + s);
}
function bgMove(doc, color, t, h) {
  const p = doc.pat(color), o = (t * 18) % 44;
  return `<rect width="${W}" height="${h}" fill="${color}"/><g transform="translate(${-o} ${-o})"><rect width="${W + 88}" height="${h + 88}" fill="url(#${p})"/></g>`;
}
// Weiße Nebelwolke aus Kreisen, mit Tinte-Rand wie alle Flächen
function cloud(cx, cy, r, { n = 9, seed = 3, opacity = 1, line = SMOKE_LINE } = {}) {
  let rnd = seed;
  const rand = () => ((rnd = (rnd * 16807) % 2147483647) / 2147483647);
  const blobs = [];
  for (let i = 0; i < n; i++) {
    const a = (i / n) * Math.PI * 2 + rand() * 0.5;
    const d = r * (0.35 + rand() * 0.45);
    blobs.push([cx + Math.cos(a) * d * 1.35, cy + Math.sin(a) * d * 0.6, r * (0.38 + rand() * 0.3)]);
  }
  blobs.push([cx, cy, r * 0.62]);
  const c = (sw, fill, stroke) => blobs.map(([x, y, rr]) => `<circle cx="${r2(x)}" cy="${r2(y)}" r="${r2(rr)}" fill="${fill}"${stroke ? ` stroke="${stroke}" stroke-width="${sw}"` : ''}/>`).join('');
  return fade(opacity, `<g>${c(14, line, line)}${c(0, SMOKE, null)}</g>`);
}

// ---------- Rampe ----------
// Kurve wie bei der Vorstellung: unten anfahren, innen im Halbkreis hoch und oben kopfüber nach links weiter.
const RAMP = { y0: 1540, cx: 400, cy: 1130, R: 410, thick: 104 };
RAMP.yTop = RAMP.cy - RAMP.R;
const L1 = RAMP.cx + 160, L2 = Math.PI * RAMP.R, L3 = RAMP.cx + 160;
const RAMP_LEN = L1 + L2 + L3;
// Position auf der Fahrfläche bei Strecke s (0 … RAMP_LEN); h = halbe Höhe des Fahrzeugs
function onRamp(s, h) {
  const { y0, cx, cy, R } = RAMP;
  if (s <= L1) return { x: -160 + s, y: y0 - h, a: 0 };
  if (s <= L1 + L2) {
    const th = Math.PI / 2 - (s - L1) / R;
    const rr = R - h;
    return { x: cx + Math.cos(th) * rr, y: cy + Math.sin(th) * rr, a: (th * 180) / Math.PI - 90 };
  }
  return { x: cx - (s - L1 - L2), y: RAMP.yTop + h, a: -180 };
}
function ramp(doc, t, grow = 1) {
  const { y0, cx, cy, R, thick } = RAMP;
  const Ro = R + thick, tower = cx + Ro + 70;
  const strut = (x1, y1, x2, y2, w = 34) => `<path d="M${r2(x1)} ${r2(y1)}L${r2(x2)} ${r2(y2)}" stroke="${C.ink}" stroke-width="${w + 14}" stroke-linecap="round"/><path d="M${r2(x1)} ${r2(y1)}L${r2(x2)} ${r2(y2)}" stroke="${CREAM}" stroke-width="${w}" stroke-linecap="round"/>`;
  // Gerüst: Turm rechts, Streben zum Bogen, Aufhängungen oben
  let s = '';
  for (const deg of [-55, 0, 55]) { const th = (deg * Math.PI) / 180; s += strut(cx + Math.cos(th) * (Ro - 10), cy + Math.sin(th) * (Ro - 10), tower, cy + Math.sin(th) * Ro * 0.9); }
  s += strut(tower, cy - R - 300, tower, y0 + thick, 48);
  for (const x of [20, 240]) s += strut(x, -100, x, RAMP.yTop - thick + 10, 30);
  // Boden
  s += doc.area(rectD(-20, y0 + thick, W + 40, SH), CREAM, { stroke: C.ink, sw: 9 });
  // Fahrbahn als dicker Bogen mit hartem Schatten
  const d = `M-200 ${y0}H${cx}A${R} ${R} 0 0 0 ${cx} ${cy - R}H-200V${cy - Ro}H${cx}A${Ro} ${Ro} 0 0 1 ${cx} ${cy + Ro}H-200Z`;
  const sh = `<g transform="translate(18 18)"><path d="${d}" fill="${C.ink}"/></g>`;
  const body = sh + doc.area(d, C.yellow, { stroke: C.ink, sw: 9 });
  // Warnstreifen in der Mitte der Fahrbahn
  const m = R + thick / 2;
  const stripe = `<path d="M-200 ${y0 + thick / 2}H${cx}A${m} ${m} 0 0 0 ${cx} ${cy - m}H-200" fill="none" stroke="${C.ink}" stroke-width="12" stroke-dasharray="40 34"/>`;
  return mv(0, (1 - outBack(grow)) * 1400, s + body + stripe);
}
// Fahrzeug (Emoji, schaut nach links) auf der Rampe, wird gespiegelt, damit es in Fahrtrichtung schaut
function rider(doc, e, s, size, { wob = 0 } = {}) {
  const p = onRamp(s, size * 0.42);
  const body = flipX(p.x, emoji(doc, e, p.x - size / 2, p.y - size / 2, size, { shadow: C.ink }));
  return rot(p.a + wob, p.x, p.y, body);
}
// Schleimspur der Schnecke von Strecke a bis b
function slime(a, b) {
  if (b <= a) return '';
  const pts = [];
  for (let s = a; s <= b; s += 12) { const p = onRamp(s, 4); pts.push(`${r2(p.x)} ${r2(p.y)}`); }
  return `<path d="M${pts.join('L')}" fill="none" stroke="${C.lime}" stroke-width="16" stroke-linecap="round" stroke-linejoin="round" opacity="0.9"/>` +
    `<path d="M${pts.join('L')}" fill="none" stroke="${CREAM}" stroke-width="4" stroke-linecap="round" opacity="0.8" stroke-dasharray="2 26"/>`;
}

// ---------- 1. Reel „Kopfüber“ ----------
const REEL_DUR = 17;
function reelFrame(t) {
  const doc = new Doc(W, SH);
  const T1 = 2.4, T2 = 6.4, T3 = 11.2, T4 = 14.6;
  doc.add(bgMove(doc, NIGHT, t, SH));
  if (t < T4) {
    const lab = t < T2 ? 'Versuch 1' : t < T3 ? 'Versuch 2' : 'WTF?!';
    doc.add(band(doc, `Kopfüber-Challenge  ·  ${lab}`, 120, -4, C.yellow, t, { size: 40, h: 84 }));
  }
  if (t < T1) {
    // Haken: Riesenschrift knallt rein, Rampe fährt von unten ins Bild
    doc.add(ramp(doc, t, seg(t, 0.9, 1.6)));
    const a = fit('Alle lassen gerade Autos kopfüber fahren.', { maxW: 920, max: 120, min: 70, maxLines: 4, lh: 1.0 });
    doc.add(at(slamS(t, 0.1), 540, 520, rot(-5, 540, 520, paraBold(a, 80, 300, CREAM, C.pink))));
    doc.add(stamp(doc, 'Wir auch.', 760, 960, t, 1.3, { size: 80, a: 6, fill: C.lime }));
    return finish(doc);
  }
  if (t < T2) {
    // Versuch 1: Einkaufswagen schießt hoch und fällt oben herunter
    doc.add(ramp(doc, t, 1));
    doc.add(at(slamS(t, T1), 540, 330, pill(doc, 'Einkaufswagen', 540, 270, { fill: CREAM, size: 50, a: -3 })));
    const fallAt = L1 + L2 * 0.62, k = seg(t, T1 + 0.2, T1 + 1.7), s = inOut(k) * fallAt;
    if (t < T1 + 1.7) doc.add(rider(doc, '🛒', s, 230, { wob: Math.sin(t * 40) * 3 }));
    else {
      // Freier Fall von der Absturzstelle
      const p = onRamp(fallAt, 115), ft = t - (T1 + 1.7);
      const x = p.x - ft * 180, y = p.y + 300 * ft + 1500 * ft * ft;
      const yy = Math.min(y, RAMP.y0 - 115);
      doc.add(rot(p.a - ft * 400, x, yy, flipX(x, emoji(doc, '🛒', x - 115, yy - 115, 230))));
      if (y >= RAMP.y0 - 115) {
        const dy = RAMP.y0 - 115 - p.y, hit = T1 + 1.7 + (-300 + Math.sqrt(300 * 300 + 4 * 1500 * dy)) / 3000;
        doc.add(cloud(x, RAMP.y0 - 60, 120 + seg(t, hit, hit + 0.5) * 120, { opacity: 1 - seg(t, hit + 0.8, T2) }));
      }
    }
    return finish(doc, [T1 + 2.35]);
  }
  if (t < T3) {
    // Versuch 2: Schnecke kriecht (Zeitraffer) einmal ganz herum und bleibt oben kopfüber hängen
    doc.add(ramp(doc, t, 1));
    doc.add(at(slamS(t, T2), 540, 330, pill(doc, 'Schnecke', 540, 270, { fill: C.lime, size: 50, a: 3 })));
    doc.add(fade(seg(t, T2 + 0.3, T2 + 0.5), pill(doc, 'Zeitraffer ×1000', 540, 420, { fill: NIGHT, ink: CREAM, size: 32, a: -2, line: CREAM, shadow: C.pink })));
    const stop = L1 + L2 + 260, s = outCubic(seg(t, T2 + 0.3, T3 - 1.2)) * stop;
    doc.add(slime(0, s - 60));
    doc.add(rider(doc, '🐌', s, 190, { wob: Math.sin(t * 9) * 2 }));
    doc.add(stamp(doc, 'Hält!', 700, 860, t, T3 - 1.0, { size: 110, a: 7, fill: C.yellow }));
    return finish(doc, [T3 - 0.7]);
  }
  if (t < T4) {
    // Auflösung: der Fakt
    const e = outCubic(seg(t, T3, T3 + 0.4));
    doc.add(mv(0, -e * 380, ramp(doc, t, 1) + slime(0, L1 + L2 + 200) + rider(doc, '🐌', L1 + L2 + 260, 190)));
    const head = fit('Schnecken kriechen sogar kopfüber an der Decke.', { maxW: 900, max: 92, min: 56, maxLines: 4 });
    const sub = fit('Ihr Schleim klebt und lässt sie trotzdem gleiten. Der neue Roadster von Tesla brauchte für die Rampe einen Lüfter, der ihn ansaugt.', { maxW: 880, max: 40, min: 30, font: TEXT, lh: 1.38, maxLines: 6 });
    const top = 1180, ch = head.h + sub.h + 150;
    const k = outBack(seg(t, T3 + 0.2, T3 + 0.65));
    doc.add(mv(0, (1 - k) * 1100, rot(-2, 540, top + ch / 2, box(doc, 70, top, 940, ch, CREAM, { rx: 40, sw: 8, off: 18, shadow: C.lime }) +
      para(head, 110, top + 50, C.ink) + para(sub, 110, top + 80 + head.h, C.muted))));
    return finish(doc);
  }
  // Abspann
  const a = outCubic(seg(t, T4, T4 + 0.35));
  doc.add(bgMove(doc, C.lime, t, SH));
  doc.add(fade(a, band(doc, 'WTF?!', 360 - (1 - a) * 300, -12, C.yellow, t, { size: 52, h: 104 }) + band(doc, 'Kopfüber', 470 + (1 - a) * 300, 9, CREAM, t, { size: 52, h: 104, speed: -140 })));
  doc.add(at(0.4 + outBack(seg(t, T4 + 0.1, T4 + 0.45)) * 0.6, 540, 760, logoPlate(doc, 150, 660, 150, -4)));
  doc.add(fade(seg(t, T4 + 0.35, T4 + 0.6), pill(doc, CTA, W / 2, 1000, { fill: NIGHT, ink: CREAM, size: 38, a: -2 })));
  doc.add(fade(seg(t, T4 + 0.55, T4 + 0.8), text(SLOGAN, { x: W / 2, y: 1240, size: 46, anchor: 'middle' })));
  doc.add(fade(seg(t, T4 + 0.7, T4 + 1), text('Folg für mehr Fakten', { x: W / 2, y: 1320, size: 40, anchor: 'middle' })));
  doc.add(flipX(890, emoji(doc, '🐌', 760, 1450, 260)));
  return finish(doc);
}
function finish(doc, hits = []) {
  doc.hits = hits;
  doc.add(aiTag(W, doc.h, 'de', { fill: doc.dark === false ? '#14141499' : '#fffaf099', inset: 40 }));
  return doc;
}
function reelSvg(t) {
  const doc = reelFrame(t);
  let dx = 0, dy = 0;
  for (const h of doc.hits) if (t >= h && t < h + 0.15) { const k = 1 - (t - h) / 0.15; dx += Math.sin(t * 60) * 5 * k; dy += Math.cos(t * 50) * 5 * k; }
  if (dx || dy) doc.b = `<g transform="translate(${r2(dx)} ${r2(dy)})">${doc.b}</g>`;
  return doc.render();
}

// ---------- 2. Rauch-Post ----------
function smokePost(reveal) {
  const doc = new Doc(W, PH);
  doc.bg(C.cyan);
  doc.add(logoPlate(doc, 60, 64, 50));
  const ch0 = chip('Physik', 0, 0, CREAM, 30);
  doc.add(`<g transform="translate(${W - 72 - ch0.w} 82)">${ch0.svg}</g>`);
  if (reveal) {
    // Kleine Rampe links, gestrichelte Flugbahn, die Kuh am höchsten Punkt, Nebel an Absprung und Landung
    doc.add(`<path d="${poly([60, 780], [400, 780], [400, 610])}" fill="${C.ink}" transform="translate(14 14)"/>`);
    doc.add(doc.area(poly([60, 780], [400, 780], [400, 610]), C.yellow, { stroke: C.ink, sw: 8 }));
    doc.add(`<path d="${rectD(0, 780, W, 14)}" fill="${C.ink}"/>`);
    doc.add(`<path d="M410 600Q620 120 960 780" fill="none" stroke="${C.ink}" stroke-width="8" stroke-dasharray="26 22" stroke-linecap="round"/>`);
    doc.add(cloud(430, 650, 90, { opacity: 0.7, seed: 9 }));
    doc.add(cloud(950, 740, 110, { opacity: 0.7, seed: 5 }));
    doc.add(emoji(doc, '🐄', 470, 200, 250, { rot: 14 }));
    doc.add(stamp(doc, 'Nur ein Sprung!', 250, 470, 1, 0, { size: 46, a: -6, fill: C.yellow }));
    const head = fit('Der weiße Nebel besteht aus Wassertröpfchen.', { maxW: 900, max: 64, min: 44, maxLines: 3 });
    const hook = fit('Strömt Druckluft aus einer Düse, kühlt sie stark ab, und der Wasserdampf aus der Umgebung wird als Nebel sichtbar. Beim neuen Roadster von Tesla war so ein kurzer Sprung zu sehen, kein Dauerflug.', { maxW: 880, max: 29, min: 24, font: TEXT, lh: 1.38, maxLines: 6 });
    const ch = head.h + hook.h + 110, top = 1236 - ch;
    doc.add(rot(-1.5, 540, top + ch / 2, box(doc, 70, top, 940, ch, CREAM, { rx: 36, sw: 8, off: 16 }) + para(head, 106, top + 40, C.ink) + para(hook, 106, top + 64 + head.h, C.muted)));
    doc.add(text(SLOGAN, { x: 72, y: 1290, size: 26, fill: C.ink }));
    doc.add(text('Quellen: Link in Bio', { x: W - 72, y: 1290, size: 26, anchor: 'end', fill: C.ink }));
  } else {
    doc.add(cloud(540, 1010, 330, { seed: 4, n: 11 }));
    doc.add(cloud(220, 1120, 170, { seed: 7 }));
    doc.add(cloud(880, 1110, 190, { seed: 11 }));
    doc.add(emoji(doc, '🐄', 330, 470, 420, { rot: -8 }));
    doc.add(rot(-5, 540, 330, bigWord('Diese Kuh', 80, 300, 118, { shadow: C.pink }) + bigWord('fliegt.', 80, 420, 118, { fill: C.yellow, shadow: C.pink })));
    doc.add(stamp(doc, 'Oder?!', 840, 470, 1, 0, { size: 72, a: 10, fill: C.lime }));
    doc.add(pill(doc, 'Wisch für den Trick', W / 2, 1180, { fill: NIGHT, ink: CREAM, size: 36, a: -2 }));
  }
  doc.add(aiTag(W, PH, 'de', { fill: '#14141499' }));
  return doc.render();
}

// ---------- 3. Karussell „Gezeigt vs. behauptet“ ----------
const SHOWN = [
  'Eine gekrümmte Rampe hoch und kopfüber an der Unterseite entlang, gehalten von einem Lüfter, der das Auto ansaugt',
  'Ein kurzer Sprung mit Druckluftdüsen über fünf andere Teslas',
  'Landung auf den Rädern in einer Wolke aus weißem Nebel',
  'Niemand saß drin: Die Stunts liefen ohne Fahrer',
];
const CLAIMED = [
  'Von 0 auf knapp 100 km/h (60 mph) in unter einer Sekunde',
  'Rund 480 Kilometer (300 Meilen) Reichweite',
  'Bis zu 2 g Abtrieb durch den Lüfter',
  'Auslieferung ab 2028. Angekündigt war das Auto einmal für 2020',
];
const MISSING = [
  'Längere Flüge: gezeigt wurde nur ein kurzer Sprung',
  'Eine Zulassung für die Straße oder als Fluggerät',
  'Ein Verkaufspreis: es gibt nur Reservierungen, ab 50.000 Dollar',
];
// Haken, Kreuz oder Fragezeichen im Kreis (Haken und Kreuz gezeichnet, die Schrift hat sie nicht)
function markIcon(mark, cx, cy) {
  const st = `fill="none" stroke="${C.ink}" stroke-width="9" stroke-linecap="round" stroke-linejoin="round"`;
  if (mark === 'ok') return `<path d="M${cx - 16} ${cy + 1}L${cx - 4} ${cy + 14}L${cx + 18} ${cy - 13}" ${st}/>`;
  if (mark === 'no') return `<path d="M${cx - 14} ${cy - 14}L${cx + 14} ${cy + 14}M${cx + 14} ${cy - 14}L${cx - 14} ${cy + 14}" ${st}/>`;
  return text('?', { x: cx, y: cy + 17, size: 48, anchor: 'middle' });
}
function listSlide(doc, items, mark, markFill, top) {
  let y = top;
  for (const it of items) {
    const tt = fit(it, { maxW: 760, max: 40, min: 30, font: TEXT, lh: 1.32, maxLines: 4 });
    const h = Math.max(tt.h + 56, 128);
    doc.add(box(doc, 72, y, 936, h, CREAM, { rx: 28, sw: 6, off: 10 }));
    doc.add(`<circle cx="${132 + 6}" cy="${y + h / 2 + 6}" r="38" fill="${C.ink}"/><circle cx="132" cy="${y + h / 2}" r="38" fill="${markFill}" stroke="${C.ink}" stroke-width="6"/>`);
    doc.add(markIcon(mark, 132, y + h / 2));
    doc.add(para(tt, 196, y + h / 2 - tt.h / 2, C.ink));
    y += h + 26;
  }
  return y;
}
function swipe(doc, dark) {
  const col = dark ? C.yellow : C.ink;
  return text('Weiter', { x: W - 112, y: 1290, size: 30, anchor: 'end', fill: col }) + chev('right', W - 106, 1262, 36, col, 3.5);
}
function carousel(i) {
  const doc = new Doc(W, PH);
  const dark = [true, false, false, true, false, false][i];
  if (i === 0) {
    doc.bg(NIGHT);
    doc.add(logo(72, 130, 60, true));
    doc.add(chip('Technik', 72, 180, C.violet, 32).svg);
    doc.add(rot(-6, 540, 600, bigWord('Gezeigt', 60, 560, 190, { fill: C.lime, shadow: C.pink })));
    doc.add(rot(-6, 540, 640, pill(doc, 'vs.', 540, 600, { fill: C.yellow, size: 64, a: 0 })));
    doc.add(rot(-6, 540, 820, bigWord('behauptet', 1020, 900, 170, { fill: C.pink, shadow: C.lime, anchor: 'end' })));
    doc.add(emoji(doc, '🏎️', 640, 40, 340, { rot: -14, shadow: C.pink }));
    const sub = fit('Was der neue Tesla Roadster bei seiner Vorstellung wirklich gemacht hat, und was bisher nur angekündigt ist.', { maxW: 936, max: 38, min: 30, font: TEXT, lh: 1.38, maxLines: 4 });
    doc.add(para(sub, 72, 1040, NIGHT_MUTED));
    doc.add(swipe(doc, true));
  } else if (i === 1) {
    doc.bg(C.lime);
    doc.add(rot(-3, 540, 180, bigWord('Gezeigt', 72, 230, 150, { shadow: C.ink })));
    doc.add(text('am 15. Oktober 2026 in Texas', { x: 72, y: 310, size: 34, font: TEXT }));
    listSlide(doc, SHOWN, 'ok', C.yellow, 370);
    doc.add(swipe(doc, false));
  } else if (i === 2) {
    doc.bg(C.yellow);
    doc.add(rot(-3, 540, 180, bigWord('Behauptet', 72, 230, 150, { shadow: C.pink })));
    doc.add(text('Angaben von Tesla, bisher von niemandem geprüft', { x: 72, y: 310, size: 32, font: TEXT }));
    listSlide(doc, CLAIMED, '?', C.pink, 370);
    doc.add(swipe(doc, false));
  } else if (i === 3) {
    doc.bg(NIGHT);
    doc.add(rot(-3, 540, 180, bigWord('Gibt es', 72, 210, 130, { fill: C.pink, shadow: C.ink }) + bigWord('noch nicht', 72, 340, 130, { fill: CREAM, shadow: C.pink })));
    listSlide(doc, MISSING, 'no', C.pink, 440);
    doc.add(swipe(doc, true));
  } else if (i === 4) {
    doc.bg(C.orange);
    doc.add(chip('Bonus-Fakt', 72, 110, C.yellow, 32).svg);
    doc.add(rot(-4, 540, 330, bigWord('Der Trick', 72, 320, 140, { shadow: C.ink }) + bigWord('ist von 1978.', 72, 460, 140, { fill: C.yellow, shadow: C.ink })));
    doc.add(emoji(doc, '🏎️', 620, 520, 340, { rot: 8 }));
    const head = fit('Das Formel-1-Auto Brabham BT46B saugte sich mit einem Lüfter am Boden fest und gewann damit 1978 den Großen Preis von Schweden.', { maxW: 880, max: 42, min: 32, lh: 1.15, maxLines: 5 });
    const hook = fit('Danach zog das Team den „Staubsauger“ nach nur einem Rennen zurück. Fahrer war Niki Lauda.', { maxW: 880, max: 32, min: 26, font: TEXT, lh: 1.38, maxLines: 3 });
    const ch = head.h + hook.h + 110, top = 1250 - ch;
    doc.add(rot(1.5, 540, top + ch / 2, box(doc, 70, top, 940, ch, CREAM, { rx: 36, sw: 8, off: 16 }) + para(head, 106, top + 40, C.ink) + para(hook, 106, top + 64 + head.h, C.muted)));
  } else {
    doc.bg(C.violet);
    doc.add(chip('Bonus-Fakt', 72, 110, C.yellow, 32).svg);
    doc.add(rot(-4, 540, 330, bigWord('Ein Tesla', 72, 320, 140, { shadow: C.ink }) + bigWord('fliegt schon.', 72, 460, 140, { fill: C.yellow, shadow: C.ink })));
    doc.add(emoji(doc, '🚀', 700, 470, 260, { rot: 30 }));
    doc.add(emoji(doc, '🚗', 140, 560, 180, { rot: -20 }));
    const head = fit('Seit Februar 2018 kreist ein alter Tesla Roadster um die Sonne.', { maxW: 880, max: 48, min: 34, lh: 1.15, maxLines: 4 });
    const hook = fit('SpaceX schoss Elon Musks eigenes Auto beim ersten Flug der Falcon-Heavy-Rakete ins All, mit einer Puppe im Raumanzug am Steuer.', { maxW: 880, max: 32, min: 26, font: TEXT, lh: 1.38, maxLines: 4 });
    const ch = head.h + hook.h + 110, top = 1180 - ch;
    doc.add(rot(-1.5, 540, top + ch / 2, box(doc, 70, top, 940, ch, CREAM, { rx: 36, sw: 8, off: 16 }) + para(head, 106, top + 40, C.ink) + para(hook, 106, top + 64 + head.h, C.muted)));
    doc.add(text(SLOGAN, { x: 72, y: 1262, size: 30, fill: C.ink }));
    doc.add(text('Quellen: Link in Bio', { x: W - 72, y: 1262, size: 30, anchor: 'end', fill: C.ink }));
  }
  doc.add(aiTag(W, PH, 'de', { fill: dark ? '#fffaf099' : '#14141499' }));
  return doc.render();
}

// ---------- 4. Story für die Sonderseite ----------
function story() {
  const doc = new Doc(W, SH);
  doc.add(bgMove(doc, NIGHT, 0, SH));
  doc.add(band(doc, 'Neu auf WTFact', 190, -5, C.yellow, 0, { size: 42, h: 88 }));
  doc.add(mv(60, -60, at(0.8, 540, 1400, ramp(doc, 0, 1) + slime(0, L1 + L2 + 200) + rider(doc, '🐌', L1 + L2 + 260, 190))));
  doc.add(rot(-5, 540, 520, bigWord('Kann ein Auto', 70, 470, 112, { shadow: C.pink }) + bigWord('kopfüber', 70, 600, 140, { fill: C.lime, shadow: C.pink }) + bigWord('fahren?', 70, 730, 140, { fill: C.yellow, shadow: C.pink })));
  doc.add(pill(doc, 'Die Physik hinter dem Roadster-Stunt', W / 2, 840, { fill: CREAM, size: 36, a: 2 }));
  // Platzhalter für den Link-Sticker
  doc.add(`<path d="${rectD(260, 1660, 560, 110, 55)}" fill="none" stroke="${C.yellow}" stroke-width="5" stroke-dasharray="18 14"/>`);
  doc.add(text('Link-Sticker hierhin', { x: 540, y: 1728, size: 34, anchor: 'middle', fill: C.yellow }));
  doc.add(aiTag(W, SH, 'de', { fill: '#fffaf099', inset: 40 }));
  return doc.render();
}

// ---------- 5. Bild für den Kopf der Sonderseite ----------
function heroArt() {
  const doc = new Doc(W, SH);
  doc.add(bgMove(doc, NIGHT, 0, SH));
  doc.add(ramp(doc, 0, 1) + slime(0, L1 + L2 + 200) + rider(doc, '🐌', L1 + L2 + 260, 190));
  doc.add(stamp(doc, 'Hält!', 640, 520, 1, 0, { size: 96, a: 7, fill: C.lime }));
  doc.add(aiTag(W, SH, 'de', { fill: '#fffaf099', inset: 40 }));
  return doc.render();
}

// ---------- Ausgabe ----------
const dir = path.join(ROOT, OUT);
fs.mkdirSync(dir, { recursive: true });
const png = (name, s) => { fs.writeFileSync(path.join(dir, name), new Resvg(s).render().asPng()); console.log('✓', `${OUT}/${name}`); };
png('2-rauch-1.png', smokePost(false));
png('2-rauch-2.png', smokePost(true));
for (let i = 0; i < 6; i++) png(`3-karussell-${i + 1}.png`, carousel(i));
png('4-story-sonderseite.png', story());
png('5-website-hero.png', heroArt());
for (const [n, t] of [[1, 1.8], [2, 4.3], [3, 9.9], [4, 13.6], [5, 16]]) png(`1-reel-standbild-${n}.png`, reelSvg(t));
if (!process.env.ROADSTER_NO_VIDEO) {
  const file = path.join(dir, '1-reel-kopfueber.mp4');
  const ff = spawn('ffmpeg', ['-y', '-loglevel', 'error', '-f', 'image2pipe', '-framerate', String(FPS), '-i', '-', '-c:v', 'libx264', '-pix_fmt', 'yuv420p', '-crf', '20', '-preset', 'medium', '-movflags', '+faststart', file], { stdio: ['pipe', 'inherit', 'inherit'] });
  const done = new Promise((res, rej) => ff.on('close', (c) => (c ? rej(new Error(`ffmpeg ${c}`)) : res())));
  for (let n = 0; n < REEL_DUR * FPS; n++) {
    const buf = new Resvg(reelSvg(n / FPS)).render().asPng();
    if (!ff.stdin.write(buf)) await new Promise((res) => ff.stdin.once('drain', res));
  }
  ff.stdin.end();
  await done;
  console.log('✓', `${OUT}/1-reel-kopfueber.mp4`);
}
