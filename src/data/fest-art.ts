// Eigene Grafiken für Feiertage und Grusel (Wunsch von Eric, 2026-10-15: „erstelle eigene Grafiken, insbesondere
// das Feuerwerk sieht als eckiges Emoji schlecht aus“). Jede Grafik ist ein SVG im Raster 64 × 64.
// Farben kommen nie direkt ins SVG, sondern über Klassen, die FestIcon.astro auf Tokens legt:
//   o = dicke dunkle Kontur, t = dünne Linie, fa/fb/fn/fw = Themenfarben (Akzent a, b, Nacht, Hell),
//   alle anderen f… = Bildfarben (--art-* in src/styles/global.css), dazu f-<farbe>/s-<farbe> für Fläche/Linie
//   in der Grundpalette (red, red-dark, green, green-dark, blue, navy, sky, yellow, orange, pink, purple, brown,
//   brown-dark, wood, white, gray, skin, black).
// In `deco` (src/data/holidays.ts) steht der Name einer Grafik von hier, sonst ein Emoji.

// Feuerwerk: Strahlen im Kreis, abwechselnd in den beiden Themenfarben, mit Funken an den Spitzen.
function burst(rays: number, inner: number, outer: number) {
  const parts: string[] = [];
  for (let i = 0; i < rays; i++) {
    const a = (i / rays) * Math.PI * 2;
    const [c, s] = [Math.cos(a), Math.sin(a)];
    const p = (r: number) => `${(32 + c * r).toFixed(1)} ${(32 + s * r).toFixed(1)}`;
    const cls = i % 2 ? 'sb' : 'sa';
    parts.push(`<path class="${cls}" d="M${p(inner)}L${p(outer)}"/>`);
    parts.push(`<circle class="${i % 2 ? 'fb' : 'fw'}" cx="${(32 + c * (outer + 4)).toFixed(1)}" cy="${(32 + s * (outer + 4)).toFixed(1)}" r="${i % 2 ? 1.8 : 2.4}"/>`);
  }
  return parts.join('');
}

import { ART as WINTER } from './fest-art-winter';
import { ART as SPRING } from './fest-art-spring';
import { ART as SUMMER } from './fest-art-summer';

