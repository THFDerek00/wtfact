// Erzeugt das Reichweiten-Paket von WTFact (DE und EN): neue Formate für 15 Tage, die das Social-Kit
// (build-social-kit.mjs) ergänzen, und ein Partner-Paket, das andere Accounts mit Quellenangabe posten dürfen.
// Titel, Hooks und Kategorien kommen aus der Fakten-Datenbank (scripts/facts-db.mjs). Wo eine Grafik eine Zahl
// groß zeigt, prüft das Skript, dass genau diese Zahl im Titel des Fakts steht. Kurztexte (Bingo, Teilen) sind
// eigene Formulierungen der Hooks und werden in den Texten neben dem Fakt-Schlüssel geführt.
//
// Einmalig nötig (wird nicht im Projekt installiert):
//   npm i --no-save opentype.js @resvg/resvg-js @fontsource/space-grotesk @fontsource/inter
// Dann:  node --disable-warning=ExperimentalWarning brand/build-social-reichweite.mjs
import {
  ROOT, DISPLAY, TEXT, C, r2, measure, text, wrap, svg, png, wordmark, CAT_COLOR, iconG, card, chip, confetti, dots, dotsOn, aiTag, L,
} from './brand-lib.mjs';
import { open as openFacts, readFacts } from '../scripts/facts-db.mjs';

const OUT = 'brand/social/reichweite';
// Adresse der Seite für das Partner-Paket (Dritte haben keinen „Link in Bio“ zu uns). Noch nicht bestätigt:
// Ändert sich die Domain, hier anpassen und das Skript neu laufen lassen.
export const DOMAIN = 'wtfact.xyz';
// Weitere Farben aus src/styles/global.css
const PINK_TEXT = '#c8104f';
const GOLD = { light: '#ffe58a', mid: '#f6c544', deep: '#d99a1e' };

// ---------- Fakten lesen ----------
const db = openFacts({ root: ROOT });
const FACTS = readFacts(db).filter((f) => !f.draft);
const GOLD_POINTS = db.prepare('SELECT points, category FROM gold_facts ORDER BY points').all();
db.close();
const fact = (lang, key) => {
  const f = FACTS.find((x) => x.key === key);
  if (!f || !f[lang]) throw new Error(`Fakt ${key} (${lang}) fehlt`);
  return { key, cat: f.category, title: f[lang].title, hook: f[lang].hook, sources: f[lang].sources.length };
};

// ---------- Inhalte ----------
// Themen-Karussells: Deckblatt, 5 Fakten, Schluss
export const CAROUSELS = [
  { id: 'tiere', cat: 'nature', keys: ['greenland-shark', 'wombat-cubes', 'crows-faces', 'koala-fingerprints', 'immortal-jellyfish'],
    de: { title: '5 Tiere, die nach Science-Fiction klingen', sub: 'Nummer 2 ist wirklich kein Witz.' },
    en: { title: '5 animals that sound like science fiction', sub: 'Number 2 is genuinely not a joke.' } },
  { id: 'essen', cat: 'food', keys: ['peanut-legume', 'fortune-cookie-origin', 'hawaiian-pizza', 'caesar-salad-tijuana', 'purple-carrots'],
    de: { title: '5 Lebensmittel, die nicht sind, was du denkst', sub: 'Dein Einkaufszettel hat dich angelogen.' },
    en: { title: '5 foods that aren’t what you think', sub: 'Your shopping list has been lying to you.' } },
  { id: 'internet', cat: 'tech', keys: ['me-at-the-zoo', 'first-sms', 'at-sign-email', 'first-bug-moth', 'recaptcha-books'],
    de: { title: '5 Internet-Premieren, die absurd klingen', sub: 'So hat alles angefangen.' },
    en: { title: '5 internet firsts that sound absurd', sub: 'This is how it all started.' } },
  { id: 'geschichte', cat: 'history', keys: ['oxford-aztecs', 'nintendo-1889', 'napoleon-height', 'viking-helmets', 'run-manhattan'],
    de: { title: '5 Geschichtsfakten, die sich falsch anfühlen', sub: 'Aber jeder einzelne ist belegt.' },
    en: { title: '5 history facts that feel wrong', sub: 'But every single one is sourced.' } },
  { id: 'sport', cat: 'sport', keys: ['olympic-art-medals', 'olympic-tug-of-war', 'olympic-gold-silver', 'moon-golf', 'basketball-peach-baskets'],
    de: { title: '5 Sportfakten, die keiner glaubt', sub: 'Olympia war mal ziemlich schräg.' },
    en: { title: '5 sports facts nobody believes', sub: 'The Olympics used to be pretty strange.' } },
  { id: 'ueberleben', cat: 'survival', keys: ['tardigrade-space', 'conan-bacterium', 'lichen-mars', 'icefish-antifreeze', 'methuselah-palm'],
    de: { title: '5 Überlebenskünstler, die fast nichts umhaut', sub: 'Weltall, Strahlung, Eiswasser: egal.' },
    en: { title: '5 survivors that almost nothing can stop', sub: 'Space, radiation, ice water: no problem.' } },
  { id: 'woerter', cat: 'language', keys: ['muscle-little-mouse', 'ok-origin', 'robot-word-play', 'dord-ghost-word', 'wifi-name'],
    de: { title: '5 Wörter mit geheimer Vergangenheit', sub: 'Du benutzt sie jeden Tag.' },
    en: { title: '5 words with a secret past', sub: 'You use them every day.' } },
];

