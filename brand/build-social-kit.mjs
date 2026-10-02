// Erzeugt das Social-Media-Kit von WTFact: leere Vorlagen je Kategorie, Beispiel-Posts mit echten
// Fakten von der Seite und Grafiken für die Kampagnen (DE und EN).
// Titel, Hooks und Quellen kommen direkt aus src/content/posts, damit nur belegte Fakten auftauchen.
//
// Einmalig nötig (wird nicht im Projekt installiert):
//   npm i --no-save opentype.js @resvg/resvg-js @fontsource/space-grotesk @fontsource/inter
// Dann:  node brand/build-social-kit.mjs
import fs from 'node:fs';
import path from 'node:path';
import {
  ROOT, DISPLAY, TEXT, C, r2, text, wrap, svg, png, wordmark, CAT_COLOR, iconG, card, chip, confetti, DOT_INK, dots, L,
} from './brand-lib.mjs';

const OUT = 'brand/social/kit';
// Weitere Farben aus src/styles/global.css
const PINK_TEXT = '#c8104f';
const NIGHT = '#16131c';
const GOLD = { light: '#ffe58a', mid: '#f6c544', deep: '#d99a1e' };
const FLASK = { liquid: '#2f7bff', glow: '#8ec5ff' };
const CATS = ['science', 'history', 'tech', 'nature', 'body', 'weird', 'survival', 'food', 'language', 'sport'];

// ---------- Beiträge lesen ----------
function readPosts(lang) {
  const dir = path.join(ROOT, 'src/content/posts', lang);
  const posts = {};
  for (const f of fs.readdirSync(dir)) {
    const fm = fs.readFileSync(path.join(dir, f), 'utf8').split('\n---')[0];
    const val = (k) => {
      const m = fm.match(new RegExp(`^${k}: (.*)$`, 'm'));
      if (!m) return null;
      const v = m[1].trim();
      return v.startsWith('"') ? JSON.parse(v) : v;
    };
    const sources = [...fm.matchAll(/^\s+- label: (".*")$/gm)].map((m) => JSON.parse(m[1]));
    posts[val('translationKey')] = { title: val('title'), hook: val('hook'), cat: val('category'), sources };
  }
  return posts;
}
const POSTS = { de: readPosts('de'), en: readPosts('en') };
const post = (lang, key) => {
  const p = POSTS[lang][key];
  if (!p) throw new Error(`Beitrag ${key} (${lang}) fehlt`);
  return p;
};

// Ein Beispiel pro Kategorie, die ersten sieben bilden die Launch-Woche
export const EXAMPLES = ['lightning-hot', 'octopus-hearts', 'pickles-world-cup', 'fake-wasabi', 'nice-meant-foolish', 'wood-frog-freeze', 'play-doh', 'cleopatra-timeline', 'coffee-pot-webcam', 'baby-bones'];

