// Deko-Grafiken für die normalen Kategorien (Wunsch von Eric, 2026-10-20: alle Kategorien im Stil von Grusel,
// mit kleinen Grafiken verstreut über Karte und Kopf der Faktseite). Regeln stehen oben in src/data/fest-art.ts.
// Welche Kategorie welche Grafiken bekommt: CATEGORY_DECO in src/data/holidays.ts.

const n = (v: number) => +v.toFixed(1);

// Zahnrad mit `teeth` Zähnen um die Mitte.
function gear(teeth: number, inner: number, outer: number) {
  const pts: string[] = [];
  const step = (Math.PI * 2) / teeth;
  for (let i = 0; i < teeth; i++) {
    const a = i * step;
    for (const [da, r] of [[0, inner], [0.15, outer], [0.5, outer], [0.65, inner]] as const) {
      const b = a + da * step;
      pts.push(`${n(32 + Math.cos(b) * r)} ${n(32 + Math.sin(b) * r)}`);
    }
  }
  return `M${pts.join('L')}Z`;
}

export const ART: Record<string, string> = {
  flask: `<path class="o f-white" d="M24 6h16M27 6v18L10 52c-2 4 0 8 5 8h34c5 0 7-4 5-8L37 24V6"/>
    <path class="o fa" d="M17 42h30l6 10c1 3 0 6-4 6H15c-4 0-5-3-4-6z"/>
    <circle class="fw" cx="28" cy="34" r="3"/><circle class="fw" cx="36" cy="28" r="2"/>`,

  atom: `<ellipse class="sa" cx="32" cy="32" rx="27" ry="10"/>
    <ellipse class="sb" cx="32" cy="32" rx="27" ry="10" transform="rotate(60 32 32)"/>
    <ellipse class="sa" cx="32" cy="32" rx="27" ry="10" transform="rotate(-60 32 32)"/>
    <circle class="o fa" cx="32" cy="32" r="6"/>`,

  hourglass: `<path class="o f-white" d="M18 12h28c0 12-10 16-10 20s10 8 10 20H18c0-12 10-16 10-20s-10-8-10-20z"/>
    <path class="fa" d="M23 48h18l3 4H20zM27 22h10l-5 6z"/>
    <path class="o f-wood" d="M12 6h40v6H12zM12 52h40v6H12z"/>`,

  gear: `<path class="o f-gray" d="${gear(9, 20, 28)}"/><circle class="o fn" cx="32" cy="32" r="8"/>`,

  bolt: `<path class="o f-yellow" d="M38 4L12 36h16l-4 24 28-34H36z"/>`,

  bone: `<g transform="rotate(-30 32 32)"><path class="o f-white" d="M17 28H47A7 7 0 1 1 51 32A7 7 0 1 1 47 36H17A7 7 0 1 1 13 32A7 7 0 1 1 17 28Z"/></g>`,

  question: `<circle class="o fa" cx="32" cy="32" r="27"/>
    <path class="t-dark-thick" d="M23 25c0-6 4-10 9-10s9 4 9 9c0 7-9 8-9 15v2"/><circle class="fk" cx="32" cy="48" r="3.5"/>`,

  compass: `<circle class="o f-white" cx="32" cy="32" r="26"/>
    <path class="o f-red" d="M32 10l7 22H25z"/><path class="o f-gray" d="M25 32h14l-7 22z"/><circle class="fk" cx="32" cy="32" r="3"/>`,

  bubble: `<path class="o fw" d="M10 10h44a4 4 0 0 1 4 4v26a4 4 0 0 1-4 4H30L18 56V44h-8a4 4 0 0 1-4-4V14a4 4 0 0 1 4-4z"/>
    <circle class="fk" cx="21" cy="27" r="3"/><circle class="fk" cx="32" cy="27" r="3"/><circle class="fk" cx="43" cy="27" r="3"/>`,

  ball: `<circle class="o f-white" cx="32" cy="32" r="25"/>
    <path class="s-red" stroke-width="3" d="M15 14c8 9 8 27 0 36M49 14c-8 9-8 27 0 36"/>`,

  trophy: `<path class="o fnone" d="M18 14H8c0 10 4 14 11 14M46 14h10c0 10-4 14-11 14"/>
    <path class="o fgold" d="M18 8h28v14c0 10-6 16-14 16s-14-6-14-16z"/>
    <path class="o fgold" d="M28 38h8v10h-8z"/><path class="o f-wood" d="M18 48h28v8H18z"/>`,

  bulb: `<path class="o f-yellow" d="M32 4c-11 0-19 8-19 18 0 8 5 12 8 16v6h22v-6c3-4 8-8 8-16 0-10-8-18-19-18z"/>
    <path class="fhighlight" d="M22 20c1-5 4-8 9-9-3 3-5 6-5 10z"/>
    <path class="o f-gray" d="M21 44h22v6H21zM24 50h16v6H24z"/>`,

  film: `<path class="o f-white" d="M8 26h48v30H8z"/>
    <path class="o f-white" d="M6 14l46-8 2 12-46 8z"/>
    <path class="fk" d="M14 13l7 10 6-1-7-10zM28 11l7 10 6-1-7-10zM42 8l7 10 4-1-6-10z"/>`,
};