// Zahlen-Hammer: große Zahl, `must` muss wörtlich im Titel stehen
export const NUMBERS = [
  { key: 'neutron-star-spoon', de: { big: '1 Mrd.', unit: 'Tonnen wöge etwa ein Teelöffel Neutronenstern', must: '1 Milliarde Tonnen' }, en: { big: '1 billion', unit: 'tons: roughly one teaspoon of neutron star', must: 'a billion tons' } },
  { key: 'mantis-shrimp', de: { big: '83 km/h', unit: 'Schlag-Tempo eines Krebses', must: '83 km/h' }, en: { big: '83 km/h', unit: 'punch speed of a shrimp', must: '83 km/h' } },
  { key: 'me-at-the-zoo', de: { big: '19 Sek.', unit: 'dauert das erste YouTube-Video', must: '19 Sekunden' }, en: { big: '19 sec', unit: 'is the length of the first YouTube video', must: '19 seconds' } },
  { key: 'conan-bacterium', de: { big: '28.000×', unit: 'mehr Strahlung als ein Mensch', must: '28.000-mal' }, en: { big: '28,000×', unit: 'more radiation than a human', must: '28,000 times' } },
  { key: 'humans-glow', de: { big: '1000×', unit: 'zu schwach, um dich leuchten zu sehen', must: '1000-mal' }, en: { big: '1000×', unit: 'too faint to see you glow', must: '1000 times' } },
  { key: 'methuselah-palm', de: { big: '2000', unit: 'Jahre alt war der Kern dieser Palme', must: '2000 Jahre' }, en: { big: '2000', unit: 'years old: the seed of this palm', must: '2000-year-old' } },
  { key: 'shackleton-endurance', de: { big: '28 von 28', unit: 'Männern überlebten', must: 'alle 28 Männer' }, en: { big: '28 of 28', unit: 'men survived', must: 'all 28 men' } },
  { key: 'eiffel-tower-grows', de: { big: 'bis 15 cm', unit: 'wächst der Eiffelturm im Sommer', must: '15 Zentimeter' }, en: { big: 'up to 15 cm', unit: 'is how much the Eiffel Tower grows in summer', must: '15 centimeters' } },
];

// Rate mal: 3 Antworten, `ok` = Index der richtigen. Falsche Antworten sind als falsch aufgelöst.
export const QUIZZES = [
  { key: 'greenland-shark', ok: 2, de: { q: 'Wie alt können Grönlandhaie werden?', a: ['40 Jahre', '150 Jahre', 'rund 400 Jahre'] }, en: { q: 'How old can Greenland sharks get?', a: ['40 years', '150 years', 'around 400 years'] } },
  { key: 'toki-pona', ok: 0, de: { q: 'Mit wie vielen Wörtern kommt die Sprache Toki Pona aus?', a: ['etwa 120', 'etwa 1.200', 'etwa 12.000'] }, en: { q: 'How many words does the language Toki Pona get by with?', a: ['about 120', 'about 1,200', 'about 12,000'] } },
  { key: 'first-esports-tournament', ok: 1, de: { q: 'Was gab es 1972 beim ersten E-Sport-Turnier zu gewinnen?', a: ['Einen Pokal', 'Ein Zeitschriften-Abo', 'Ein Auto'] }, en: { q: 'What was the prize at the first esports tournament in 1972?', a: ['A trophy', 'A magazine subscription', 'A car'] } },
  { key: 'astronauts-taller', ok: 0, de: { q: 'Was passiert mit Astronauten im All?', a: ['Sie werden bis zu 3 % größer', 'Sie werden kleiner', 'Gar nichts'] }, en: { q: 'What happens to astronauts in space?', a: ['They get up to 3% taller', 'They get shorter', 'Nothing at all'] } },
  { key: 'silbo-gomero', ok: 1, de: { q: 'Was lernen Kinder auf La Gomera in der Schule?', a: ['Rückwärts schreiben', 'In Pfiffen sprechen', 'Mit Trommeln morsen'] }, en: { q: 'What do kids on La Gomera learn at school?', a: ['Writing backwards', 'Talking in whistles', 'Drumming in Morse code'] } },
];

// Schick das jemandem, der …
export const SENDTO = [
  { key: 'hawaiian-pizza', de: 'Pizza Hawaii verteidigt', en: 'defends pineapple on pizza' },
  { key: 'recaptcha-books', de: 'Captchas hasst', en: 'hates CAPTCHAs' },
  { key: 'first-bug-moth', de: 'ständig über Bugs flucht', en: 'is always swearing at bugs' },
  { key: 'crows-faces', de: 'im Park Krähen füttert', en: 'feeds the crows in the park' },
  { key: 'pistachio-combustion', de: 'Pistazien tütenweise isst', en: 'eats pistachios by the bag' },
  { key: 'cotton-candy-dentist', de: 'Zahnarzt ist', en: 'is a dentist' },
];

// Wie viele wusstest du schon? Kurzfassungen der Hooks
export const BINGOS = [
  [
    ['scotland-unicorn', 'Schottlands Nationaltier ist ein Einhorn', 'Scotland’s national animal is a unicorn'],
    ['tittle', 'Der Punkt auf dem i heißt Tittle', 'The dot on an i is called a tittle'],
    ['venus-day-year', 'Auf der Venus dauert ein Tag länger als ein Jahr', 'A day on Venus lasts longer than a year'],
    ['camel-hump', 'Im Kamelhöcker steckt Fett, kein Wasser', 'A camel’s hump holds fat, not water'],
    ['flamingo-pink', 'Flamingos sind nur durch ihr Futter pink', 'Flamingos are only pink because of their food'],
    ['bubble-wrap', 'Luftpolsterfolie war als Tapete gedacht', 'Bubble wrap was meant to be wallpaper'],
    ['trees-vs-stars', 'Mehr Bäume auf der Erde als Sterne in der Milchstraße', 'Earth has more trees than the Milky Way has stars'],
    ['roman-urine', 'Römer wuschen ihre Kleidung mit Urin', 'Romans washed their clothes with urine'],
    ['goosebumps', 'Gänsehaut ist ein Reflex für Fell, das wir nicht mehr haben', 'Goosebumps are a reflex for fur we no longer have'],
  ],
  [
    ['sea-otters-hands', 'Seeotter wickeln sich zum Schlafen in Seetang', 'Sea otters wrap themselves in kelp to sleep'],
    ['pringles-can', 'Der Erfinder der Pringles-Dose ruht teils in einer', 'The Pringles can inventor partly rests in one'],
    ['ketchup-medicine', 'Ketchup wurde in den 1830ern als Medizin verkauft', 'Ketchup was sold as medicine in the 1830s'],
    ['emoji-word-of-the-year', '2015 war ein Emoji das Wort des Jahres', 'In 2015 the Word of the Year was an emoji'],
    ['guugu-yimithirr', 'Eine Sprache kennt kein Links und Rechts', 'One language has no left and right'],
    ['marathon-distance', 'Die Marathon-Länge kommt von London 1908', 'The marathon distance comes from London 1908'],
    ['seed-vault', 'Der Saatgut-Tresor in der Arktis gab schon Samen heraus', 'The Arctic seed vault has already handed back seeds'],
    ['twin-fingerprints', 'Eineiige Zwillinge haben verschiedene Fingerabdrücke', 'Identical twins have different fingerprints'],
    ['cashew-shell', 'Cashews gibt es nie mit Schale zu kaufen', 'You can never buy cashews in the shell'],
  ],
];

