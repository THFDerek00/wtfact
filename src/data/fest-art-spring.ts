// Feiertags-Grafiken, Teil „spring“. Regeln stehen oben in src/data/fest-art.ts.
// Kräftige Linien mit dunklem Rand: erst eine breite dunkle Linie (s-black), darüber die schmalere Farblinie.

const n = (v: number) => +v.toFixed(1);

// Stern mit `points` Zacken um (cx, cy).
function star(cx: number, cy: number, outer: number, inner: number, points = 5, rot = -90) {
  const pts: string[] = [];
  for (let i = 0; i < points * 2; i++) {
    const r = i % 2 ? inner : outer;
    const a = ((rot + (i * 180) / points) * Math.PI) / 180;
    pts.push(`${n(cx + Math.cos(a) * r)} ${n(cy + Math.sin(a) * r)}`);
  }
  return `M${pts.join('L')}Z`;
}

// Blüte mit gewelltem Rand (Radius schwankt mit `petals` Bögen).
function bloom(cx: number, cy: number, r: number, wave: number, petals: number) {
  const pts: string[] = [];
  const steps = petals * 8;
  for (let i = 0; i < steps; i++) {
    const a = (i / steps) * Math.PI * 2;
    const rr = r + wave * Math.abs(Math.cos((a * petals) / 2));
    pts.push(`${n(cx + Math.cos(a) * rr)} ${n(cy + Math.sin(a) * rr)}`);
  }
  return `M${pts.join('L')}Z`;
}

// Linie mit dunklem Rand.
function line(d: string, color: string, w = 4) {
  return `<path class="s-black" stroke-width="${w + 3.5}" d="${d}"/><path class="s-${color}" stroke-width="${w}" d="${d}"/>`;
}

// Fläche aus mehreren Kreisen mit gemeinsamer Außenkontur (Wolke, Baumkrone, Pulver).
function puff(circles: [number, number, number, string?][], fill: string) {
  const back = circles.map(([x, y, r]) => `<circle class="fk" cx="${x}" cy="${y}" r="${r + 1.5}"/>`).join('');
  const front = circles.map(([x, y, r, f]) => `<circle class="${f ?? fill}" cx="${x}" cy="${y}" r="${r}"/>`).join('');
  return back + front;
}

