// Reels / TikToks, zweite Runde (1080×1920, MP4, 11–12 Sekunden, ohne Ton). Mutiger als die erste Runde:
// schräge Hell/Dunkel-Teilung, Riesenschrift über den Rand, laufende Bänder, Wackler beim Aufprall.
// Formate: Wort-Schlag (Fakt), Wahr oder Fake, Was war zuerst, Emoji-Rätsel, 3 Fakten am Tag
// und WTFact selbst (Wischen, Montags-Abstimmung, Science Jumper, Tippspiel und Sammelalbum).
// Titel, Hooks, Kategorien und Emojis kommen aus der Fakten-Datenbank.
//
// Einmalig nötig: wie build-social-insta.mjs, dazu ffmpeg auf dem System.
// Dann:  node --disable-warning=ExperimentalWarning brand/build-social-reels-2.mjs
// Nur einzelne Reels: REEL_ONLY=06,09   Vorschaubilder statt Video: REEL_PREVIEW=1,4,8
import fs from 'node:fs';
import path from 'node:path';
import { spawn } from 'node:child_process';
import { Resvg } from '@resvg/resvg-js';
import { ROOT, C, TEXT, CAT_COLOR, text, measure, chip, aiTag, r2 } from './brand-lib.mjs';
import { Doc, fit, para, emoji, box, pill, logoPlate, rot, poly, rectD, textStroke, fact, NIGHT, CREAM, NIGHT_MUTED, CTA, SLOGAN, CAT } from './build-social-insta.mjs';

const OUT = 'brand/social/insta-2026-10/reels';
const W = 1080, H = 1920, FPS = 30;
// Gold-Fakten-Farben aus src/styles/global.css (--gold, --gold-light, --gold-deep)
const GOLD = '#f6c544', GOLD_LIGHT = '#ffe58a', GOLD_DEEP = '#d99a1e';
const TAGS = '#wtfact #funfact #wusstestdu #fakten #reels #fyp #lernenmittiktok';

// ---------- Bewegung ----------
const clamp = (x) => Math.max(0, Math.min(1, x));
const seg = (t, a, b) => clamp((t - a) / (b - a));
const outCubic = (x) => 1 - (1 - x) ** 3;
const outBack = (x) => { const c = 1.9; return 1 + (c + 1) * (x - 1) ** 3 + c * (x - 1) ** 2; };
const inOut = (x) => (x < 0.5 ? 4 * x ** 3 : 1 - (-2 * x + 2) ** 3 / 2);
const at = (s, cx, cy, body) => (s === 1 ? body : `<g transform="translate(${r2(cx)} ${r2(cy)}) scale(${r2(s * 1000) / 1000}) translate(${r2(-cx)} ${r2(-cy)})">${body}</g>`);
const mv = (dx, dy, body) => `<g transform="translate(${r2(dx)} ${r2(dy)})">${body}</g>`;
const fade = (o, body) => (o >= 1 ? body : o <= 0 ? '' : `<g opacity="${o.toFixed(3)}">${body}</g>`);
// Aufprall: Text knallt von groß auf normal
const slamS = (t, t0, d = 0.24, from = 2.4) => 1 + (1 - outBack(seg(t, t0, t0 + d))) * (from - 1);
// Wackler kurz nach jedem Aufprall
function shake(t, hits, amp = 16) {
  let dx = 0, dy = 0;
  for (const h of hits) if (t >= h && t < h + 0.25) { const k = 1 - (t - h) / 0.25; dx += Math.sin(t * 95) * amp * k; dy += Math.cos(t * 77) * amp * k; }
  return [dx, dy];
}
// Blitz nach dem Aufprall
const flash = (t, hits, color = CREAM) => hits.filter((h) => t >= h && t < h + 0.12).map((h) => `<rect width="${W}" height="${H}" fill="${color}" opacity="${(0.55 * (1 - (t - h) / 0.12)).toFixed(3)}"/>`).join('');