// Was ist absurder? (Umfrage, ohne Slogan)
export const DUELS = [
  ['popsicle-epperson', 'vanilla-albius'],
  ['koala-fingerprints', 'twin-fingerprints'],
  ['tibetan-altitude', 'bajau-divers'],
  ['pineapple-bromelain', 'cashew-shell'],
];

// Partner-Paket: starke Fakten zum Weiterposten (Post), die ersten 5 auch als Story
export const PARTNER = ['wombat-cubes', 'octopus-hearts', 'cleopatra-timeline', 'honey-forever', 'greenland-shark', 'apollo-computer', 'scotland-unicorn', 'oxford-aztecs', 'tardigrade-space', 'nintendo-1889'];

const K = {
  de: {
    swipe: 'Wischen', of: 'von', slogan: 'Und ja, das stimmt wirklich.', five: '5 Fakten', save: 'Speichern lohnt sich',
    favQ: 'Welcher war dein Favorit?', favSub: 'Schreib die Nummer in die Kommentare.', allSources: 'Alle 5 mit Quellen: Link in Bio',
    guess: 'Rate mal!', quizSticker: 'Platz für den Quiz-Sticker', right: 'Richtig:', sendTo: 'Schick das jemandem, der …',
    bingoHead: 'Wie viele wusstest du schon?', bingoSub: 'Zähl mit und schreib deine Zahl in die Kommentare.', bingoCta: 'Alle 9 mit Quellen: Link in Bio',
    duelHead: 'Was ist absurder?', poll: 'Platz für den Umfrage-Sticker', duelCta: 'Beide Fakten + Quellen: Link in Bio',
    challenge: 'Highscore-Challenge', myScore: 'Mein Highscore im Science Jumper:', shot: 'Screenshot oder Zahl hier', beatMe: 'Schaffst du mehr?', play: 'Jetzt spielen: Link in Bio',
    ladderHead: (n, max) => `${n} Gold-Fakten. Der letzte ab ${max} Punkten.`, ladderSub: 'Jeder Gold-Fakt geht erst ab einem Highscore auf. Wie weit kommst du?', pts: 'Pkt.',
    funFact: 'Fun Fact', credit: `Ganzer Fakt + Quellen: ${DOMAIN}`, via: 'Fakt von',
    tip: 'Account-Tipp', tipHead: 'Jeden Tag neue Fakten, bei denen du „WTF?!“ sagst.', tipList: ['Jeder Fakt mit mindestens 2 Quellen', '10 Kategorien, von Survival bis Sprache', 'Wischen, abstimmen, Fakt der Woche', 'Science Jumper mit 16 Gold-Fakten'],
  },
  en: {
    swipe: 'Swipe', of: 'of', slogan: 'And yes, it’s actually true.', five: '5 facts', save: 'Worth saving',
    favQ: 'Which one was your favorite?', favSub: 'Drop the number in the comments.', allSources: 'All 5 with sources: link in bio',
    guess: 'Guess!', quizSticker: 'Space for the quiz sticker', right: 'Correct:', sendTo: 'Send this to someone who …',
    bingoHead: 'How many did you already know?', bingoSub: 'Count along and drop your number in the comments.', bingoCta: 'All 9 with sources: link in bio',
    duelHead: 'Which is more absurd?', poll: 'Space for the poll sticker', duelCta: 'Both facts + sources: link in bio',
    challenge: 'High score challenge', myScore: 'My Science Jumper high score:', shot: 'Screenshot or number here', beatMe: 'Can you beat it?', play: 'Play now: link in bio',
    ladderHead: (n, max) => `${n} gold facts. The last one at ${max} points.`, ladderSub: 'Each gold fact only unlocks at a certain high score. How far can you get?', pts: 'pts',
    funFact: 'Fun fact', credit: `Full fact + sources: ${DOMAIN}`, via: 'Fact by',
    tip: 'Account tip', tipHead: 'New facts every day that make you go “WTF?!”', tipList: ['Every fact backed by at least 2 sources', '10 categories, from survival to language', 'Swipe, vote, fact of the week', 'Science Jumper with 16 gold facts'],
  },
};

// ---------- Bausteine (wie in build-social-kit.mjs) ----------
const W = 1080, PAD = 72, CW = W - PAD * 2 - 14;
const catBg = (w, h, cat) => `<rect width="${w}" height="${h}" fill="${CAT_COLOR[cat]}"/>` + dotsOn(w, h, CAT_COLOR[cat]);
const colorBg = (w, h, fill) => `<rect width="${w}" height="${h}" fill="${fill}"/>` + dotsOn(w, h, fill);
const goldBg = (w, h) =>
  `<defs><linearGradient id="gold" x1="0" y1="0" x2="1" y2="1"><stop offset="0" stop-color="${GOLD.light}"/><stop offset=".45" stop-color="${GOLD.mid}"/><stop offset="1" stop-color="${GOLD.deep}"/></linearGradient></defs><rect width="${w}" height="${h}" fill="url(#gold)"/>` + dots(w, h);
const place = (x, y, body) => `<g transform="translate(${r2(x)} ${r2(y)})">${body}</g>`;
const arrow = (x, y, s, fill = C.ink) =>
  `<path d="M${x} ${y + s * 0.38}h${s * 0.55}v${-s * 0.2}l${s * 0.45} ${s * 0.32}-${s * 0.45} ${s * 0.32}v${-s * 0.2}h${-s * 0.55}z" fill="${fill}" stroke="${C.ink}" stroke-width="5" stroke-linejoin="round"/>`;
