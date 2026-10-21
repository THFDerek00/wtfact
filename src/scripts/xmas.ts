// Weihnachtszeit im Browser (Wunsch von Eric, 2026-10-21): stellt jeden Tag Advent, Kerzen, „Noch X Tage“ und das
// Türchen des Tages richtig ein, auch wenn die Seite seit dem Bauen nicht neu hochgeladen wurde, und legt Schnee auf
// die dunklen Bühnen. Ob Weihnachtszeit ist, setzt schon das kleine Skript im <head> (Base.astro) auf <html>.
import { berlinDay } from '../week';
import { inSeason, adventNo, doorOf, daysToEve } from '../data/advent';

const PREVIEW = 'wtfact:today';

/** Heutiger Tag, für eine Vorschau mit ?vorschau=JJJJ-MM-TT auch ein anderer (gilt bis zum Schließen des Tabs). */
export function xmasToday() {
  try {
    const p = sessionStorage.getItem(PREVIEW);
    if (p && /^\d{4}-\d{2}-\d{2}$/.test(p)) return p;
  } catch { /* kein Speicher: echter Tag */ }
  return berlinDay();
}

/** Ersetzt {n} usw. in einem Text. */
export const fill = (tpl: string, vals: Record<string, string | number>) => tpl.replace(/\{(\w+)\}/g, (_, k) => String(vals[k] ?? ''));

/** Text mit {n} als Zahl in <b> in ein Element schreiben (ohne HTML aus den Daten). */
export function fillBold(el: Element, tpl: string, n: number | string) {
  el.textContent = '';
  tpl.split('{n}').forEach((part, i) => {
    if (i) { const b = document.createElement('b'); b.textContent = String(n); el.append(b); }
    el.append(part);
  });
}

export function applySeason(root: ParentNode = document) {
  const day = xmasToday();
  const on = inSeason(day);
  const html = document.documentElement;
  if (on) html.dataset.season = 'xmas'; else delete html.dataset.season;
  const door = on ? doorOf(day) : 0;
  if (door) html.dataset.door = String(door); else delete html.dataset.door;
  if (!on) return { day, on, door };
  const adv = adventNo(day);
  root.querySelectorAll<HTMLElement>('[data-x-wreath]').forEach((w) => (w.dataset.lit = String(adv)));
  root.querySelectorAll<HTMLElement>('[data-x-advent]').forEach((el) => {
    const tpl = el.closest<HTMLElement>('[data-x-tpl]')?.dataset.xTpl;
    if (tpl) el.textContent = fill(tpl, { n: adv });
  });
  const left = daysToEve(day);
  root.querySelectorAll<HTMLElement>('[data-x-count]').forEach((el) => {
    const t = JSON.parse(el.dataset.xCount!);
    if (left > 1) fillBold(el, t.many, left);
    else el.textContent = left === 1 ? t.one : left === 0 ? t.eve : t.after;
  });
  root.querySelectorAll<HTMLElement>('[data-x-door-no]').forEach((el) => (el.textContent = String(door)));
  // Schnee auf jede dunkle Bühne, einmal
  root.querySelectorAll<HTMLElement>('.fest-sky, .sec--night').forEach((s) => {
    if (s.querySelector(':scope > .x-snow')) return;
    const f = document.createElement('span');
    f.className = 'x-snow';
    f.setAttribute('aria-hidden', 'true');
    s.prepend(f);
  });
  return { day, on, door };
}
