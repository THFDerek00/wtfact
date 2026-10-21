// Serie, Ränge und Abzeichen (Wunsch von Eric, 2026-10-21). Alles nur im Browser, kein Konto.
// Ein Tag zählt für die Serie, sobald man an ihm einen Fakt liest oder die Tageszahl spielt.
// Andere Teile der Seite (z. B. später ein Adventskalender) melden eine Tagesaktivität mit markActive().
import { berlinDay, addDays, mondayOf } from '../week';

const KEY = 'wtfact:streak';
type Store = { days: string[]; best: number };

function load(): Store {
  try {
    const s = JSON.parse(localStorage.getItem(KEY) ?? '{}');
    return { days: Array.isArray(s.days) ? s.days : [], best: Number(s.best) || 0 };
  } catch {
    return { days: [], best: 0 };
  }
}
function save(s: Store) {
  try { localStorage.setItem(KEY, JSON.stringify(s)); } catch { /* privates Fenster: gilt nur für diese Sitzung */ }
}

/** Zählt einen Tag zur Serie (heute, deutscher Kalendertag). Mehrfach am Tag aufrufen schadet nicht. */
export function markActive(day: string = berlinDay()) {
  const s = load();
  if (s.days.includes(day)) return;
  // 400 Tage reichen für Serie und Wochenansicht
  s.days = [...s.days, day].sort().slice(-400);
  s.best = Math.max(s.best, countBack(new Set(s.days), day));
  save(s);
  dispatchEvent(new Event('wtfact-streak'));
}

function countBack(days: Set<string>, from: string) {
  let n = 0;
  for (let d = from; days.has(d); d = addDays(d, -1)) n++;
  return n;
}

/** Laufende Serie: zählt ab heute, und wenn heute noch nichts war, ab gestern (die Flamme brennt bis Mitternacht). */
export function streakInfo(today: string = berlinDay()) {
  const s = load();
  const days = new Set(s.days);
  const activeToday = days.has(today);
  const current = countBack(days, activeToday ? today : addDays(today, -1));
  const monday = mondayOf(today);
  const week = Array.from({ length: 7 }, (_, k) => {
    const d = addDays(monday, k);
    return { day: d, active: days.has(d), today: d === today, future: d > today };
  });
  return { current, best: Math.max(s.best, current), activeToday, week };
}

/** Ab so vielen gelesenen Fakten gilt ein Rang (Namen in src/i18n/extras.ts, ranks). */
export const RANK_AT = [0, 5, 15, 40, 80, 150];
/** So viele gelesene Fakten aus einer Kategorie geben ein Abzeichen. */
export const BADGE_AT = 5;

export function rankFor(read: number) {
  let i = 0;
  while (i + 1 < RANK_AT.length && read >= RANK_AT[i + 1]) i++;
  const next = RANK_AT[i + 1];
  const from = RANK_AT[i];
  return { index: i, next: next ?? null, toNext: next ? next - read : 0, progress: next ? (read - from) / (next - from) : 1 };
}
