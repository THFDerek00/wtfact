// Feiertags-Grafiken, Teil „winter“ (Herbst bis Neujahr). Regeln stehen oben in src/data/fest-art.ts.

const f = (n: number) => n.toFixed(1);

// Wellenrand um einen Kreis oder eine Ellipse (Blüten, Rüschen, Teigrand): n Bögen, die um d nach außen wölben.
function scallop(cx: number, cy: number, rx: number, ry: number, n: number, d: number, rot = 0) {
  const pt = (a: number, k: number) => `${f(cx + Math.cos(a) * (rx + k))} ${f(cy + Math.sin(a) * (ry + k * (ry / rx)))}`;
  let p = '';
  for (let i = 0; i < n; i++) {
    const a = rot + (i / n) * Math.PI * 2;
    const m = a + Math.PI / n;
    const b = a + (2 * Math.PI) / n;
    if (i === 0) p += `M${pt(a, 0)}`;
    p += `Q${pt(m, d * 2)} ${pt(b, 0)}`;
  }
  return p + 'Z';
}

// Stern mit `pts` Zacken (Spitze oben).
function star(cx: number, cy: number, R: number, r: number, pts = 5) {
  const out: string[] = [];
  for (let i = 0; i < pts * 2; i++) {
    const a = -Math.PI / 2 + (i * Math.PI) / pts;
    const k = i % 2 ? r : R;
    out.push(`${f(cx + Math.cos(a) * k)} ${f(cy + Math.sin(a) * k)}`);
  }
  return `M${out.join('L')}Z`;
}

// Truthahn-Fächer: Federn im Halbkreis hinter dem Körper, Farben wechseln.
function fan() {
  const cls = ['f-red', 'f-orange', 'f-yellow', 'f-orange', 'f-red', 'f-orange', 'f-yellow'];
  const parts: string[] = [];
  const n = cls.length;
  for (let i = 0; i < n; i++) {
    const deg = -165 + (i * 150) / (n - 1);
    const a = (deg * Math.PI) / 180;
    const cx = 32 + Math.cos(a) * 17;
    const cy = 40 + Math.sin(a) * 17;
    parts.push(`<ellipse class="o ${cls[i]}" cx="${f(cx)}" cy="${f(cy)}" rx="7.5" ry="15" transform="rotate(${f(deg + 90)} ${f(cx)} ${f(cy)})"/>`);
  }
  return parts.join('');
}

// Champagnerglas, oben Mitte im Ursprung; wird per transform gekippt.
const flute = `<path class="o f-white" d="M-7.5 0H7.5C7.5 13 6 24 0 27C-6 24-7.5 13-7.5 0Z"/>
  <path class="f-yellow" d="M-7.2 7H7.2C7 17 5 23.5 0 25.5C-5 23.5-7 17-7.2 7Z"/>
  <circle class="fw" cx="-2" cy="18" r="1.3"/><circle class="fw" cx="2" cy="12" r="1.1"/>
  <path class="o fnone" d="M-7.5 0H7.5C7.5 13 6 24 0 27C-6 24-7.5 13-7.5 0Z"/>
  <path class="s-black" stroke-width="6" d="M0 27V43"/><path class="s-white" stroke-width="2.5" d="M0 27V43"/>
  <path class="o f-white" d="M-9 45C-9 41.5 9 41.5 9 45Z"/>`;

// Kleeblatt: Herzblatt mit Spitze im Ursprung, zeigt nach oben.
const heartLeaf = 'M0 0C-5-3-14-7-14-15C-14-21-6-23 0-16C6-23 14-21 14-15C14-7 5-3 0 0Z';