const check = (cx, cy, r, fill = C.lime) =>
  `<circle cx="${cx}" cy="${cy}" r="${r}" fill="${fill}" stroke="${C.ink}" stroke-width="5"/>` +
  `<path d="M${cx - r * 0.45} ${cy + r * 0.02}l${r * 0.3} ${r * 0.3} ${r * 0.6}-${r * 0.6}" fill="none" stroke="${C.ink}" stroke-width="${r * 0.22}" stroke-linecap="round" stroke-linejoin="round"/>`;
const cross = (cx, cy, r, fill = C.pink) =>
  `<circle cx="${cx}" cy="${cy}" r="${r}" fill="${fill}" stroke="${C.ink}" stroke-width="5"/>` +
  `<path d="M${cx - r * 0.35} ${cy - r * 0.35}l${r * 0.7} ${r * 0.7}M${cx + r * 0.35} ${cy - r * 0.35}l${-r * 0.7} ${r * 0.7}" stroke="${C.ink}" stroke-width="${r * 0.22}" stroke-linecap="round"/>`;
function pill(label, x, y, w, { h = 96, fill = C.yellow, size = 40 } = {}) {
  let s = size;
  while (measure(label, s) > w - 60 && s > 26) s -= 2;
  return `<rect x="${x + 8}" y="${y + 8}" width="${w}" height="${h}" rx="${h / 2}" fill="${C.ink}"/>` +
    `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="${h / 2}" fill="${fill}" stroke="${C.ink}" stroke-width="6"/>` +
    text(label, { x: x + w / 2, y: y + h / 2 + s * 0.36, size: s, anchor: 'middle' });
}
const stickerZone = (x, y, w, h, label) =>
  `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="36" fill="#ffffff80" stroke="${C.ink}" stroke-width="5" stroke-dasharray="22 16"/>` +
  text(label, { x: x + w / 2, y: y + h / 2 + 12, size: 34, font: TEXT, fill: C.muted, anchor: 'middle' });
function header(pad, top, lang, { cat = null, right = null } = {}) {
  const h = 128;
  let b = card(pad, top, W - pad * 2 - 14, h, C.white, { sw: 7, off: 12, rx: 32 });
  b += place(pad + 40, top + h / 2 + 22, wordmark({ size: 62 }).body);
  if (cat) {
    const c = chip(L[lang].cats[cat], 0, 0, CAT_COLOR[cat], 32);
    b += place(W - pad - 14 - 34 - c.w, top + (h - 54) / 2, c.svg);
  }
  if (right) b += text(right, { x: W - pad - 14 - 40, y: top + h / 2 + 14, size: 40, anchor: 'end' });
  return b;
}
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
const dotRect = (x, y, w, h, rx, grid = 30) =>
  `<defs><pattern id="sd${grid}" width="${grid}" height="${grid}" patternUnits="userSpaceOnUse"><circle cx="${grid / 2}" cy="${grid / 2}" r="${r2(grid * 0.16)}" fill="#14141417"/></pattern></defs>` +
  `<rect x="${x}" y="${y}" width="${w}" height="${h}" rx="${rx}" fill="url(#sd${grid})"/>`;
// Kategorie-Kachel mit Punkten und Symbol
const catTile = (cat, x, y, s, rx = 18) =>
  `<rect x="${x}" y="${y}" width="${s}" height="${s}" rx="${rx}" fill="${CAT_COLOR[cat]}" stroke="${C.ink}" stroke-width="5"/>` +
  dotRect(x, y, s, s, rx, 22) + iconG(cat, x + s * 0.2, y + s * 0.2, s * 0.6, C.ink, 2.4);
const rotated = (deg, cx, cy, body) => `<g transform="rotate(${deg} ${r2(cx)} ${r2(cy)})">${body}</g>`;
// Schräges Etikett (Kicker) mit hartem Schatten
function tag(label, cx, cy, { size = 64, fill = C.yellow, deg = -4 } = {}) {
  const w = measure(label, size, DISPLAY, -0.02) + size * 1.2, h = size * 1.75;
  return rotated(deg, cx, cy, card(cx - w / 2, cy - h / 2, w, h, fill, { sw: 8, off: 12, rx: 28 }) +
    text(label, { x: cx, y: cy + size * 0.36, size, anchor: 'middle', track: -0.02 }));
}
// Weiße Faktenkarte (Kategorie-Chip, Titel, Hook), so groß wie möglich im Bereich [top, bottom], senkrecht zentriert
function factCard(lang, p, top, bottom, { x = PAD, w = CW, chipOn = true, kicker = null, hook = true, sizes = [[92, 38], [84, 38], [76, 36], [68, 34], [62, 32], [56, 30], [50, 28]] } = {}) {
  const inner = w - 120;
  const head = chipOn || kicker ? 90 : 0;
  let tf, hl, ch;
  for (const [ts, hs] of sizes) {
    tf = { size: ts, lines: wrap(p.title, ts, inner, DISPLAY, -0.02) };
    hl = { size: hs, lines: hook ? wrap(p.hook, hs, inner, TEXT) : [] };
    ch = 60 + head + tf.lines.length * ts * 1.08 + (hook ? 36 + hl.lines.length * hs * 1.42 : 0) + 30;
    if (ch <= bottom - top) break;
  }
  const y = r2(top + (bottom - top - ch) / 2);
  let b = card(x, y, w, ch, C.white);
  let cy = y + 60;
  if (chipOn) {
    const c = chip(L[lang].cats[p.cat], 0, 0, CAT_COLOR[p.cat], 30);
    b += place(x + 60, cy - 8, c.svg);
    if (kicker) b += text(kicker, { x: x + 60 + c.w + 24, y: cy + 30, size: 32, font: TEXT, fill: PINK_TEXT });
  } else if (kicker) b += text(kicker, { x: x + 60, y: cy + 30, size: 34, font: TEXT, fill: PINK_TEXT });
  cy += head;
  b += lineBlock(tf.lines, x + 60, cy + tf.size * 0.8, tf.size, { track: -0.02, lh: 1.08 });
  cy += tf.lines.length * tf.size * 1.08 + 36;
  b += lineBlock(hl.lines, x + 60, cy + hl.size * 0.5, hl.size, { font: TEXT, fill: C.muted, lh: 1.42 });
  return { svg: b, y, h: ch };
}

