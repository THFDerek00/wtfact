// Kennungen aller Quizfragen (auch der, die erst an einem späteren Samstag erscheinen; ohne Inhalt).
// Die PHP-API (public/api/index.php, quiz_ids) prüft damit, ob eine Antwort zu einer echten Frage gehört.
import { WOF, FIRST } from '../data/quiz';

export async function GET() {
  const ids = { wof: WOF.map((x) => x.id), first: FIRST.map((x) => x.id) };
  return new Response(JSON.stringify(ids), { headers: { 'content-type': 'application/json; charset=utf-8' } });
}