export const ART: Record<string, string> = {
  firecracker: `<g transform="rotate(-15 32 36)">
    ${line('M32 18c0-6 4-9 10-9', 'brown-dark', 2.5)}
    <rect class="o f-red" x="20" y="20" width="24" height="38" rx="3"/>
    <path class="f-red-dark" d="M37 24h5v30h-5z"/>
    <rect class="o f-yellow" x="18" y="17" width="28" height="7" rx="2.5"/>
    <rect class="o f-yellow" x="18" y="51" width="28" height="7" rx="2.5"/>
    <path class="o f-yellow" d="M26 31h12v12H26z" transform="rotate(45 32 37)"/>
    <circle class="o f-red" cx="32" cy="37" r="2.5"/>
    </g>
    <path class="o f-yellow" d="${star(46, 9, 7, 3, 6, -90)}"/>
    <path class="s-yellow" stroke-width="2.5" d="M54 4l3-2M57 12l4 1M38 2l-1-2"/>`,

  'red-envelope': `<rect class="o f-red" x="12" y="6" width="40" height="52" rx="4"/>
    <path class="o f-red-dark" d="M12 10c0-2 2-4 4-4h32c2 0 4 2 4 4v6L32 30 12 16z"/>
    <circle class="o f-yellow" cx="32" cy="31" r="9"/>
    <rect class="o f-red" x="29" y="28" width="6" height="6" rx="1"/>
    <path class="s-yellow" stroke-width="2.5" d="M20 46h24M24 51h16"/>`,

  mask: `<path class="o f-pink" d="M16 26c-7-6-9-14-6-20 5 4 8 11 9 19z"/>
    <path class="o f-yellow" d="M22 23c-3-7-2-15 3-19 3 6 3 13 1 19z"/>
    <path class="o f-sky" d="M12 30c-7-3-10-9-9-15 6 2 10 7 12 13z"/>
    <path class="o f-purple" d="M6 32c0-8 8-12 26-8 18-4 26 0 26 8 0 10-7 17-15 15-5-1-7-6-11-6s-6 5-11 6C13 49 6 42 6 32z"/>
    <path class="s-yellow" stroke-width="2" d="M10 30c4-4 14-4 22-1 8-3 18-3 22 1"/>
    <ellipse class="o fk" cx="20" cy="35" rx="6" ry="4"/><ellipse class="o fk" cx="44" cy="35" rx="6" ry="4"/>`,

  confetti: `${line('M8 18c6-6 10 4 16-2s8-10 14-6', 'pink', 3.5)}
    ${line('M30 50c4-8 12-2 16-8s8-8 12-4', 'sky', 3.5)}
    <rect class="o f-yellow" x="44" y="10" width="10" height="6" rx="1" transform="rotate(30 49 13)"/>
    <rect class="o f-green" x="10" y="34" width="10" height="6" rx="1" transform="rotate(-25 15 37)"/>
    <rect class="o f-purple" x="34" y="26" width="10" height="6" rx="1" transform="rotate(60 39 29)"/>
    <rect class="o f-orange" x="14" y="50" width="9" height="6" rx="1" transform="rotate(15 18 53)"/>
    <path class="o f-red" d="${star(52, 30, 5.5, 2.5, 5, -70)}"/>
    <circle class="o f-sky" cx="26" cy="27" r="3"/><circle class="o f-pink" cx="54" cy="52" r="3"/>
    <circle class="o f-yellow" cx="6" cy="56" r="2.5"/>`,

  heart: `<path class="o f-red" d="M32 56C14 44 6 33 6 22c0-8 6-14 13-14 6 0 10 3 13 8 3-5 7-8 13-8 7 0 13 6 13 14 0 11-8 22-26 34z"/>
    <path class="f-white" d="M14 18c1-4 4-5 7-5 1 0 1 2 0 2-3 1-4 2-5 5-1 1-2 0-2-2z"/>`,

  rose: `${line('M32 34c0 10 0 16-1 24', 'green', 4)}
    <path class="o f-green" d="M31 48c-3-6-10-9-18-7 3 7 10 9 18 7z"/>
    <path class="o f-green" d="M32 42c3-5 9-7 15-5-2 6-9 8-15 5z"/>
    <path class="o f-red" d="M16 14c4 2 8 1 10-3 3 3 9 3 12 0 2 4 6 5 10 3 2 12-4 24-16 24S14 26 16 14z"/>
    <path class="o f-red" d="M22 18c3-6 7-8 10-8s7 2 10 8c-2 5-6 7-10 7s-8-2-10-7z"/>
    <path class="t-dark" d="M32 16c-3 0-5 2-4 4s4 2 6 0M20 26c3 4 7 6 12 6s9-2 12-6"/>`,

  'love-letter': `<rect class="o f-white" x="6" y="14" width="52" height="38" rx="4"/>
    <path class="t-dark" d="M8 50l18-16M56 50L38 34"/>
    <path class="o f-white" d="M6 18c0-2 2-4 4-4h44c2 0 4 2 4 4L32 38z"/>
    <path class="o f-red" d="M32 47c-8-5-11-9-11-13 0-3 2-6 5-6 3 0 5 2 6 4 1-2 3-4 6-4 3 0 5 3 5 6 0 4-3 8-11 13z"/>`,

  pi: `${line('M10 18c2-4 6-6 10-6h34', 'blue', 9)}
    ${line('M24 13c0 18-2 30-10 41', 'blue', 9)}
    ${line('M42 13v32c0 7 3 10 10 8', 'blue', 9)}`,

  rainbow: `<path class="s-black" stroke-width="26" stroke-linecap="butt" d="M14.3 46a17.7 17.7 0 0 1 35.4 0"/>
    <path class="s-red" stroke-width="5.5" stroke-linecap="butt" d="M6 46a26 26 0 0 1 52 0"/>
    <path class="s-yellow" stroke-width="5.5" stroke-linecap="butt" d="M11.5 46a20.5 20.5 0 0 1 41 0"/>
    <path class="s-green" stroke-width="5.5" stroke-linecap="butt" d="M17 46a15 15 0 0 1 30 0"/>
    <path class="s-blue" stroke-width="5.5" stroke-linecap="butt" d="M22.5 46a9.5 9.5 0 0 1 19 0"/>
    ${puff([[6, 48, 5], [12, 44, 6], [18, 48, 5], [12, 51, 4]], 'f-white')}
    ${puff([[46, 48, 5], [52, 44, 6], [58, 48, 5], [52, 51, 4]], 'f-white')}`,

  'gold-coin': `<circle class="o f-orange" cx="34" cy="34" r="24"/>
    <circle class="o f-yellow" cx="30" cy="30" r="24"/>
    <circle class="s-orange" stroke-width="3" cx="30" cy="30" r="17"/>
    <path class="o f-orange" d="${star(30, 30, 10, 4.5)}"/>
    <path class="f-white" d="M14 24c2-6 6-10 12-12 2 0 2 2 0 3-5 2-8 5-9 10-1 2-3 1-3-1z"/>`,

  'leprechaun-hat': `<ellipse class="o f-green-dark" cx="32" cy="50" rx="27" ry="8"/>
    <path class="o f-green" d="M17 49L20 10c8-3 16-3 24 0l3 39c-10 4-20 4-30 0z"/>
    <path class="o fk" d="M18.6 33c9 3 18 3 26.8 0l.9 10c-9 3-19 3-28.6 0z"/>
    <rect class="o f-yellow" x="26" y="31" width="12" height="13" rx="2"/>
    <rect class="o fk" x="30" y="35" width="4" height="5" rx="1"/>
    <path class="f-white" d="M24 14c1 5 1 12 0 16"/>`,

  'color-powder': `${puff(
    [
      [18, 42, 11, 'f-purple'], [46, 40, 12, 'f-yellow'], [30, 22, 12, 'f-pink'], [44, 22, 8, 'f-purple'],
      [20, 26, 8, 'f-pink'], [32, 42, 11, 'f-orange'], [10, 34, 5, 'f-purple'], [54, 30, 5, 'f-yellow'],
      [26, 52, 6, 'f-pink'], [40, 52, 6, 'f-orange'],
    ],
    'f-pink',
  )}
    <circle class="f-white" cx="27" cy="18" r="3" opacity=".6"/>
    <circle class="o f-pink" cx="6" cy="50" r="2.5"/><circle class="o f-yellow" cx="58" cy="54" r="2.5"/>
    <circle class="o f-purple" cx="56" cy="12" r="2.5"/><circle class="o f-orange" cx="10" cy="12" r="2"/>
    <circle class="o f-yellow" cx="38" cy="5" r="2"/>`,

  chick: `<path class="o f-white" d="M24 16l4-4 4 4 4-4 4 4c0-4-3-9-8-9s-8 4-8 9z" transform="rotate(-12 32 10)"/>
    <circle class="o f-yellow" cx="32" cy="28" r="14"/>
    <path class="o f-yellow" d="M18 34c-6-2-9 1-9 4 4 1 7 0 9-2z"/>
    <path class="o f-yellow" d="M46 34c6-2 9 1 9 4-4 1-7 0-9-2z"/>
    <circle class="fk" cx="27" cy="25" r="2.2"/><circle class="fk" cx="37" cy="25" r="2.2"/>
    <path class="o f-orange" d="M29 30h6l-3 4z"/>
    <circle class="f-pink" cx="23" cy="31" r="2"/><circle class="f-pink" cx="41" cy="31" r="2"/>
    <path class="o f-white" d="M12 38l5-5 5 5 5-5 5 5 5-5 5 5 5-5 5 5c0 12-9 20-20 20S12 50 12 38z"/>`,

  egg: `<defs><clipPath id="sp-egg"><path d="M32 6c12 0 22 18 22 33 0 13-10 19-22 19S10 52 10 39C10 24 20 6 32 6z"/></clipPath></defs>
    <path class="f-sky" d="M32 6c12 0 22 18 22 33 0 13-10 19-22 19S10 52 10 39C10 24 20 6 32 6z"/>
    <g clip-path="url(#sp-egg)">
      <path class="f-pink" d="M4 22h56v8H4z"/>
      <path class="f-yellow t-dark" d="M4 38l6-5 6 5 6-5 6 5 6-5 6 5 6-5 6 5 6-5v10l-6 5-6-5-6 5-6-5-6 5-6-5-6 5-6-5-6 5z"/>
      <circle class="f-white" cx="22" cy="15" r="2.2"/><circle class="f-white" cx="42" cy="15" r="2.2"/><circle class="f-white" cx="32" cy="12" r="2.2"/>
      <circle class="f-purple" cx="20" cy="52" r="2.2"/><circle class="f-purple" cx="32" cy="54" r="2.2"/><circle class="f-purple" cx="44" cy="52" r="2.2"/>
      <path class="t-dark" d="M0 22h64M0 30h64"/>
    </g>
    <path class="o fnone" d="M32 6c12 0 22 18 22 33 0 13-10 19-22 19S10 52 10 39C10 24 20 6 32 6z"/>`,

  tulip: `${line('M32 40v20', 'green', 4)}
    <path class="o f-green" d="M31 58c-2-10-8-16-18-18 0 10 8 18 18 18z"/>
    <path class="o f-green" d="M33 56c1-8 6-13 14-14 0 8-6 14-14 14z"/>
    <path class="o f-red" d="M18 12l8 8 6-14 6 14 8-8v16c0 9-6 14-14 14s-14-5-14-14z"/>
    <path class="t-dark" d="M26 20c0 10 2 16 6 22M38 20c0 10-2 16-6 22"/>`,

  'jester-hat': `<path class="o f-purple" d="M15 46C13 34 11 26 8 20c9 1 16 8 20 26z"/>
    <path class="o f-green" d="M49 46c2-12 4-20 7-26-9 1-16 8-20 26z"/>
    <path class="o f-red" d="M22 46c0-14 4-28 10-38 6 10 10 24 10 38z"/>
    <rect class="o f-yellow" x="12" y="44" width="40" height="10" rx="3"/>
    <path class="t-dark" d="M20 44v10M28 44v10M36 44v10M44 44v10"/>
    <circle class="o f-yellow" cx="8" cy="20" r="4"/><circle class="o f-yellow" cx="32" cy="8" r="4"/><circle class="o f-yellow" cx="56" cy="20" r="4"/>`,

  fish: `<path class="o f-orange" d="M16 32L5 21v22z"/>
    <path class="o f-sky" d="M14 32c6-10 14-15 24-15 10 0 17 7 20 15-3 8-10 15-20 15-10 0-18-5-24-15z"/>
    <path class="t-dark" d="M44 20c-3 7-3 17 0 24"/>
    <path class="t-dark" d="M24 28l4 4-4 4M32 26l4 6-4 6"/>
    <circle class="fk" cx="50" cy="29" r="2.4"/>
    <path class="t-dark" d="M58 33c-2 1-4 1-5 0"/>
    <rect class="o f-yellow" x="30" y="6" width="8" height="14" rx="1" transform="rotate(20 34 13)"/>`,

  globe: `<defs><clipPath id="sp-globe"><circle cx="32" cy="32" r="25"/></clipPath></defs>
    <circle class="f-blue" cx="32" cy="32" r="25"/>
    <g clip-path="url(#sp-globe)">
      <path class="f-green t-dark" d="M10 16c6-4 12-4 16 0 4 3 2 8-2 9-4 1-4 5-1 8 4 3 4 8 0 11-3 2-4 6-3 10-6-2-12-8-14-14-2-8 0-17 4-24z"/>
      <path class="f-green t-dark" d="M36 10c5-1 10 1 14 4-2 3-6 2-8 5-2 2 0 5 3 5 4 0 8 2 9 6 1 6-3 10-8 10-3 0-4 4-6 8-2 3-6 2-6-2 0-5 2-9-1-12-3-4-1-9 2-11-2-4-3-9 1-13z"/>
    </g>
    <circle class="o fnone" cx="32" cy="32" r="25"/>`,

  sprout: `${line('M32 50V28', 'green', 4)}
    <path class="o f-green" d="M32 32c-2-10-10-16-22-14 2 10 10 16 22 14z"/>
    <path class="o f-green" d="M32 28c2-12 12-18 24-16-2 12-12 18-24 16z"/>
    <path class="t-dark" d="M30 31c-5-2-10-6-13-9M34 27c5-3 10-7 14-11"/>
    <path class="o f-brown" d="M6 58c3-9 13-13 26-13s23 4 26 13z"/>
    <circle class="f-brown-dark" cx="20" cy="53" r="1.6"/><circle class="f-brown-dark" cx="40" cy="52" r="1.6"/><circle class="f-brown-dark" cx="30" cy="55" r="1.4"/>`,

  tree: `<path class="o f-brown" d="M28 36h8l1 22H27z"/>
    ${puff([[32, 18, 13], [20, 28, 11], [44, 28, 11], [32, 36, 10], [24, 38, 7], [40, 38, 7]], 'f-green')}
    <circle class="f-green-dark" cx="24" cy="26" r="3"/><circle class="f-green-dark" cx="40" cy="20" r="3"/>
    <circle class="f-green-dark" cx="38" cy="34" r="2.5"/><circle class="f-green-dark" cx="28" cy="14" r="2"/>`,

  bee: `<ellipse class="o f-white" cx="24" cy="18" rx="8" ry="11" transform="rotate(-25 24 18)"/>
    <ellipse class="o f-white" cx="36" cy="16" rx="7" ry="10" transform="rotate(20 36 16)"/>
    <defs><clipPath id="sp-bee"><ellipse cx="30" cy="38" rx="20" ry="14"/></clipPath></defs>
    <ellipse class="f-yellow" cx="30" cy="38" rx="20" ry="14"/>
    <g clip-path="url(#sp-bee)"><path class="fk" d="M18 20h7v40h-7zM31 20h7v40h-7z"/></g>
    <path class="o fk" d="M10 38l-6 2 6 2z"/>
    <ellipse class="o fnone" cx="30" cy="38" rx="20" ry="14"/>
    <circle class="o fk" cx="51" cy="36" r="8"/>
    <circle class="f-white" cx="53" cy="34" r="2.2"/>
    <path class="t-dark" d="M50 28c0-5 2-8 5-9M54 29c2-4 5-6 8-5"/>`,

  bike: `<circle class="s-black" stroke-width="6" cx="16" cy="42" r="11"/>
    <circle class="s-black" stroke-width="6" cx="48" cy="42" r="11"/>
    <circle class="s-gray" stroke-width="1.5" cx="16" cy="42" r="7"/><circle class="s-gray" stroke-width="1.5" cx="48" cy="42" r="7"/>
    ${line('M16 42l14 0 14-16H25l5 16M16 42l9-16M44 26l4 16', 'red', 3.5)}
    ${line('M42 26l-1-7h6', 'gray', 3)}
    ${line('M21 22h8', 'black', 3)}
    <circle class="o f-yellow" cx="30" cy="42" r="3.5"/>
    <circle class="fk" cx="16" cy="42" r="2"/><circle class="fk" cx="48" cy="42" r="2"/>`,

  broom: `${line('M58 6L28 36', 'brown', 4.5)}
    <path class="o f-yellow" d="M28 30l6 6c-2 8-8 16-18 22-4-2-6-4-8-8-2-2-4-3-6-5C8 36 16 30 28 30z"/>
    <path class="t-dark" d="M26 36c-4 6-8 10-14 14M30 38c-4 6-8 12-12 16M22 34c-6 4-10 8-14 10"/>
    <path class="o f-red" d="M25 30l5-5 9 9-5 5z"/>`,

  flame: `<path class="o f-orange" d="M32 4c4 10 18 16 18 32 0 13-8 22-18 22S14 49 14 37c0-8 3-13 8-17 0 6 2 9 5 10-2-10 1-18 5-26z"/>
    <path class="o f-yellow" d="M32 28c2 7 10 10 10 18 0 7-4 11-10 11s-10-4-10-10c0-5 3-8 6-10 0 3 1 5 3 6-1-5-1-10 1-15z"/>`,

  'black-cat': `${line('M44 54c10 0 15-6 12-16', 'black', 4.5)}
    <path class="o f-black" d="M14 58c0-14 7-24 18-24s18 10 18 24z"/>
    <path class="o f-black" d="M18 28L16 6l10 9c4-1 8-1 12 0l10-9-2 22c0 9-6 13-14 13s-14-4-14-13z"/>
    <ellipse class="f-yellow" cx="26" cy="25" rx="3.5" ry="4"/><ellipse class="f-yellow" cx="38" cy="25" rx="3.5" ry="4"/>
    <path class="fk" d="M26 22v6M38 22v6" />
    <path class="s-black" stroke-width="1.6" d="M26 21.5v7M38 21.5v7"/>
    <path class="f-pink" d="M30 31h4l-2 2.5z"/>
    <path class="t-white" stroke-width="1.2" d="M20 32l-8-1M20 34l-8 2M44 32l8-1M44 34l8 2"/>`,

  planet: `<g transform="rotate(-20 32 32)">${line('M4 32a28 9 0 0 1 56 0', 'yellow', 4)}</g>
    <circle class="o f-orange" cx="32" cy="32" r="17"/>
    <path class="s-red-dark" stroke-width="2.5" d="M17 26c8 3 22 3 30-2M16 36c10 3 22 2 32-2"/>
    <circle class="f-white" cx="25" cy="22" r="2.5"/>
    <circle class="o fnone" cx="32" cy="32" r="17"/>
    <g transform="rotate(-20 32 32)">${line('M60 32a28 9 0 0 1-56 0', 'yellow', 4)}</g>`,

  rocket: `<g transform="rotate(35 32 32)">
    <path class="o f-orange" d="M24 46h16c0 8-4 13-8 16-4-3-8-8-8-16z"/>
    <path class="o f-yellow" d="M27 46h10c0 5-2 8-5 10-3-2-5-5-5-10z"/>
    <path class="o f-red" d="M22 34l-8 8v8l9-5zM42 34l8 8v8l-9-5z"/>
    <path class="o f-white" d="M32 2c10 8 13 22 10 46H22C19 24 22 10 32 2z"/>
    <path class="o f-red" d="M32 2c5 4 8 9 9 14H23c1-5 4-10 9-14z"/>
    <circle class="o f-sky" cx="32" cy="27" r="5.5"/>
    <path class="o f-red" d="M30 34h4v16h-4z"/>
    </g>`,

  pinata: `<defs><clipPath id="sp-pinata"><path d="M10 28h24V14l1-10 4 8h2l3-9 2 9h4c4 0 7 3 7 6s-3 6-7 6h-4v34h-6V46h-2v12h-5V46h-9v12h-5V46h-2v12h-6V46h-1z"/></clipPath></defs>
    ${line('M10 31c-4 2-6 6-6 11', 'pink', 3.5)}
    <path class="f-pink" d="M10 28h24V14l1-10 4 8h2l3-9 2 9h4c4 0 7 3 7 6s-3 6-7 6h-4v34h-6V46h-2v12h-5V46h-9v12h-5V46h-2v12h-6V46h-1z"/>
    <g clip-path="url(#sp-pinata)">
      <path class="f-yellow" d="M0 12h64v6H0z"/><path class="f-sky" d="M0 18h64v6H0z"/>
      <path class="f-yellow" d="M0 30h64v6H0z"/><path class="f-green" d="M0 36h64v6H0z"/>
      <path class="f-sky" d="M0 42h64v6H0z"/><path class="f-purple" d="M0 48h64v12H0z"/>
      <path class="t-dark" stroke-width="1.5" d="M0 12h64M0 18h64M0 24h64M0 30h64M0 36h64M0 42h64M0 48h64"/>
    </g>
    <path class="o fnone" d="M10 28h24V14l1-10 4 8h2l3-9 2 9h4c4 0 7 3 7 6s-3 6-7 6h-4v34h-6V46h-2v12h-5V46h-9v12h-5V46h-2v12h-6V46h-1z"/>
    <circle class="fk" cx="47" cy="16" r="2"/>`,

  taco: `<g transform="rotate(-8 32 34)">
    <path class="o f-green" d="M6 40c0 8 4 13 9 11 2 5 7 5 9 1 3 4 8 4 10 0 3 4 8 4 10 0 3 3 7 2 8-2 4 1 7-3 7-10z"/>
    <path class="o f-brown" d="M10 40c1 5 5 7 9 5 3 4 7 4 10 0 3 4 7 4 10 0 3 3 7 3 9-1 3 1 6-1 6-4z"/>
    <circle class="o f-red" cx="20" cy="46" r="4.5"/><circle class="o f-red" cx="40" cy="47" r="4.5"/><circle class="o f-red" cx="30" cy="49" r="3.5"/>
    <path class="o f-yellow" d="M4 40a28 26 0 0 1 56 0z"/>
    <path class="s-orange" stroke-width="2.5" d="M12 35a20 18 0 0 1 40 0"/>
    <circle class="f-orange" cx="22" cy="24" r="2"/><circle class="f-orange" cx="34" cy="20" r="2"/>
    <circle class="f-orange" cx="44" cy="26" r="2"/><circle class="f-orange" cx="28" cy="29" r="1.6"/>
    </g>`,

  chili: `${line('M14 14c-2-4-1-8 3-10', 'green', 3.5)}
    <path class="o f-red" d="M12 20c10-4 20 0 26 10 6 10 10 18 20 22-12 8-30 4-38-8-5-8-8-16-8-24z"/>
    <path class="o f-green" d="M8 18c2-5 8-7 12-4 2 2 2 6 0 8-4-3-8-2-12-4z"/>
    <path class="s-white" stroke-width="2.5" d="M20 26c2 8 6 14 12 18"/>`,

  bouquet: `${line('M32 44L20 24M32 44l12-20M32 44V20', 'green', 3)}
    <path class="o f-green" d="M18 32c-8-2-12-8-12-14 8 2 12 8 12 14z"/>
    <path class="o f-green" d="M46 32c8-2 12-8 12-14-8 2-12 8-12 14z"/>
    <path class="o f-pink" d="${bloom(19, 22, 7, 3, 5)}"/><circle class="o f-yellow" cx="19" cy="22" r="3"/>
    <path class="o f-purple" d="${bloom(45, 22, 7, 3, 5)}"/><circle class="o f-yellow" cx="45" cy="22" r="3"/>
    <path class="o f-red" d="${bloom(32, 13, 8, 3, 6)}"/><circle class="o f-yellow" cx="32" cy="13" r="3.2"/>
    <path class="o f-sky" d="M14 30h36L38 60H26z"/>
    <path class="t-dark" d="M24 30l4 30M40 30l-4 30"/>
    <path class="o f-red" d="M32 44c-5-6-13-6-13-1s8 5 13 1zM32 44c5-6 13-6 13-1s-8 5-13 1z"/>
    <path class="o f-red" d="M31 45l-4 9M33 45l4 9"/>
    <circle class="o f-red" cx="32" cy="44" r="3"/>`,
};
