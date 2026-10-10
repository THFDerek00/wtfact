// Browser-Teil der Mitmach-Spiele (Wunsch von Eric, 2026-10-10):
//   wof    Wahr oder Fake?        pick 1 = wahr, 0 = Fake
//   first  Was war zuerst?        pick 0 = a, 1 = b
//   guess  Schätzfrage (Faktseite) pick = Index der Antwort (0 bis 2), id = Fakt
//   baro   WTF-Barometer (Faktseite) pick = 0 bis 10, id = Fakt
// Server: POST /api/index.php?r=answer und GET ?r=quiz&game=… (public/api/index.php). Ohne Server zählt nur dieser Browser.
import { myVoter, callApi } from './community';

export type Game = 'wof' | 'first' | 'guess' | 'baro';
export type Tally = Record<string, number>; // pick -> Anzahl

const KEY = 'wtfact:quiz';
type Store = Record<Game, Record<string, number>>;
const empty = (): Store => ({ wof: {}, first: {}, guess: {}, baro: {} });

function load(): Store {
  try {
    return { ...empty(), ...JSON.parse(localStorage.getItem(KEY) ?? '{}') };
  } catch {
    return empty();
  }
}
function save(s: Store) {
  try {
    localStorage.setItem(KEY, JSON.stringify(s));
  } catch {
    /* privates Fenster */
  }
}

/** Eigene Antwort zu einer Frage, oder undefined. */
export const myAnswer = (game: Game, id: string) => load()[game][id] as number | undefined;
/** Alle eigenen Antworten eines Spiels. */
export const myAnswers = (game: Game) => load()[game];

/** Antwort speichern und an den Server schicken. Ergebnis: Zählung aller Besucher, oder null ohne Server. */
export async function answer(game: Game, id: string, pick: number): Promise<Tally | null> {
  const s = load();
  s[game][id] = pick;
  save(s);
  const r = await callApi<{ counts: Tally }>('answer', { voter: myVoter(), game, id, pick });
  return r.ok ? r.data.counts : null;
}

/** Zählungen aller Fragen eines Spiels (id -> pick -> Anzahl), oder null ohne Server. Für Faktseiten mit `id` nur diese eine. */
export async function tallies(game: Game, id?: string): Promise<Record<string, Tally> | null> {
  const r = await callApi<Record<string, Tally>>(`quiz&game=${game}${id ? `&id=${encodeURIComponent(id)}` : ''}`);
  return r.ok ? r.data : null;
}

/** Zählung nur aus diesem Browser (die eigene Antwort), wenn der Server fehlt. */
export function localTally(game: Game, id: string): Tally {
  const mine = myAnswer(game, id);
  return mine === undefined ? {} : { [mine]: 1 };
}

export const total = (t: Tally = {}) => Object.values(t).reduce((a, b) => a + b, 0);
export const share = (t: Tally = {}, pick: number) => (total(t) ? Math.round(((t[pick] ?? 0) / total(t)) * 100) : 0);

/** Jahr eines Ereignisses für „Was war zuerst?“ als Text. */
export function yearText(year: number, approx: boolean | undefined, t: { about: string; bc: string; mya: string }, lang: string) {
  if (Math.abs(year) >= 100000) {
    const mio = (Math.abs(year) / 1e6).toLocaleString(lang, { maximumFractionDigits: 1 });
    return t.mya.replace('§', mio);
  }
  const y = year < 0 ? `${-year} ${t.bc}` : String(year);
  return approx ? `${t.about} ${y}` : y;
}