// ---------- 1) Themen-Karussell (7 Folien, 1080×1350) ----------
function carousel(lang, set) {
  const H = 1350, k = K[lang], t = L[lang], s = set[lang];
  const ps = set.keys.map((key) => fact(lang, key));
  const swipeHint = () => text(k.swipe, { x: W - PAD - 14 - 110, y: H - 88, size: 40, anchor: 'end' }) + arrow(W - PAD - 14 - 92, H - 140, 92, C.white);
  const slides = [];
  // Deckblatt
  {
    let b = catBg(W, H, set.cat) + header(PAD, 64, lang);
    b += tag(k.five, W / 2 - 7, 330, { size: 60, fill: C.yellow, deg: -5 });
    const tf = fit(s.title, CW - 120, 4, [104, 96, 88, 80]);
    const sl = wrap(s.sub, 44, CW - 120, TEXT);
    const ch = 70 + tf.lines.length * tf.size * 1.06 + 40 + sl.length * 60 + 50 + 110 + 60;
    const cy = 440;
    b += card(PAD, cy, CW, ch, C.white);
    b += lineBlock(tf.lines, PAD + 60, cy + 70 + tf.size * 0.8, tf.size, { track: -0.02, lh: 1.06 });
    let y = cy + 70 + tf.lines.length * tf.size * 1.06 + 40;
    b += lineBlock(sl, PAD + 60, y + 30, 44, { font: TEXT, fill: PINK_TEXT, lh: 60 / 44 });
    y += sl.length * 60 + 50;
    ps.forEach((p, i) => { b += catTile(p.cat, PAD + 60 + i * 130, y, 100); });
    b += swipeHint();
    slides.push(svg(W, H, b));
  }
  // Fakten
  ps.forEach((p, i) => {
    let b = catBg(W, H, p.cat) + header(PAD, 64, lang, { right: `${i + 1} ${k.of} 5` });
    const fc = factCard(lang, p, 300, H - 190);
    b += fc.svg;
    // Nummer groß, überlappt die Karte oben rechts
    const nx = W - PAD - 14 - 70, ny = fc.y - 10;
    b += rotated(8, nx, ny, `<circle cx="${nx + 8}" cy="${ny + 8}" r="70" fill="${C.ink}"/><circle cx="${nx}" cy="${ny}" r="70" fill="${C.yellow}" stroke="${C.ink}" stroke-width="7"/>` +
      text(String(i + 1), { x: nx, y: ny + 34, size: 96, anchor: 'middle' }));
    b += swipeHint();
    slides.push(svg(W, H, b));
  });
  // Schluss
  {
    let b = colorBg(W, H, C.yellow) + confetti(W, H, 26, 17 + set.id.length, [40, 200, 1040, 1180]) + header(PAD, 64, lang);
    const ql = wrap(k.favQ, 76, CW - 120, DISPLAY, -0.02);
    const cy = 300;
    const ch = 70 + ql.length * 82 + 30 + 70 + 40 + 5 * 66 + 50;
    b += card(PAD, cy, CW, ch, C.white);
    b += lineBlock(ql, PAD + 60, cy + 70 + 60, 76, { track: -0.02, lh: 82 / 76 });
    let y = cy + 70 + ql.length * 82 + 30;
    b += text(k.favSub, { x: PAD + 60, y: y + 30, size: 38, font: TEXT, fill: C.muted });
    y += 70 + 20;
    ps.forEach((p, i) => {
      b += text(`${i + 1}`, { x: PAD + 80, y: y + 40, size: 44, anchor: 'middle' });
      const tl = wrap(p.title, 30, CW - 230, TEXT);
      const one = tl.length > 1 ? tl[0].replace(/[ ,.;:]*$/, '') + '…' : tl[0];
      b += catTile(p.cat, PAD + 120, y, 52, 12) + text(one, { x: PAD + 196, y: y + 37, size: 30, font: TEXT });
      y += 66;
    });
    b += text(k.slogan, { x: W / 2 - 7, y: r2((cy + ch + 14 + H - 170) / 2 + 15), size: 44, anchor: 'middle' });
    b += pill(k.allSources, PAD, H - 170, CW, { fill: C.white });
    slides.push(svg(W, H, b));
  }
  return slides;
}

// ---------- 2) Zahlen-Hammer (Post 1080×1350, Pin 1000×1500) ----------
function bigNumber(lang, e, { pin = false } = {}) {
  const w = pin ? 1000 : W, H = pin ? 1500 : 1350, k = K[lang], t = L[lang];
  const p = fact(lang, e.key), d = e[lang];
  if (!p.title.includes(d.must)) throw new Error(`Zahl „${d.must}“ steht nicht im Titel von ${e.key} (${lang}): ${p.title}`);
  const pad = pin ? 70 : PAD, cw = w - pad * 2 - 14;
  let b = catBg(w, H, p.cat);
  // Kopf: Logo-Karte schmaler auf dem Pin
  b += card(pad, 64, cw, 128, C.white, { sw: 7, off: 12, rx: 32 });
  b += place(pad + 40, 64 + 64 + 22, wordmark({ size: 62 }).body);
  const c = chip(t.cats[p.cat], 0, 0, CAT_COLOR[p.cat], 32);
  b += place(pad + cw - 34 - c.w, 64 + 37, c.svg);
  // Große Zahl auf gelbem Schild
  let size = 260;
  while (measure(d.big, size, DISPLAY, -0.04) > cw - 120) size -= 8;
  const nh = size * 1.05 + 80;
  b += rotated(-3, w / 2, 260 + nh / 2, card(pad, 260, cw, nh, C.yellow, { sw: 9, off: 16, rx: 40 }) +
    text(d.big, { x: w / 2 - 7, y: 260 + 40 + size * 0.82, size, anchor: 'middle', track: -0.04 }));
  const ul = wrap(d.unit, 52, cw - 40, DISPLAY);
  let y = 260 + nh + 90;
  b += lineBlock(ul, w / 2 - 7, y, 52, { anchor: 'middle', lh: 1.15 });
  y += (ul.length - 1) * 60 + 50;
  const ctaY = H - (pin ? 170 : 150);
  b += factCard(lang, p, y, ctaY - 100, { x: pad, w: cw, chipOn: false, sizes: [[60, 32], [54, 30], [48, 28], [44, 26]] }).svg;
  b += text(k.slogan, { x: w / 2 - 7, y: ctaY - 36, size: 38, anchor: 'middle' });
  b += pill(t.cta, pad, ctaY, cw, { fill: p.cat === 'weird' ? C.white : C.white });
  return svg(w, H, b);
}

