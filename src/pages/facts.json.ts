// Liste aller veröffentlichten Fakten (Schlüssel, Tag, Kategorie). Die PHP-API (public/api/index.php)
// liest sie, um zu prüfen, welche Fakten bei einer Abstimmung zur Wahl stehen.
import { postsFor } from '../lib';
import { postDay } from '../week';

export async function GET() {
  const facts = (await postsFor('de')).map((p) => ({ key: p.data.translationKey, date: postDay(p.data.date), cat: p.data.category }));
  return new Response(JSON.stringify(facts), { headers: { 'content-type': 'application/json; charset=utf-8' } });
}