// ---------- Texte ----------
const K = {
  de: {
    slogan: 'Und ja, das stimmt wirklich.', next: 'Wischen', of: 'von',
    wof: 'Wahr oder Fake?', vote: 'Was ist Fake? Stimm ab!', poll: 'Platz für den Umfrage-Sticker', reveal: 'Die Auflösung',
    isTrue: 'Stimmt wirklich.', isFalse: 'Stimmt nicht.', sourcesBio: 'Quellen: Link in Bio',
    claimA: 'Bananen sind Beeren.', claimB: 'Glas ist eine Flüssigkeit und fließt in alten Fenstern langsam nach unten.',
    prove: 'Beweis es!', proveSub: 'Schick uns einen Fakt, den du nicht glaubst. Wir prüfen ihn mit Quellen.', question: 'Platz für den Fragen-Sticker',
    youAsk: 'Ihr fragt', weChecked: 'Wir haben nachgeprüft',
    really: 'Echt jetzt?', claimHere: 'Behauptung hier', follow: 'Folgen für jeden Tag einen Fakt',
    launchKicker: 'Ab heute', launchHead: 'Jeden Tag ein Fakt.', launchList: ['10 Kategorien, von Survival bis Sprache', 'Jeder Fakt mit mindestens 2 Quellen', 'Neu jeden Morgen um 10 Uhr'],
    weekHead: '7 Tage. 7 Fakten.', weekQ: 'Alle 7 stimmen wirklich. Hättest du’s geglaubt?',
    game: 'Science Jumper', gameSub: 'Spring über die Flammen, sammle Reagenzgläser und schalte 16 Gold-Fakten frei.', gameCta: 'Jetzt spielen: Link in Bio', gameKicker: 'Neu auf WTFact',
    sources: 'Quellen',
    honey: [
      { kicker: 'Wusstest du das?', title: 'Dieser Honig ist 3.000 Jahre alt.', sub: 'Und er soll noch essbar sein.' },
      { head: 'Gefunden in Ägypten', body: 'In altägyptischen Gräbern fanden Archäologen Tongefäße mit Honig. Nach rund 3.000 Jahren soll er noch essbar gewesen sein.' },
      { head: 'Der Trick: Bakterien verdursten', stats: [['80 %', 'Zucker'], ['17 %', 'Wasser']], body: 'Zucker zieht Wasser an. Ein Bakterium im Honig vertrocknet, bevor es sich vermehren kann.' },
      { head: 'Plan B: Säure und ein Desinfektionsmittel', body: 'Honig hat meist einen pH-Wert von 3,5 bis 4,5. Und ein Enzym der Bienen bildet mit etwas Feuchtigkeit Wasserstoffperoxid.', note: 'Der Haken: So lange hält Honig nur gut verschlossen.' },
    ],
  },
  en: {
    slogan: 'And yes, it’s actually true.', next: 'Swipe', of: 'of',
    wof: 'True or fake?', vote: 'Which one is fake? Vote!', poll: 'Space for the poll sticker', reveal: 'The answer',
    isTrue: 'Actually true.', isFalse: 'Not true.', sourcesBio: 'Sources: link in bio',
    claimA: 'Bananas are berries.', claimB: 'Glass is a liquid that slowly flows down old windows.',
    prove: 'Prove it!', proveSub: 'Send us a fact you don’t believe. We’ll check it with sources.', question: 'Space for the question sticker',
    youAsk: 'You asked', weChecked: 'We checked',
    really: 'For real?', claimHere: 'Claim goes here', follow: 'Follow for one fact a day',
    launchKicker: 'Starting today', launchHead: 'One fact a day.', launchList: ['10 categories, from survival to language', 'Every fact backed by at least 2 sources', 'New every morning at 10'],
    weekHead: '7 days. 7 facts.', weekQ: 'All 7 are actually true. Would you have believed it?',
    game: 'Science Jumper', gameSub: 'Jump over the flames, collect test tubes and unlock 16 gold facts.', gameCta: 'Play now: link in bio', gameKicker: 'New on WTFact',
    sources: 'Sources',
    honey: [
      { kicker: 'Did you know?', title: 'This honey is 3,000 years old.', sub: 'And it is said to still be edible.' },
      { head: 'Found in Egypt', body: 'Archaeologists found clay pots of honey in ancient Egyptian tombs. After around 3,000 years it was reportedly still edible.' },
      { head: 'The trick: bacteria die of thirst', stats: [['80%', 'sugar'], ['17%', 'water']], body: 'Sugar pulls in water. A bacterium that lands in honey dries out before it can multiply.' },
      { head: 'Plan B: acid and a disinfectant', body: 'Honey’s pH is typically 3.5 to 4.5. And a bee enzyme produces hydrogen peroxide when a little moisture gets in.', note: 'The catch: it only lasts that long if it’s sealed.' },
    ],
  },
};

// ---------- Bausteine ----------
const catBg = (W, H, cat) => `<rect width="${W}" height="${H}" fill="${CAT_COLOR[cat]}"/>` + dots(W, H, DOT_INK);
const colorBg = (W, H, fill) => `<rect width="${W}" height="${H}" fill="${fill}"/>` + dots(W, H, DOT_INK);
const goldBg = (W, H) =>
  `<defs><linearGradient id="gold" x1="0" y1="0" x2="1" y2="1"><stop offset="0" stop-color="${GOLD.light}"/><stop offset=".45" stop-color="${GOLD.mid}"/><stop offset="1" stop-color="${GOLD.deep}"/></linearGradient></defs><rect width="${W}" height="${H}" fill="url(#gold)"/>`;
const place = (x, y, body) => `<g transform="translate(${r2(x)} ${r2(y)})">${body}</g>`;
// Pfeil nach rechts (kein Pfeil-Zeichen in den Schriften)
const arrow = (x, y, s, fill = C.ink) =>
  `<path d="M${x} ${y + s * 0.38}h${s * 0.55}v${-s * 0.2}l${s * 0.45} ${s * 0.32}-${s * 0.45} ${s * 0.32}v${-s * 0.2}h${-s * 0.55}z" fill="${fill}" stroke="${C.ink}" stroke-width="5" stroke-linejoin="round"/>`;
const check = (cx, cy, r, fill = C.lime) =>
  `<circle cx="${cx}" cy="${cy}" r="${r}" fill="${fill}" stroke="${C.ink}" stroke-width="5"/>` +
  `<path d="M${cx - r * 0.45} ${cy + r * 0.02}l${r * 0.3} ${r * 0.3} ${r * 0.6}-${r * 0.6}" fill="none" stroke="${C.ink}" stroke-width="${r * 0.22}" stroke-linecap="round" stroke-linejoin="round"/>`;
const cross = (cx, cy, r, fill = C.pink) =>
  `<circle cx="${cx}" cy="${cy}" r="${r}" fill="${fill}" stroke="${C.ink}" stroke-width="5"/>` +
  `<path d="M${cx - r * 0.35} ${cy - r * 0.35}l${r * 0.7} ${r * 0.7}M${cx + r * 0.35} ${cy - r * 0.35}l${-r * 0.7} ${r * 0.7}" stroke="${C.ink}" stroke-width="${r * 0.22}" stroke-linecap="round"/>`;
