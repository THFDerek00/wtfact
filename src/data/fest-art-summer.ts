// Feiertags-Grafiken, Teil „summer“. Regeln stehen oben in src/data/fest-art.ts.

// Wehende Flagge wie 'flag-de': Stange bei x 12, Tuch 13…55 × 10…46, Welle als Sinus über die Breite.
const wave = (x: number) => -2.2 * Math.sin(((x - 13) / 42) * Math.PI * 2);
const pt = (x: number, y: number) => `${x.toFixed(1)} ${(y + wave(x)).toFixed(1)}`;
function band(x0: number, x1: number, y0: number, y1: number) {
  const xs: number[] = [];
  for (let x = x0; x < x1; x += 2) xs.push(x);
  xs.push(x1);
  const top = xs.map((x) => pt(x, y0));
  const bottom = xs.reverse().map((x) => pt(x, y1));
  return `M${top.join('L')}L${bottom.join('L')}z`;
}
const flag = (body: string) =>
  `<path class="t-dark" d="M12 8v50"/>${body}<path class="o fnone" d="${band(13, 55, 10, 46)}"/>`;

// Strahlen im Kreis (Sonne): spitze Dreiecke zwischen r0 und r1.
function rays(n: number, r0: number, r1: number, half: number) {
  const out: string[] = [];
  for (let i = 0; i < n; i++) {
    const a = (i / n) * Math.PI * 2 - Math.PI / 2;
    const p = (r: number, d: number) => `${(32 + Math.cos(a + d) * r).toFixed(1)} ${(32 + Math.sin(a + d) * r).toFixed(1)}`;
    out.push(`M${p(r0, -half)}L${p(r1, 0)}L${p(r0, half)}z`);
  }
  return out.join('');
}

// Blütenblätter (Sonnenblume): Ellipsen im Kreis um (cx, cy).
function petals(n: number, cx: number, cy: number, dist: number, rx: number, ry: number, cls: string, offset = 0) {
  const out: string[] = [];
  for (let i = 0; i < n; i++) {
    const deg = (i / n) * 360 + offset;
    out.push(`<ellipse class="${cls}" cx="${cx}" cy="${cy - dist}" rx="${rx}" ry="${ry}" transform="rotate(${deg.toFixed(1)} ${cx} ${cy})"/>`);
  }
  return out.join('');
}

// Croissant: Sichel aus sieben Teigbändern um (32, 54), Mitte dick, Enden spitz.
function croissant() {
  const n = 7, from = -195, to = 15, cx = 32, cy = 46;
  const pt = (deg: number, r: number) => `${(cx + Math.cos((deg * Math.PI) / 180) * r).toFixed(1)} ${(cy + Math.sin((deg * Math.PI) / 180) * r).toFixed(1)}`;
  const thick = (deg: number) => { const k = 1 - Math.abs(deg + 90) / 112; return 2.5 + 8 * Math.sqrt(Math.max(k, 0)); };
  const segs: { d: string; i: number }[] = [];
  for (let i = 0; i < n; i++) {
    const a0 = from + ((to - from) * i) / n, a1 = from + ((to - from) * (i + 1)) / n, am = (a0 + a1) / 2;
    const rm = 20, t0 = thick(a0), t1 = thick(a1), tm = thick(am);
    const d = `M${pt(a0, rm - t0)}L${pt(a0, rm + t0)}Q${pt(am, rm + tm + 3)} ${pt(a1, rm + t1)}L${pt(a1, rm - t1)}Q${pt(am, rm - tm + 1.5)} ${pt(a0, rm - t0)}z`;
    segs.push({ d, i });
  }
  segs.sort((a, b) => Math.abs(b.i - 3) - Math.abs(a.i - 3));
  return segs.map(({ d, i }) => `<path class="o ${i === 3 ? 'f-orange' : 'f-wood'}" d="${d}"/>`).join('');
}

const usStars = [16, 21, 26].flatMap((x) => [14, 19, 24].map((y) => `<circle class="f-white" cx="${x}" cy="${(y + wave(x)).toFixed(1)}" r="1.3"/>`)).join('');
const usStripes = Array.from({ length: 7 }, (_, i) => `<path class="${i % 2 ? 'f-white' : 'f-red'}" d="${band(13, 55, 10 + (i * 36) / 7, 10 + ((i + 1) * 36) / 7)}"/>`).join('');

