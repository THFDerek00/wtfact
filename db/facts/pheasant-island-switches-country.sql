-- WTFact-Fakt „Diese Insel wechselt alle sechs Monate das Land“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('pheasant-island-switches-country', '2026-10-23T08:00:00+02:00', 'weird', '🏝️', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pheasant-island-switches-country', 'de', 'insel-wechselt-alle-sechs-monate-das-land',
  'Diese Insel wechselt alle sechs Monate das Land',
  'Ein halbes Jahr spanisch, ein halbes Jahr französisch, und die beiden Länder teilen sie sich schon seit 1659.',
  'Die Fasaneninsel im Fluss Bidasoa gehört vom 1. Februar bis 31. Juli zu Spanien und vom 1. August bis 31. Januar zu Frankreich.',
  'Irgendwo zwischen Frankreich und Spanien liegt eine Insel, die sich nicht entscheiden kann, wohin sie gehört. Also lässt sie es einfach. Die Fasaneninsel im Fluss Bidasoa ist ein halbes Jahr spanisch und das andere halbe Jahr französisch.

## Sechs Monate hier, sechs Monate dort

Der Plan steht fest: Spanien ist vom 1. Februar bis 31. Juli zuständig, Frankreich vom 1. August bis 31. Januar. Die Insel ist winzig, gut 200 Meter lang und rund 40 Meter breit, fast nur mit Bäumen bewachsen, und niemand wohnt dort. Sie liegt zwischen Irun am spanischen und Hendaye am französischen Ufer.

Laut The Connexion verwalten sie regionale Marinekapitäne beider Seiten, die den Titel Vizekönig tragen. Amusing Planet beschreibt die Übergabe als kurze Zeremonie, bei der Vertreter beider Länder Dokumente überreichen. Die Seite zitiert auch die New York Times, die die Insel mit dem Ball in einem extrem langsamen Pingpong-Spiel zwischen Frankreich und Spanien verglich.

## Ein Friedensvertrag auf einer Mini-Insel

Warum das Ganze? 1659 trafen sich Frankreich und Spanien auf der Insel, um einen Krieg zu beenden, der 1635 begonnen hatte. The Connexion zählt 24 Treffen dort zwischen dem 13. August und dem 7. November 1659, dem Tag, an dem der Pyrenäenfrieden unterzeichnet wurde. Zum Deal gehörte eine Königshochzeit: Ludwig XIV. sollte eine Tochter des spanischen Königs Philipp IV. heiraten. Laut Amusing Planet traf Ludwig seine spätere Frau Maria Theresia auf der Insel.

Laut Amusing Planet machte der Vertrag die Insel zu einem gemeinsamen Gebiet beider Länder, einem sogenannten Kondominium, und Islands.com bezeichnet sie als das kleinste der Welt. Ein Gedenkstein auf der Insel erinnert an den Vertrag, mit spanischer Inschrift auf der Seite Richtung Spanien und französischer auf der Seite Richtung Frankreich.

Ein Picknick kannst du allerdings vergessen. Die Insel ist für Besucher gesperrt. Immerhin liegt sie laut Islands.com nur 10 Meter vom spanischen Ufer entfernt.

> Bonusfakt: Laut The Connexion brachte die Corona-Zeit den Rhythmus durcheinander, und Spanien behielt die Insel zwei Jahre am Stück.

Zweimal im Jahr wechselt hier also eine ganze Insel voller Bäume still und leise den Pass.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pheasant-island-switches-country', 'de', 1, 'Reiseführer Baskenland', 'Reiseführer Baskenland', 'Deckt Irun, Hendaye und die Küste auf beiden Seiten der Grenze ab.'),
  ('pheasant-island-switches-country', 'de', 2, 'Vintage-Europakarte als Poster', 'Vintage Europakarte Poster', 'Sieht an der Wand gut aus und lädt zur Suche nach winzigen Grenzen ein.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pheasant-island-switches-country', 'de', 1, 'The Connexion: The tiny Basque island that is both French and Spanish', 'https://www.connexionfrance.com/article/Mag/Explore-France/The-tiny-Basque-island-that-is-both-French-and-Spanish'),
  ('pheasant-island-switches-country', 'de', 2, 'Amusing Planet: Pheasant Island: The Island That Changes Sovereignty Every Six Months', 'https://www.amusingplanet.com/2016/10/pheasant-island-island-that-changes.html'),
  ('pheasant-island-switches-country', 'de', 3, 'Islands.com: Tucked Between Spain And France Is A Tiny Uninhabited Island That Changes Nationalities Throughout The Year', 'https://www.islands.com/1995796/pheasant-island-tucked-spain-france-tiny-uninhabited-changes-nationalities-throughout-year');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pheasant-island-switches-country', 'en', 'island-switches-countries-every-six-months',
  'This island switches countries every six months',
  'Half the year it''s Spanish, the other half it''s French, and the two countries have shared it since 1659.',
  'Pheasant Island in the Bidasoa River belongs to Spain from February 1 to July 31 and to France from August 1 to January 31.',
  'Somewhere between France and Spain there''s an island that can''t decide where it belongs. So it doesn''t. Pheasant Island in the Bidasoa River is Spanish for half the year and French for the other half.

## Six months here, six months there

The schedule is fixed: Spain is in charge from February 1 to July 31, France from August 1 to January 31. The island is tiny, a bit over 200 meters long and about 40 meters wide, mostly covered in trees, and nobody lives there. It sits between Irun on the Spanish bank and Hendaye on the French one.

According to The Connexion, the island is run by regional marine captains from both sides, who carry the title of viceroy. Amusing Planet describes the handover as a short ceremony in which officials from both countries pass over documents. It also quotes The New York Times, which compared the island to the ball in an extremely slow game of ping-pong between France and Spain.

## A peace treaty on a tiny island

Why all this? In 1659, France and Spain met on the island to end a war that had started in 1635. The Connexion counts 24 meetings there between August 13 and November 7, 1659, the day the Treaty of the Pyrenees was signed. The deal came with a royal marriage: Louis XIV was to marry a daughter of Spain''s King Philip IV. According to Amusing Planet, Louis met his future wife Maria Theresa on the island.

According to Amusing Planet, the treaty turned the island into a shared territory, a condominium, and Islands.com calls it the smallest one in the world. A stone monument on the island honors the treaty, with its inscription in Spanish on the side facing Spain and in French on the side facing France.

Don''t plan a picnic, though. The island is closed to the public. At least it''s close: Islands.com puts it just 10 meters from the Spanish bank.

> Bonus fact: According to The Connexion, the Covid years broke the rhythm, and Spain kept the island for two years in a row.

So twice a year, an island full of trees quietly changes its passport.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pheasant-island-switches-country', 'en', 1, 'Basque Country travel guide', 'Basque Country travel guide book', 'Covers Irun, Hendaye and the coast on both sides of the border.'),
  ('pheasant-island-switches-country', 'en', 2, 'Vintage map of Europe poster', 'vintage map of Europe poster', 'Looks good on a wall and makes you hunt for tiny borders.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pheasant-island-switches-country', 'en', 1, 'The Connexion: The tiny Basque island that is both French and Spanish', 'https://www.connexionfrance.com/article/Mag/Explore-France/The-tiny-Basque-island-that-is-both-French-and-Spanish'),
  ('pheasant-island-switches-country', 'en', 2, 'Amusing Planet: Pheasant Island: The Island That Changes Sovereignty Every Six Months', 'https://www.amusingplanet.com/2016/10/pheasant-island-island-that-changes.html'),
  ('pheasant-island-switches-country', 'en', 3, 'Islands.com: Tucked Between Spain And France Is A Tiny Uninhabited Island That Changes Nationalities Throughout The Year', 'https://www.islands.com/1995796/pheasant-island-tucked-spain-france-tiny-uninhabited-changes-nationalities-throughout-year');
