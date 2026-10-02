// Server-Teil für Wisch-Bewertungen, Montags-Abstimmung und Fakt der Woche.
// Läuft als Cloudflare Pages Function (functions/api/[[path]].ts) mit einer D1-Datenbank,
// die als Binding `DB` eingetragen ist. Tabellen: db/schema.sql. Einrichtung: README.md.
//
//   GET  /api/week   Stand der Woche: laufende Abstimmung (nur montags), Fakt der Woche und Fakt des Tages
//   POST /api/vote   { voter, poll, key }        Stimme abgeben oder ändern (nur montags)
//   POST /api/rate   { voter, key, verdict }     Wisch-Bewertung, verdict = like | meh
//   GET  /api/history  Verlauf für die Hall of Fame: Fakten des Tages (30 Tage) und der Woche (12 Wochen)
//
// Ohne Binding antwortet alles mit 503 „not-configured“. Die Seite speichert dann nur im Browser.
import {
  berlinDay, weekState, inPoll, pickWinner, pickFactOfDay, dayStartUtc, addDays, lastDays, pastPolls,
  type FactMeta, type Ratings, type Verdict, type DayPick, type WeekPick,
} from '../week';

interface D1Statement {
  bind(...values: unknown[]): D1Statement;
  all<T>(): Promise<{ results: T[] }>;
  run(): Promise<unknown>;
}
interface D1Database { prepare(query: string): D1Statement }
export interface Env {
  DB?: D1Database;
  ASSETS: { fetch(input: Request | URL | string): Promise<Response> };
}

const json = (data: unknown, status = 200, cache = 'no-store') =>
  new Response(JSON.stringify(data), {
    status,
    headers: { 'content-type': 'application/json; charset=utf-8', 'cache-control': cache },
  });

// D1 erlaubt höchstens 100 Platzhalter pro Abfrage, deshalb werden lange Listen aufgeteilt.
const CHUNK = 45;
const chunks = <T>(a: T[]) => Array.from({ length: Math.ceil(a.length / CHUNK) }, (_, i) => a.slice(i * CHUNK, (i + 1) * CHUNK));

const VOTER = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
const VERDICTS: Verdict[] = ['like', 'meh'];
const sum = (o: Record<string, number>) => Object.values(o).reduce((a, b) => a + b, 0);

async function facts(env: Env, url: URL): Promise<FactMeta[]> {
  const r = await env.ASSETS.fetch(new URL('/facts.json', url));
  return r.ok ? r.json() : [];
}

async function voteCounts(db: D1Database, poll: string) {
  const { results } = await db
    .prepare('SELECT fact_key, COUNT(*) AS n FROM votes WHERE poll = ?1 GROUP BY fact_key')
    .bind(poll)
    .all<{ fact_key: string; n: number }>();
  return Object.fromEntries(results.map((r) => [r.fact_key, Number(r.n)])) as Record<string, number>;
}

/** Wisch-Bewertungen je Fakt. Mit `before` (UTC, „JJJJ-MM-TT HH:MM:SS“) nur Bewertungen davor. */
async function ratingsFor(db: D1Database, keys: string[], before?: string): Promise<Ratings> {
  const out: Ratings = {};
  for (const part of chunks(keys)) {
    const n = part.length;
    const { results } = await db
      .prepare(
        `SELECT fact_key, SUM(verdict = 'like') AS likes, SUM(verdict = 'meh') AS mehs FROM ratings
         WHERE fact_key IN (${part.map((_, i) => `?${i + 1}`).join(',')})${before ? ` AND created_at < ?${n + 1}` : ''}
         GROUP BY fact_key`,
      )
      .bind(...part, ...(before ? [before] : []))
      .all<{ fact_key: string; likes: number; mehs: number }>();
    results.forEach((r) => (out[r.fact_key] = { like: Number(r.likes), meh: Number(r.mehs) }));
  }
  return out;
}

/** Bewertungen je Fakt, jeweils nur bis 0 Uhr nach seinem Erscheinungstag (so zählt der Fakt des Tages). */
async function ratingsUntilNextDay(db: D1Database, facts: FactMeta[]): Promise<Ratings> {
  const out: Ratings = {};
  for (const part of chunks(facts)) {
    const pairs = part.map((_, i) => `(?${2 * i + 1}, ?${2 * i + 2})`).join(',');
    const { results } = await db
      .prepare(
        `WITH c(k, cut) AS (VALUES ${pairs})
         SELECT c.k AS fact_key, SUM(r.verdict = 'like') AS likes, SUM(r.verdict = 'meh') AS mehs
         FROM c JOIN ratings r ON r.fact_key = c.k AND r.created_at < c.cut GROUP BY c.k`,
      )
      .bind(...part.flatMap((f) => [f.key, dayStartUtc(addDays(f.date, 1))]))
      .all<{ fact_key: string; likes: number; mehs: number }>();
    results.forEach((r) => (out[r.fact_key] = { like: Number(r.likes), meh: Number(r.mehs) }));
  }
  return out;
}

async function body(request: Request): Promise<Record<string, unknown> | null> {
  try {
    const b = await request.json();
    return b && typeof b === 'object' ? (b as Record<string, unknown>) : null;
  } catch {
    return null;
  }
}