export const ART: Record<string, string> = {
  marigold: `<path class="o f-green" d="M30 50C22 50 14 54 10 60C20 61 27 57 30 50ZM34 50C42 50 50 54 54 60C44 61 37 57 34 50Z"/>
    <path class="o f-orange" d="${scallop(32, 30, 20, 20, 14, 2.4)}"/>
    <path class="o f-yellow" d="${scallop(32, 30, 13.5, 13.5, 12, 1.8, 0.26)}"/>
    <path class="o f-orange" d="${scallop(32, 30, 7, 7, 9, 1.5)}"/>
    <circle class="f-red-dark" cx="32" cy="30" r="2.2"/>`,

  candle: `<path class="o fglow" d="M32 26C24 22 25 12 32 2C39 12 40 22 32 26Z"/>
    <path class="f-orange" d="M32 23C29 21 29 16 32 11C35 16 35 21 32 23Z"/>
    <path class="t-dark" d="M32 24v5"/>
    <path class="o f-red" d="M22 31C22 29 42 29 42 31V54H22Z"/>
    <path class="f-white" d="M23.5 32H40.5V36C40.5 38 38 38 38 36V35C38 34 36 34 36 36V42C36 44 33 44 33 42V36C33 34 30 34 30 37C30 39 27 39 27 37V35C27 34 23.5 34 23.5 36Z"/>
    <path class="o fnone" d="M22 31C22 29 42 29 42 31V54H22Z"/>
    <path class="o fgold" d="M12 54H52C52 59 46 61 32 61S12 59 12 54Z"/>`,

  'sugar-skull': `<path class="o f-white" d="M32 5C47 5 55 15 55 28C55 36 51 41 46 43V51C46 56 43 59 38 59H26C21 59 18 56 18 51V43C13 41 9 36 9 28C9 15 17 5 32 5Z"/>
    <path class="o f-pink" d="${scallop(22.5, 30, 7, 7, 8, 1.4)}"/><path class="o f-sky" d="${scallop(41.5, 30, 7, 7, 8, 1.4, 0.4)}"/>
    <circle class="fk" cx="22.5" cy="30" r="4"/><circle class="fk" cx="41.5" cy="30" r="4"/>
    <circle class="fw" cx="21" cy="28.5" r="1.3"/><circle class="fw" cx="40" cy="28.5" r="1.3"/>
    <path class="fk" d="M32 44L28.5 40C27 38 28.5 36 30.5 36.5L32 37.5L33.5 36.5C35.5 36 37 38 35.5 40Z"/>
    <path class="t-dark" d="M23 51H41M26.5 47.5V54.5M32 47.5V54.5M37.5 47.5V54.5"/>
    <path class="o f-orange" d="${scallop(32, 15, 4, 4, 6, 1.8)}"/><circle class="f-yellow" cx="32" cy="15" r="2"/>
    <g class="f-green"><circle cx="13.5" cy="36" r="1.6"/><circle cx="50.5" cy="36" r="1.6"/><circle cx="18" cy="17" r="1.4"/><circle cx="46" cy="17" r="1.4"/></g>`,

  'music-note': `<path class="o f-navy" d="M23 47V16L55 7V41H49V18L29 23.5V47Z"/>
    <ellipse class="o f-navy" cx="20" cy="48" rx="9" ry="6.5" transform="rotate(-20 20 48)"/>
    <ellipse class="o f-navy" cx="46" cy="42" rx="9" ry="6.5" transform="rotate(-20 46 42)"/>
    <path class="f-navy" d="M23.5 44V16.5L54.5 7.6V39H49.5V17.5L28.5 23V44Z"/>
    <path class="t-white" d="M16 46c1-2 3-3 5-3.5M42 40c1-2 3-3 5-3.5"/>`,

  diya: `<path class="o fglow" d="M48 30C41 26 41 15 48 4C55 15 55 26 48 30Z"/>
    <path class="f-orange" d="M48 27C45 25 45 20 48 14C51 20 51 25 48 27Z"/>
    <path class="o f-orange" d="M5 35C7 50 19 56 30 56C42 56 49 50 52 42L60 32C54 32 48 35 42 36Z"/>
    <ellipse class="o f-brown-dark" cx="24" cy="35" rx="19" ry="5"/>
    <path class="t-dark" d="M9 44C20 50 38 50 50 44"/>
    <g class="f-yellow"><circle cx="16" cy="49" r="1.8"/><circle cx="24" cy="51" r="1.8"/><circle cx="32" cy="51" r="1.8"/><circle cx="40" cy="49" r="1.8"/></g>
    <path class="t-dark" d="M48 31v4"/>`,

  lotus: `<ellipse class="o f-green" cx="32" cy="53" rx="25" ry="6"/>
    <path class="o f-purple" d="M32 50C19 52 8 46 4 36C15 33 27 38 32 50ZM32 50C45 52 56 46 60 36C49 33 37 38 32 50Z"/>
    <path class="o f-pink" d="M32 50C21 47 12 36 12 21C24 24 31 36 32 50ZM32 50C43 47 52 36 52 21C40 24 33 36 32 50Z"/>
    <path class="o f-pink" d="M32 8C41 18 42 38 32 50C22 38 23 18 32 8Z"/>
    <path class="t-white" d="M32 18V40"/>`,

  'martin-lantern': `<path class="o f-wood" d="M3 16L55 4L56 9L4 21Z"/>
    <path class="t-dark-thick" d="M32 10V19"/>
    <ellipse class="o f-orange" cx="32" cy="39" rx="21" ry="17"/>
    <path class="t-dark" d="M32 22V56M22 24C17 30 17 48 22 54M42 24C47 30 47 48 42 54"/>
    <path class="o fstar" d="${star(32, 39.5, 9, 4)}"/>
    <rect class="o f-red" x="22" y="18" width="20" height="7" rx="2"/><rect class="o f-red" x="22" y="53" width="20" height="7" rx="2"/>`,

  crescent: `<path class="o fmoon" d="M40 6A26 26 0 1 0 58 46A20 20 0 0 1 40 6Z"/>
    <circle class="fmoon-shade" cx="16" cy="36" r="4"/><circle class="fmoon-shade" cx="26" cy="49" r="3"/><circle class="fmoon-shade" cx="18" cy="22" r="2.5"/>
    <path class="o fstar" d="${star(50, 18, 7, 3)}"/>`,

  star: `<path class="o fstar" d="${star(32, 34, 28, 12)}"/>
    <path class="fhighlight" d="M30.5 13L26.5 24.5H29.5L31.5 16Z"/>`,

  horse: `<path class="o f-brown" d="M27 14L30 3L37 11C50 15 57 36 58 60H25C27 51 28 45 27 40C22 42 15 43 11 42C5 41 3 35 6 31C10 25 18 19 27 14Z"/>
    <path class="o f-brown-dark" d="M37 11C49 15 56 34 58 60H50C49 42 45 26 34 18C32 16 30 14 31 11Z"/>
    <path class="o f-brown-dark" d="M31 11C27 11 23 15 22 19C26 18 29 16 31 11Z"/>
    <path class="f-white" d="M17 23C14 27 11 31 10 34C12 33 14 31 16 29C17 27 18 25 17 23Z"/>
    <circle class="fk" cx="27" cy="25" r="2.4"/><circle class="fw" cx="26.3" cy="24.3" r="0.8"/>
    <path class="t-dark" d="M9 34.5c1 1 2.5 1 3.5 0M7 39c4 1 8 0 11-2"/>`,

  turkey: `${fan()}
    <circle class="o f-brown" cx="32" cy="42" r="14"/>
    <path class="t-dark" d="M24 48c3 3 13 3 16 0M26 52c2 2 10 2 12 0"/>
    <circle class="o f-brown" cx="32" cy="27" r="8"/>
    <circle class="fk" cx="29" cy="25.5" r="1.6"/><circle class="fk" cx="35" cy="25.5" r="1.6"/>
    <path class="o f-red" d="M33 30C37 31 37 37 34 39C32 37 31 33 33 30Z"/>
    <path class="o f-yellow" d="M29 28.5H35L32 33Z"/>
    <path class="s-orange" stroke-width="3" d="M27 55V61M37 55V61M24 61H30M34 61H40"/>`,

  'maple-leaf': `<path class="o f-red" d="M32 3L35.5 11L40 9L38 24L45 17L47 21L55 19L52 28L56 30L44 39L46 43L34 41V58H30V41L18 43L20 39L8 30L12 28L9 19L17 21L19 17L26 24L24 9L28.5 11Z"/>
    <path class="s-red-dark" stroke-width="2" d="M32 40V12M32 33L47 23M32 33L17 23M32 38L43 36M32 38L21 36"/>`,

  pie: `<path class="o f-wood" d="M4 22V29C4 35 14 38 26 38S48 35 48 29V22"/>
    <path class="o f-wood" d="${scallop(26, 22, 22, 9, 16, 1.4)}"/>
    <ellipse class="o f-orange" cx="26" cy="22" rx="16.5" ry="6"/>
    <path class="o f-orange" d="M22 44L52 53V61L22 52Z"/>
    <path class="f-wood" d="M22 49L52 58V61L22 52Z"/>
    <path class="o fnone" d="M22 44L52 53V61L22 52Z"/>
    <path class="o f-wood" d="M52 53L61 37V45L52 61Z"/>
    <path class="o f-orange" d="M22 44L61 37L52 53Z"/>
    <path class="s-wood" stroke-width="4" d="M59 39.5L53 50.5"/>
    <path class="o f-white" d="M38 45C36 42 39 39 42 40C43 37 48 37 48 41C51 41 51 45 48 46C46 48 41 48 38 45Z"/>`,

  corn: `<g transform="rotate(-25 32 34)">
    <ellipse class="o f-yellow" cx="32" cy="26" rx="11" ry="21"/>
    <path class="s-orange" stroke-width="2" d="M22 16H42M21.5 23H42.5M21.5 30H42.5M22.5 37H41.5M27 6.5C25.5 18 25.5 34 27 46M32 5V47M37 6.5C38.5 18 38.5 34 37 46"/>
    <path class="o f-green" d="M32 62C18 58 13 42 17 24C22 34 27 44 32 52Z"/>
    <path class="o f-green" d="M32 62C46 58 51 42 47 24C42 34 37 44 32 52Z"/>
    <path class="o f-green-dark" d="M32 62C28 56 28 50 32 44C36 50 36 56 32 62Z"/></g>`,

  fir: `<path class="o f-brown" d="M28 48H36V59H28Z"/>
    <path class="o f-green" d="M32 3L43 18H38L49 32H43L55 48H9L21 32H15L26 18H21Z"/>
    <path class="f-green-dark" d="M32 3L43 18H38L49 32H43L55 48H32Z"/>
    <path class="o fnone" d="M32 3L43 18H38L49 32H43L55 48H9L21 32H15L26 18H21Z"/>`,

  snowflake: `<g stroke-linecap="round">
    <path class="s-black" stroke-width="9" d="M32 4V60M7.8 18L56.2 46M7.8 46L56.2 18M32 13L26 7M32 13L38 7M32 51L26 57M32 51L38 57M15.5 22.5L7 24.5M15.5 22.5L13 14M48.5 41.5L57 39.5M48.5 41.5L51 50M15.5 41.5L7 39.5M15.5 41.5L13 50M48.5 22.5L57 24.5M48.5 22.5L51 14"/>
    <path class="s-white" stroke-width="4" d="M32 4V60M7.8 18L56.2 46M7.8 46L56.2 18M32 13L26 7M32 13L38 7M32 51L26 57M32 51L38 57M15.5 22.5L7 24.5M15.5 22.5L13 14M48.5 41.5L57 39.5M48.5 41.5L51 50M15.5 41.5L7 39.5M15.5 41.5L13 50M48.5 22.5L57 24.5M48.5 22.5L51 14"/></g>
    <path class="o f-sky" d="${star(32, 32, 9, 5, 6)}"/>`,

  boot: `<path class="s-black" stroke-width="5" d="M37 22L41 10"/><path class="s-white" stroke-width="2" d="M37 22L41 10"/>
    <circle class="o f-pink" cx="42" cy="10" r="7"/>
    <path class="t-white" d="M42 10m-3.5 0a3.5 3.5 0 1 1 3.5 3.5"/>
    <circle class="o f-orange" cx="25" cy="15" r="8.5"/>
    <path class="o f-green" d="M25 7C27 2 32 2 34 4C31 7 28 7 25 7Z"/>
    <path class="o f-red" d="M18 24H42V40C52 41 59 46 59 52C59 56 57 58 53 58H21C19 58 18 57 18 55Z"/>
    <path class="o f-brown-dark" d="M18 53H59V55C59 57 57 58 55 58H21C19 58 18 57 18 55Z"/>
    <rect class="o f-white" x="14" y="20" width="32" height="10" rx="4"/>
    <circle class="fstar" cx="30" cy="42" r="2.5"/>`,

  orange: `<circle class="o f-orange" cx="32" cy="36" r="23"/>
    <path class="fhighlight" d="M17 30C18 23 23 18 30 17C25 21 22 25 21 32Z"/>
    <g class="s-red-dark" stroke-width="1.6"><path d="M40 44h.1M46 36h.1M36 50h.1M44 48h.1M26 46h.1M48 28h.1"/></g>
    <path class="t-dark-thick" d="M32 14V9"/>
    <path class="o f-green" d="M33 11C37 4 47 3 52 7C47 13 39 14 33 11Z"/>
    <path class="t-dark" d="M37 10C41 8 45 7 48 7.5"/>`,

  chocolate: `<g transform="rotate(-20 32 32)">
    <rect class="o f-brown" x="17" y="5" width="30" height="34" rx="3"/>
    <g class="f-brown-dark"><rect x="20" y="8" width="11" height="9" rx="1.5"/><rect x="33" y="8" width="11" height="9" rx="1.5"/><rect x="20" y="19.5" width="11" height="9" rx="1.5"/><rect x="33" y="19.5" width="11" height="9" rx="1.5"/></g>
    <g class="f-brown"><rect x="21.5" y="9.5" width="8" height="6" rx="1"/><rect x="34.5" y="9.5" width="8" height="6" rx="1"/><rect x="21.5" y="21" width="8" height="6" rx="1"/><rect x="34.5" y="21" width="8" height="6" rx="1"/></g>
    <path class="o f-gray" d="M15 34L19 30L23 34L27 30L32 34L37 30L41 34L45 30L49 34V40H15Z"/>
    <path class="o f-purple" d="M14 38H50V58C50 60 49 61 47 61H17C15 61 14 60 14 58Z"/>
    <path class="f-white" d="M14.5 45H49.5V52H14.5Z"/>
    <path class="o fnone" d="M14 38H50V58C50 60 49 61 47 61H17C15 61 14 60 14 58Z"/></g>`,

  gift: `<path class="o f-yellow" d="M32 21C24 6 10 8 14 16C16 20 24 21 32 21ZM32 21C40 6 54 8 50 16C48 20 40 21 32 21Z"/>
    <path class="o f-red" d="M10 30H54V58H10Z"/>
    <path class="f-red-dark" d="M11.5 31.5H52.5V36H11.5Z"/>
    <path class="o f-red" d="M6 21H58V31H6Z"/>
    <path class="o f-yellow" d="M28 21H36V58H28Z"/>
    <rect class="o f-yellow" x="26" y="15" width="12" height="9" rx="4"/>`,

  bell: `<path class="o f-red" d="M32 12L26 22L22 20ZM32 12L38 22L42 20Z"/>
    <path class="o fgold" d="M32 10C20 10 16 20 16 31C16 40 12 44 7 48H57C52 44 48 40 48 31C48 20 44 10 32 10Z"/>
    <path class="fhighlight" d="M21 38C21 28 22 20 28 16C25 22 24 29 24 38Z"/>
    <circle class="o fgold" cx="32" cy="54" r="5"/>
    <rect class="o fgold" x="5" y="46" width="54" height="6" rx="3"/>
    <path class="o f-red" d="M32 10C26 2 16 4 18 9C20 13 27 11 32 10ZM32 10C38 2 48 4 46 9C44 13 37 11 32 10Z"/>
    <circle class="o f-red" cx="32" cy="10" r="3.5"/>`,

  champagne: `<g transform="translate(25 12) rotate(15)">${flute}</g>
    <g transform="translate(39 12) rotate(-15)">${flute}</g>
    <path class="t-dark" d="M32 7V2M25 8L22 4M39 8L42 4"/>`,

  'party-popper': `<path class="s-red" stroke-width="3.5" d="M32 24C30 16 37 15 35 7"/>
    <path class="s-blue" stroke-width="3.5" d="M42 31C47 26 52 33 58 27"/>
    <path class="s-green" stroke-width="3.5" d="M38 26C41 19 47 21 49 13"/>
    <circle class="o f-yellow" cx="25" cy="10" r="3"/><circle class="o f-pink" cx="56" cy="40" r="3"/>
    <rect class="o f-sky" x="44" y="4" width="6" height="4" transform="rotate(25 47 6)"/>
    <rect class="o f-pink" x="53" y="14" width="6" height="4" transform="rotate(-30 56 16)"/>
    <path class="o fstar" d="${star(18, 18, 5, 2.2)}"/>
    <path class="o f-purple" d="M6 58L20 26L38 44Z"/>
    <path class="s-yellow" stroke-width="5" d="M10.9 46.8L24 52.9M15.6 36.1L30 42.3"/>
    <path class="o fnone" d="M6 58L20 26L38 44Z"/>
    <ellipse class="o f-yellow" cx="29" cy="35" rx="13" ry="4" transform="rotate(45 29 35)"/>`,

  clover: `<path class="s-black" stroke-width="8" d="M33 34C38 44 42 52 50 58"/>
    <path class="s-green-dark" stroke-width="3.5" d="M33 34C38 44 42 52 50 58"/>
    <g transform="translate(31 29) rotate(45)">
      <path class="o f-green" d="${heartLeaf}"/><path class="o f-green" d="${heartLeaf}" transform="rotate(90)"/>
      <path class="o f-green" d="${heartLeaf}" transform="rotate(180)"/><path class="o f-green" d="${heartLeaf}" transform="rotate(270)"/>
      <g class="s-green-dark" stroke-width="2"><path d="M0-4V-14M4 0H14M0 4V14M-4 0H-14"/></g>
    </g>`,

  'lucky-pig': `<path class="s-black" stroke-width="7" d="M12 34C5 35 3 28 7 26C10 25 11 29 8 31"/><path class="s-pink" stroke-width="3" d="M12 34C5 35 3 28 7 26C10 25 11 29 8 31"/>
    <path class="o f-pink" d="M17 46V56H24V46ZM38 46V56H45V46Z"/>
    <ellipse class="o f-pink" cx="31" cy="38" rx="21" ry="15"/>
    <path class="o f-pink" d="M24 51V58H31V51ZM42 50V57H49V50Z"/>
    <circle class="o f-pink" cx="47" cy="31" r="12"/>
    <path class="o f-pink" d="M40 21L41 11L49 19Z"/>
    <ellipse class="o f-pink" cx="58" cy="34" rx="4" ry="6"/>
    <circle class="fk" cx="57" cy="32" r="1"/><circle class="fk" cx="58.5" cy="36" r="1"/>
    <circle class="fk" cx="48" cy="27" r="2"/>
    <path class="t-dark" d="M47 39c2 1.5 4.5 1.5 6.5 0"/>
    <circle class="f-red" cx="44" cy="35" r="2.5"/>`,

  crown: `<path class="o fgold" d="M6 20L18 34L32 12L46 34L58 20L53 47H11Z"/>
    <circle class="o fgold" cx="6" cy="18" r="4"/><circle class="o fgold" cx="32" cy="10" r="4"/><circle class="o fgold" cx="58" cy="18" r="4"/>
    <rect class="o fgold" x="9" y="45" width="46" height="12" rx="2"/>
    <circle class="o f-red" cx="32" cy="51" r="3.5"/><circle class="o f-blue" cx="20" cy="51" r="2.6"/><circle class="o f-green" cx="44" cy="51" r="2.6"/>
    <path class="o f-red" d="M32 26L36 32L32 38L28 32Z"/>
    <path class="fhighlight" d="M27 22L22 31L24 32Z"/>`,
};