// Knopf mit hartem Schatten
function pill(label, x, y, w, { h = 96, fill = C.yellow, size = 40, ink = C.ink } = {}) {
  return `<rect x="${x + 8}" y="${y + 8}" width="${w}" height="${h}" rx="${h / 2}" fill="${C.ink}"/>` +
    `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="${h / 2}" fill="${fill}" stroke="${C.ink}" stroke-width="6"/>` +
    text(label, { x: x + w / 2, y: y + h / 2 + size * 0.36, size, anchor: 'middle', fill: ink });
}
// Gestrichelte Fläche, die später ein Sticker (Umfrage, Frage) verdeckt
const stickerZone = (x, y, w, h, label) =>
  `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="36" fill="#ffffff80" stroke="${C.ink}" stroke-width="5" stroke-dasharray="22 16"/>` +
  text(label, { x: x + w / 2, y: y + h / 2 + 12, size: 34, font: TEXT, fill: C.muted, anchor: 'middle' });
// Kopfleiste: Logo auf weißer Karte, rechts optional ein Kategorie-Chip oder Seitenzahl
function header(W, pad, top, lang, { cat = null, right = null } = {}) {
  const h = 128;
  let b = card(pad, top, W - pad * 2 - 14, h, C.white, { sw: 7, off: 12, rx: 32 });
  const m = wordmark({ size: 62, x: 0, y: 0 });
  b += place(pad + 40, top + h / 2 + 22, m.body);
  if (cat) {
    const c = chip(L[lang].cats[cat], 0, 0, CAT_COLOR[cat], 32);
    b += place(W - pad - 14 - 34 - c.w, top + (h - 54) / 2, c.svg);
  }
  if (right) b += text(right, { x: W - pad - 14 - 40, y: top + h / 2 + 14, size: 40, anchor: 'end' });
  return b;
}
// Größte Schriftgröße, bei der der Text in maxLines Zeilen passt
function fit(str, maxW, maxLines, sizes, font = DISPLAY, track = -0.02) {
  for (const s of sizes) {
    const lines = wrap(str, s, maxW, font, track);
    if (lines.length <= maxLines) return { size: s, lines };
  }
  const s = sizes[sizes.length - 1];
  return { size: s, lines: wrap(str, s, maxW, font, track) };
}
const lineBlock = (lines, x, y, size, opts = {}) =>
  lines.map((l, i) => text(l, { x, y: y + i * size * (opts.lh || 1.12), size, ...opts })).join('');

// ---------- 1) Fakt-Post / Story (mit Beispiel oder leer) ----------
function factFrame({ W, H, lang, cat, p = null }) {
  const t = L[lang], k = K[lang];
  const story = H > 1500;
  const pad = 72;
  const top = story ? 230 : 64;
  const ctaY = story ? H - 400 : H - 150;
  let b = catBg(W, H, cat);
  b += header(W, pad, top, lang, { cat });
  const cardX = pad, cardW = W - pad * 2 - 14;
  const areaTop = top + 128 + 56, areaBottom = ctaY - 110;
  const inner = cardW - 120;
  if (p) {
    // Größte Titelgröße, bei der Karte samt Hook in den freien Bereich passt
    let tf, hl, cardH;
    for (const [ts, hs] of [[96, 38], [88, 38], [80, 36], [72, 36], [66, 34], [60, 32]]) {
      tf = { size: ts, lines: wrap(p.title, ts, inner, DISPLAY, -0.02) };
      hl = { size: hs, lines: wrap(p.hook, hs, inner, TEXT) };
      cardH = 120 + tf.lines.length * ts * 1.08 + 60 + hl.lines.length * hs * 1.42 + 40;
      if (cardH <= areaBottom - areaTop) break;
    }
    const cardY = r2(areaTop + (areaBottom - areaTop - cardH) / 2);
    b += card(cardX, cardY, cardW, cardH, C.white);
    b += text(t.swipe, { x: cardX + 60, y: cardY + 92, size: 36, font: TEXT, fill: PINK_TEXT });
    b += lineBlock(tf.lines, cardX + 60, cardY + 120 + tf.size * 0.95, tf.size, { track: -0.02, lh: 1.08 });
    const hy = cardY + 120 + tf.lines.length * tf.size * 1.08 + 60;
    b += lineBlock(hl.lines, cardX + 60, hy, hl.size, { font: TEXT, fill: C.muted, lh: 1.42 });
  } else {
    b += card(cardX, areaTop, cardW, areaBottom - areaTop, C.white);
  }
  b += text(k.slogan, { x: W / 2, y: ctaY - 42, size: 40, anchor: 'middle' });
  b += pill(t.cta, pad, ctaY, cardW, { fill: cat === 'weird' ? C.white : C.yellow });
  return svg(W, H, b);
}

