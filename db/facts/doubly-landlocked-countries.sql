-- WTFact-Fakt „Nur 2 Länder der Welt sind doppelt vom Meer abgeschnitten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('doubly-landlocked-countries', '2026-10-21T21:00:00+02:00', 'places', '🏔️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'doubly-landlocked-countries', 'de', 'doppelt-binnenland',
  'Nur 2 Länder der Welt sind doppelt vom Meer abgeschnitten',
  'Wer hier ans Meer will, muss mindestens zwei Grenzen überqueren. Eins der Länder liegt mitten in Europa.',
  'Liechtenstein und Usbekistan sind die einzigen 2 Länder, die nur an Länder ohne Meerzugang grenzen. Bis zum offenen Meer sind es von dort mindestens zwei Grenzen.',
  'Ein Binnenland hat keine Küste. Das ist nichts Besonderes, davon gibt es auf der Welt eine ganze Menge, etwa die Schweiz oder Österreich. Ein doppeltes Binnenland ist dagegen eine echte Seltenheit. Es gibt genau 2.

## Was „doppelt“ bedeutet

Ein Land ist doppelt vom Meer abgeschnitten, wenn es selbst keine Küste hat und alle seine Nachbarn auch keine. Wer von dort ans offene Meer will, muss also mindestens zwei Landesgrenzen überqueren.

Die beiden Länder, auf die das zutrifft, könnten unterschiedlicher kaum sein: Liechtenstein und Usbekistan.

## Ein Zwerg und ein Riese

Liechtenstein ist ein kleines Fürstentum in den Alpen. Es grenzt nur an die Schweiz und an Österreich, und beide haben keine Küste. Wer aus Liechtenstein ans Mittelmeer oder an die Nordsee will, braucht also mindestens zwei Grenzübertritte. Laut Sketchplanations führt der Weg immer erst durch eines der beiden Nachbarländer und dann noch durch ein drittes Land, bevor endlich eine Küste kommt.

Usbekistan in Zentralasien ist viel größer. Es grenzt an Kasachstan, Kirgisistan, Tadschikistan, Afghanistan und Turkmenistan, und keiner dieser Nachbarn hat Zugang zum offenen Meer. Turkmenistan liegt zwar am Kaspischen Meer, aber das ist trotz seines Namens nicht mit den Ozeanen verbunden.

Laut WorldAtlas ist Usbekistan erst seit 1991 in dieser Lage. Damals wurde es von der Sowjetunion unabhängig, und mit ihr ging der Zugang zum Meer über andere Sowjetrepubliken verloren.

> Bonusfakt: Auch bei den US-Bundesstaaten gibt es das Phänomen. Laut Sketchplanations sind zehn Bundesstaaten doppelt vom Meer abgeschnitten, und Nebraska ist sogar dreifach abgeschnitten.

Wer in Liechtenstein Urlaub am Meer machen will, muss also ein bisschen weiter fahren als alle anderen. Dafür gibt es Berge satt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('doubly-landlocked-countries', 'de', 1, 'Weltatlas für Entdecker', 'Weltatlas großformat', 'Ein großer Atlas zum Grenzen-Nachzählen und Weiterträumen.'),
  ('doubly-landlocked-countries', 'de', 2, 'Quiz-Kartenspiel über Länder und Hauptstädte', 'Quiz Kartenspiel Länder Hauptstädte', 'Testet, wer die meisten Länder der Welt kennt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('doubly-landlocked-countries', 'de', 1, 'WorldAtlas: The World’s Two Double Landlocked Countries', 'https://www.worldatlas.com/articles/doubly-landlocked-countries.html'),
  ('doubly-landlocked-countries', 'de', 2, 'Sketchplanations: Double-landlocked countries', 'https://sketchplanations.com/double-landlocked-countries');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'doubly-landlocked-countries', 'en', 'doubly-landlocked-countries',
  'Only 2 countries in the world are doubly cut off from the sea',
  'Getting to the sea from here means crossing at least two borders. One of them is right in Europe.',
  'Liechtenstein and Uzbekistan are the only 2 countries bordered entirely by countries without a coastline. From there, the open sea is at least two borders away.',
  'A landlocked country has no coastline. That’s nothing special, there are plenty of them, like Switzerland or Austria. A doubly landlocked country, though, is a real rarity. There are exactly 2.

## What "doubly" means

A country is doubly landlocked if it has no coastline itself and none of its neighbors do either. To reach the open sea from there, you have to cross at least two national borders.

The two countries this applies to couldn’t be more different: Liechtenstein and Uzbekistan.

## A tiny one and a big one

Liechtenstein is a small principality in the Alps. It borders only Switzerland and Austria, and neither has a coastline. So getting from Liechtenstein to the Mediterranean or the North Sea takes at least two border crossings. According to Sketchplanations, the route always leads through one of the two neighbors first and then through a third country before you finally hit a coast.

Uzbekistan in Central Asia is much bigger. It borders Kazakhstan, Kyrgyzstan, Tajikistan, Afghanistan and Turkmenistan, and none of these neighbors has access to the open sea. Turkmenistan does sit on the Caspian Sea, but despite its name, that isn’t connected to the oceans.

According to WorldAtlas, Uzbekistan has only been in this position since 1991. That’s when it became independent from the Soviet Union, and with it went its access to the sea through other Soviet republics.

> Bonus fact: The same thing happens with US states. According to Sketchplanations, ten states are doubly landlocked, and Nebraska is even triply landlocked.

So if someone in Liechtenstein wants a beach holiday, they have to travel a bit further than everyone else. In return, there are mountains everywhere.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('doubly-landlocked-countries', 'en', 1, 'World atlas for explorers', 'large world atlas', 'A big atlas for counting borders and daydreaming.'),
  ('doubly-landlocked-countries', 'en', 2, 'Countries and capitals quiz card game', 'countries capitals quiz card game', 'Tests who knows the most countries in the world.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('doubly-landlocked-countries', 'en', 1, 'WorldAtlas: The World’s Two Double Landlocked Countries', 'https://www.worldatlas.com/articles/doubly-landlocked-countries.html'),
  ('doubly-landlocked-countries', 'en', 2, 'Sketchplanations: Double-landlocked countries', 'https://sketchplanations.com/double-landlocked-countries');
