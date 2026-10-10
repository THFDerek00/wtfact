// Browser-Teil der WTF-Charts (Fakt des Tages, Fakt der Woche, Verlauf, Tippspiel, Sammelalbum).
// Gemeinsame Zahlen kommen von der PHP-API (public/api/index.php). Ohne Server rechnet alles mit den
// eigenen Bewertungen und Stimmen aus diesem Browser, genau wie die Abstimmung (src/scripts/community.ts).
import { week, myRatings, myVote, type Week } from './community';
import { addDays, lastDays, pastPolls, pickFactOfDay, type DayPick, type FactMeta, type WeekPick } from '../week';

/** Wie der Fakt des Tages entschieden wurde: alle Bewertungen, nur die eigenen oder per Los. */
export type DailyMode = 'shared' | 'local' | 'lucky';
export type Current = { state: Week; daily: (DayPick & { mode: DailyMode }) | null; featured: Week['featured'] };

/** Fakt des Tages und Fakt der Woche für heute. `facts` = alle Fakten (Schlüssel und Tag). */
export async function current(facts: FactMeta[]): Promise<Current> {
  const state = await week();
  let daily: Current['daily'] = null;
  if (state.shared) {
    const d = state.daily;
    if (d) daily = { ...d, mode: d.like + d.meh > 0 ? 'shared' : 'lucky' };
  } else {
    const mine = myRatings();
    const p = pickFactOfDay(facts, mine, state.today);
    if (p) {
      const rated = facts.some((f) => f.date === p.day && mine[f.key]);
      daily = { ...p, ...(mine[p.key] ?? { like: 0, meh: 0 }), mode: rated ? 'local' : 'lucky' };
    }
  }
  return { state, daily, featured: state.featured };
}

export type History = { days: DayPick[]; weeks: WeekPick[]; shared: boolean };

/** Verlauf: Fakten des Tages der letzten 30 Tage und Fakten der Woche der letzten 12 Abstimmungen, neueste zuerst. */
export async function history(facts: FactMeta[], today: string, shared: boolean): Promise<History> {
  if (shared) {
    try {
      const r = await fetch('/api/index.php?r=history');
      if (r.ok && r.headers.get('content-type')?.includes('json')) {
        const data = (await r.json()) as Omit<History, 'shared'>;
        return { days: data.days, weeks: data.weeks, shared: true };
      }
    } catch {
      /* dann wie ohne Server */
    }
  }
  const mine = myRatings();
  const days = lastDays(today).flatMap((d) => {
    const p = pickFactOfDay(facts, mine, d);
    return p ? [{ ...p, ...(mine[p.key] ?? { like: 0, meh: 0 }) }] : [];
  });
  const weeks = pastPolls(today).flatMap((poll) => {
    const key = myVote(poll);
    return key ? [{ poll, key, votes: 1, total: 1 }] : [];
  });
  return { days, weeks, shared: false };
}

// ---------- Eigene Sachen: gelesene Fakten und Tipps ----------

const KEY = 'wtfact:fame';
type Store = { read: string[]; tips: Record<string, string> };

function load(): Store {
  try {
    const s = JSON.parse(localStorage.getItem(KEY) ?? '{}');
    return { read: [], tips: {}, ...s };
  } catch {
    return { read: [], tips: {} };
  }
}
function save(s: Store) {
  try {
    localStorage.setItem(KEY, JSON.stringify(s));
  } catch {
    /* privates Fenster: gilt dann nur für diese Sitzung */
  }
}

/** Beitragsseite merkt sich, welche Fakten gelesen wurden (Sammelalbum). */
export function markRead(key: string) {
  const s = load();
  if (!s.read.includes(key)) {
    s.read.push(key);
    save(s);
  }
}
export const readKeys = () => new Set(load().read);

/** Tipp für „Wer wird Fakt des Tages?“: `day` = Tag, an dem die Fakten erschienen sind (heute). */
export const tipFor = (day: string) => load().tips[day];
export function setTip(day: string, key: string) {
  const s = load();
  s.tips[day] = key;
  save(s);
}

/**
 * Auswertung der Tipps. Ein Tipp für Tag D wird aufgelöst, sobald der Fakt des Tages von D+1 feststeht
 * (der stammt aus den Fakten von D). Serie = Treffer in Folge, vom neuesten aufgelösten Tipp rückwärts.
 */
export function tipStats(days: DayPick[], today: string) {
  const tips = load().tips;
  const winner = Object.fromEntries(days.map((d) => [d.day, d.key]));
  const resolved = Object.keys(tips)
    .filter((d) => d < today && winner[d])
    .sort()
    .reverse()
    .map((d) => ({ day: d, tip: tips[d], winner: winner[d], hit: tips[d] === winner[d] }));
  let streak = 0;
  for (const r of resolved) {
    if (!r.hit) break;
    streak++;
  }
  return { resolved, hits: resolved.filter((r) => r.hit).length, streak, last: resolved.find((r) => r.day === addDays(today, -1)) };
}
