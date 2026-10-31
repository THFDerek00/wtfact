-- WTFact-Fakt „Ein Leuchtturm auf der falschen Seite verpasste dieser winzigen Insel eine Zickzack-Grenze“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('market-island-lighthouse-border', '2026-11-06T12:00:00+01:00', 'places', '🗼', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'market-island-lighthouse-border', 'de', 'maerket-leuchtturm-grenze',
  'Ein Leuchtturm auf der falschen Seite verpasste dieser winzigen Insel eine Zickzack-Grenze',
  'Finnland und Schweden teilen sich einen Felsen in der Ostsee, und die Grenze dazwischen macht einen Bogen um einen Leuchtturm.',
  'Auf Märket, einer winzigen Ostseeinsel, die sich Finnland und Schweden teilen, stand ein 1885 gebauter Leuchtturm auf der schwedischen Seite, also wurde die Grenze später um ihn herum neu gezogen.',
  'Die meisten Grenzen folgen Flüssen, Bergkämmen oder einem Lineal auf der Landkarte. Die auf Märket macht einen Bogen um einen Leuchtturm.

## Eine Linie über nackten Fels

Märket ist eine felsige Schäre in der Ostsee, im nördlichen Teil des Ålandmeers, ungefähr 350 mal 150 Meter groß. Laut Yle wurde die Grenze mitten hindurch gezogen, nachdem Schweden im Krieg von 1808 bis 1809 Finnland an Russland verloren hatte. Islands.com zufolge war diese erste Grenze eine gerade Linie. Bis heute teilt sie die Insel in zwei Hälften.

1885 kam ein Leuchtturm dazu. Laut Atlas Obscura ließ der Zar ihn vom Architekten Georg Schreck bauen, und zwar auf dem höchsten Punkt der Insel. Der lag auf der schwedischen Seite. Yle zeigt Verständnis: Es lag nahe, an der besten Stelle zu bauen, mitten auf einem hohen Felsen. Erst als man die Grenzlinie später überprüfte, stellte sich heraus, dass der Leuchtturm in Schweden stand.

## Der stille Tausch

Die Lösung kam in den 1980er-Jahren, lange nachdem Finnland unabhängig geworden war. Laut Yle wurde die Grenze 1981 verschoben, und Schweden wurde für die Fläche entschädigt, die der Leuchtturm ohne Erlaubnis belegt hatte. Atlas Obscura nennt 1985 als Jahr, in dem der Leuchtturm offiziell wieder an finnisches Gebiet angeschlossen wurde, über einen schmalen Landstreifen.

Herausgekommen ist eine Grenze, wie es sie kaum anderswo gibt: Atlas Obscura nennt sie ein wirres Z, Yle eine Bogenform. Die Knickpunkte sind auf dem Fels markiert, doch laut Yle merkst du kaum, in welchem Land du gerade stehst, und Grenzformalitäten gibt es auf der Insel keine.

Seit 1977 ist der Leuchtturm unbemannt. Seit 2007 reparieren ihn Freiwillige im Sommer und führen Besucher herum, schreibt Atlas Obscura.

> Bonusfakt: Die Grenze auf Märket wird nicht einmal gezogen und dann vergessen. Laut Islands.com wird sie alle 25 Jahre neu vermessen.

Zwei Länder, ein Felsen und eine Grenze, die höflich um einen Leuchtturm herumgeht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('market-island-lighthouse-border', 'de', 1, 'Leuchtturm-Modell als Deko', 'Leuchtturm Modell Deko', 'Ein kleines maritimes Stück fürs Regal oder den Schreibtisch.'),
  ('market-island-lighthouse-border', 'de', 2, 'Ostsee-Karte als Poster', 'Ostsee Karte Poster', 'Zeigt dir Küsten und Inseln der Ostsee auf einen Blick.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('market-island-lighthouse-border', 'de', 1, 'Yle: This is how I found inner peace at a lighthouse in the middle of the Baltic Sea', 'https://yle.fi/aihe/a/20-191484'),
  ('market-island-lighthouse-border', 'de', 2, 'Atlas Obscura: Märket Lighthouse – Hammarland, Finland', 'https://www.atlasobscura.com/places/market-lighthouse'),
  ('market-island-lighthouse-border', 'de', 3, 'Islands: This Tiny Island Is Split Between Two European Countries (And You Can Walk Across The Border In Under A Minute)', 'https://www.islands.com/1901472/market-island-tiny-split-two-european-countries-walk-border/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'market-island-lighthouse-border', 'en', 'market-island-lighthouse-border',
  'A lighthouse on the wrong side of the border gave this tiny island a zigzag border',
  'Finland and Sweden share a rock in the Baltic Sea, and the line between them bends around a lighthouse.',
  'On Märket, a tiny Baltic island shared by Finland and Sweden, a lighthouse built in 1885 turned out to stand on the Swedish side, so the border was later redrawn around it.',
  'Most borders follow rivers, mountain ridges or a ruler on a map. The one on Märket bends around a lighthouse.

## A line through a bare rock

Märket is a rocky islet in the Baltic Sea, in the northern part of the Sea of Åland, roughly 350 by 150 metres. According to Yle, the border was drawn right through it after Sweden lost Finland to Russia in the war of 1808 to 1809. Islands.com says that original border was a straight line. It still splits the island in two today.

In 1885 a lighthouse went up. According to Atlas Obscura, the czar ordered the architect Georg Schreck to build it, and construction began on the island''s highest point. That point was on the Swedish side. Yle is understanding about it: it made sense to build on the best spot, in the middle of a high cliff. Only when the borderline was examined later did it turn out that the lighthouse was standing in Sweden.

## The quiet swap

The solution came in the 1980s, long after Finland had become independent. Yle reports that in 1981 the border was moved and Sweden was compensated for the area the lighthouse had occupied without permission. Atlas Obscura dates the official reattachment of the lighthouse to Finnish territory to 1985, connected by a thin strip of land.

The result is a border you won''t find many places: Atlas Obscura calls it a haphazard Z-shape, Yle calls it bow-shaped. The turning points are marked on the rocks, but according to Yle it''s hard to tell which country you''re standing in, and there are no border formalities on the island.

The lighthouse has been unmanned since 1977. Since 2007, volunteers have spent their summers repairing it and showing visitors around, says Atlas Obscura.

> Bonus fact: The border on Märket isn''t drawn once and forgotten. According to Islands.com, it is resurveyed every 25 years.

Two countries, one rock and a border that politely steps around a lighthouse.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('market-island-lighthouse-border', 'en', 1, 'Decorative lighthouse model', 'lighthouse model decoration', 'A small maritime piece for a shelf or desk.'),
  ('market-island-lighthouse-border', 'en', 2, 'Map poster of the Baltic Sea', 'Baltic Sea map poster', 'Shows the coasts and islands of the Baltic at a glance.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('market-island-lighthouse-border', 'en', 1, 'Yle: This is how I found inner peace at a lighthouse in the middle of the Baltic Sea', 'https://yle.fi/aihe/a/20-191484'),
  ('market-island-lighthouse-border', 'en', 2, 'Atlas Obscura: Märket Lighthouse – Hammarland, Finland', 'https://www.atlasobscura.com/places/market-lighthouse'),
  ('market-island-lighthouse-border', 'en', 3, 'Islands: This Tiny Island Is Split Between Two European Countries (And You Can Walk Across The Border In Under A Minute)', 'https://www.islands.com/1901472/market-island-tiny-split-two-european-countries-walk-border/');