// ---------- 2) Pinterest-Pin 1000×1500 ----------
function pin({ lang, cat, p }) {
  const W = 1000, H = 1500, t = L[lang];
  let b = catBg(W, H, cat);
  const cw = 846, inner = 720;
  const tf = fit(p.title, inner, 6, [92, 84, 76, 70]);
  const hl = wrap(p.hook, 38, inner, TEXT);
  const ch = 60 + 130 + 30 + tf.lines.length * tf.size * 1.08 + 40 + hl.length * 54 + 60;
  const cy = r2((1180 - ch) / 2 + 20);
  b += card(70, cy, cw, ch, C.white);
  b += `<circle cx="${130 + 65}" cy="${cy + 60 + 65}" r="65" fill="${CAT_COLOR[cat]}" stroke="${C.ink}" stroke-width="6"/>`;
  b += iconG(cat, 130 + 25, cy + 60 + 25, 80, C.ink, 2.2);
  const c = chip(t.cats[cat], 0, 0, CAT_COLOR[cat], 32);
  b += place(70 + cw - 60 - c.w, cy + 60 + 38, c.svg);
  const ty = cy + 60 + 130 + 30;
  b += lineBlock(tf.lines, 130, ty + tf.size * 0.95, tf.size, { track: -0.02, lh: 1.08 });
  const hy = ty + tf.lines.length * tf.size * 1.08 + 70;
  b += lineBlock(hl, 130, hy, 38, { font: TEXT, fill: C.muted, lh: 54 / 38 });
  b += card(170, 1250, 646, 190, C.white, { sw: 7, off: 12, rx: 32 });
  const m = wordmark({ size: 80, x: 0, y: 0 });
  b += place(W / 2 - 7 - m.width / 2, 1340, m.body);
  b += text(`${t.short} · ${t.sources}`, { x: W / 2 - 7, y: 1405, size: 30, font: TEXT, fill: C.muted, anchor: 'middle' });
  return svg(W, H, b);
}

// ---------- 3) Karussell (Quellen-Karussell, 5 Folien) ----------
function carousel(lang, key) {
  const W = 1080, H = 1350, pad = 72, t = L[lang], k = K[lang];
  const p = post(lang, key);
  const cat = p.cat;
  const slides = [];
  const total = 5;
  const frame = (i, inner, { last = false } = {}) => {
    let b = catBg(W, H, cat) + header(W, pad, 64, lang, { right: `${i} ${k.of} ${total}` });
    b += inner;
    if (!last) {
      b += text(k.next, { x: W - pad - 14 - 110, y: H - 88, size: 40, anchor: 'end' });
      b += arrow(W - pad - 14 - 92, H - 140, 92, C.white);
    }
    return svg(W, H, b);
  };
  const cw = W - pad * 2 - 14, cx = pad, inner = cw - 120;
  const [s1, s2, s3, s4] = k.honey;
  // 1: Behauptung
  {
    const tf = fit(s1.title, inner, 4, [112, 100, 92]);
    const sf = fit(s1.sub, inner, 3, [64, 56], DISPLAY);
    const ch = 110 + 60 + tf.lines.length * tf.size * 1.06 + 30 + sf.lines.length * sf.size * 1.12 + 70;
    const cy = r2(240 + (H - 200 - 240 - ch) / 2);
    let b = card(cx, cy, cw, ch, C.white);
    const c = chip(t.cats[cat], 0, 0, CAT_COLOR[cat], 32);
    b += place(cx + 60, cy + 56, c.svg);
    b += text(s1.kicker, { x: cx + 60 + c.w + 28, y: cy + 56 + 40, size: 34, font: TEXT, fill: PINK_TEXT });
    const ty = cy + 110 + 60 + tf.size * 0.8;
    b += lineBlock(tf.lines, cx + 60, ty, tf.size, { track: -0.02, lh: 1.06 });
    b += lineBlock(sf.lines, cx + 60, ty + tf.lines.length * tf.size * 1.06 + 30, sf.size, { fill: PINK_TEXT, track: -0.02 });
    slides.push(frame(1, b));
  }
  // 2–4: Erklärung
  for (const [n, s] of [[2, s2], [3, s3], [4, s4]]) {
    const hf = fit(s.head, inner, 3, [76, 68, 60]);
    const bl = wrap(s.body, 42, inner, TEXT);
    const nl = s.note ? wrap(s.note, 38, inner - 40, TEXT) : [];
    let ch = 70 + hf.lines.length * hf.size * 1.08 + 40 + bl.length * 60 + 60;
    if (s.stats) ch += 230;
    if (nl.length) ch += 50 + nl.length * 54 + 60;
    const cy = r2(240 + (H - 200 - 240 - ch) / 2);
    let b = card(cx, cy, cw, ch, C.white);
    let y = cy + 70 + hf.size * 0.8;
    b += lineBlock(hf.lines, cx + 60, y, hf.size, { track: -0.02, lh: 1.08 });
    y += (hf.lines.length - 1) * hf.size * 1.08 + 50;
    if (s.stats) {
      const bw = (inner - 40) / 2;
      s.stats.forEach(([num, lab], i) => {
        const bx = cx + 60 + i * (bw + 40);
        b += card(bx, y, bw, 190, i ? C.cyan : C.yellow, { sw: 6, off: 10, rx: 28 });
        b += text(num, { x: bx + bw / 2, y: y + 105, size: 92, anchor: 'middle', track: -0.03 });
        b += text(lab, { x: bx + bw / 2, y: y + 160, size: 38, font: TEXT, anchor: 'middle' });
      });
      y += 230;
    }
    b += lineBlock(bl, cx + 60, y + 40, 42, { font: TEXT, lh: 60 / 42 });
    y += 40 + bl.length * 60;
    if (nl.length) {
      const nh = nl.length * 54 + 50;
      b += `<rect x="${cx + 60}" y="${y + 10}" width="${inner}" height="${nh}" rx="22" fill="${C.bg}" stroke="${C.ink}" stroke-width="4"/>`;
      b += lineBlock(nl, cx + 80, y + 10 + 62, 38, { font: TEXT, fill: C.muted, lh: 54 / 38 });
    }
    slides.push(frame(n, b));
  }
  // 5: Quellen + Slogan
  {
    const items = p.sources.map((s) => wrap(s, 34, inner - 70, TEXT));
    const listH = items.reduce((a, l) => a + l.length * 48 + 24, 0);
    const ch = 70 + 80 + listH + 60;
    const cy = 240;
    let b = card(cx, cy, cw, ch, C.white);
    b += text(k.sources, { x: cx + 60, y: cy + 70 + 50, size: 64, track: -0.02 });
    let y = cy + 70 + 80 + 30;
    items.forEach((lines) => {
      b += check(cx + 60 + 22, y + 4, 22);
      b += lineBlock(lines, cx + 60 + 70, y + 16, 34, { font: TEXT, lh: 48 / 34 });
      y += lines.length * 48 + 24;
    });
    const sy = cy + ch + 70;
    b += card(cx, sy, cw, 230, C.yellow);
    const m = wordmark({ size: 72, x: 0, y: 0 });
    b += place(W / 2 - 7 - m.width / 2, sy + 100, m.body);
    b += text(k.slogan, { x: W / 2 - 7, y: sy + 180, size: 50, anchor: 'middle' });
    b += pill(t.cta, pad, H - 170, cw, { fill: C.white });
    slides.push(frame(5, b, { last: true }));
  }
  return slides;
}

