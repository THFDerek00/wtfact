// Server-Teil für Wisch-Bewertungen, Montags-Abstimmung und Fakt der Woche.
// Läuft als Cloudflare Pages Function (functions/api/[[path]].ts) mit einer D1-Datenbank,
// die als Binding `DB` eingetragen ist. Tabellen: db/schema.sql. Einrichtung: README.md.
//
//   GET  /api/week   Stand der Woche: laufende Abstimmung (nur montags) und aktueller Fakt der Woche
//   POST /api/vote   { voter, poll, key }        Stimme abgeben oder ändern (nur montags)
//   POST /api/rate   { voter, key, verdict }     Wisch-Bewertung, verdict = like | meh
//
// Ohne Binding antwortet alles mit 503 „not-configured“. Die Seite speichert dann nur im Browser.
import { berlinDay, weekState, inPoll, pickWinner, type FactMeta, type Verdict } from '../week';

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

const json = (data: unknown, status = 200) =>
  new Response(JSON.stringify(data), {
    status,
    headers: { 'content-type': 'application/json; charset=utf-8', 'cache-control': 'no-store' },
  });

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

async function ratingsFor(db: D1Database, keys: string[]) {
  if (!keys.length) return {};
  const { results } = await db
    .prepare(
      `SELECT fact_key, SUM(verdict = 'like') AS likes, SUM(verdict = 'meh') AS mehs FROM ratings
       WHERE fact_key IN (${keys.map((_, i) => `?${i + 1}`).join(',')}) GROUP BY fact_key`,
    )
    .bind(...keys)
    .all<{ fact_key: string; likes: number; mehs: number }>();
  return Object.fromEntries(results.map((r) => [r.fact_key, { like: Number(r.likes), meh: Number(r.mehs) }])) as Record<
    string,
    { like: number; meh: number }
  >;
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
    let poll = null;
    if (state.openPoll) {
      const counts = await voteCounts(db, state.openPoll);
      poll = { id: state.openPoll, counts, total: sum(counts) };
    }
    return json({ ...state, featured, poll });
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
