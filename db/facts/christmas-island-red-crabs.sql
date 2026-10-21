-- WTFact-Fakt „Auf der Weihnachtsinsel leben rund 50 Millionen rote Krabben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('christmas-island-red-crabs', '2026-12-13T00:00:00+01:00', 'animals', '🦀', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'christmas-island-red-crabs', 'de', 'weihnachtsinsel-50-millionen-krabben',
  'Auf der Weihnachtsinsel leben rund 50 Millionen rote Krabben',
  'Einmal im Jahr wird eine ganze Insel rot. Straßen werden gesperrt, für Krabben gibt es eigene Brücken.',
  'Auf der australischen Weihnachtsinsel leben rund 50 Millionen rote Landkrabben, die jedes Jahr in Massen zum Meer wandern.',
  'Die Weihnachtsinsel heißt so, weil ein Kapitän sie 1643 an Weihnachten entdeckte. Berühmt ist sie aber für etwas anderes, das ebenfalls gut in den Dezember passt: Sie wird knallrot.

## Ein roter Teppich, der sich bewegt

Auf der kleinen australischen Insel im Indischen Ozean leben laut Parks Australia rund 50 Millionen rote Landkrabben. Den Großteil des Jahres verstecken sie sich im feuchten Regenwald. Doch wenn die Regenzeit beginnt, meist zwischen Oktober und Dezember, machen sich Millionen von ihnen gleichzeitig auf den Weg zur Küste, um sich zu paaren und ihre Eier im Meer abzulegen.

Dann sind Straßen, Gärten und sogar Häuser voller Krabben. Wer dort lebt, muss Umwege fahren oder ganz zu Hause bleiben. Laut ABC News wird die Insel in dieser Zeit regelrecht von Krabben überrollt.

## Brücken nur für Krabben

Damit die Tiere nicht überfahren werden, hat die kleine Insel ein eigenes Krabben-Verkehrssystem. Laut Parks Australia gibt es Absperrungen auf rund 20 Kilometern Länge, 31 Unterführungen und sogar eine eigene Krabbenbrücke über eine Straße.

Die Weibchen bleiben nach der Paarung 12 bis 13 Tage in feuchten Höhlen nahe der Küste, bis die Eier reif sind. Dann lassen sie sie im Morgengrauen ins Meer fallen. Eine einzige Krabbe trägt bis zu 100.000 Eier.

> Bonusfakt: Die winzigen Babykrabben, die Wochen später aus dem Meer zurückkommen, brauchen laut Parks Australia etwa 9 Tage, um vom Strand hinauf ins Hochland der Insel zu krabbeln.

Krabbenbrücken, Krabbentunnel und gesperrte Straßen, und das alles auf einer Insel, die Weihnachten schon im Namen trägt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('christmas-island-red-crabs', 'de', 1, 'Doku-Bildband über Tierwanderungen', 'Bildband Tierwanderungen Natur', 'Zeigt die großen Wanderungen der Tierwelt in eindrucksvollen Fotos.'),
  ('christmas-island-red-crabs', 'de', 2, 'Plüschtier Krabbe rot', 'Plüschtier Krabbe rot', 'Ein weiches Andenken für Krabben-Fans.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('christmas-island-red-crabs', 'de', 1, 'Parks Australia: The red crab migration in numbers', 'https://blog.parksaustralia.gov.au/2016/11/10/the-red-crab-migration-in-numbers/'),
  ('christmas-island-red-crabs', 'de', 2, 'Parks Australia: Millions of crabs march on Christmas Island', 'https://parksaustralia.gov.au/news/millions-of-crabs-march-on-christmas-island/'),
  ('christmas-island-red-crabs', 'de', 3, 'ABC News: Crustacean Invasion! Millions of Red Crabs Move Onto Christmas Island', 'https://abcnews.go.com/blogs/technology/2013/11/crustacean-invasion-millions-of-red-crabs-take-over-australias-christmas-island');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'christmas-island-red-crabs', 'en', 'christmas-island-50-million-crabs',
  'About 50 million red crabs live on Christmas Island',
  'Once a year a whole island turns red. Roads close, and crabs get their own bridges.',
  'Australia''s Christmas Island is home to about 50 million red land crabs, which march to the sea in huge numbers every year.',
  'Christmas Island got its name because a captain spotted it on Christmas Day in 1643. But it''s famous for something else that also fits December nicely: it turns bright red.

## A red carpet that moves

According to Parks Australia, about 50 million red land crabs live on this small Australian island in the Indian Ocean. For most of the year, they hide in the damp rainforest. But when the wet season starts, usually between October and December, millions of them set off for the coast at the same time to mate and release their eggs into the sea.

Then roads, gardens and even houses fill up with crabs. People who live there have to take detours or stay home. ABC News describes the island as being completely overrun during this time.

## Bridges just for crabs

To keep the animals from being run over, the island has its own crab traffic system. According to Parks Australia, there are barriers along about 20 kilometers, 31 underpasses, and even a dedicated crab bridge over a road.

After mating, the females stay in damp burrows near the shore for 12 to 13 days until their eggs are ready. Then they drop them into the sea at dawn. A single female carries up to 100,000 eggs.

> Bonus fact: The tiny baby crabs that return from the sea weeks later need about 9 days, Parks Australia says, to climb from the beach up to the island''s plateau.

A crab bridge, crab underpasses, closed roads, all on an island that already has Christmas in its name.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('christmas-island-red-crabs', 'en', 1, 'Animal migration photo book', 'animal migration photography book', 'Shows the great migrations of the animal world in stunning photos.'),
  ('christmas-island-red-crabs', 'en', 2, 'Red crab plush toy', 'red crab plush toy', 'A soft souvenir for crab fans.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('christmas-island-red-crabs', 'en', 1, 'Parks Australia: The red crab migration in numbers', 'https://blog.parksaustralia.gov.au/2016/11/10/the-red-crab-migration-in-numbers/'),
  ('christmas-island-red-crabs', 'en', 2, 'Parks Australia: Millions of crabs march on Christmas Island', 'https://parksaustralia.gov.au/news/millions-of-crabs-march-on-christmas-island/'),
  ('christmas-island-red-crabs', 'en', 3, 'ABC News: Crustacean Invasion! Millions of Red Crabs Move Onto Christmas Island', 'https://abcnews.go.com/blogs/technology/2013/11/crustacean-invasion-millions-of-red-crabs-take-over-australias-christmas-island');