// ---------- 4) Wahr oder Fake? (Story-Paar) ----------
function trueOrFake(lang, { reveal = false, blank = false } = {}) {
  const W = 1080, H = 1920, pad = 72, k = K[lang];
  const cw = W - pad * 2 - 14;
  let b = colorBg(W, H, C.yellow) + header(W, pad, 230, lang);
  b += text(reveal ? k.reveal : k.wof, { x: W / 2 - 7, y: 520, size: 104, anchor: 'middle', track: -0.03 });
  const claims = blank ? [null, null] : [
    { claim: k.claimA, ok: true, why: post(lang, 'bananas-berries').hook },
    { claim: k.claimB, ok: false, why: post(lang, 'glass-not-liquid').hook },
  ];
  let y = 600;
  claims.forEach((c, i) => {
    const letter = i ? 'B' : 'A';
    const cl = c ? wrap(c.claim, 54, cw - 230, DISPLAY) : [];
    const wl = c && reveal ? wrap(c.why, 34, cw - 230, TEXT) : [];
    let ch = blank ? 300 : 70 + cl.length * 62 + 50;
    if (reveal && c) ch += 90 + wl.length * 48 + 20;
    b += card(pad, y, cw, ch, C.white);
    b += `<rect x="${pad + 40}" y="${y + 40}" width="110" height="110" rx="26" fill="${i ? C.cyan : C.pink}" stroke="${C.ink}" stroke-width="6"/>`;
    b += text(letter, { x: pad + 95, y: y + 122, size: 72, anchor: 'middle' });
    if (c) {
      b += lineBlock(cl, pad + 190, y + 70 + 42, 54, { lh: 62 / 54, track: -0.01 });
      if (reveal) {
        const vy = y + 70 + cl.length * 62 + 20;
        b += c.ok ? check(pad + 190 + 34, vy + 30, 32) : cross(pad + 190 + 34, vy + 30, 32);
        b += text(c.ok ? k.isTrue : k.isFalse, { x: pad + 190 + 86, y: vy + 46, size: 46 });
        b += lineBlock(wl, pad + 190, vy + 120, 34, { font: TEXT, fill: C.muted, lh: 48 / 34 });
      }
    }
    y += ch + 50;
  });
  if (!reveal) {
    b += text(k.vote, { x: W / 2 - 7, y: y + 70, size: 52, anchor: 'middle' });
    b += stickerZone(pad + 80, y + 120, cw - 160, 240, k.poll);
  } else {
    b += pill(k.sourcesBio, pad, Math.max(y + 30, H - 520), cw, { fill: C.white });
  }
  return svg(W, H, b);
}

