// Stand des Adventskalenders im Browser (Wunsch von Eric, 2026-10-21): geöffnete Türchen, gefundene Wichtel und
// gelöste Quiz- und Schätz-Türchen. Kein Konto, alles im localStorage. Jedes geöffnete Türchen hängt eine Kugel an den
// WTF-Baum, jeder gefundene Wichtel eine goldene. Regeln und Termine: src/data/advent.ts.
import { markActive } from './streak';

const KEY = 'wtfact:advent';
type Year = { open: number[]; wichtel: string[]; games: Record<number, boolean> };
type Store = Record<string, Year>;

function load(): Store {
  try { return JSON.parse(localStorage.getItem(KEY) ?? '{}') ?? {}; } catch { return {}; }
}
function save(s: Store) {
  try { localStorage.setItem(KEY, JSON.stringify(s)); } catch { /* privates Fenster: gilt nur für diese Sitzung */ }
}
function year(s: Store, y: number): Year {
  const v = s[y] ?? {};
  return { open: Array.isArray(v.open) ? v.open : [], wichtel: Array.isArray(v.wichtel) ? v.wichtel : [], games: v.games ?? {} };
}

export const adventState = (y: number) => year(load(), y);

/** Türchen als geöffnet merken. Zählt auch für die Serie. */
export function openDoor(y: number, door: number) {
  const s = load();
  const v = year(s, y);
  markActive();
  if (v.open.includes(door)) return false;
  v.open = [...v.open, door].sort((a, b) => a - b);
  s[y] = v;
  save(s);
  dispatchEvent(new Event('wtfact-advent'));
  return true;
}

/** Wichtel des Tages gefunden. */
export function foundWichtel(y: number, day: string) {
  const s = load();
  const v = year(s, y);
  if (v.wichtel.includes(day)) return false;
  v.wichtel = [...v.wichtel, day];
  s[y] = v;
  save(s);
  markActive();
  dispatchEvent(new Event('wtfact-advent'));
  return true;
}

/** Ergebnis eines Quiz- oder Schätz-Türchens (true = gelöst). */
export function saveGame(y: number, door: number, won: boolean) {
  const s = load();
  const v = year(s, y);
  v.games = { ...v.games, [door]: won };
  s[y] = v;
  save(s);
}

/** WTF-Baum auf der Seite einfärben: jedes [data-xtree] mit seinen Kugeln [data-ball="1..24"] und dem Stern. */
export function paintTrees(y: number) {
  const v = adventState(y);
  document.querySelectorAll<SVGElement>('[data-xtree]').forEach((t) => {
    t.querySelectorAll<SVGElement>('[data-ball]').forEach((b) => b.toggleAttribute('data-on', v.open.includes(Number(b.dataset.ball))));
    t.querySelectorAll<SVGElement>('[data-gold]').forEach((b, k) => b.toggleAttribute('data-on', k < v.wichtel.length));
    t.toggleAttribute('data-full', v.open.length >= 24);
  });
  return v;
}
