// Browser-Teil für Wisch-Bewertungen, Montags-Abstimmung und Fakt der Woche.
// Spricht mit /api (Cloudflare, siehe src/server/community.ts). Ist das nicht erreichbar
// (lokal, in der Vorschau oder bevor die Datenbank eingerichtet ist), läuft alles nur in diesem
// Browser weiter: Bewertungen und die eigene Stimme bleiben gespeichert, Ergebnisse zählen dann
// nur die eigene Stimme.
import { weekState, berlinDay, type Verdict } from '../week';

const KEY = 'wtfact:community';
type Store = { voter?: string; ratings: Record<string, Verdict>; votes: Record<string, string> };

export type Counts = { id: string; counts: Record<string, number>; total: number };
export type Week = ReturnType<typeof weekState> & {
  featured: { poll: string; key: string; votes: number; total: number } | null;
  poll: Counts | null;
  /** false = keine Verbindung zum Server, alles nur in diesem Browser */
  shared: boolean;
};

function load(): Store {
  try {
    const s = JSON.parse(localStorage.getItem(KEY) ?? '{}');
    return { ratings: {}, votes: {}, ...s };
  } catch {
    return { ratings: {}, votes: {} };
  }
}
function save(s: Store) {
  try {
    localStorage.setItem(KEY, JSON.stringify(s));
  } catch {
    /* privates Fenster: gilt dann nur für diese Sitzung */
  }
}
// Zufällige Kennung, erst beim ersten Bewerten oder Abstimmen angelegt. Damit zählt jede Stimme einmal.
function voterId(s: Store) {
  if (!s.voter) {
    const b = crypto.getRandomValues(new Uint8Array(16));
    b[6] = (b[6] & 0x0f) | 0x40;
    b[8] = (b[8] & 0x3f) | 0x80;
    const h = [...b].map((x) => x.toString(16).padStart(2, '0')).join('');
    s.voter = `${h.slice(0, 8)}-${h.slice(8, 12)}-${h.slice(12, 16)}-${h.slice(16, 20)}-${h.slice(20)}`;
    save(s);
  }
  return s.voter;
}

let offline = false;
async function api<T>(path: string, payload?: unknown): Promise<{ ok: true; data: T } | { ok: false; status: number }> {
  if (offline) return { ok: false, status: 0 };
  try {
    const r = await fetch(`/api/${path}`, payload
      ? { method: 'POST', headers: { 'content-type': 'application/json' }, body: JSON.stringify(payload) }
      : { cache: 'no-store' });
    if (r.status === 404 || r.status === 503 || r.status === 405 || !r.headers.get('content-type')?.includes('json')) {
      offline = true;
      return { ok: false, status: r.status };
    }
    if (!r.ok) return { ok: false, status: r.status };
    return { ok: true, data: (await r.json()) as T };
  } catch {
    offline = true;
    return { ok: false, status: 0 };
  }
}

export const myRating = (key: string) => load().ratings[key];
export const myVote = (poll: string) => load().votes[poll];

/** Bewertung speichern. Antwort: Zähler aller Besucher, oder null ohne Server. */
export async function rate(key: string, verdict: Verdict) {
  const s = load();
  s.ratings[key] = verdict;
  save(s);
  const r = await api<{ like: number; meh: number }>('rate', { voter: voterId(s), key, verdict });
  return r.ok ? r.data : null;
}

export function forgetRatings(keys: string[]) {
  const s = load();
  keys.forEach((k) => delete s.ratings[k]);
  save(s);
}

/** Ergebnis nur aus diesem Browser: die eigene Stimme. */
function localCounts(poll: string): Counts {
  const mine = myVote(poll);
  return { id: poll, counts: mine ? { [mine]: 1 } : {}, total: mine ? 1 : 0 };
}

export async function week(): Promise<Week> {
  const r = await api<Omit<Week, 'shared'>>('week');
  if (r.ok) return { ...r.data, shared: true };
  const state = weekState(berlinDay());
  const mine = myVote(state.featuredPoll);
  return {
    ...state,
    featured: mine ? { poll: state.featuredPoll, key: mine, votes: 1, total: 1 } : null,
    poll: state.openPoll ? localCounts(state.openPoll) : null,
    shared: false,
  };
}

export async function vote(poll: string, key: string): Promise<Counts | 'closed'> {
  const s = load();
  s.votes[poll] = key;
  save(s);
  const r = await api<Counts>('vote', { voter: voterId(s), poll, key });
  if (r.ok) return r.data;
  if (r.status === 409) return 'closed';
  return localCounts(poll);
}