// ---------- 5) Beweis es! (Story: Frage sammeln, Antwort-Vorlage) ----------
function proveIt(lang, answer = false) {
  const W = 1080, H = 1920, pad = 72, k = K[lang];
  const cw = W - pad * 2 - 14;
  let b = colorBg(W, H, C.pink) + header(W, pad, 230, lang);
  if (!answer) {
    b += `<g transform="rotate(-4 540 560)">` + card(170, 450, 740, 230, C.yellow, { sw: 9, off: 16, rx: 40 }) +
      text(k.prove, { x: 540, y: 600, size: 130, anchor: 'middle', track: -0.03 }) + `</g>`;
    const sl = wrap(k.proveSub, 50, cw - 120, DISPLAY);
    const ch = 60 + sl.length * 64 + 40;
    b += card(pad, 770, cw, ch, C.white);
    b += lineBlock(sl, W / 2 - 7, 770 + 60 + 44, 50, { anchor: 'middle', lh: 64 / 50 });
    b += stickerZone(pad + 60, 770 + ch + 80, cw - 120, 300, k.question);
  } else {
    b += text(k.youAsk, { x: pad, y: 500, size: 64, track: -0.02 });
    b += card(pad, 540, cw, 380, C.white);
    b += text(k.weChecked, { x: pad, y: 1040, size: 64, track: -0.02 });
    b += card(pad, 1080, cw, 380, C.white);
  }
  b += pill(k.sourcesBio, pad, H - 400, cw, { fill: C.yellow });
  return svg(W, H, b);
}

// ---------- 6) Echt jetzt? (Reel/TikTok: Titelbild leer + Abspann) ----------
function reelCover(lang) {
  const W = 1080, H = 1920, pad = 72, k = K[lang];
  const cw = W - pad * 2 - 14;
  let b = `<rect width="${W}" height="${H}" fill="${NIGHT}"/>` + confetti(W, H, 40, 23, [40, 200, 1040, 1560]);
  b += `<g transform="rotate(-5 540 470)">` + card(200, 380, 680, 190, C.yellow, { sw: 9, off: 16, rx: 40 }) +
    text(k.really, { x: 540, y: 510, size: 110, anchor: 'middle', track: -0.03 }) + `</g>`;
  b += card(pad, 680, cw, 700, C.white);
  b += text(k.claimHere, { x: W / 2 - 7, y: 1045, size: 40, font: TEXT, fill: '#b9b4ab', anchor: 'middle' });
  return svg(W, H, b);
}
function reelEnd(lang) {
  const W = 1080, H = 1920, pad = 72, k = K[lang];
  const cw = W - pad * 2 - 14;
  let b = `<rect width="${W}" height="${H}" fill="${NIGHT}"/>` + confetti(W, H, 46, 31, [40, 560, 1040, 1420]);
  const m = wordmark({ size: 150, x: 0, y: 0, ink: C.paper });
  b += place(W / 2 - m.width / 2, 860, m.body);
  b += text(k.slogan, { x: W / 2, y: 1000, size: 58, anchor: 'middle', fill: C.paper });
  b += pill(k.sourcesBio, pad, 1110, cw, { fill: C.yellow });
  b += text(k.follow, { x: W / 2, y: 1330, size: 40, font: TEXT, anchor: 'middle', fill: C.paper });
  return svg(W, H, b);
}