const BASE: Record<string, string> = {
  firework: `<g class="burst">${burst(14, 7, 23)}<circle class="fw" cx="32" cy="32" r="4"/></g>`,

  brick: `<path class="o fbrick" d="M4 16h40l6 6-4 6 8 4-4 6 6 4-6 6H4z"/>
    <path class="t-dark" d="M4 26h44M4 36h48M4 46h44M18 16v10M36 16v10M10 26v10M28 26v10M44 26v10M18 36v10M36 36v10"/>`,


  'flag-de': `<path class="t-dark" d="M12 8v50"/>
    <path class="o fde-black" d="M13 10c10-4 18 4 28 0s14-2 14-2v12c-4 2-8 0-14 2s-18-6-28-2z"/>
    <path class="fde-red" d="M13 22c10-4 18 4 28 0s10-2 14-2v12c-4 2-8 0-14 2s-18-6-28-2z"/>
    <path class="fde-gold" d="M13 34c10-4 18 4 28 0s10-2 14-2v12c-4 2-8 0-14 2s-18-6-28-2z"/>
    <path class="o fnone" d="M13 10c10-4 18 4 28 0s14-2 14-2v36c-4 2-8 0-14 2s-18-6-28-2z"/>`,

  pumpkin: `<path class="o fpumpkin" d="M32 17c-10-5-24 0-26 15s7 25 26 25 28-10 26-25-16-20-26-15z"/>
    <path class="t-pumpkin" d="M32 17c-6 7-6 33 0 40M32 17c6 7 6 33 0 40M20 19c-9 8-9 30 1 37M44 19c9 8 9 30-1 37"/>
    <path class="o fleaf" d="M30 18c0-5 1-10 5-12l4 3c-3 2-4 5-4 9z"/>
    <path class="t-leaf" d="M38 9c5-3 11-1 12 4"/>
    <path class="o fglow" d="M17 33l6-8 5 8zM36 33l5-8 6 8zM30 39l2-4 2 4zM16 42c8 9 24 9 32 0l-4 1-3 4-3-3-3 4-3-4-3 3-3-4-3 3-4-3z"/>`,

  bat: `<g transform="translate(32 28) scale(1.35) translate(-32 -28)"><path class="o fb" d="M32 24l-3-6-2 7c-6-1-9 0-12-3-3 1-7 0-11-3 2 6 2 10 6 13 2-2 6-2 8 0 1-3 4-4 7-3 2 3 4 6 7 6s5-3 7-6c3-1 6 0 7 3 2-2 6-2 8 0 4-3 4-7 6-13-4 3-8 4-11 3-3 3-6 2-12 3l-2-7z"/>
    <circle class="fglow" cx="29.5" cy="27" r="1.7"/><circle class="fglow" cx="34.5" cy="27" r="1.7"/></g>`,

  web: `<g class="tw"><path d="M32 4v56M4 32h56M12 12l40 40M52 12L12 52"/>
    <path d="M32 12l9 3 7 9 1 8-1 8-7 9-9 3-9-3-7-9-1-8 1-8 7-9z"/>
    <path d="M32 21l5 2 5 4 1 5-1 5-5 5-5 1-5-1-5-5-1-5 1-5 5-4z"/></g>`,

  ghost: `<path class="o fghost" d="M14 56V28c0-12 8-20 18-20s18 8 18 20v28l-6-5-6 5-6-5-6 5-6-5z"/>
    <ellipse class="fk" cx="26" cy="28" rx="3" ry="4.5"/><ellipse class="fk" cx="38" cy="28" rx="3" ry="4.5"/>
    <ellipse class="fk" cx="32" cy="39" rx="3.5" ry="4.5"/>`,

  spider: `<path class="tw" d="M32 2v18"/>
    <g class="t-legs"><path d="M26 32l-10-6-6 6M26 36l-12 0-4 8M27 40l-9 6-2 9M38 32l10-6 6 6M38 36l12 0 4 8M37 40l9 6 2 9"/></g>
    <circle class="o fbat" cx="32" cy="24" r="6"/><ellipse class="o fbat" cx="32" cy="38" rx="9" ry="10"/>
    <circle class="fglow" cx="29.5" cy="23" r="1.6"/><circle class="fglow" cx="34.5" cy="23" r="1.6"/>`,

  candy: `<path class="o fb" d="M14 32l-10-9v18zM50 32l10-9v18z"/>
    <ellipse class="o fa" cx="32" cy="32" rx="18" ry="12"/>
    <path class="t-white" d="M22 23c-3 6-3 12 0 18M32 20c-3 8-3 16 0 24M42 23c-3 6-3 12 0 18"/>`,

  moon: `<circle class="o fmoon" cx="32" cy="32" r="24"/>
    <circle class="fmoon-shade" cx="24" cy="24" r="5"/><circle class="fmoon-shade" cx="40" cy="38" r="7"/>
    <circle class="fmoon-shade" cx="22" cy="42" r="3.5"/><circle class="fmoon-shade" cx="42" cy="20" r="2.5"/>`,

  lantern: `<path class="t-dark" d="M32 2v8"/>
    <path class="o fgold" d="M24 10h16v5H24zM24 49h16v5H24z"/>
    <path class="o flantern" d="M24 15c-14 4-14 30 0 34h16c14-4 14-30 0-34z"/>
    <path class="t-gold" d="M32 15v34M24 15c-6 8-6 26 0 34M40 15c6 8 6 26 0 34"/>
    <path class="t-gold" d="M32 54v8M29 62h6"/>`,

  mooncake: `<path class="o fcake" d="M32 8l5 3 6-1 3 5 6 2v6l4 5-4 5v6l-6 2-3 5-6-1-5 3-5-3-6 1-3-5-6-2v-6l-4-5 4-5v-6l6-2 3-5 6 1z"/>
    <circle class="t-cake" cx="32" cy="32" r="14"/>
    <path class="t-cake" d="M32 22v20M22 32h20M25 25l14 14M39 25L25 39"/>`,

  rabbit: `<path class="o fghost" d="M24 26c-4-8-6-18-2-20 4-1 6 9 7 18M36 24c2-9 6-18 9-16 3 3-2 12-6 19"/>
    <path class="o fghost" d="M18 58c-6-12 0-24 8-30 2-2 10-2 14 0 6 3 8 10 6 14 6 2 10 8 8 16z"/>
    <circle class="fk" cx="36" cy="33" r="1.8"/><path class="fb" d="M43 37l3 1-3 1z"/>`,

  beer: `<path class="o fbeer" d="M14 18h30v38H14z"/>
    <path class="o fnone" d="M44 26h6c4 0 6 3 6 7v8c0 4-2 7-6 7h-6"/>
    <path class="t-beer" d="M22 26v24M29 26v24M36 26v24"/>
    <path class="o ffoam" d="M12 20c-2-6 3-10 8-8 2-5 10-6 13-1 4-3 11-1 12 4 4 1 4 6 0 7-6 2-27 3-33-2z"/>`,

  pretzel: `<path class="o-pretzel" d="M18 52c-14-10-12-34 4-38 12-3 16 14 10 22s-14 12-14 16M46 52c14-10 12-34-4-38-12-3-16 14-10 22s14 12 14 16"/>
    <g class="fw"><circle cx="18" cy="24" r="1.4"/><circle cx="44" cy="20" r="1.4"/><circle cx="12" cy="38" r="1.4"/><circle cx="52" cy="36" r="1.4"/><circle cx="30" cy="30" r="1.4"/></g>`,

  'ferris-wheel': `<path class="t-dark-thick" d="M32 32L20 60M32 32l12 28M16 60h32"/>
    <circle class="o fnone" cx="32" cy="30" r="22"/>
    <path class="t-white" d="M32 8v44M10 30h44M16.4 14.4l31.2 31.2M47.6 14.4L16.4 45.6"/>
    <circle class="o fa" cx="32" cy="30" r="4"/>
    <g class="o"><circle class="fb" cx="32" cy="8" r="4"/><circle class="fa" cx="54" cy="30" r="4"/><circle class="fb" cx="32" cy="52" r="4"/><circle class="fa" cx="10" cy="30" r="4"/>
    <circle class="fa" cx="47.6" cy="14.4" r="3.5"/><circle class="fb" cx="47.6" cy="45.6" r="3.5"/><circle class="fa" cx="16.4" cy="45.6" r="3.5"/><circle class="fb" cx="16.4" cy="14.4" r="3.5"/></g>`,

  tomato: `<circle class="o ftomato" cx="32" cy="36" r="22"/>
    <path class="fhighlight" d="M19 30c1-6 6-10 11-10-4 3-6 6-7 11z"/>
    <path class="o fleaf" d="M32 16l-4-6 1 6-8-2 6 5-7 3 9-1 3 5 3-5 9 1-7-3 6-5-8 2 1-6z"/>`,

  splash: `<path class="o ftomato" d="M32 14c4 0 4 8 8 8s8-8 12-4-4 8-2 12 10 2 10 6-8 4-8 8 6 10 2 12-8-4-12-2-4 10-10 10-4-8-8-8-8 8-12 4 2-10 0-14-10-2-10-6 8-6 6-10-6-8-2-12 10 4 14 2 6-8 10-8z"/>
    <circle class="o ftomato" cx="10" cy="12" r="3"/><circle class="o ftomato" cx="56" cy="54" r="2.5"/>`,

  meteor: `<path class="tail-a" d="M38 26L6 58"/><path class="tail-b" d="M44 24L18 50"/><path class="tail-b" d="M40 20L14 46"/>
    <path class="o fstar" d="M46 6l4 9 10 1-8 7 3 10-9-5-9 5 3-10-8-7 10-1z"/>`,

  sparkle: `<path class="o fstar" d="M32 4c2 16 6 24 24 28-18 4-22 12-24 28-2-16-6-24-24-28 18-4 22-12 24-28z"/>`,

  telescope: `<path class="t-dark-thick" d="M30 38L18 60M34 38l12 22M32 38v22"/>
    <path class="o fa" d="M8 30l40-18 6 13-40 18z"/>
    <path class="o fb" d="M46 10l10-4 6 13-10 4z"/>
    <circle class="o fw" cx="32" cy="36" r="4"/>`,
};

export const FEST_ART: Record<string, string> = { ...BASE, ...WINTER, ...SPRING, ...SUMMER };

export const isFestArt = (name: string) => name in FEST_ART;

// Buchstabe O im Riesenschriftzug eines Themas, ersetzt durch eine Grafik (Halloween: Kürbis).
export const FEST_LETTER_O: Record<string, string> = {
  halloween: 'pumpkin',
  grusel: 'moon',
  mondfest: 'moon',
  tomatina: 'tomato',
};

// Riesiges Motiv je Thema (FestArt.astro). Einheit hat die Flagge, alle anderen ohne Eintrag zeigen ihr Emoji.
export const FEST_HERO_ART: Record<string, string> = {
  halloween: 'pumpkin',
  grusel: 'ghost',
  mondfest: 'moon',
  oktoberfest: 'beer',
  tomatina: 'tomato',
  perseiden: 'meteor',
};
