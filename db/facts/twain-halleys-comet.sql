-- WTFact-Fakt „Mark Twain kam 1835 mit dem Halleyschen Kometen und ging 1910 mit ihm“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('twain-halleys-comet', NULL, 'space', '☄️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'twain-halleys-comet', 'de', 'mark-twain-kam-und-ging-mit-halley',
  'Mark Twain kam 1835 mit dem Halleyschen Kometen und ging 1910 mit ihm',
  'Der Autor von „Tom Sawyer“ sagte voraus, wann er sterben würde. Und der Komet hielt sich an den Termin.',
  'Mark Twain wurde 1835 geboren, als der Halleysche Komet am Himmel stand, sagte voraus, dass er mit dem Kometen gehen würde, und starb im April 1910, als dieser zurückkehrte.',
  'Manche Leute haben ein Gespür für Timing. Mark Twain, der Autor von „Tom Sawyer“ und „Huckleberry Finn“, hatte dafür einen Kometen.

## Geboren unterm Schweifstern

Der Halleysche Komet kommt laut NASA im Schnitt etwa alle 76 Jahre in die Nähe der Sonne. Wie lange genau, schwankt, weil die Schwerkraft der Planeten an ihm zieht. Die kürzeste gemessene Runde dauerte laut NASA 74,42 Jahre, und zwar ausgerechnet die von 1835 bis 1910.

1835 war das Jahr, in dem Mark Twain zur Welt kam. Laut der Universität Houston und ihrer Sendung „The Engines of Our Ingenuity“ stand der Komet bei seiner Geburt am Himmel.

## Eine Vorhersage mit Ansage

Twain wusste das und machte daraus eine Pointe. Laut den Smithsonian Libraries schrieb er 1909: „Ich kam 1835 mit dem Halleyschen Kometen. Er kommt nächstes Jahr wieder, und ich erwarte, mit ihm zu gehen.“ Ein bisschen Galgenhumor, typisch Twain.

Dann passierte genau das. Im April 1910 kehrte der Komet zurück, und Mark Twain starb laut „The Engines of Our Ingenuity“ am 21. April 1910, gerade als der Komet wieder in Sichtweite der Erde zog. Die Quellen nennen dabei leicht unterschiedliche Tage: Die Smithsonian Libraries geben den 20. April an.

Wichtig ist: Twain hat seinen Tod nicht herbeigezaubert, er war damals schon 74 Jahre alt. Aber dass ein Schriftsteller sein Leben genau zwischen zwei Besuchen desselben Kometen verbringt und das vorher selbst ankündigt, ist eine Geschichte, wie er sie kaum besser hätte schreiben können.

> Bonusfakt: Laut NASA kommt der Halleysche Komet 2061 zurück. Seine Staubspur sorgt schon jetzt jedes Jahr für zwei Sternschnuppenschauer, die Eta-Aquariiden im Mai und die Orioniden im Oktober.

Manche gehen mit einem Knall. Twain ging mit einem Schweif.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('twain-halleys-comet', 'de', 1, 'Sammelband mit Mark Twains Romanen', 'Mark Twain Tom Sawyer Huckleberry Finn Sammelband', 'Die Abenteuer von Tom und Huck in einem Band, voller Witz und bis heute lesenswert.'),
  ('twain-halleys-comet', 'de', 2, 'Sternenprojektor für das Zimmer', 'Sternenhimmel Projektor Galaxie', 'Wirft Sterne, Nebel und manchmal sogar Sternschnuppen an deine Zimmerdecke.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('twain-halleys-comet', 'de', 1, 'The Engines of Our Ingenuity: Halley''s Comet', 'https://engines.egr.uh.edu/episode/1642'),
  ('twain-halleys-comet', 'de', 2, 'Smithsonian Libraries: Mark Twain''s birthday', 'https://blog.library.si.edu/blog/2009/11/28/mark-twains-birthday'),
  ('twain-halleys-comet', 'de', 3, 'NASA Science: 1P/Halley', 'https://science.nasa.gov/solar-system/comets/1p-halley/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'twain-halleys-comet', 'en', 'mark-twain-came-and-went-with-halley',
  'Mark Twain arrived with Halley''s Comet in 1835 and left with it in 1910',
  'The author of "Tom Sawyer" predicted when he would die. And the comet kept the appointment.',
  'Mark Twain was born in 1835 while Halley''s Comet was in the sky, predicted he would go out with the comet, and died in April 1910 just as it returned.',
  'Some people have a great sense of timing. Mark Twain, the author of "Tom Sawyer" and "Huckleberry Finn," had a comet for it.

## Born under a comet

According to NASA, Halley''s Comet swings close to the Sun about every 76 years on average. The exact time varies because the planets'' gravity tugs on it. NASA says the shortest measured lap lasted 74.42 years, and it happens to be the one from 1835 to 1910.

1835 was the year Mark Twain was born. According to the University of Houston''s program "The Engines of Our Ingenuity," the comet was in the sky when he was born.

## A prediction on the record

Twain knew this and turned it into a punchline. According to Smithsonian Libraries, he wrote in 1909: "I came in with Halley''s Comet in 1835. It is coming again next year, and I expect to go out with it." A bit of gallows humor, classic Twain.

Then exactly that happened. In April 1910 the comet returned, and according to "The Engines of Our Ingenuity," Mark Twain died on April 21, 1910, just as the comet made its next pass within sight of Earth. The sources differ slightly on the day: Smithsonian Libraries gives April 20.

To be clear: Twain didn''t summon his own death. He was 74 years old by then. But a writer spending his life exactly between two visits of the same comet, and announcing it in advance, is a story he could hardly have written better himself.

> Bonus fact: According to NASA, Halley''s Comet comes back in 2061. Its dust trail already gives us two meteor showers every year, the Eta Aquarids in May and the Orionids in October.

Some people go out with a bang. Twain went out with a tail.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('twain-halleys-comet', 'en', 1, 'Mark Twain novels collection', 'Mark Twain Tom Sawyer Huckleberry Finn collection', 'The adventures of Tom and Huck in one volume, full of wit and still worth reading.'),
  ('twain-halleys-comet', 'en', 2, 'Star projector for your room', 'star projector galaxy night light', 'Projects stars, nebulae and sometimes even shooting stars onto your ceiling.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('twain-halleys-comet', 'en', 1, 'The Engines of Our Ingenuity: Halley''s Comet', 'https://engines.egr.uh.edu/episode/1642'),
  ('twain-halleys-comet', 'en', 2, 'Smithsonian Libraries: Mark Twain''s birthday', 'https://blog.library.si.edu/blog/2009/11/28/mark-twains-birthday'),
  ('twain-halleys-comet', 'en', 3, 'NASA Science: 1P/Halley', 'https://science.nasa.gov/solar-system/comets/1p-halley/');