// ---------- 7) Launch: Ankündigung + Finale der Launch-Woche ----------
function launchPost(lang) {
  const W = 1080, H = 1350, pad = 72, t = L[lang], k = K[lang];
  const cw = W - pad * 2 - 14;
  let b = colorBg(W, H, C.yellow) + confetti(W, H, 30, 41, [40, 40, 1040, 1300]);
  b += card(pad, 80, cw, 920, C.white);
  const m = wordmark({ size: 120, x: 0, y: 0 });
  b += place(W / 2 - 7 - m.width / 2, 280, m.body);
  b += text(k.launchKicker, { x: W / 2 - 7, y: 390, size: 44, font: TEXT, fill: PINK_TEXT, anchor: 'middle' });
  b += text(k.launchHead, { x: W / 2 - 7, y: 485, size: 84, anchor: 'middle', track: -0.03 });
  let y = 600;
  for (const item of k.launchList) {
    b += check(pad + 90, y, 28);
    b += text(item, { x: pad + 140, y: y + 13, size: 36, font: TEXT });
    y += 96;
  }
  b += text(k.slogan, { x: W / 2 - 7, y: 920, size: 46, anchor: 'middle' });
  b += pill(lang === 'de' ? 'Folgen und Link in Bio' : 'Follow + link in bio', pad, 1110, cw, { fill: C.white });
  return svg(W, H, b);
}
function launchWeekFinale(lang) {
  const W = 1080, H = 1350, pad = 72, t = L[lang], k = K[lang];
  const cw = W - pad * 2 - 14;
  let b = colorBg(W, H, C.cyan) + header(W, pad, 64, lang);
  b += text(k.weekHead, { x: pad, y: 300, size: 84, track: -0.03 });
  const rows = EXAMPLES.slice(0, 7).map((key) => post(lang, key));
  const ch = 40 + rows.length * 88 + 10;
  b += card(pad, 340, cw, ch, C.white);
  rows.forEach((p, i) => {
    const y = 340 + 40 + i * 88;
    const c = chip(t.cats[p.cat], 0, 0, CAT_COLOR[p.cat], 24);
    b += place(pad + 40, y + 4, c.svg);
    const tl = wrap(p.title, 28, cw - 80 - 230, TEXT);
    const two = tl.slice(0, 2);
    if (tl.length > 2) two[1] = two[1].replace(/[ ,.;:]*$/, '') + '…';
    b += lineBlock(two, pad + 40 + 230, y + 26, 28, { font: TEXT, lh: 1.3 });
  });
  const qy = 340 + ch + 50;
  const ql = wrap(k.weekQ, 44, cw - 40, DISPLAY);
  b += lineBlock(ql, W / 2 - 7, qy + 40, 44, { anchor: 'middle', lh: 1.2 });
  b += pill(t.cta, pad, H - 150, cw, { fill: C.yellow });
  return svg(W, H, b);
}

// ---------- 8) Science Jumper (Spiel-Werbung, Gold ohne Punktmuster) ----------
function gameScene(x, y, w, h) {
  let b = `<rect x="${x + 14}" y="${y + 14}" width="${w}" height="${h}" rx="36" fill="${C.ink}"/>`;
  b += `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="36" fill="${NIGHT}" stroke="${C.ink}" stroke-width="8"/>`;
  const gy = y + h - 90;
  b += `<path d="M${x + 40} ${gy}H${x + w - 40}" stroke="${C.paper}" stroke-width="6" stroke-dasharray="30 18" stroke-linecap="round"/>`;
  // Flammen
  for (const fx of [x + w * 0.42, x + w * 0.8]) {
    b += `<g transform="translate(${fx - 55} ${gy - 115}) scale(4.6)"><path d="${'M12 22c4 0 7-2.7 7-6.6 0-3.4-2.3-5.6-4-7.4-.4 2-1.4 3.2-2.6 3.6C12.8 8 11.5 4.5 9 2c.3 3.6-1.8 5.6-3.4 7.8C4.6 11.2 5 13 5 15.4 5 19.3 8 22 12 22z'}" fill="${C.orange}" stroke="${C.ink}" stroke-width="1.3" stroke-linejoin="round"/><path d="M12 22c-1.7 0-3-1.2-3-2.9 0-1.6 1.2-2.6 2-3.6.4 1 1 1.4 1.6 1.5.4-.8.4-1.8 0-2.8 1.6.9 2.4 2.6 2.4 4.1 0 2.1-1.3 3.7-3 3.7z" fill="${C.yellow}" stroke="${C.ink}" stroke-width="1"/></g>`;
  }
  // Reagenzgläser
  const flask = (fx, fy) =>
    `<g transform="rotate(12 ${fx} ${fy})"><rect x="${fx - 18}" y="${fy - 60}" width="36" height="110" rx="18" fill="${C.white}" stroke="${C.ink}" stroke-width="5"/>` +
    `<rect x="${fx - 13}" y="${fy - 5}" width="26" height="50" rx="13" fill="${FLASK.liquid}"/><circle cx="${fx - 4}" cy="${fy + 8}" r="5" fill="${FLASK.glow}"/>` +
    `<rect x="${fx - 25}" y="${fy - 70}" width="50" height="16" rx="6" fill="${C.paper}" stroke="${C.ink}" stroke-width="5"/></g>`;
  b += flask(x + w * 0.42, y + 130) + flask(x + w * 0.62, y + 200) + flask(x + w * 0.88, y + 120);
  // Buch im Sprung
  const bx = x + w * 0.2, by = gy - 260;
  b += `<g transform="rotate(-10 ${bx} ${by})"><rect x="${bx - 70 + 10}" y="${by - 90 + 10}" width="140" height="180" rx="14" fill="${C.ink}"/>` +
    `<rect x="${bx - 70}" y="${by - 90}" width="140" height="180" rx="14" fill="${C.pink}" stroke="${C.ink}" stroke-width="7"/>` +
    `<rect x="${bx - 70}" y="${by - 90}" width="30" height="180" rx="8" fill="${C.violet}" stroke="${C.ink}" stroke-width="7"/>` +
    `<circle cx="${bx + 5}" cy="${by - 25}" r="14" fill="${C.white}" stroke="${C.ink}" stroke-width="5"/><circle cx="${bx + 45}" cy="${by - 25}" r="14" fill="${C.white}" stroke="${C.ink}" stroke-width="5"/>` +
    `<circle cx="${bx + 9}" cy="${by - 22}" r="6" fill="${C.ink}"/><circle cx="${bx + 49}" cy="${by - 22}" r="6" fill="${C.ink}"/>` +
    `<path d="M${bx + 5} ${by + 20}q20 18 40 0" fill="none" stroke="${C.ink}" stroke-width="6" stroke-linecap="round"/></g>`;
  // Bewegungslinien
  b += `<path d="M${bx - 150} ${by + 40}h70M${bx - 170} ${by + 80}h80M${bx - 140} ${by + 120}h60" stroke="${C.paper}" stroke-width="6" stroke-linecap="round"/>`;
  // Punktestand
  b += `<rect x="${x + w - 230}" y="${y + 30}" width="190" height="70" rx="35" fill="${C.paper}" stroke="${C.ink}" stroke-width="5"/>`;
  b += `<rect x="${x + w - 210}" y="${y + 45}" width="18" height="40" rx="9" fill="${FLASK.liquid}" stroke="${C.ink}" stroke-width="3"/>`;
  b += text('× 128', { x: x + w - 180, y: y + 80, size: 38 });
  return b;
}
function gamePromo(lang, story = false) {
  const W = 1080, H = story ? 1920 : 1350, pad = 72, k = K[lang];
  const cw = W - pad * 2 - 14;
  const top = story ? 230 : 64;
  let b = goldBg(W, H) + header(W, pad, top, lang);
  b += text(k.gameKicker, { x: pad, y: top + 240, size: 42, font: TEXT });
  b += text(k.game, { x: pad, y: top + 340, size: 110, track: -0.04 });
  const sh = story ? 640 : 460;
  b += gameScene(pad, top + 400, cw, sh);
  const fs_ = story ? 44 : 40;
  const sl = wrap(k.gameSub, fs_, cw, TEXT);
  b += lineBlock(sl, pad, top + 400 + sh + 80, fs_, { font: TEXT, lh: 1.35 });
  b += pill(k.gameCta, pad, story ? H - 400 : H - 150, cw, { fill: C.white });
  return svg(W, H, b);
}