export async function handle(request: Request, env: Env): Promise<Response> {
  const url = new URL(request.url);
  const route = url.pathname.replace(/^\/api\/?/, '').replace(/\/$/, '');
  if (!env.DB) return json({ error: 'not-configured' }, 503);
  const db = env.DB;
  const state = weekState(berlinDay());

  if (route === 'week' && request.method === 'GET') {
    const all = await facts(env, url);
    const cands = all.filter((f) => inPoll(f.date, state.featuredPoll));
    const votes = await voteCounts(db, state.featuredPoll);
    const winner = pickWinner(cands, votes, await ratingsFor(db, cands.map((c) => c.key)));
    const featured = winner ? { poll: state.featuredPoll, key: winner, votes: votes[winner], total: sum(votes) } : null;
    // Fakt des Tages: Fakten von gestern, Bewertungen bis heute 0 Uhr.
    const yesterday = all.filter((f) => f.date === addDays(state.today, -1));
    const dayRatings = await ratingsFor(db, yesterday.map((f) => f.key), dayStartUtc(state.today));
    const pick = pickFactOfDay(yesterday, dayRatings, state.today);
    const daily = pick ? { ...pick, ...(dayRatings[pick.key] ?? { like: 0, meh: 0 }) } : null;
    let poll = null;
    if (state.openPoll) {
      const counts = await voteCounts(db, state.openPoll);
      poll = { id: state.openPoll, counts, total: sum(counts) };
    }
    return json({ ...state, featured, daily, poll });
  }

  if (route === 'history' && request.method === 'GET') {
    const all = await facts(env, url);
    // Fakten des Tages: für jeden Tag der Sieger unter den Fakten vom Vortag.
    const days = lastDays(state.today);
    const oldest = addDays(days[days.length - 1], -1);
    const pool = all.filter((f) => f.date >= oldest && f.date < state.today);
    const dayRatings = await ratingsUntilNextDay(db, pool);
    const dayPicks: DayPick[] = days.flatMap((d) => {
      const p = pickFactOfDay(pool, dayRatings, d);
      return p ? [{ ...p, ...(dayRatings[p.key] ?? { like: 0, meh: 0 }) }] : [];
    });
    // Fakten der Woche: Gewinner jeder abgeschlossenen Abstimmung.
    const polls = pastPolls(state.today);
    const { results } = await db
      .prepare('SELECT poll, fact_key, COUNT(*) AS n FROM votes WHERE poll >= ?1 AND poll <= ?2 GROUP BY poll, fact_key')
      .bind(polls[polls.length - 1], polls[0])
      .all<{ poll: string; fact_key: string; n: number }>();
    const byPoll: Record<string, Record<string, number>> = {};
    results.forEach((r) => ((byPoll[r.poll] ??= {})[r.fact_key] = Number(r.n)));
    const voted = polls.filter((p) => byPoll[p]);
    const cands = all.filter((f) => voted.some((p) => inPoll(f.date, p)));
    const allRatings = await ratingsFor(db, cands.map((c) => c.key));
    const weekPicks: WeekPick[] = voted.flatMap((p) => {
      const votes = byPoll[p];
      const key = pickWinner(cands.filter((f) => inPoll(f.date, p)), votes, allRatings);
      return key ? [{ poll: p, key, votes: votes[key], total: sum(votes) }] : [];
    });
    return json({ today: state.today, days: dayPicks, weeks: weekPicks }, 200, 'public, max-age=300');
  }

  if (route === 'vote' && request.method === 'POST') {
    const b = await body(request);
    const voter = String(b?.voter ?? '');
    const key = String(b?.key ?? '');
    if (!VOTER.test(voter) || !key) return json({ error: 'bad-request' }, 400);
    if (!state.openPoll || b?.poll !== state.openPoll) return json({ error: 'closed', ...state }, 409);
    const all = await facts(env, url);
    if (!all.some((f) => f.key === key && inPoll(f.date, state.openPoll!))) return json({ error: 'not-a-candidate' }, 400);
    await db
      .prepare(
        `INSERT INTO votes (poll, voter, fact_key) VALUES (?1, ?2, ?3)
         ON CONFLICT (poll, voter) DO UPDATE SET fact_key = excluded.fact_key, created_at = datetime('now')`,
      )
      .bind(state.openPoll, voter, key)
      .run();
    const counts = await voteCounts(db, state.openPoll);
    return json({ id: state.openPoll, counts, total: sum(counts) });
  }

  if (route === 'rate' && request.method === 'POST') {
    const b = await body(request);
    const voter = String(b?.voter ?? '');
    const key = String(b?.key ?? '');
    const verdict = b?.verdict as Verdict;
    if (!VOTER.test(voter) || !key || !VERDICTS.includes(verdict)) return json({ error: 'bad-request' }, 400);
    const all = await facts(env, url);
    if (!all.some((f) => f.key === key)) return json({ error: 'unknown-fact' }, 400);
    await db
      .prepare(
        `INSERT INTO ratings (fact_key, voter, verdict) VALUES (?1, ?2, ?3)
         ON CONFLICT (fact_key, voter) DO UPDATE SET verdict = excluded.verdict, created_at = datetime('now')`,
      )
      .bind(key, voter, verdict)
      .run();
    const r = (await ratingsFor(db, [key]))[key] ?? { like: 0, meh: 0 };
    return json(r);
  }

  return json({ error: 'not-found' }, 404);
}
