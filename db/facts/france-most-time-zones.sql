-- WTFact-Fakt „Kein Land hat so viele Zeitzonen wie Frankreich, nämlich 12“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('france-most-time-zones', '2026-10-24T10:00:00+02:00', 'places', '🕐', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'france-most-time-zones', 'de', 'frankreich-meiste-zeitzonen',
  'Kein Land hat so viele Zeitzonen wie Frankreich, nämlich 12',
  'Nicht Russland, nicht die USA. Der Rekordhalter liegt mitten in Europa und ein bisschen überall.',
  'Frankreich hat 12 Zeitzonen, mehr als jedes andere Land. Möglich machen das Überseegebiete im Pazifik, im Atlantik, im Indischen Ozean, in Südamerika und in der Antarktis.',
  'Welches Land hat die meisten Zeitzonen? Die meisten tippen auf Russland, manche auf die USA. Beide liegen knapp daneben. Der Rekord gehört Frankreich.

## Ein Land, 12 Uhrzeiten

Das französische Festland, also das Frankreich mit Paris, hat nur eine Zeitzone. Doch zu Frankreich gehören zahlreiche Überseegebiete, verstreut über den ganzen Planeten. Laut timeanddate.com kommt das Land so auf 12 Zeitzonen.

Die Liste reicht von Französisch-Polynesien im Pazifik, wo die Uhren zehn Stunden hinter der Weltzeit liegen, bis zu Wallis und Futuna, ebenfalls im Pazifik, aber zwölf Stunden vor der Weltzeit. Dazwischen liegen Gebiete im Atlantik, im Indischen Ozean, Französisch-Guayana in Südamerika und ein Streifen der Antarktis. Viele dieser Überseegebiete sind Überbleibsel aus der Kolonialzeit und gehören bis heute fest zu Frankreich.

Zum Vergleich: Deutschland kommt mit genau einer Zeitzone aus, im Winter mit der Mitteleuropäischen Zeit und im Sommer mit der Sommerzeit.

## Manchmal sogar 13

Es wird noch komplizierter. Die kleine Inselgruppe Saint-Pierre und Miquelon vor Kanada stellt im Sommer auf Sommerzeit um. Laut Guinness World Records hat Frankreich dann sogar 13 Zeitzonen.

Russland und die USA kommen laut Guinness jeweils auf 11.

> Bonusfakt: China ist von Ost nach West riesig, hat laut timeanddate.com aber offiziell nur eine einzige Zeitzone.

Für Französinnen und Franzosen heißt das: Wenn in Paris Mittag ist, ist es in Französisch-Polynesien noch tiefe Nacht und auf Wallis und Futuna schon fast der nächste Tag. Wer im Familienchat von Überseegebiet zu Überseegebiet schreibt, braucht gutes Timing.

Frankreich ist also nicht nur ein Land in Europa. Es ist ein Land, in dem irgendwo immer gerade Frühstück ist.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('france-most-time-zones', 'de', 1, 'Wanduhr mit mehreren Zeitzonen', 'Wanduhr Zeitzonen mehrere Städte', 'Zeigt Paris, Tahiti und den Rest der Welt auf einen Blick.'),
  ('france-most-time-zones', 'de', 2, 'Reiseführer Französisch-Polynesien', 'Reiseführer Tahiti Französisch Polynesien', 'Für den Ausflug in Frankreichs entfernteste Zeitzone.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('france-most-time-zones', 'de', 1, 'Guinness World Records: Country with the most time zones', 'https://www.guinnessworldrecords.com/world-records/584626-country-with-the-most-time-zones'),
  ('france-most-time-zones', 'de', 2, 'timeanddate.com: Which Country Has the Most Time Zones?', 'https://www.timeanddate.com/time/country-with-the-most-time-zones.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'france-most-time-zones', 'en', 'france-most-time-zones',
  'No country has as many time zones as France: 12',
  'Not Russia, not the US. The record holder sits in Europe and a little bit everywhere else.',
  'France has 12 time zones, more than any other country. Overseas territories in the Pacific, the Atlantic, the Indian Ocean, South America and Antarctica make it possible.',
  'Which country has the most time zones? Most people guess Russia, some say the US. Both are just off. The record belongs to France.

## One country, 12 clocks

Mainland France, the France with Paris in it, has just one time zone. But France also has numerous overseas territories scattered all over the planet. According to timeanddate.com, that brings the country to 12 time zones.

The list runs from French Polynesia in the Pacific, where clocks are ten hours behind universal time, to Wallis and Futuna, also in the Pacific but twelve hours ahead of it. In between are territories in the Atlantic, the Indian Ocean, French Guiana in South America and a strip of Antarctica. Many of these overseas territories are leftovers from colonial times and are still firmly part of France today.

For comparison: the UK gets by with exactly one time zone, Greenwich Mean Time in winter and British Summer Time in summer.

## Sometimes even 13

It gets more complicated. The tiny archipelago of Saint-Pierre and Miquelon off Canada switches to daylight saving time in summer. According to Guinness World Records, France then has 13 time zones.

Russia and the US have 11 each, according to Guinness.

> Bonus fact: China is huge from east to west, but according to timeanddate.com, it officially has just one time zone.

For French people, that means: when it’s noon in Paris, it’s still the middle of the night in French Polynesia and almost the next day in Wallis and Futuna. Running a family group chat across overseas territories takes good timing.

So France isn’t just a country in Europe. It’s a country where it’s always breakfast time somewhere.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('france-most-time-zones', 'en', 1, 'Multi-time-zone wall clock', 'world time zone wall clock', 'Shows Paris, Tahiti and the rest of the world at a glance.'),
  ('france-most-time-zones', 'en', 2, 'French Polynesia travel guide', 'Tahiti French Polynesia travel guide', 'For a trip to France’s most distant time zone.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('france-most-time-zones', 'en', 1, 'Guinness World Records: Country with the most time zones', 'https://www.guinnessworldrecords.com/world-records/584626-country-with-the-most-time-zones'),
  ('france-most-time-zones', 'en', 2, 'timeanddate.com: Which Country Has the Most Time Zones?', 'https://www.timeanddate.com/time/country-with-the-most-time-zones.html');