export const ART: Record<string, string> = {
  'brandenburg-gate': `<path class="o f-green" d="M19 15h26v-4H19zM20 11v-4a2 2 0 0 1 4 0v4zM25 11v-5a2 2 0 0 1 4 0v5zM35 11v-5a2 2 0 0 1 4 0v5zM40 11v-4a2 2 0 0 1 4 0v4zM30 11V5h4v6zM30.5 6l-5-4 1 5zM33.5 6l5-4-1 5z"/><circle class="o f-green" cx="32" cy="3.5" r="2"/>
    <path class="f-green" d="M19 15h26v-4H19zM20 11v-4a2 2 0 0 1 4 0v4zM25 11v-5a2 2 0 0 1 4 0v5zM35 11v-5a2 2 0 0 1 4 0v5zM40 11v-4a2 2 0 0 1 4 0v4zM30 11V5h4v6zM30.5 6l-5-4 1 5zM33.5 6l5-4-1 5z"/><circle class="f-green" cx="32" cy="3.5" r="2"/>
    <path class="o f-skin" d="M16 15h32v8H16z"/>
    <path class="o f-skin" d="M6 23h52v7H6z"/>
    <path class="t-dark" d="M11 26v2M16 26v2M21 26v2M26 26v2M31 26v2M36 26v2M41 26v2M46 26v2M51 26v2"/>
    <g class="o f-skin"><path d="M8 30h5v22H8zM16.5 30h5v22h-5zM25 30h5v22h-5zM34 30h5v22h-5zM42.5 30h5v22h-5zM51 30h5v22h-5z"/></g>
    <path class="o f-skin" d="M4 52h56v6H4z"/>`,

  'dragon-boat': `<g class="o f-skin"><circle cx="20" cy="27" r="3.6"/><circle cx="31" cy="27" r="3.6"/><circle cx="42" cy="27" r="3.6"/></g>
    <path class="o f-red" d="M5 33c-3-7 1-14 7-15-1 4 0 9 5 13h29c3 0 4-3 4-6l7 3c0 9-6 16-15 16H17C10 44 6 40 5 33z"/>
    <path class="o f-yellow" d="M10 37h44c-2 3-5 5-9 5H17c-3 0-5-2-7-5z"/>
    <path class="t-dark" d="M16 39c2 2 4 2 6 0 2 2 4 2 6 0 2 2 4 2 6 0 2 2 4 2 6 0 2 2 4 2 6 0"/>
    <path class="o f-red" d="M45 30l-5-2 4-2-5-3 5-1-4-4 6 0-2-5 5 3"/>
    <path class="o f-yellow" d="M51 12l-5-8 8 5zM55 11l-1-8 4 7z"/>
    <path class="o f-green" d="M46 32c-2-9-1-17 4-21 4-2 7-2 9 0l4 4v3h-6l5 3-2 3c-2 1-4 0-6-1-2 2-3 5-2 9z"/>
    <circle class="o f-white" cx="54" cy="13.5" r="2"/>
    <path class="s-sky" stroke-width="3" d="M4 52c4-3 8-3 12 0s8 3 12 0 8-3 12 0 8 3 12 0 6-3 8-1"/>`,

  zongzi: `<path class="o f-green" d="M31 7L8 50l32 7z"/>
    <path class="o f-green-dark" d="M31 7l9 50 16-13z"/>
    <path class="t-dark" d="M28 17L16 46M31 20l-6 31M35 22l4 28M38 22l11 21"/>
    <path class="o fnone" d="M31 7L8 50l32 7 16-13z"/>
    <path class="o f-green" d="M31 7c2-3 6-4 8-3-1 3-4 5-8 5z"/>
    <path class="s-black" stroke-width="7" d="M12 38l27 6 16-8"/>
    <path class="s-wood" stroke-width="3" d="M12 38l27 6 16-8"/>
    <path class="o f-wood" d="M39 44l-7-5v8zM39 44l7-3-2 8z"/><circle class="o f-wood" cx="39" cy="44" r="2"/>`,

  wave: `<path class="o f-blue" d="M4 58c0-22 10-44 32-48 14-2 24 6 24 16 0 8-7 12-13 9-5-2-4-10 2-10-4-5-12-4-17 2-7 9-5 24 6 31z"/>
    <path class="o f-sky" d="M18 58c-1-16 6-30 18-36-8 9-10 24-2 36z"/>
    <path class="t-white" stroke-width="2.5" d="M14 30c4-10 12-16 22-17"/>
    <g class="o f-white"><circle cx="44" cy="25" r="2.5"/><circle cx="52" cy="31" r="1.8"/></g>
    <path class="o f-white" d="M24 18c3-5 9-8 15-8-5 2-9 5-11 9z"/>`,

  sun: `<path class="o f-orange" d="${rays(10, 16, 28, 0.25)}"/>
    <circle class="o f-yellow" cx="32" cy="32" r="14"/>
    <path class="fhighlight" d="M23 29c1-5 5-8 10-8-4 2-7 5-8 9z"/>`,

  sunflower: `<path class="s-black" stroke-width="7" d="M32 40v20"/><path class="s-green" stroke-width="3" d="M32 40v20"/>
    <path class="o f-green" d="M32 54c-4-6-11-7-16-4 4 5 11 6 16 4zM32 50c4-6 11-7 16-4-4 5-11 6-16 4z"/>
    ${petals(12, 32, 26, 13, 4.5, 8, 'o f-yellow', 15)}
    ${petals(12, 32, 26, 12, 3.5, 6.5, 'o f-orange')}
    <circle class="o f-brown-dark" cx="32" cy="26" r="9"/>
    <g class="f-brown"><circle cx="29" cy="23" r="1.4"/><circle cx="34" cy="22" r="1.4"/><circle cx="36" cy="27" r="1.4"/><circle cx="31" cy="29" r="1.4"/><circle cx="27" cy="27.5" r="1.2"/><circle cx="32" cy="25.5" r="1.2"/></g>`,

  strawberry: `<path class="o f-red" d="M32 59C18 51 8 39 10 27c2-10 12-12 22-8 10-4 20-2 22 8 2 12-8 24-22 32z"/>
    <path class="fhighlight" d="M15 30c0-5 3-7 7-7-3 2-4 4-4 8z"/>
    <g class="f-yellow"><ellipse cx="22" cy="34" rx="1.2" ry="1.8"/><ellipse cx="32" cy="31" rx="1.2" ry="1.8"/><ellipse cx="42" cy="34" rx="1.2" ry="1.8"/>
    <ellipse cx="27" cy="41" rx="1.2" ry="1.8"/><ellipse cx="37" cy="41" rx="1.2" ry="1.8"/><ellipse cx="18" cy="42" rx="1.1" ry="1.6"/><ellipse cx="46" cy="42" rx="1.1" ry="1.6"/>
    <ellipse cx="32" cy="49" rx="1.2" ry="1.8"/><ellipse cx="25" cy="48" rx="1.1" ry="1.6"/><ellipse cx="39" cy="48" rx="1.1" ry="1.6"/></g>
    <path class="o f-green" d="M32 18l-6-5 1 6-9 0 7 4-5 5 9-3 3 4 3-4 9 3-5-5 7-4h-9l1-6z"/>
    <path class="s-black" stroke-width="6" d="M32 15c0-5 2-8 5-10"/><path class="s-green" stroke-width="2.5" d="M32 15c0-5 2-8 5-10"/>`,

  maypole: `<path class="s-blue" stroke-width="3" d="M33 6c6 0 10 3 16 2"/><path class="s-yellow" stroke-width="3" d="M33 7c5 2 9 6 14 6"/>
    <path class="s-blue" stroke-width="2.5" d="M12 38c-1 5 1 8-1 12M52 38c1 5-1 8 1 12"/><path class="s-yellow" stroke-width="2.5" d="M16 38c1 4-1 7 1 11M48 38c-1 4 1 7-1 11"/>
    <path class="o f-green" d="M29 5h6v55h-6z"/>
    <path class="o f-green" d="M8 14h48v5H8z"/>
    <path class="t-dark" d="M29 26l3-2 3 2M29 32l3-2 3 2M29 38l3-2 3 2M29 44l3-2 3 2M29 50l3-2 3 2M29 56l3-2 3 2M29 11l3-2 3 2M13 16.5l2-1.5 2 1.5M19 16.5l2-1.5 2 1.5M41 16.5l2-1.5 2 1.5M47 16.5l2-1.5 2 1.5"/>
    <circle class="s-black" stroke-width="9" cx="14" cy="28" r="7.5"/><circle class="s-green" stroke-width="4" cx="14" cy="28" r="7.5"/>
    <circle class="s-black" stroke-width="9" cx="50" cy="28" r="7.5"/><circle class="s-green" stroke-width="4" cx="50" cy="28" r="7.5"/>
    <g class="o"><circle class="f-pink" cx="6.5" cy="28" r="2.2"/><circle class="f-yellow" cx="14" cy="35.5" r="2.2"/><circle class="f-white" cx="21.5" cy="28" r="2.2"/>
    <circle class="f-white" cx="42.5" cy="28" r="2.2"/><circle class="f-yellow" cx="50" cy="35.5" r="2.2"/><circle class="f-pink" cx="57.5" cy="28" r="2.2"/>
    <circle class="f-pink" cx="32" cy="16.5" r="2.6"/></g>
    <path class="o f-green" d="M20 61l3-6 2 4 3-7 4 6 4-6 3 7 2-4 3 6z"/>`,

  'flag-us': flag(`${usStripes}<path class="f-navy" d="${band(13, 30, 10, 10 + (4 * 36) / 7)}"/>${usStars}`),

  hotdog: `<g transform="rotate(-14 32 34)">
    <path class="o f-wood" d="M9 32c0-7 4-9 10-9h26c6 0 10 2 10 9z"/>
    <rect class="o f-red" x="3" y="28" width="58" height="11" rx="5.5"/>
    <path class="s-yellow" stroke-width="3" d="M9 33l4-3 4 5 4-5 4 5 4-5 4 5 4-5 4 5 4-5 4 5 4-4"/>
    <path class="o f-wood" d="M8 36h48c0 9-5 14-12 14H20C13 50 8 45 8 36z"/>
    <path class="o f-orange" d="M8 36h48c0 2-1 3-3 3H11c-2 0-3-1-3-3z"/></g>`,

  baguette: `<g transform="rotate(-38 32 32)">
    <path class="o f-wood" d="M6 32c0-6 4-9 10-9h32c6 0 10 3 10 9s-4 9-10 9H16c-6 0-10-3-10-9z"/>
    <g class="o f-yellow"><path d="M13 30c2-3 5-4 9-3-2 3-5 4-9 3zM24 30c2-3 5-4 9-3-2 3-5 4-9 3zM35 30c2-3 5-4 9-3-2 3-5 4-9 3zM46 30c2-3 5-4 8-3-2 3-5 4-8 3z"/></g>
    <path class="t-dark" d="M10 36c10 2 34 2 44 0"/></g>`,

  'flag-fr': flag(`<path class="f-navy" d="${band(13, 27, 10, 46)}"/><path class="f-white" d="${band(27, 41, 10, 46)}"/><path class="f-red" d="${band(41, 55, 10, 46)}"/>`),

  croissant: `${croissant()}<path class="fhighlight" d="M27 22c2-2 5-3 8-3-2 1-4 3-5 5z"/>`,

  'pirate-flag': flag(`<path class="f-black" d="${band(13, 55, 10, 46)}"/>
    <path class="s-black" stroke-width="7" d="M${pt(22, 18)}L${pt(46, 40)}M${pt(46, 18)}L${pt(22, 40)}"/>
    <path class="s-white" stroke-width="3.5" d="M${pt(22, 18)}L${pt(46, 40)}M${pt(46, 18)}L${pt(22, 40)}"/>
    <g class="f-white"><circle cx="${pt(21, 17).split(' ')[0]}" cy="${pt(21, 17).split(' ')[1]}" r="2.3"/><circle cx="47" cy="${pt(47, 17).split(' ')[1]}" r="2.3"/>
    <circle cx="21" cy="${pt(21, 41).split(' ')[1]}" r="2.3"/><circle cx="47" cy="${pt(47, 41).split(' ')[1]}" r="2.3"/></g>
    <path class="f-white" d="M27 25c0-5 3-8 7-8s7 3 7 8c0 3-1 4-2 5v3h-10v-3c-1-1-2-2-2-5z"/>
    <g class="f-black"><circle cx="31" cy="25" r="2"/><circle cx="37" cy="25" r="2"/><path d="M34 27.5l-1 2h2z"/></g>
    <path class="s-black" stroke-width="1.2" d="M31.5 31v2M34 31v2M36.5 31v2"/>`),

  parrot: `<path class="s-black" stroke-width="7" d="M8 50h44"/><path class="s-brown" stroke-width="3" d="M8 50h44"/>
    <path class="o f-blue" d="M36 42l16 18h-8l-12-14z"/>
    <path class="o f-red" d="M40 44l8 14h-4l-8-11z"/>
    <path class="o f-red" d="M20 22c8-6 20-1 22 11 2 10-3 16-9 16-8 0-14-8-14-16z"/>
    <path class="o f-yellow" d="M30 26c8-1 14 6 14 14l-2 5c-6-3-12-10-12-19z"/>
    <path class="o f-blue" d="M33 34c5 1 10 5 11 9l-2 7c-5-3-9-9-9-16z"/>
    <circle class="o f-red" cx="24" cy="20" r="10"/>
    <ellipse class="f-white" cx="22" cy="20" rx="5" ry="4.5"/>
    <circle class="fk" cx="22.5" cy="19.5" r="1.8"/>
    <path class="o f-white" d="M15 15c-6 0-10 4-10 10 0 3 1 5 3 6 0-4 2-7 6-7 1 0 2 0 3 1z"/>
    <path class="o f-black" d="M14 24c-2 0-4 2-4 4 2 1 5 1 7-1z"/>
    <path class="t-dark" d="M24 46v4M30 47v3"/>`,

  anchor: `<g class="s-black" stroke-width="9.5"><circle cx="32" cy="11" r="5"/><path d="M32 16v40M20 23h24M12 38c1 11 9 18 20 18s19-7 20-18"/></g>
    <g class="o f-blue"><path d="M6 43l6-11 6 10zM46 42l6-10 6 11z"/></g>
    <g class="s-blue" stroke-width="4"><circle cx="32" cy="11" r="5"/><path d="M32 16v40M20 23h24M12 38c1 11 9 18 20 18s19-7 20-18"/></g>
    <circle class="o f-yellow" cx="32" cy="23" r="3"/>`,

  'treasure-map': `<path class="o f-skin" d="M12 12c8 2 14-2 20 0s14 2 20 0v40c-6 2-14-2-20 0s-12 2-20 0z"/>
    <path class="o f-green" d="M33 19c4-2 10-1 11 3 1 3-2 5 0 8-3 2-7 1-9-1-3 0-5-2-4-5 0-2 0-4 2-5z"/>
    <path class="s-red-dark" stroke-width="2.6" stroke-dasharray="0.1 5" d="M17 46c4-6 12-4 14-10s6-8 10-8"/>
    <path class="s-black" stroke-width="7" d="M38 22l7 7M45 22l-7 7"/><path class="s-red" stroke-width="3.5" d="M38 22l7 7M45 22l-7 7"/>
    <rect class="o f-wood" x="5" y="9" width="9" height="46" rx="4.5"/>
    <rect class="o f-wood" x="50" y="9" width="9" height="46" rx="4.5"/>
    <path class="t-dark" d="M9.5 13v38M54.5 13v38"/>`,

  'flag-es': flag(`<path class="f-red" d="${band(13, 55, 10, 19)}"/><path class="f-yellow" d="${band(13, 55, 19, 37)}"/><path class="f-red" d="${band(13, 55, 37, 46)}"/>`),
};