// ---------- 3) Rate mal! (Story-Paar 1080×1920, sichere Zone 230 bis 1520) ----------
function quiz(lang, q, reveal = false) {
  const H = 1920, k = K[lang], t = L[lang], d = q[lang];
  const p = fact(lang, q.key);
  let b = colorBg(W, H, C.violet) + header(PAD, 230, lang, { cat: p.cat });
  b += tag(k.guess, W / 2 - 7, 470, { size: 80, fill: C.yellow, deg: -5 });
  const ql = wrap(d.q, 56, CW - 120, DISPLAY, -0.02);
  let y = 580;
  const qh = 60 + ql.length * 64 + 40;
  b += card(PAD, y, CW, qh, C.white);
  b += lineBlock(ql, PAD + 60, y + 60 + 46, 56, { track: -0.02, lh: 64 / 56 });
  y += qh + 44;
  const option = (i, oy, fill, mark) => {
    let o = card(PAD, oy, CW, 116, fill, { sw: 7, off: 12, rx: 30 });
    o += `<rect x="${PAD + 26}" y="${oy + 18}" width="80" height="80" rx="20" fill="${[C.pink, C.cyan, C.yellow][i]}" stroke="${C.ink}" stroke-width="5"/>`;
    o += text('ABC'[i], { x: PAD + 66, y: oy + 78, size: 52, anchor: 'middle' });
    o += text(d.a[i], { x: PAD + 140, y: oy + 76, size: 48, track: -0.01 });
    return o + (mark ? check(PAD + CW - 70, oy + 58, 34) : '');
  };
  if (!reveal) {
    d.a.forEach((_, i) => { b += option(i, y, C.white, false); y += 116 + 28; });
    b += stickerZone(PAD + 60, y + 30, CW - 120, 1500 - y - 30, k.quizSticker);
  } else {
    // Nur die richtige Antwort, darunter der Fakt
    b += text(k.right, { x: PAD, y: y + 36, size: 40, fill: C.white });
    y += 60;
    b += option(q.ok, y, C.lime, true);
    y += 116 + 40;
    b += factCard(lang, p, y, 1470, { chipOn: false, sizes: [[60, 34], [56, 32], [50, 30], [46, 28], [42, 26]] }).svg;
    b += pill(t.cta, PAD, H - 400, CW, { fill: C.yellow });
  }
  return svg(W, H, b);
}

// ---------- 4) Schick das jemandem, der … (Post 1080×1350) ----------
function sendTo(lang, e) {
  const H = 1350, k = K[lang], t = L[lang];
  const p = fact(lang, e.key);
  let b = catBg(W, H, p.cat) + header(PAD, 64, lang);
  // Pinke Sprechblase mit dem Teilen-Aufruf
  const who = fit(e[lang], CW - 120, 2, [76, 68, 60, 54]);
  const bh = 60 + 46 + 30 + who.lines.length * who.size * 1.08 + 40;
  const by = 250;
  b += rotated(-2, W / 2, by + bh / 2, card(PAD, by, CW, bh, C.pink, { sw: 8, off: 14, rx: 36 }) +
    `<path d="M${PAD + 120} ${by + bh - 4}l-10 70 80-70z" fill="${C.pink}" stroke="${C.ink}" stroke-width="8" stroke-linejoin="round"/>` +
    `<rect x="${PAD + 96}" y="${by + bh - 14}" width="110" height="12" fill="${C.pink}"/>` +
    text(k.sendTo, { x: PAD + 60, y: by + 60 + 34, size: 40, font: TEXT }) +
    lineBlock(who.lines, PAD + 60, by + 60 + 46 + 30 + who.size * 0.8, who.size, { track: -0.02, lh: 1.08 }));
  const ctaY = H - 150;
  b += factCard(lang, p, by + bh + 90, ctaY - 100, { sizes: [[72, 36], [64, 34], [58, 32], [52, 30], [46, 28]] }).svg;
  b += text(k.slogan, { x: W / 2 - 7, y: ctaY - 36, size: 38, anchor: 'middle' });
  b += pill(t.cta, PAD, ctaY, CW, { fill: p.cat === 'weird' ? C.white : C.yellow });
  return svg(W, H, b);
}

// ---------- 5) Wie viele wusstest du schon? (Post 1080×1350) ----------
function bingo(lang, items) {
  const H = 1350, k = K[lang];
  let b = colorBg(W, H, C.cyan) + header(PAD, 64, lang);
  const hf = fit(k.bingoHead, CW, 1, [66, 60, 56, 52, 48]);
  b += text(hf.lines[0], { x: W / 2 - 7, y: 290, size: hf.size, anchor: 'middle', track: -0.02 });
  const gap = 24, tw = (CW - gap * 2) / 3, th = 244, gy = 324;
  items.forEach(([key, de, en], i) => {
    const p = fact(lang, key), label = lang === 'de' ? de : en;
    const x = PAD + (i % 3) * (tw + gap), y = gy + Math.floor(i / 3) * (th + gap);
    b += card(x, y, tw, th, C.white, { sw: 6, off: 10, rx: 26 });
    b += catTile(p.cat, x + 22, y + 22, 58, 14);
    b += `<rect x="${x + tw - 70}" y="${y + 26}" width="48" height="48" rx="12" fill="${C.white}" stroke="${C.ink}" stroke-width="5"/>`;
    const lf = fit(label, tw - 40, 5, [28, 26, 24, 22], TEXT, 0);
    if (lf.lines.length > 5) throw new Error(`Bingo-Text zu lang: ${label}`);
    b += lineBlock(lf.lines, x + 22, y + 100 + lf.size * 0.8, lf.size, { font: TEXT, lh: 1.22 });
  });
  const by = gy + 3 * th + 2 * gap;
  b += lineBlock(wrap(k.bingoSub, 32, CW - 40, TEXT), W / 2 - 7, by + 52, 32, { font: TEXT, anchor: 'middle', lh: 1.3 });
  b += pill(k.bingoCta, PAD, H - 150, CW, { fill: C.yellow });
  return svg(W, H, b);
}

