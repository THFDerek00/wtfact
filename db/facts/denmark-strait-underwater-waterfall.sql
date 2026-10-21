-- WTFact-Fakt „Der größte Wasserfall der Welt liegt unter Wasser“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('denmark-strait-underwater-waterfall', '2026-10-23T10:00:00+02:00', 'ocean', '💧', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'denmark-strait-underwater-waterfall', 'de', 'daenemarkstrasse-unterwasser-wasserfall',
  'Der größte Wasserfall der Welt liegt unter Wasser',
  'Nicht Niagara, nicht Victoria. Der Rekordhalter stürzt mitten im Meer in die Tiefe.',
  'In der Dänemarkstraße zwischen Grönland und Island fallen laut NOAA rund 3,5 Millionen Kubikmeter Wasser pro Sekunde in die Tiefe. Das ist der größte Wasserfall der Erde.',
  'Wasser, das unter Wasser einen Wasserfall hinunterstürzt? Klingt nach einem Rätsel. Doch genau so ein Wasserfall ist der größte der Welt.

## Ein Fall, den niemand sieht

Zwischen Grönland und Island liegt die Dänemarkstraße. Unter ihrer Oberfläche verbirgt sich laut der US-Behörde NOAA der größte Wasserfall der Erde, der sogenannte Dänemarkstraßen-Katarakt.

Dort strömt sehr kaltes Wasser aus dem Nordmeer nach Süden und trifft auf wärmeres Wasser. Kaltes Wasser ist dichter und damit schwerer. Es sinkt deshalb unter das warme Wasser und stürzt an einer Kante am Meeresboden in die Tiefe.

## Die Zahlen

Laut NOAA fließen dabei etwa 3,5 Millionen Kubikmeter Wasser pro Sekunde. Das ist weit mehr als bei jedem Wasserfall an Land.

Laut Live Science fällt das Wasser insgesamt rund 3.500 Meter tief. Der eigentliche Fall misst etwa 2.000 Meter und ist damit ungefähr doppelt so hoch wie der Salto Ángel in Venezuela, der höchste Wasserfall an Land.

> Bonusfakt: Spektakulär rauschen hört man den Katarakt nicht. Laut Live Science fließt das Wasser nur mit etwa einem halben Meter pro Sekunde, viel langsamer als bei den Niagarafällen.

Sehen kann man diesen Wasserfall natürlich nicht, weder vom Schiff aus noch aus dem Flugzeug. Er spielt sich komplett unter der Oberfläche ab, im kalten und dunklen Wasser des Nordatlantiks.

Wichtig ist er trotzdem. Das abstürzende kalte Wasser ist Teil der großen Meeresströmungen, die Wärme und Nährstoffe rund um den Globus transportieren. Diese Strömungen beeinflussen auch das Wetter und Klima in Europa.

Wer also an einem Wasserfall steht und staunt, sollte wissen: Der wirklich größte fließt leise und unsichtbar zwischen Grönland und Island.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('denmark-strait-underwater-waterfall', 'de', 1, 'Reiseführer Island', 'Reiseführer Island', 'Für eine Reise ins Land der Wasserfälle, an Land und darunter.'),
  ('denmark-strait-underwater-waterfall', 'de', 2, 'Buch über Meeresströmungen', 'Buch Meeresströmungen Ozean Klima', 'Erklärt, wie das Wasser der Ozeane um die Welt reist.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('denmark-strait-underwater-waterfall', 'de', 1, 'NOAA Ocean Service: Where is Earth’s Largest Waterfall?', 'https://oceanservice.noaa.gov/facts/largest-waterfall.html'),
  ('denmark-strait-underwater-waterfall', 'de', 2, 'Live Science: Denmark Strait cataract: The world’s largest waterfall, hidden underwater', 'https://www.livescience.com/planet-earth/rivers-oceans/denmark-strait-cataract-the-worlds-largest-waterfall-hidden-underwater-and-unlike-any-other-on-land');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'denmark-strait-underwater-waterfall', 'en', 'denmark-strait-underwater-waterfall',
  'The largest waterfall in the world is underwater',
  'Not Niagara, not Victoria. The record holder plunges down in the middle of the sea.',
  'In the Denmark Strait between Greenland and Iceland, about 3.5 million cubic meters of water per second plunge into the deep, according to NOAA. It’s the largest waterfall on Earth.',
  'Water falling down a waterfall underwater? Sounds like a riddle. But that’s exactly what the largest waterfall in the world is.

## A fall nobody can see

The Denmark Strait lies between Greenland and Iceland. According to the US agency NOAA, the largest waterfall on Earth is hidden beneath its surface: the Denmark Strait cataract.

Very cold water from the Nordic Seas flows south there and meets warmer water. Cold water is denser and therefore heavier. So it sinks below the warm water and plunges over an edge on the seafloor.

## The numbers

According to NOAA, about 3.5 million cubic meters of water flow down every second. That’s far more than any waterfall on land.

According to Live Science, the water drops about 3,500 meters in total. The fall itself measures about 2,000 meters, roughly double the height of Angel Falls in Venezuela, the tallest waterfall on land.

> Bonus fact: You won’t hear the cataract thunder. According to Live Science, the water only moves at about half a meter per second, much slower than at Niagara Falls.

Of course, you can’t see this waterfall, not from a ship and not from a plane. It all happens below the surface, in the cold, dark water of the North Atlantic.

It still matters, though. The falling cold water is part of the big ocean currents that carry heat and nutrients around the globe. Those currents also influence weather and climate in Europe.

So whenever you stand in awe at a waterfall, keep in mind: the truly biggest one is flowing quietly and invisibly between Greenland and Iceland.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('denmark-strait-underwater-waterfall', 'en', 1, 'Iceland travel guide', 'Iceland travel guide', 'For a trip to the land of waterfalls, on land and below.'),
  ('denmark-strait-underwater-waterfall', 'en', 2, 'Book about ocean currents', 'book ocean currents climate', 'Explains how the water of the oceans travels around the world.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('denmark-strait-underwater-waterfall', 'en', 1, 'NOAA Ocean Service: Where is Earth’s Largest Waterfall?', 'https://oceanservice.noaa.gov/facts/largest-waterfall.html'),
  ('denmark-strait-underwater-waterfall', 'en', 2, 'Live Science: Denmark Strait cataract: The world’s largest waterfall, hidden underwater', 'https://www.livescience.com/planet-earth/rivers-oceans/denmark-strait-cataract-the-worlds-largest-waterfall-hidden-underwater-and-unlike-any-other-on-land');