// ---------- Flächen ----------
// Hintergrund mit wanderndem Punktraster
function bg(doc, color, t) {
  const p = doc.pat(color), o = (t * 18) % 44;
  return `<rect width="${W}" height="${H}" fill="${color}"/><g transform="translate(${-o} ${-o})"><rect width="${W + 88}" height="${H + 88}" fill="url(#${p})"/></g>`;
}
// Schräge Teilung: oben Farbe a, unten Farbe b, Naht durch (W/2, cy) mit Winkel ang (Grad)
function split(doc, a, b, cy, ang, t, seam = 14) {
  const k = Math.tan((ang * Math.PI) / 180) * (W / 2 + 200);
  const yl = cy + k, yr = cy - k;
  return bg(doc, b, t) + area(doc, poly([-200, -200], [W + 200, -200], [W + 200, yr], [-200, yl]), a, t) +
    `<path d="${poly([-200, yl - seam / 2], [W + 200, yr - seam / 2], [W + 200, yr + seam / 2], [-200, yl + seam / 2])}" fill="${C.ink}"/>`;
}
// Fläche mit wanderndem Punktraster
function area(doc, d, fill, t) {
  const p = doc.pat(fill), o = (t * 18) % 44, id = doc.clip(d);
  return `<path d="${d}" fill="${fill}"/><g clip-path="url(#${id})"><g transform="translate(${-o} ${-o})"><rect x="-300" y="-300" width="${W + 600}" height="${H + 600}" fill="url(#${p})"/></g></g>`;
}
// Laufendes Band über die ganze Breite
function band(doc, label, cy, a, fill, t, { h = 92, size = 46, ink = C.ink, speed = 160 } = {}) {
  const unit = `${label}   ·   `, uw = measure(unit, size);
  const x0 = -500 - ((t * speed) % uw);
  let s = '';
  for (let x = x0; x < W + 500; x += uw) s += text(unit, { x, y: cy + size * 0.36, size, fill: ink });
  return rot(a, W / 2, cy, `<path d="${rectD(-500 + 12, cy - h / 2 + 12, W + 1000, h)}" fill="${C.ink}"/>` +
    `<path d="${rectD(-500, cy - h / 2, W + 1000, h)}" fill="${fill}" stroke="${C.ink}" stroke-width="7"/>` + s);
}
// Riesenwort mit dickem Rand und hartem Schatten, liest sich auf jeder Fläche
function bigWord(str, x, y, size, { fill = CREAM, shadow = C.ink, anchor = 'start', sw = null, off = null } = {}) {
  const o = off ?? size * 0.05;
  const base = text(str, { x, y, size, anchor, fill });
  return mv(o, o, textStroke(base.replace(/fill="[^"]+"/, `fill="${shadow}"`), shadow, sw ?? size * 0.06)) + textStroke(base, C.ink, sw ?? size * 0.06);
}
// Absatz (aus fit) mit Rand, für Text über Farbwechseln
const paraBold = (tt, x, y, fill, shadow) => tt.lines.map((l, i) => bigWord(l, x, y + tt.size * 0.8 + i * tt.size * tt.lh, tt.size, { fill, shadow })).join('');
// Stempel „WTF?!“ oder anderes Wort
function stamp(doc, label, cx, cy, t, t0, { fill = C.yellow, size = 104, a = -10 } = {}) {
  if (t < t0) return '';
  const w = measure(label, size) + size * 0.9, h = size * 1.55;
  const s = 1 + (1 - outBack(seg(t, t0, t0 + 0.3))) * 2.2;
  return fade(seg(t, t0, t0 + 0.1), at(s, cx, cy, rot(a, cx, cy, box(doc, cx - w / 2, cy - h / 2, w, h, fill, { rx: 26, sw: 8, off: 14, dots: false }) + text(label, { x: cx, y: cy + size * 0.37, size, anchor: 'middle' }))));
}
// Countdown 3-2-1 im Kreis
function countdown(doc, cx, cy, t, t0, { r = 120, fill = C.yellow } = {}) {
  if (t < t0 || t >= t0 + 3) return '';
  const n = 3 - Math.floor(t - t0), k = (t - t0) % 1;
  const s = 1 + (1 - outBack(clamp(k / 0.25))) * 0.8;
  const ring = `<circle cx="${cx}" cy="${cy}" r="${r + 16}" fill="none" stroke="${C.ink}" stroke-width="12" stroke-dasharray="${r2(2 * Math.PI * (r + 16) * (1 - k))} 9999" transform="rotate(-90 ${cx} ${cy})"/>`;
  return at(s, cx, cy, `<circle cx="${cx + 12}" cy="${cy + 12}" r="${r}" fill="${C.ink}"/><circle cx="${cx}" cy="${cy}" r="${r}" fill="${fill}" stroke="${C.ink}" stroke-width="8"/>` +
    text(String(n), { x: cx, y: cy + r * 0.55, size: r * 1.5, anchor: 'middle' })) + ring;
}
// Emoji horizontal gespiegelt
const flipX = (cx, body) => `<g transform="translate(${2 * cx} 0) scale(-1 1)">${body}</g>`;
const cap1 = (s) => s[0].toUpperCase() + s.slice(1);

// ---------- Abspann ----------
function endCard(doc, t, t0, col, { slogan = true, cta = CTA } = {}) {
  const a = outCubic(seg(t, t0, t0 + 0.35));
  doc.add(bg(doc, col, t));
  doc.add(fade(a, band(doc, 'WTF?!', 360 - (1 - a) * 300, -12, C.yellow, t, { size: 52, h: 104 }) + band(doc, 'WTFact', 420 + (1 - a) * 300, 9, CREAM, t, { size: 52, h: 104, speed: -140 })));
  doc.add(at(0.4 + outBack(seg(t, t0 + 0.1, t0 + 0.45)) * 0.6, 540, 760, logoPlate(doc, 150, 660, 150, -4)));
  doc.add(fade(seg(t, t0 + 0.35, t0 + 0.6), pill(doc, cta, W / 2, 1000, { fill: NIGHT, ink: CREAM, size: 40, a: -2, shadow: C.ink })));
  if (slogan) doc.add(fade(seg(t, t0 + 0.55, t0 + 0.8), text(SLOGAN, { x: W / 2, y: 1240, size: 46, anchor: 'middle' })));
  doc.add(fade(seg(t, t0 + 0.7, t0 + 1), text('Folg für mehr Fakten', { x: W / 2, y: slogan ? 1320 : 1250, size: 40, anchor: 'middle', fill: C.ink })));
}

// ---------- Format: Wort-Schlag ----------
// Drei Wörter knallen nacheinander ins Bild, dann der Fakt auf schräger Hell/Dunkel-Teilung.
function slam(r, f, t, doc) {
  const col = CAT_COLOR[f.cat], D = r.dur;
  const P = [0.15, 1.15, 2.15], T1 = 3.2, T2 = D - 2.3;
  if (t < T1) {
    const i = P.filter((p) => t >= p).length - 1;
    const looks = [[col, NIGHT, -10], [NIGHT, CREAM, 8], [CREAM, col, -6]];
    const [a, b, ang] = looks[Math.max(0, i)];
    doc.add(split(doc, a, b, 960 + Math.sin(t * 2) * 40, ang + Math.sin(t * 1.3) * 2, t));
    doc.add(band(doc, CAT[f.cat], 230, -6, C.yellow, t, { size: 40, h: 82 }));
    // Emoji fliegt quer durchs Bild
    const ex = 1200 - outCubic(seg(t, 0, T1)) * 1500, ey = 1180 - Math.sin(t * 1.6) * 120;
    doc.add(emoji(doc, f.emoji, ex, ey, 420, { rot: t * 60 - 30, shadow: col === NIGHT ? C.pink : C.ink }));
    if (i >= 0) {
      const tt = fit(r.punch[i], { maxW: 900, max: 240, min: 90, maxLines: 3, lh: 1.0 });
      const s = slamS(t, P[i]);
      const y0 = 960 - tt.h / 2;
      doc.add(at(s, 540, 960, rot(-5 + i * 4, 540, 960, paraBold(tt, 90, y0, [CREAM, C.yellow, CREAM][i], [col, col, C.pink][i]))));
    }
    return { hits: P };
  }
  if (t < T2) {
    const e = outCubic(seg(t, T1, T1 + 0.45));
    const cy = 1900 - e * 710;
    doc.add(split(doc, CREAM, NIGHT, cy, -8, t));
    doc.add(band(doc, `${CAT[f.cat]}  WTF?!`, cy, -8, col, t, { size: 38, h: 78 }));
    const es = outBack(seg(t, T1 + 0.1, T1 + 0.5));
    doc.add(at(Math.max(0.01, es), 900, 420, emoji(doc, f.emoji, 600, 110, 600, { rot: -12 + Math.sin(t * 1.5) * 8, shadow: col })));
    doc.add(fade(seg(t, T1 + 0.2, T1 + 0.4), chip(CAT[f.cat], 90, 250, col, 36).svg));
    const head = fit(f.title, { maxW: 860, max: 84, min: 50, maxH: 1080 - 740, maxLines: 5 });
    const s0 = T1 + 0.35;
    head.lines.forEach((l, i) => {
      const a = seg(t, s0 + i * 0.22, s0 + i * 0.22 + 0.28);
      if (a <= 0) return;
      const y = 740 + head.size * 0.8 + i * head.size * head.lh;
      doc.add(mv((1 - outCubic(a)) * -700, 0, text(l, { x: 90, y, size: head.size, fill: C.ink })));
    });
    const hs = s0 + head.lines.length * 0.22 + 0.3;
    const hook = fit(f.hook, { maxW: 820, max: 40, min: 30, font: TEXT, lh: 1.4, maxLines: 4 });
    doc.add(fade(seg(t, hs, hs + 0.4), para(hook, 90, 1290, CREAM)));
    doc.add(stamp(doc, 'WTF?!', 780, 620, t, T2 - 1.6));
    return { hits: [T1 + 0.45, T2 - 1.6 + 0.3] };
  }
  endCard(doc, t, T2, col);
  return { hits: [T2 + 0.45] };
}

// ---------- Format: Wahr oder Fake? ----------
function wahrFake(r, f, t, doc) {
  const D = r.dur, T1 = 5.6, T2 = D - 2.3;
  const verdict = r.ok ? 'WAHR!' : 'FAKE!', vcol = r.ok ? C.lime : C.pink;
  if (t < T1) {
    const sl = outCubic(seg(t, 0, 0.45));
    doc.add(split(doc, C.lime, C.pink, 960, -24, t, 18));
    doc.add(mv((1 - sl) * -900, 0, rot(-12, 400, 420, bigWord('WAHR', 70, 480, 220, { shadow: C.ink }))));
    doc.add(mv((1 - sl) * 900, 0, rot(-12, 700, 1460, bigWord('FAKE', 1010, 1560, 220, { anchor: 'end', shadow: C.ink }))));
    doc.add(fade(seg(t, 0.35, 0.5), at(slamS(t, 0.35), 540, 640, pill(doc, 'oder?', 760, 600, { fill: NIGHT, ink: CREAM, size: 44, a: 6 }))));
    // Behauptung
    const claim = fit(r.claim, { maxW: 760, max: 66, min: 40, maxLines: 6 });
    const ch = claim.h + 120, cyy = 1000;
    const k = outBack(seg(t, 0.7, 1.15));
    doc.add(mv(0, (1 - k) * 1200, rot(-3 + Math.sin(t * 2) * 0.8, 540, cyy, box(doc, 110, cyy - ch / 2, 860, ch, CREAM, { rx: 40, sw: 8, off: 18 }) + para(claim, 160, cyy - ch / 2 + 60, C.ink))));
    doc.add(countdown(doc, 190, 1480, t, 2.5, { r: 95 }));
    doc.add(fade(seg(t, 1.4, 1.7), pill(doc, 'Tipp in die Kommentare', 540, cyy + ch / 2 + 50, { fill: C.yellow, size: 34, a: 2 })));
    return { hits: [0.45, 1.15] };
  }
  if (t < T2) {
    const w = outCubic(seg(t, T1, T1 + 0.35));
    doc.add(bg(doc, NIGHT, t));
    doc.add(`<g clip-path="url(#${doc.clip(`M540 900m${-w * 1400} 0a${w * 1400} ${w * 1400} 0 1 0 ${w * 2800} 0a${w * 1400} ${w * 1400} 0 1 0 ${-w * 2800} 0Z`)})">${bg(doc, vcol, t)}</g>`);
    doc.add(band(doc, verdict, 1560, 7, NIGHT, t, { ink: CREAM, size: 44, h: 90 }));
    doc.add(at(slamS(t, T1 + 0.15, 0.3, 3), 540, 560, rot(-9, 540, 560, bigWord(verdict, 540, 650, 300, { anchor: 'middle', shadow: NIGHT }))));
    doc.add(emoji(doc, r.ok ? '✅' : '❌', 780, 100, 190, { rot: 14 }));
    const a = seg(t, T1 + 0.8, T1 + 1.2);
    const head = fit(f.title, { maxW: 780, max: 66, min: 44, maxLines: 5 });
    const top = 920, ch = head.h + 150;
    doc.add(mv(0, (1 - outCubic(a)) * 900, rot(2, 540, top + ch / 2, box(doc, 110, top, 860, ch, CREAM, { rx: 40, sw: 8, off: 18 }) +
      text(r.ok ? 'Stimmt wirklich:' : 'Die Wahrheit:', { x: 160, y: top + 70, size: 34, font: TEXT, fill: C.muted }) + para(head, 160, top + 100, C.ink))));
    return { hits: [T1 + 0.45] };
  }
  endCard(doc, t, T2, vcol, { slogan: false });
  return { hits: [] };
}

// ---------- Format: Was war zuerst? ----------
function zuerst(r, f, t, doc) {
  const [A, B] = r.pair, D = r.dur, T1 = 5.6, T2 = D - 2.3;
  const ca = CAT_COLOR[A.f.cat], cb = CAT_COLOR[B.f.cat] === ca ? C.yellow : CAT_COLOR[B.f.cat];
  const first = A.year < B.year ? 0 : 1;
  const e = outCubic(seg(t, 0, 0.45));
  doc.add(split(doc, ca, cb, 960, -7, t, 16));
  if (t >= T2) { endCard(doc, t, T2, NIGHT === ca ? C.yellow : cb, { slogan: false }); return { hits: [] }; }
  doc.add(at(slamS(t, 0.1), 540, 210, pill(doc, 'Was war zuerst?', 540, 160, { fill: NIGHT, ink: CREAM, size: 54, a: -3 })));
  // Oben A, unten B
  const la = fit(A.label, { maxW: 560, max: 70, min: 44, maxLines: 4 });
  const lb = fit(B.label, { maxW: 560, max: 70, min: 44, maxLines: 4 });
  doc.add(mv((1 - e) * -900, 0, paraBold(la, 90, 640 - la.h / 2, CREAM, C.ink)));
  doc.add(mv((1 - e) * 900, 0, emoji(doc, A.emoji, 700, 420, 300, { rot: 10 + Math.sin(t * 2) * 6 })));
  doc.add(mv((1 - e) * -900, 0, emoji(doc, B.emoji, 80, 1150, 300, { rot: -10 + Math.sin(t * 2 + 1) * 6 })));
  doc.add(mv((1 - e) * 900, 0, paraBold(lb, 420, 1300 - lb.h / 2, CREAM, C.ink)));
  if (t < T1) {
    if (t < 2.5) doc.add(at(slamS(t, 0.5, 0.3, 3), 540, 960, rot(t * 40, 540, 960, `<circle cx="552" cy="972" r="110" fill="${C.ink}"/><circle cx="540" cy="960" r="110" fill="${C.yellow}" stroke="${C.ink}" stroke-width="8"/>` + text('VS', { x: 540, y: 1000, size: 110, anchor: 'middle' }))));
    doc.add(countdown(doc, 540, 960, t, 2.5, { r: 110 }));
    doc.add(fade(seg(t, 1.2, 1.5), pill(doc, 'Tipp in die Kommentare', 540, 1560, { fill: CREAM, size: 32, a: 2 })));
    return { hits: [0.45, 0.8] };
  }
  // Auflösung: Jahre knallen rein, Verlierer wird abgedunkelt
  const cyA = 820, cyB = 1060;
  const k = seg(t, T1, T1 + 0.25);
  const loser = first === 0 ? `M-200 ${960 + 70}L${W + 200} ${960 - 70}V${H}H-200Z` : `M-200 -200H${W + 200}V${960 - 70}L-200 ${960 + 70}Z`;
  doc.add(fade(seg(t, T1 + 0.6, T1 + 0.9) * 0.6, `<path d="${loser}" fill="${NIGHT}"/>`));
  doc.add(fade(k * 3, at(slamS(t, T1), 540, cyA, rot(-6, 540, cyA, bigWord(String(A.year), 90, cyA + 60, 190, { fill: C.yellow })))));
  doc.add(fade(seg(t, T1 + 0.3, T1 + 0.4) * 3, at(slamS(t, T1 + 0.3), 540, cyB, rot(-6, 540, cyB, bigWord(String(B.year), 990, cyB + 70, 190, { anchor: 'end', fill: C.yellow })))));
  const [sx, sy] = first === 0 ? [800, 330] : [270, 1540];
  doc.add(stamp(doc, 'ZUERST!', sx, sy, t, T1 + 0.9, { size: 80, a: 8 }));
  doc.add(fade(seg(t, T1 + 1.0, T1 + 1.2), emoji(doc, '👑', first === 0 ? 560 : 120, first === 0 ? 230 : 1360, 150, { rot: -14 })));
  return { hits: [T1 + 0.25, T1 + 0.55, T1 + 1.2] };
}

// ---------- Format: Emoji-Rätsel ----------
function raetsel(r, f, t, doc) {
  const col = CAT_COLOR[f.cat], D = r.dur, T1 = 5.6, T2 = D - 2.3;
  if (t >= T2) { endCard(doc, t, T2, col); return { hits: [] }; }
  doc.add(split(doc, col, NIGHT, t < T1 ? 1500 : 760, -9, t));
  doc.add(band(doc, 'EMOJI-RÄTSEL', 200, -5, C.yellow, t, { size: 44, h: 90 }));
  if (t < T1) {
    const pos = [[90, 380, -12], [420, 640, 8], [700, 330, -6]];
    r.emojis.forEach((e, i) => {
      const t0 = 0.2 + i * 0.4, [x, y, a] = pos[i];
      if (t < t0) return;
      const s = slamS(t, t0, 0.3, 2.6);
      doc.add(at(s, x + 170, y + 170, emoji(doc, e, x, y + Math.sin(t * 3 + i) * 16, 340, { rot: a + Math.sin(t * 2.4 + i * 2) * 8, shadow: C.ink })));
    });
    const q = fit('Welcher Fakt steckt dahinter?', { maxW: 860, max: 92, min: 60, maxLines: 3 });
    doc.add(fade(seg(t, 1.5, 1.7), at(slamS(t, 1.5), 540, 1150, rot(-3, 540, 1150, paraBold(q, 90, 1080, CREAM, C.pink)))));
    doc.add(countdown(doc, 740, 1600, t, 2.5, { r: 100 }));
    return { hits: [0.5, 0.9, 1.3, 1.74] };
  }
  // Auflösung: Emojis rücken klein nach oben, Titel kommt
  r.emojis.forEach((e, i) => doc.add(emoji(doc, e, 110 + i * 190, 330, 170, { rot: [-12, 8, -6][i] })));
  doc.add(stamp(doc, 'Gelöst!', 840, 420, t, T1 + 0.1, { size: 64, a: 10, fill: C.lime }));
  const head = fit(f.title, { maxW: 860, max: 80, min: 50, maxLines: 5 });
  const s0 = T1 + 0.4;
  head.lines.forEach((l, i) => {
    const a = seg(t, s0 + i * 0.2, s0 + i * 0.2 + 0.28);
    if (a > 0) doc.add(mv((1 - outCubic(a)) * 800, 0, text(l, { x: 90, y: 930 + head.size * 0.8 + i * head.size * head.lh, size: head.size, fill: CREAM })));
  });
  const hook = fit(f.hook, { maxW: 820, max: 38, min: 30, font: TEXT, lh: 1.4, maxLines: 4 });
  const hs = s0 + head.lines.length * 0.2 + 0.3;
  doc.add(fade(seg(t, hs, hs + 0.4), para(hook, 90, 960 + head.h + 30, NIGHT_MUTED)));
  return { hits: [T1 + 0.4] };
}

// ---------- Format: 3 Fakten am Tag ----------
function dreiAmTag(r, f, t, doc) {
  const D = r.dur, T1 = 2.3, T2 = D - 3.2, fs3 = r.keys.map(fact);
  if (t < T1) {
    doc.add(split(doc, NIGHT, C.pink, 1350, -10, t));
    doc.add(fade(seg(t, 0.05, 0.1), at(slamS(t, 0.05), 540, 330, rot(-4, 540, 330, bigWord('Jeden Tag', 90, 380, 140, { shadow: C.pink })))));
    doc.add(fade(seg(t, 0.5, 0.55), at(slamS(t, 0.5, 0.3, 3), 540, 900, rot(-8, 540, 900, bigWord('3', 300, 1300, 900, { fill: C.yellow, shadow: C.pink, sw: 40, off: 34 })))));
    ['08:00', '12:00', '16:00'].forEach((s, i) => {
      const t0 = 0.9 + i * 0.18;
      if (t >= t0) doc.add(at(slamS(t, t0, 0.2, 2), 0, 0, pill(doc, s, [800, 830, 790][i], [640, 860, 1080][i], { fill: [C.cyan, C.lime, C.yellow][i], size: 52, a: [8, -6, 4][i] })));
    });
    doc.add(fade(seg(t, 1.4, 1.45), at(slamS(t, 1.4), 540, 1500, rot(-4, 540, 1500, bigWord('neue Fakten', 90, 1560, 130, { fill: C.yellow, shadow: C.ink })))));
    return { hits: [0.29, 0.8, 1.64] };
  }
  if (t < T2) {
    const step = (T2 - T1) / 3, i = Math.min(2, Math.floor((t - T1) / step)), f3 = fs3[i], col = CAT_COLOR[f3.cat];
    const t0 = T1 + i * step;
    doc.add(split(doc, col, NIGHT, 1250 + i * 40, [-8, 7, -5][i], t));
    doc.add(band(doc, `Fakt ${i + 1} von 3`, 210, -5, C.yellow, t, { size: 42, h: 86 }));
    // Vorige Karte fliegt raus, neue rein
    const k = outBack(seg(t, t0, t0 + 0.35));
    const a = [-4, 3, -2][i];
    const head = fit(f3.title, { maxW: 760, max: 84, min: 44, maxLines: 6 });
    const ch = head.h + 420, top = 440;
    doc.add(mv((1 - k) * 1300, 0, rot(a, 540, top + ch / 2, box(doc, 90, top, 900, ch, CREAM, { rx: 44, sw: 9, off: 20 }) +
      chip(CAT[f3.cat], 150, top + 60, col, 34).svg + emoji(doc, f3.emoji, 650, top - 80, 300, { rot: 12, shadow: col }) + para(head, 150, top + 330, C.ink))));
    if (t > t0 + step - 0.3 && i < 2) { const o = outCubic(seg(t, t0 + step - 0.3, t0 + step)); doc.add(`<rect width="${W}" height="${H}" fill="${NIGHT}" opacity="${o.toFixed(3)}"/>`); }
    return { hits: [t0 + 0.35] };
  }
  const t3 = T2;
  if (t < t3 + 1) {
    doc.add(bg(doc, NIGHT, t));
    const l1 = fit('Jeder Fakt mit Quellen.', { maxW: 900, max: 110, min: 60, maxLines: 3 });
    const l2 = fit('Auf Deutsch und Englisch.', { maxW: 900, max: 80, min: 50, maxLines: 2 });
    doc.add(at(slamS(t, t3), 540, 760, rot(-4, 540, 760, paraBold(l1, 90, 600, C.yellow, C.pink))));
    doc.add(fade(seg(t, t3 + 0.4, t3 + 0.45), at(slamS(t, t3 + 0.4), 540, 1100, rot(-4, 540, 1100, paraBold(l2, 90, 1040, CREAM, C.cyan)))));
    doc.add(emoji(doc, '📚', 700, 230, 260, { rot: 12, shadow: C.pink }));
    return { hits: [t3 + 0.24, t3 + 0.64] };
  }
  endCard(doc, t, t3 + 1, C.cyan, { slogan: false });
  return { hits: [] };
}

// ---------- WTFact: Wischen ----------
function wischen(r, f, t, doc) {
  const D = r.dur, T2 = D - 2.3, cards = r.keys.map(fact);
  if (t >= T2) { endCard(doc, t, T2, C.lime, { slogan: false, cta: 'Wischen: Link in Bio' }); return { hits: [] }; }
  doc.add(split(doc, C.lime, NIGHT, 420, -8, t));
  doc.add(at(slamS(t, 0.1), 540, 230, rot(-5, 540, 230, bigWord('Wisch dich', 80, 270, 130, { shadow: C.pink }))));
  doc.add(fade(seg(t, 0.5, 0.55), at(slamS(t, 0.5), 540, 400, rot(-5, 540, 400, bigWord('durch die Fakten.', 80, 430, 100, { fill: C.yellow, shadow: C.ink })))));
  // Handy
  const px = 230, py = 600, pw = 620, ph = 1000;
  const phone = box(doc, px, py, pw, ph, C.ink, { rx: 70, sw: 8, off: 22, shadow: C.pink, dots: false }) + `<path d="${rectD(px + 26, py + 26, pw - 52, ph - 52, 48)}" fill="${CREAM}"/>` +
    `<path d="${rectD(px + pw / 2 - 70, py + 44, 140, 30, 15)}" fill="${C.ink}"/>`;
  // Wischfolge: rechts (gefällt), links (weniger), rechts
  const moves = [[1.6, 1], [3.1, -1], [4.6, 1]];
  let cardsSvg = '';
  for (let i = cards.length - 1; i >= 0; i--) {
    const c = cards[i], [m0, dir] = moves[i] ?? [99, 1];
    const p = inOut(seg(t, m0, m0 + 0.7));
    if (p >= 1) continue;
    const dx = dir * p * 900, ang = dir * p * 24, lift = i > 0 && t < (moves[i - 1]?.[0] ?? 0) + 0.7 ? 18 : 0;
    const cx = px + 70, cy = py + 140 + lift, cw = pw - 140, chh = 640;
    const head = fit(c.title, { maxW: cw - 80, max: 44, min: 30, maxLines: 6 });
    cardsSvg += mv(dx, -p * 120, rot(ang, cx + cw / 2, cy + chh, box(doc, cx, cy, cw, chh, CAT_COLOR[c.cat], { rx: 34, sw: 7, off: 12 }) +
      emoji(doc, c.emoji, cx + cw / 2 - 110, cy + 40, 220, { rot: -8 }) + para(head, cx + 40, cy + 300, C.ink) +
      (p > 0.05 ? fade(clamp(p * 4), stamp(doc, dir > 0 ? 'Gefällt mir' : 'Weniger', cx + cw / 2, cy + 160, 1, 0, { size: 46, a: dir > 0 ? -12 : 12, fill: dir > 0 ? C.lime : C.pink })) : '')));
  }
  // Fakt des Tages
  const T3 = 5.6;
  const crown = t >= T3 ? fade(seg(t, T3, T3 + 0.2), at(slamS(t, T3), 540, 900, emoji(doc, '👑', 430, 760, 220, { rot: -10 }))) : '';
  doc.add(rot(-4, 540, 1100, phone + cardsSvg + (t >= T3 ? `<path d="${rectD(px + 70, py + 140, pw - 140, 640, 34)}" fill="${C.yellow}" stroke="${C.ink}" stroke-width="7"/>` + text('Fakt des Tages', { x: 540, y: py + 520, size: 50, anchor: 'middle' }) : '')));
  doc.add(crown);
  // Finger
  if (t < T3) {
    const cur = moves.find(([m0]) => t < m0 + 0.7) ?? moves[2];
    const p = inOut(seg(t, cur[0], cur[0] + 0.7));
    doc.add(emoji(doc, '👆', 470 + cur[1] * p * 420, 1200 - p * 60, 200, { rot: cur[1] * p * 20, shadow: C.ink }));
    const thumbs = moves.map(([m0, d], i) => (t >= m0 + 0.35 ? emoji(doc, d > 0 ? '👍' : '👎', d > 0 ? 830 : 30, 900 + i * 60, 220 * outBack(seg(t, m0 + 0.35, m0 + 0.6)), { rot: d * 14 }) : '')).join('');
    doc.add(thumbs);
  }
  if (t >= T3) {
    const l = fit('Der beliebteste Fakt von gestern wird Fakt des Tages.', { maxW: 880, max: 56, min: 40, maxLines: 3 });
    doc.add(fade(seg(t, T3 + 0.4, T3 + 0.7), mv(0, 0, `<path d="${rectD(60, 1540, 960, l.h + 70, 30)}" fill="${NIGHT}" stroke="${C.ink}" stroke-width="6"/>` + para(l, 100, 1575, CREAM))));
  }
  return { hits: [0.34, 0.74, ...moves.map(([m]) => m + 0.6), T3 + 0.24] };
}

// ---------- WTFact: Montags-Abstimmung ----------
function abstimmung(r, f, t, doc) {
  const D = r.dur, T2 = D - 2.3, rows = r.keys.map(fact), win = r.win;
  if (t >= T2) { endCard(doc, t, T2, C.yellow, { slogan: false, cta: 'Abstimmen: Link in Bio' }); return { hits: [] }; }
  const T1 = 5.4;
  doc.add(split(doc, C.yellow, NIGHT, t < T1 ? 560 : 900, -6, t));
  doc.add(band(doc, 'MONTAG', 120, 4, CREAM, t, { size: 46, h: 92 }));
  doc.add(at(slamS(t, 0.1), 540, 330, rot(-4, 540, 330, bigWord('Montag ist', 80, 330, 120, { shadow: C.pink }) + bigWord('Wahltag.', 80, 470, 140, { fill: C.pink, shadow: C.ink }))));
  doc.add(at(outBack(seg(t, 0.4, 0.8)) || 0.01, 880, 330, emoji(doc, '🗳️', 760, 210, 240, { rot: 12 + Math.sin(t * 3) * 6 })));
  if (t < T1) {
    doc.add(fade(seg(t, 0.9, 1.1), text('Welcher Fakt der letzten 7 Tage war der beste?', { x: 80, y: 690, size: 36, font: TEXT, fill: CREAM })));
    rows.forEach((rf, i) => {
      const y = 760 + i * 190, a = seg(t, 1.1 + i * 0.12, 1.4 + i * 0.12);
      const target = r.bars[i], race = seg(t, 1.5, 4.6);
      const wv = clamp(target * outCubic(race) + Math.sin(t * 5 + i * 1.7) * 0.06 * (1 - race));
      const head = fit(rf.title, { maxW: 720, max: 30, min: 22, font: TEXT, lh: 1.25, maxLines: 2 });
      doc.add(mv((1 - outCubic(a)) * -1100, 0, emoji(doc, rf.emoji, 70, y, 110, { shadow: CAT_COLOR[rf.cat] }) +
        `<path d="${rectD(200, y + 64, 760, 46, 23)}" fill="#ffffff22"/><path d="${rectD(200, y + 64, Math.max(46, 760 * wv), 46, 23)}" fill="${CAT_COLOR[rf.cat]}" stroke="${C.ink}" stroke-width="5"/>` +
        para(head, 200, y - 6, CREAM)));
    });
    doc.add(fade(seg(t, 1.6, 1.8), text('Beispiel', { x: 960, y: 1560, size: 28, font: TEXT, fill: NIGHT_MUTED, anchor: 'end' })));
    return { hits: [0.34] };
  }
  // Sieger
  const wf = rows[win], col = CAT_COLOR[wf.cat];
  const k = outBack(seg(t, T1, T1 + 0.35));
  const head = fit(wf.title, { maxW: 740, max: 56, min: 38, maxLines: 4 });
  const ch = head.h + 300, top = 1020;
  doc.add(at(Math.max(0.01, k), 540, top + ch / 2, rot(-3, 540, top + ch / 2, box(doc, 110, top, 860, ch, col, { rx: 40, sw: 8, off: 18 }) + emoji(doc, wf.emoji, 160, top + 40, 170, { rot: -8 }) + para(head, 160, top + 230, C.ink))));
  doc.add(stamp(doc, 'Fakt der Woche', 540, 760, t, T1 + 0.5, { size: 74, a: -6, fill: CREAM }));
  doc.add(fade(seg(t, T1 + 0.7, T1 + 0.9), emoji(doc, '👑', 760, top - 140, 200, { rot: 16 })));
  const l = fit('Ab Dienstag eine Woche lang. Alle Sieger landen in der Hall of Fame.', { maxW: 860, max: 38, min: 30, font: TEXT, lh: 1.35, maxLines: 3 });
  doc.add(fade(seg(t, T1 + 1.1, T1 + 1.4), para(l, 110, top + ch + 70, CREAM)));
  return { hits: [T1 + 0.35, T1 + 0.8] };
}

// ---------- WTFact: Science Jumper ----------
function jumper(r, f, t, doc) {
  const D = r.dur, T2 = D - 2.3;
  if (t >= T2) { endCard(doc, t, T2, GOLD, { slogan: false, cta: 'Spielen: Link in Bio' }); return { hits: [] }; }
  doc.add(bg(doc, NIGHT, t));
  doc.add(at(slamS(t, 0.1), 540, 260, rot(-5, 540, 260, bigWord('Science', 80, 250, 150, { fill: C.yellow, shadow: C.pink }) + bigWord('Jumper', 200, 400, 150, { fill: C.cyan, shadow: C.pink }))));
  // Spielfeld
  const T1 = 6.2, run = Math.min(t, T1), speed = 520, gy = 1380;
  doc.add(area(doc, poly([-200, gy], [W + 200, gy - 40], [W + 200, H + 200], [-200, H + 200]), C.yellow, t));
  doc.add(`<path d="${poly([-200, gy - 7], [W + 200, gy - 47], [W + 200, gy - 33], [-200, gy + 7])}" fill="${C.ink}"/>`);
  const groundAt = (x) => gy - (40 * (x + 200)) / (W + 400);
  const flames = [1.6, 2.9, 4.3, 5.5], tubes = [1.0, 2.25, 3.6, 4.9];
  const px = 200, size = 240;
  // Sprung: Bogen um den Moment, in dem eine Flamme beim Spieler ist
  let jy = 0;
  for (const ft of flames) { const d = run - ft; if (Math.abs(d) < 0.38) jy = Math.max(jy, (1 - (d / 0.38) ** 2) * 340); }
  for (const ft of flames) {
    const x = px + (ft - run) * speed;
    if (x > -200 && x < W + 100) doc.add(emoji(doc, '🔥', x, groundAt(x) - 190, 200, { shadow: C.pink }));
  }
  let score = 0;
  for (const tt of tubes) {
    const x = px + (tt - run) * speed;
    if (run >= tt) { score += 1; const p = seg(t, tt, tt + 0.3); if (p < 1) doc.add(fade(1 - p, text('+1', { x: px + 100, y: groundAt(px) - 380 - p * 120, size: 70, fill: C.lime }))); continue; }
    if (x < W + 100) doc.add(emoji(doc, '🧪', x, groundAt(x) - 470 + Math.sin(t * 4 + tt) * 20, 140, { rot: 12, shadow: C.cyan }));
  }
  const py = groundAt(px) - size - jy + (jy ? 0 : Math.abs(Math.sin(run * 12)) * -14);
  doc.add(flipX(px + size / 2, emoji(doc, '🏃', px, py, size, { rot: jy ? -12 : 0, shadow: C.pink })));
  // Punkte
  doc.add(`<path d="${rectD(700, 560, 300, 110, 55)}" fill="${CREAM}" stroke="${C.ink}" stroke-width="6"/>` + text(`🧪 ${score}`.replace('🧪 ', ''), { x: 930, y: 640, size: 64, anchor: 'end' }) + emoji(doc, '🧪', 730, 575, 80, { shadow: null }));
  if (t < T1) {
    const l = fit('Spring über die Flammen, sammle Reagenzgläser.', { maxW: 860, max: 52, min: 36, maxLines: 3 });
    doc.add(fade(seg(t, 0.7, 1.0), para(l, 80, 760, CREAM)));
    return { hits: [0.34, ...tubes.map((x) => x + 0.05)] };
  }
  // Gold-Fakt
  doc.add(`<rect width="${W}" height="${H}" fill="${NIGHT}" opacity="${(0.7 * seg(t, T1, T1 + 0.3)).toFixed(3)}"/>`);
  const flip = seg(t, T1 + 0.2, T1 + 0.7), sx = Math.max(0.02, Math.abs(Math.cos(Math.PI * (1 - flip) / 2 * 2)));
  const cx = 540, cy = 1060;
  const gid = doc.def('goldg', `<linearGradient id="goldg" x1="0" y1="0" x2="1" y2="1"><stop offset="0" stop-color="${GOLD_LIGHT}"/><stop offset="0.45" stop-color="${GOLD}"/><stop offset="1" stop-color="${GOLD_DEEP}"/></linearGradient>`);
  const card = `<path d="${rectD(cx - 360 + 18, cy - 330 + 18, 720, 660, 44)}" fill="${C.ink}"/><path d="${rectD(cx - 360, cy - 330, 720, 660, 44)}" fill="url(#${gid})" stroke="${C.ink}" stroke-width="9"/>` +
    emoji(doc, t > T1 + 1.3 ? '🔓' : '🔒', cx - 120, cy - 280, 240, { rot: -8 }) + text('Gold-Fakt', { x: cx, y: cy + 60, size: 90, anchor: 'middle' }) + text('freigeschaltet!', { x: cx, y: cy + 160, size: 70, anchor: 'middle' }) +
    emoji(doc, '⭐', cx + 210, cy - 300, 130, { rot: 14 }) + emoji(doc, '⭐', cx - 330, cy + 180, 100, { rot: -12 });
  if (flip > 0) doc.add(at(0.6 + 0.4 * outBack(flip), cx, cy, `<g transform="translate(${cx} 0) scale(${r2(sx)} 1) translate(${-cx} 0)">${card}</g>`));
  doc.add(stamp(doc, 'Highscore!', 540, 560, t, T1 + 0.1, { size: 70, a: -8, fill: C.lime }));
  const l = fit('Gratis im Browser, ohne Anmeldung.', { maxW: 860, max: 44, min: 32, font: TEXT, maxLines: 2 });
  doc.add(fade(seg(t, T1 + 1.2, T1 + 1.5), para(l, 540, 1470, CREAM, 'middle')));
  return { hits: [T1 + 0.4, T1 + 1.3] };
}

// ---------- WTFact: Tippspiel und Sammelalbum ----------
function tippspiel(r, f, t, doc) {
  const D = r.dur, T2 = D - 2.3, cards = r.keys.map(fact);
  if (t >= T2) { endCard(doc, t, T2, C.violet, { slogan: false, cta: 'Hall of Fame: Link in Bio' }); return { hits: [] }; }
  const T1 = 4.6, T3 = 7.0;
  doc.add(split(doc, C.violet, NIGHT, t < T3 ? 520 : 1700, -7, t));
  if (t < T3) {
    doc.add(at(slamS(t, 0.1), 540, 230, rot(-4, 540, 230, bigWord('Wer wird morgen', 70, 250, 96, { shadow: C.ink }))));
    doc.add(fade(seg(t, 0.45, 0.5), at(slamS(t, 0.45), 540, 400, rot(-4, 540, 400, bigWord('Fakt des Tages?', 70, 420, 110, { fill: C.yellow, shadow: C.ink })))));
  }
  if (t < T1) {
    const pick = 1, tap = 2.2;
    cards.slice(0, 3).forEach((c, i) => {
      const y = 640 + i * 270, a = outBack(seg(t, 0.8 + i * 0.15, 1.15 + i * 0.15));
      const chosen = i === pick && t >= tap;
      const head = fit(c.title, { maxW: 600, max: 36, min: 26, maxLines: 3 });
      doc.add(mv((1 - a) * 1200, 0, rot([-2, 2, -1][i], 540, y + 110, box(doc, 90, y, 900, 220, chosen ? C.yellow : CREAM, { rx: 34, sw: chosen ? 10 : 7, off: 14, shadow: chosen ? C.pink : C.ink }) +
        emoji(doc, c.emoji, 130, y + 35, 150, { shadow: CAT_COLOR[c.cat] }) + para(head, 320, y + 110 - head.h / 2, C.ink))));
    });
    if (t > 1.4) { const p = inOut(seg(t, 1.4, tap)); doc.add(emoji(doc, '👆', 800 - p * 120, 1500 - p * 520 + (t > tap && t < tap + 0.15 ? 20 : 0), 190, { rot: -10 })); }
    doc.add(stamp(doc, 'Dein Tipp steht.', 540, 1560, t, tap + 0.2, { size: 54, a: 3, fill: C.lime }));
    return { hits: [0.34, 0.69, tap] };
  }
  if (t < T3) {
    // Mitternacht, dann Treffer und Serie
    const roll = seg(t, T1, T1 + 0.9);
    const sec = Math.max(0, Math.round(3 - roll * 3));
    const clock = sec ? `23:59:5${7 + (3 - sec)}` : '00:00:00';
    doc.add(emoji(doc, '🕛', 90, 600, 220, { rot: Math.sin(t * 20) * (sec ? 6 : 0) }));
    doc.add(bigWord(clock, 340, 790, 120, { fill: CREAM, shadow: C.violet }));
    doc.add(stamp(doc, 'Richtig getippt!', 540, 1010, t, T1 + 1.0, { size: 70, a: -5, fill: C.yellow }));
    const sk = seg(t, T1 + 1.4, T1 + 2.2), n = 1 + Math.floor(sk * 2.99);
    doc.add(fade(seg(t, T1 + 1.3, T1 + 1.5), emoji(doc, '🔥', 120, 1170, 230, { rot: -8, shadow: C.pink }) + text('Trefferserie', { x: 380, y: 1260, size: 60, fill: CREAM }) +
      at(1 + (sk > 0 && sk < 1 ? Math.abs(Math.sin(sk * Math.PI * 3)) * 0.25 : 0), 450, 1340, bigWord(String(n), 380, 1420, 150, { fill: C.yellow, shadow: C.pink }))));
    return { hits: [T1 + 1.3] };
  }
  // Sammelalbum
  doc.add(at(slamS(t, T3), 540, 260, rot(-4, 540, 260, bigWord('Dein', 80, 230, 110, { shadow: C.violet }) + bigWord('Sammelalbum', 80, 360, 110, { fill: C.yellow, shadow: C.violet }))));
  const g = 290, x0 = 105, y0 = 520;
  for (let i = 0; i < 9; i++) {
    const x = x0 + (i % 3) * g, y = y0 + Math.floor(i / 3) * g, c = cards[i % cards.length];
    const on = i < 7 && t >= T3 + 0.4 + i * 0.16;
    const s = on ? slamS(t, T3 + 0.4 + i * 0.16, 0.2, 1.8) : 1;
    doc.add(at(s, x + 125, y + 125, box(doc, x, y, 250, 250, on ? CAT_COLOR[c.cat] : '#2a2533', { rx: 30, sw: 6, off: 10, line: on ? C.ink : '#4a4456' }) +
      (on ? emoji(doc, c.emoji, x + 45, y + 45, 160, { rot: [-8, 6, -4][i % 3] }) : text('?', { x: x + 125, y: y + 160, size: 120, anchor: 'middle', fill: '#4a4456' }))));
  }
  const l = fit('Jeder Sieger, den du liest, kommt in dein Album.', { maxW: 880, max: 44, min: 32, font: TEXT, lh: 1.35, maxLines: 2 });
  doc.add(fade(seg(t, T3 + 1.6, T3 + 1.9), para(l, 100, 1440, CREAM)));
  return { hits: Array.from({ length: 7 }, (_, i) => T3 + 0.6 + i * 0.16) };
}

// ---------- Inhalte ----------
// Wort-Schlag: `punch` sind drei kurze Zeilen, die nur sagen, was auch im Titel steht. `must` wird im Titel geprüft.
const REELS = [
  { n: 6, key: 'mantis-shrimp', type: 'slam', punch: ['Boxt mit', '83 km/h', 'unter Wasser.'], must: '83 km/h', q: 'Dieser Krebs hat den härtesten Schlag im Meer 🥊' },
  { n: 7, key: 'byron-college-bear', type: 'slam', punch: ['Hunde?', 'Verboten.', 'Also: ein Bär.'], must: 'Bären', q: 'Lord Byron und die Hausordnung 🐻' },
  { n: 8, key: 'first-bug-moth', type: 'slam', punch: ['Der erste', 'Computer-Bug', 'war eine Motte.'], must: 'Motte', q: 'Warum Programmfehler Bugs heißen 🦋' },
  { n: 9, key: 'humans-glow', type: 'slam', punch: ['Du', 'leuchtest', 'im Dunkeln.'], must: 'leuchtest im Dunkeln', q: 'Du leuchtest. Wirklich ✨' },
  { n: 10, key: 'olympic-art-medals', type: 'slam', punch: ['Olympia-', 'Medaillen', 'für Kunst.'], must: 'Medaillen für Kunst', q: 'Gold für ein Gemälde? Gab es 🎨' },
  { n: 11, key: 'dord-ghost-word', type: 'slam', punch: ['„dord“', 'gab es nie.', 'Stand trotzdem drin.'], must: 'dord', q: 'Das Wort, das es nie gab 📖' },
  { n: 12, key: 'viking-helmets', type: 'wf', ok: false, claim: 'Wikinger trugen im Kampf Helme mit Hörnern.', q: 'Wahr oder Fake? Schreib deinen Tipp, bevor die Auflösung kommt 👇' },
  { n: 13, key: 'scotland-unicorn', type: 'wf', ok: true, claim: 'Das Nationaltier von Schottland ist ein Einhorn.', q: 'Wahr oder Fake? Schreib deinen Tipp, bevor die Auflösung kommt 👇' },
  { n: 14, key: 'nintendo-1889', type: 'wz', pair: [{ key: 'basketball-peach-baskets', label: 'Das erste Basketballspiel', emoji: '🏀', year: 1891 }, { key: 'nintendo-1889', label: 'Nintendo wird gegründet', emoji: '🎴', year: 1889 }], q: 'Was war zuerst: Basketball oder Nintendo? Tipp in die Kommentare 👇' },
  { n: 15, key: 'pickles-world-cup', type: 'er', emojis: ['🐕', '🏆', '🔍'], q: 'Drei Emojis, ein Fakt. Erkennst du ihn? 👀' },
  { n: 16, key: 'tardigrade-space', type: 'drei', keys: ['tardigrade-space', 'wood-frog-freeze', 'conan-bacterium'], q: 'Jeden Tag 3 neue Fakten auf WTFact. Hier sind drei, die sich an keine Regel halten 👇' },
  { n: 17, key: 'swipe', type: 'wischen', keys: ['flamingo-pink', 'venus-day-year', 'crows-faces'], q: 'Auf WTFact wischst du dich durch die neuesten Fakten. Der beliebteste von gestern wird Fakt des Tages 👑' },
  { n: 18, key: 'vote', type: 'abstimmung', keys: ['bubble-wrap', 'pando-one-tree-forest', 'ok-origin', 'koala-fingerprints'], bars: [0.5, 0.92, 0.38, 0.66], win: 1, q: 'Jeden Montag stimmt ihr ab, welcher Fakt der letzten 7 Tage der beste war. Der Sieger wird Fakt der Woche 🗳️' },
  { n: 19, key: 'jumper', type: 'jumper', q: 'Science Jumper: Spring über die Flammen, sammle Reagenzgläser und schalte Gold-Fakten frei. Gratis im Browser 🧪' },
  { n: 20, key: 'tippspiel', type: 'tippspiel', keys: ['immortal-jellyfish', 'swiss-guinea-pig-rental', 'isner-mahut-longest-match', 'bamboo-91-cm-day', 'apollo-13-co2-mailbox', 'cant-tickle-yourself', 'honey-forever'], q: 'Tipp, welcher Fakt morgen Fakt des Tages wird, bau deine Trefferserie aus und sammle alle Sieger im Album 🔥' },
];
const FORMATS = { slam, wf: wahrFake, wz: zuerst, er: raetsel, drei: dreiAmTag, wischen, abstimmung, jumper, tippspiel };
const DUR = { slam: 11, wf: 12, wz: 12, er: 12, drei: 12.5, wischen: 11.5, abstimmung: 11.5, jumper: 11.5, tippspiel: 12.5 };
const NAMES = { slam: 'Wort-Schlag', wf: 'Wahr oder Fake?', wz: 'Was war zuerst?', er: 'Emoji-Rätsel', drei: '3 Fakten am Tag', wischen: 'WTFact: Wischen', abstimmung: 'WTFact: Montags-Abstimmung', jumper: 'WTFact: Science Jumper', tippspiel: 'WTFact: Tippspiel und Sammelalbum' };

function prep(r) {
  r.dur = DUR[r.type];
  const isFact = ['slam', 'wf', 'wz', 'er'].includes(r.type);
  const f = isFact ? fact(r.key) : null;
  if (r.must && !f.title.includes(r.must)) throw new Error(`„${r.must}“ steht nicht im Titel von ${r.key}`);
  if (r.pair) for (const p of r.pair) {
    p.f = fact(p.key);
    if (![p.f.title, p.f.hook, p.f.body].some((s) => s.includes(String(p.year)))) throw new Error(`Jahr ${p.year} steht nicht in ${p.key}`);
  }
  for (const k of r.keys ?? []) fact(k);
  return f;
}
function frame(r, f, t) {
  const doc = new Doc(W, H);
  const { hits } = FORMATS[r.type](r, f, t, doc);
  const [dx, dy] = shake(t, hits);
  doc.b = `<g transform="translate(${r2(dx)} ${r2(dy)})">${doc.b}</g>` + flash(t, hits);
  doc.add(aiTag(W, H, 'de', { fill: '#14141499', inset: 40 }));
  return doc.render();
}
const fileName = (r) => `${String(r.n).padStart(2, '0')}-${r.key}`;

async function render(r) {
  const f = prep(r);
  const file = path.join(ROOT, OUT, `${fileName(r)}.mp4`);
  fs.mkdirSync(path.dirname(file), { recursive: true });
  const ff = spawn('ffmpeg', ['-y', '-loglevel', 'error', '-f', 'image2pipe', '-framerate', String(FPS), '-i', '-', '-c:v', 'libx264', '-pix_fmt', 'yuv420p', '-crf', '20', '-preset', 'medium', '-movflags', '+faststart', file], { stdio: ['pipe', 'inherit', 'inherit'] });
  const done = new Promise((res, rej) => ff.on('close', (c) => (c ? rej(new Error(`ffmpeg ${c}`)) : res())));
  for (let n = 0; n < Math.round(r.dur * FPS); n++) {
    const buf = new Resvg(frame(r, f, n / FPS)).render().asPng();
    if (!ff.stdin.write(buf)) await new Promise((res) => ff.stdin.once('drain', res));
  }
  ff.stdin.end();
  await done;
  fs.writeFileSync(file.replace('.mp4', '-cover.png'), new Resvg(frame(r, f, r.cover ?? r.dur - 3.6)).render().asPng());
  console.log('✓', path.relative(ROOT, file));
}

const only = process.env.REEL_ONLY?.split(',').map(Number);
const list = REELS.filter((r) => !only || only.includes(r.n));
if (process.env.REEL_PREVIEW) {
  const dir = path.join(ROOT, OUT, 'vorschau');
  fs.mkdirSync(dir, { recursive: true });
  for (const r of list) {
    const f = prep(r);
    for (const t of process.env.REEL_PREVIEW.split(',').map(Number)) fs.writeFileSync(path.join(dir, `${r.n}-${t}.png`), new Resvg(frame(r, f, t)).render().asPng());
  }
  process.exit(0);
}
for (const r of list) await render(r);
const md = ['# Reels / TikToks, Runde 2', '', 'Je 11 bis 12,5 Sekunden, 1080×1920, ohne Ton. Musik direkt in Instagram oder TikTok aus der App-Bibliothek drunterlegen (lizenziert). Das passende Titelbild liegt jeweils als `-cover.png` daneben.', ''];
for (const r of REELS) {
  const f = ['slam', 'wf', 'wz', 'er'].includes(r.type) ? fact(r.key) : null;
  const body = r.type === 'slam' ? [r.q, '', f.hook, '', `${CTA}.`] : f ? [r.q, '', `${CTA}.`] : [r.q, '', 'Link in Bio.'];
  md.push(`## ${r.n}. ${NAMES[r.type]}${f && r.type === 'slam' ? `: ${f.title}` : ''}`, '', `\`reels/${fileName(r)}.mp4\``, '', '```', ...body, '', TAGS, '```', '');
}
fs.writeFileSync(path.join(ROOT, OUT, 'REELS-2.md'), md.join('\n'));
console.log('✓', `${OUT}/REELS-2.md`);