// ---------- 6) Was ist absurder? (Umfrage-Story 1080×1920, ohne Slogan; nur Titel, Quellen per Link) ----------
function duel(lang, [ka, kb]) {
  const H = 1920, k = K[lang];
  const a = fact(lang, ka), c = fact(lang, kb);
  let b = colorBg(W, H, C.pink) + header(PAD, 230, lang);
  b += tag(k.duelHead, W / 2 - 7, 460, { size: 70, fill: C.yellow, deg: -4 });
  const sizes = [[72, 0], [66, 0], [60, 0], [54, 0], [48, 0]];
  const A = factCard(lang, a, 570, 890, { sizes, hook: false });
  const B = factCard(lang, c, 960, 1280, { sizes, hook: false });
  b += A.svg + B.svg;
  for (const [fc, l, col] of [[A, 'A', C.cyan], [B, 'B', C.lime]]) {
    b += `<circle cx="${PAD + CW - 50 + 6}" cy="${fc.y + 6}" r="50" fill="${C.ink}"/><circle cx="${PAD + CW - 50}" cy="${fc.y}" r="50" fill="${col}" stroke="${C.ink}" stroke-width="6"/>`;
    b += text(l, { x: PAD + CW - 50, y: fc.y + 24, size: 64, anchor: 'middle' });
  }
  const vy = (A.y + A.h + B.y) / 2 + 4;
  b += `<circle cx="${W / 2 - 7}" cy="${vy}" r="52" fill="${C.ink}"/>` + text('VS', { x: W / 2 - 7, y: vy + 18, size: 50, anchor: 'middle', fill: C.yellow });
  b += stickerZone(PAD + 60, 1330, CW - 120, 170, k.poll);
  b += pill(k.duelCta, PAD, H - 400, CW, { fill: C.white, h: 88, size: 36 });
  return svg(W, H, b);
}

// ---------- 7) Science Jumper: Highscore-Challenge (Story) und Gold-Leiter (Post) ----------
const star = (cx, cy, r, fill) => {
  let d = '';
  for (let i = 0; i < 10; i++) {
    const a = -Math.PI / 2 + i * Math.PI / 5, rr = i % 2 ? r * 0.45 : r;
    d += `${i ? 'L' : 'M'}${r2(cx + rr * Math.cos(a))} ${r2(cy + rr * Math.sin(a))}`;
  }
  // Sterne in Kategoriefarbe tragen das Punktmuster (wie die Sterne der Gold-Fakten auf der Seite)
  const pat = fill === C.white ? '' : `<defs><pattern id="stardots" width="14" height="14" patternUnits="userSpaceOnUse"><circle cx="3" cy="3" r="2" fill="#14141417"/></pattern></defs><path d="${d}Z" fill="url(#stardots)"/>`;
  return `<path d="${d}Z" fill="${fill}" stroke="${C.ink}" stroke-width="5" stroke-linejoin="round"/>` + pat;
};
const lock = (cx, cy, s) =>
  `<path d="M${cx - s * 0.28} ${cy - s * 0.05}v${-s * 0.18}a${s * 0.28} ${s * 0.28} 0 0 1 ${s * 0.56} 0v${s * 0.18}" fill="none" stroke="${C.ink}" stroke-width="${s * 0.1}"/>` +
  `<rect x="${cx - s * 0.4}" y="${cy - s * 0.08}" width="${s * 0.8}" height="${s * 0.6}" rx="${s * 0.1}" fill="${C.ink}"/>`;
function challenge(lang) {
  const H = 1920, k = K[lang];
  let b = goldBg(W, H) + header(PAD, 230, lang);
  b += tag(k.challenge, W / 2 - 7, 490, { size: 72, fill: C.white, deg: -4 });
  b += lineBlock(wrap(k.myScore, 56, CW, DISPLAY), W / 2 - 7, 680, 56, { anchor: 'middle', lh: 1.15 });
  b += stickerZone(PAD + 40, 790, CW - 80, 560, k.shot);
  for (const [x, y, r] of [[150, 760, 38], [930, 1400, 44], [940, 720, 28]]) b += star(x, y, r, C.white);
  b += text(k.beatMe, { x: W / 2 - 7, y: 1470, size: 72, anchor: 'middle', track: -0.02 });
  b += pill(k.play, PAD, H - 400, CW, { fill: C.white });
  return svg(W, H, b);
}
function ladder(lang) {
  const H = 1350, k = K[lang];
  const max = GOLD_POINTS[GOLD_POINTS.length - 1].points;
  let b = goldBg(W, H) + header(PAD, 64, lang);
  const hf = fit(k.ladderHead(GOLD_POINTS.length, max), CW, 2, [64, 58, 52]);
  b += lineBlock(hf.lines, PAD, 300, hf.size, { track: -0.02, lh: 1.1 });
  const gy = 300 + (hf.lines.length - 1) * hf.size * 1.1 + 50;
  const gap = 20, tw = (CW - gap * 3) / 4, th = 150;
  GOLD_POINTS.forEach((g, i) => {
    const x = PAD + (i % 4) * (tw + gap), y = gy + Math.floor(i / 4) * (th + gap);
    b += card(x, y, tw, th, C.white, { sw: 6, off: 9, rx: 24 });
    // Stern in Kategoriefarbe, mit Punkten wie auf der Seite
    b += star(x + 50, y + 58, 32, CAT_COLOR[g.category]);
    b += lock(x + tw - 40, y + 46, 40);
    b += text(String(g.points), { x: x + tw - 26, y: y + th - 26, size: 46, anchor: 'end', track: -0.02 });
  });
  const by = gy + 4 * th + 3 * gap + 50;
  b += lineBlock(wrap(k.ladderSub, 34, CW, TEXT), PAD, by + 10, 34, { font: TEXT, lh: 1.35 });
  b += pill(k.play, PAD, H - 150, CW, { fill: C.white });
  return svg(W, H, b);
}