// ---------- Ausgabe ----------
const files = [];
const save = (rel, s, width) => { png(`${OUT}/${rel}`, s, width); files.push(rel); };

for (const lang of ['de', 'en']) {
  // Leere Vorlagen je Kategorie
  for (const cat of CATS) {
    save(`${lang}/vorlagen/post-${cat}-1080x1350.png`, factFrame({ W: 1080, H: 1350, lang, cat }));
    save(`${lang}/vorlagen/story-${cat}-1080x1920.png`, factFrame({ W: 1080, H: 1920, lang, cat }));
  }
  save(`${lang}/vorlagen/wahr-oder-fake-frage-1080x1920.png`, trueOrFake(lang, { blank: true }));
  save(`${lang}/vorlagen/beweis-es-antwort-1080x1920.png`, proveIt(lang, true));
  save(`${lang}/vorlagen/reel-titel-echt-jetzt-1080x1920.png`, reelCover(lang));
  // Beispiel-Posts mit echten Fakten
  for (const key of EXAMPLES) {
    const p = post(lang, key);
    save(`${lang}/beispiele/post-${key}-1080x1350.png`, factFrame({ W: 1080, H: 1350, lang, cat: p.cat, p }));
    save(`${lang}/beispiele/story-${key}-1080x1920.png`, factFrame({ W: 1080, H: 1920, lang, cat: p.cat, p }));
    save(`${lang}/beispiele/pin-${key}-1000x1500.png`, pin({ lang, cat: p.cat, p }));
  }
  // Kampagnen
  carousel(lang, 'honey-forever').forEach((s, i) => save(`${lang}/kampagnen/karussell-honig-${i + 1}-1080x1350.png`, s));
  save(`${lang}/kampagnen/wahr-oder-fake-1-frage-1080x1920.png`, trueOrFake(lang));
  save(`${lang}/kampagnen/wahr-oder-fake-2-aufloesung-1080x1920.png`, trueOrFake(lang, { reveal: true }));
  save(`${lang}/kampagnen/beweis-es-aufruf-1080x1920.png`, proveIt(lang));
  save(`${lang}/kampagnen/reel-abspann-1080x1920.png`, reelEnd(lang));
  save(`${lang}/kampagnen/launch-ankuendigung-1080x1350.png`, launchPost(lang));
  save(`${lang}/kampagnen/launch-woche-finale-1080x1350.png`, launchWeekFinale(lang));
  save(`${lang}/kampagnen/science-jumper-post-1080x1350.png`, gamePromo(lang));
  save(`${lang}/kampagnen/science-jumper-story-1080x1920.png`, gamePromo(lang, true));
}
console.log(`${files.length} Grafiken`);
