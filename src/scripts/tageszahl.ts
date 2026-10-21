// Tageszahl (Wunsch von Eric, 2026-10-21): ein Zahlenrätsel pro Tag wie Wordle. Die Lücke stammt aus einem echten
// Fakt (guessFor in src/lib.ts). Sechs Versuche, nach jedem Tipp „höher“ oder „tiefer“.
// Die Regeln hier sind bewusst getrennt von der Seite, damit andere Teile (z. B. Schätz-Türchen) sie wiederverwenden.
import { berlinDay, daysBetween } from '../week';

/** Erster Tag der Tageszahl, er ist Nummer 1. */
export const START_DAY = '2026-10-21';
export const MAX_TRIES = 6;

export type Candidate = { key: string; day: string; before: string; after: string; answer: string; value: number; year: boolean; url: string; title: string; emoji: string };
export type Verdict = 'hit' | 'up' | 'down';
export type DayState = { guesses: number[]; done: boolean; won: boolean };

export const puzzleNo = (day: string = berlinDay()) => Math.max(1, daysBetween(START_DAY, day) + 1);

/** Kleiner, fester Mischer: gleicher Tag = gleiche Zahl, auf jedem Gerät. */
function hash(s: string) {
  let h = 2166136261;
  for (const c of s) h = Math.imul(h ^ c.charCodeAt(0), 16777619) >>> 0;
  return h;
}

/**
 * Fakt für einen Tag. Nur Fakten, die vor diesem Tag erschienen sind, damit sich die Auswahl nicht ändert,
 * wenn die Seite am selben Tag neu gebaut wird. Die Liste ist nach Schlüssel sortiert.
 */
export function pickFor(cands: Candidate[], day: string = berlinDay()) {
  const pool = cands.filter((c) => c.day < day).sort((a, b) => (a.key < b.key ? -1 : 1));
  if (!pool.length) return undefined;
  return pool[hash(`tageszahl:${day}`) % pool.length];
}

/** Zahl aus der Eingabe lesen: „28.000“ und „1,5“ auf Deutsch, „28,000“ und „1.5“ auf Englisch. */
export function parseGuess(raw: string, lang: string) {
  let s = raw.trim().replace(/\s/g, '');
  s = lang === 'de' ? s.replace(/\.(?=\d{3}\b)/g, '').replace(',', '.') : s.replace(/,(?=\d{3}\b)/g, '');
  if (!/^-?\d+(\.\d+)?$/.test(s)) return null;
  return Number(s);
}

/** Toleranz: genaue Zahl, bei großen Zahlen 5 Prozent. Jahreszahlen und kleine Zahlen müssen genau stimmen. */
const tolerance = (value: number, year: boolean) => (year || Math.abs(value) < 20 ? 0 : Math.abs(value) * 0.05);

export function judge(guess: number, value: number, year: boolean): { verdict: Verdict; hot: boolean } {
  if (Math.abs(guess - value) <= tolerance(value, year) + 1e-9) return { verdict: 'hit', hot: true };
  const hot = year ? Math.abs(guess - value) <= 10 : Math.abs(guess - value) <= Math.abs(value) * 0.25;
  return { verdict: guess < value ? 'up' : 'down', hot };
}

/** Zeile zum Teilen, ohne die Lösung zu verraten. */
export function shareLine(no: number, name: string, guesses: number[], value: number, year: boolean, won: boolean, url: string) {
  const arrows = guesses.map((g) => ({ hit: '✅', up: '⬆️', down: '⬇️' })[judge(g, value, year).verdict]).join('');
  return `WTFact ${name} #${no} 🎯 ${won ? guesses.length : 'X'}/${MAX_TRIES}\n${arrows}\n${url}`;
}

// ---------- Speichern ----------

const KEY = 'wtfact:tageszahl';
type Store = Record<string, DayState>;

function load(): Store {
  try { return JSON.parse(localStorage.getItem(KEY) ?? '{}') as Store; } catch { return {}; }
}
export const stateFor = (day: string = berlinDay()): DayState => load()[day] ?? { guesses: [], done: false, won: false };
export function saveState(day: string, st: DayState) {
  const s = load();
  s[day] = st;
  // Nur die letzten 120 Tage behalten
  const keep = Object.keys(s).sort().slice(-120);
  try { localStorage.setItem(KEY, JSON.stringify(Object.fromEntries(keep.map((k) => [k, s[k]])))); } catch { /* privates Fenster */ }
}
export function stats() {
  const all = Object.values(load()).filter((s) => s.done);
  return { played: all.length, won: all.filter((s) => s.won).length };
}
