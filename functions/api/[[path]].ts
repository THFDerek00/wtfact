// Cloudflare Pages Function für alles unter /api/ (Bewertungen, Abstimmung, Fakt der Woche).
// Die Logik steht in src/server/community.ts, Einrichtung der Datenbank: README.md.
import { handle, type Env } from '../../src/server/community';

export const onRequest = (ctx: { request: Request; env: Env }) => handle(ctx.request, ctx.env);
