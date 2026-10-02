-- WTFact-Fakt „Auf La Gomera lernen Kinder in der Schule, in Pfiffen zu sprechen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('silbo-gomero', '2026-09-17', 'language', '🎵', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'silbo-gomero', 'de', 'silbo-gomero-pfeifsprache',
  'Auf La Gomera lernen Kinder in der Schule, in Pfiffen zu sprechen',
  'Keine Melodien, sondern ganze Sätze. Quer über Schluchten, ganz ohne Handy.',
  'Auf der Kanareninsel La Gomera gibt es eine gepfiffene Version des Spanischen, und seit 1999 steht sie dort auf dem Stundenplan.',
  'Stell dir vor, du stehst auf einem Berg, dein Kumpel auf dem nächsten, dazwischen eine tiefe Schlucht. Rufen bringt nichts, Empfang gibt es keinen. Auf La Gomera, einer der Kanarischen Inseln, ist das kein Problem: Dort pfeift man sich einfach ganze Sätze zu.

## Spanisch, nur gepfiffen

Die Sprache heißt **Silbo Gomero**, „das gomerische Pfeifen“. Sie hat keine eigenen Wörter, sondern ist Spanisch in Pfeif-Form. Wer pfeift, überträgt Tonhöhe und Lautstärke der gesprochenen Wörter auf Pfiffe.

Dabei wird das Spanische kräftig eingedampft. Aus fünf Vokalen werden laut dem Max-Planck-Institut für Psycholinguistik **zwei: ein hoher und ein tiefer Pfiff**. Bei den Konsonanten lassen sich je nach Untersuchung grob vier bis zehn unterscheiden. Klingt nach wenig, reicht aber, weil der Zusammenhang den Rest erledigt.

Der große Vorteil: Ein Pfiff trägt viel weiter als ein Schrei. Das Max-Planck-Institut nennt bis zu zwei Kilometer, andere Quellen sprechen sogar von bis zu fünf.

## Älter als das Spanische auf der Insel

Erfunden haben das nicht die Spanier. Schon die Guanchen, die ursprünglichen Bewohner der Kanaren, pfiffen sich Nachrichten zu. Als im 16. Jahrhundert die spanische Sprache auf die Insel kam, wurde das Pfeifsystem einfach an sie angepasst.

Jahrhundertelang verständigten sich Bauern und Hirten so über die steilen Täler hinweg. Dann kam das Telefon, später das Handy, und immer weniger Menschen beherrschten den Silbo.

> Seit 2009 gehört Silbo Gomero offiziell zum immateriellen Kulturerbe der Menschheit der UNESCO.

## Pflichtfach Pfeifen

Damit die Sprache nicht ausstirbt, hat La Gomera gegengesteuert: **Seit 1999 wird Silbo Gomero an den Schulen der Insel unterrichtet**, in Grund- und weiterführenden Schulen sogar als Pflicht. Kinder lernen dort also nicht nur Mathe und Englisch, sondern auch, wie man eine Nachricht über ein ganzes Tal pfeift.

Heute hört man den Silbo außerdem bei traditionellen Festen und in Restaurants, wo er Gästen vorgeführt wird. Aus einer Notlösung für schwieriges Gelände ist ein Stück Identität geworden, auf das die Insel stolz ist.

Statt Sprachnachricht einfach ein Pfiff übers Tal.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('silbo-gomero', 'de', 1, 'Bildband über die Kanarischen Inseln', 'Bildband Kanarische Inseln', 'Große Fotos von Vulkanen, Lorbeerwäldern und steilen Schluchten. Schön zum Durchblättern und Fernweh kriegen.'),
  ('silbo-gomero', 'de', 2, 'Reiseführer La Gomera', 'Reiseführer La Gomera', 'Mit Wanderrouten, Dörfern und Ausflugstipps für die kleine, grüne Insel westlich von Teneriffa.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('silbo-gomero', 'de', 1, 'Wikipedia: Silbo Gomero', 'https://en.wikipedia.org/wiki/Silbo_Gomero'),
  ('silbo-gomero', 'de', 2, 'Max Planck Institute for Psycholinguistics: Music or language? El Silbo Gomero (‘the Gomeran whistle’)', 'https://www.mpi.nl/blog/music-or-language-el-silbo-gomero-gomeran-whistle'),
  ('silbo-gomero', 'de', 3, 'Omniglot: The Silbo Gomero Language', 'https://www.omniglot.com/language/articles/silbogomero.htm');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'silbo-gomero', 'en', 'silbo-gomero-whistled-language',
  'On La Gomera, kids learn to talk in whistles at school',
  'Not tunes, but full sentences. Sent across canyons, no phone required.',
  'On the Canary Island of La Gomera there''s a whistled version of Spanish, and since 1999 it has been part of the school curriculum.',
  'Picture this: you''re standing on one mountain, your friend is on the next, and there''s a deep ravine in between. Shouting won''t work and there''s no signal. On La Gomera, one of the Canary Islands, that''s no problem at all. People there just whistle entire sentences to each other.

## Spanish, but whistled

The language is called **Silbo Gomero**, "the Gomeran whistle." It doesn''t have its own vocabulary. It''s Spanish, turned into whistles. Whistlers take the pitch and loudness of spoken words and translate them into whistled sounds.

Spanish gets boiled down hard in the process. According to the Max Planck Institute for Psycholinguistics, its five vowels shrink to **two: one high whistle and one low one**. Depending on the study, somewhere between about four and ten consonants can be told apart. Sounds like too little, but context does the rest.

The big advantage: a whistle carries much farther than a shout. The Max Planck Institute mentions distances of up to two kilometers (about 1.2 miles), and other sources even say up to five.

## Older than Spanish on the island

The Spanish didn''t invent it. The Guanches, the original inhabitants of the Canary Islands, were already whistling messages to each other. When Spanish arrived on the island in the 16th century, the whistling system was simply adapted to the new language.

For centuries, farmers and shepherds used it to talk across the steep valleys. Then came the telephone, later the mobile phone, and fewer and fewer people could still do it.

> Since 2009, Silbo Gomero has been officially recognized by UNESCO as part of the Intangible Cultural Heritage of Humanity.

## Whistling on the timetable

To keep the language alive, La Gomera stepped in: **since 1999, Silbo Gomero has been taught in the island''s schools**, and it''s even mandatory in primary and secondary education. So kids there don''t just learn math and English, but also how to send a message across an entire valley.

Today you can also hear it at traditional festivals and in restaurants, where it gets shown off to visitors. What started as a workaround for rough terrain has become a piece of identity the island is proud of.

Forget voice notes. Just whistle across the valley.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('silbo-gomero', 'en', 1, 'Canary Islands photo book', 'Canary Islands photo book', 'Big photos of volcanoes, laurel forests and steep ravines. Perfect for flipping through and getting a serious case of wanderlust.'),
  ('silbo-gomero', 'en', 2, 'La Gomera travel guide', 'La Gomera travel guide', 'Hiking routes, villages and day-trip ideas for the small, green island west of Tenerife.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('silbo-gomero', 'en', 1, 'Wikipedia: Silbo Gomero', 'https://en.wikipedia.org/wiki/Silbo_Gomero'),
  ('silbo-gomero', 'en', 2, 'Max Planck Institute for Psycholinguistics: Music or language? El Silbo Gomero (‘the Gomeran whistle’)', 'https://www.mpi.nl/blog/music-or-language-el-silbo-gomero-gomeran-whistle'),
  ('silbo-gomero', 'en', 3, 'Omniglot: The Silbo Gomero Language', 'https://www.omniglot.com/language/articles/silbogomero.htm');