// ---------- 8) Partner-Paket: Fakt zum Weiterposten (mit Quellenangabe statt „Link in Bio“) ----------
function partnerCard(lang, key, story = false) {
  const H = story ? 1920 : 1350, k = K[lang];
  const p = fact(lang, key);
  const top = story ? 230 : 70;
  let b = catBg(W, H, p.cat);
  b += tag(k.funFact, PAD + 150, top + 50, { size: 46, fill: C.yellow, deg: -5 });
  const creditH = 200, creditY = H - (story ? 400 : 70) - creditH;
  const fc = factCard(lang, p, top + 150, creditY - 110, { sizes: [[92, 38], [84, 38], [76, 36], [68, 34], [62, 32], [56, 30]] });
  b += fc.svg;
  b += text(k.slogan, { x: W / 2 - 7, y: creditY - 44, size: 40, anchor: 'middle' });
  // Quellenangabe: Logo + Adresse, damit der Fakt auch ohne Profil-Link zurückführt
  b += card(PAD, creditY, CW, creditH, C.white, { sw: 7, off: 12, rx: 32 });
  b += text(k.via, { x: PAD + 50, y: creditY + 64, size: 30, font: TEXT, fill: C.muted });
  b += place(PAD + 50, creditY + 128, wordmark({ size: 66 }).body);
  b += text(k.credit, { x: PAD + 50, y: creditY + 176, size: 30, font: TEXT });
  return svg(W, H, b);
}
function shoutout(lang, story = false) {
  const H = story ? 1920 : 1350, k = K[lang];
  const top = story ? 260 : 90;
  let b = colorBg(W, H, C.yellow) + confetti(W, H, 34, story ? 53 : 61, [40, top - 30, 1040, H - (story ? 300 : 40)]);
  b += tag(k.tip, W / 2 - 7, top + 40, { size: 54, fill: C.pink, deg: -4 });
  const ch = story ? 1180 : 1000;
  const cy = top + 140;
  b += card(PAD, cy, CW, ch, C.white);
  const m = wordmark({ size: story ? 130 : 112 });
  b += place(W / 2 - 7 - m.width / 2, cy + (story ? 190 : 165), m.body);
  b += text(k.slogan, { x: W / 2 - 7, y: cy + (story ? 280 : 245), size: 44, anchor: 'middle' });
  const hl = wrap(k.tipHead, 50, CW - 120, DISPLAY, -0.02);
  const hy = cy + (story ? 400 : 345);
  b += lineBlock(hl, PAD + 60, hy, 50, { track: -0.02, lh: 1.15 });
  let y = hy + hl.length * 58 + 40;
  for (const item of k.tipList) {
    b += check(PAD + 90, y, 26);
    b += text(item, { x: PAD + 136, y: y + 12, size: 34, font: TEXT });
    y += story ? 110 : 72;
  }
  b += pill(DOMAIN, PAD + 60, cy + ch - 150, CW - 120, { fill: C.yellow, size: 52 });
  return svg(W, H, b);
}

// ---------- Ausgabe ----------
const files = [];
// Jede Grafik bekommt unten rechts den dezenten Hinweis „KI-generiert“ / „AI-generated“
const save = (rel, s) => {
  const [, w, h] = s.match(/width="([\d.]+)" height="([\d.]+)"/).map(Number);
  const lang = rel.match(/(?:^|\/)(de|en)\//)[1];
  png(`${OUT}/${rel}`, s.replace(/<\/svg>\n$/, `${aiTag(w, h, lang)}</svg>\n`));
  files.push(rel);
};

for (const lang of ['de', 'en']) {
  for (const set of CAROUSELS) carousel(lang, set).forEach((s, i) => save(`${lang}/karussells/${set.id}-${i + 1}-1080x1350.png`, s));
  for (const e of NUMBERS) {
    save(`${lang}/zahlen/${e.key}-post-1080x1350.png`, bigNumber(lang, e));
    save(`${lang}/zahlen/${e.key}-pin-1000x1500.png`, bigNumber(lang, e, { pin: true }));
  }
  QUIZZES.forEach((q, i) => {
    save(`${lang}/rate-mal/${i + 1}-${q.key}-frage-1080x1920.png`, quiz(lang, q));
    save(`${lang}/rate-mal/${i + 1}-${q.key}-aufloesung-1080x1920.png`, quiz(lang, q, true));
  });
  for (const e of SENDTO) save(`${lang}/teilen/${e.key}-1080x1350.png`, sendTo(lang, e));
  BINGOS.forEach((items, i) => save(`${lang}/bingo/wusstest-du-${i + 1}-1080x1350.png`, bingo(lang, items)));
  DUELS.forEach((d, i) => save(`${lang}/duell/${i + 1}-${d[0]}-vs-${d[1]}-1080x1920.png`, duel(lang, d)));
  save(`${lang}/science-jumper/highscore-challenge-1080x1920.png`, challenge(lang));
  save(`${lang}/science-jumper/gold-leiter-1080x1350.png`, ladder(lang));
  PARTNER.forEach((key, i) => {
    save(`partner/${lang}/post-${key}-1080x1350.png`, partnerCard(lang, key));
    if (i < 5) save(`partner/${lang}/story-${key}-1080x1920.png`, partnerCard(lang, key, true));
  });
  save(`partner/${lang}/account-tipp-post-1080x1350.png`, shoutout(lang));
  save(`partner/${lang}/account-tipp-story-1080x1920.png`, shoutout(lang, true));
}
console.log(`${files.length} Grafiken`);
