-- WTFact-Fakt „Schleimaale verwandeln Wasser in Sekundenbruchteilen in Glibber“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('hagfish-slime', NULL, 'horror', '🐟', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hagfish-slime', 'de', 'schleimaal-schleim',
  'Schleimaale verwandeln Wasser in Sekundenbruchteilen in Glibber',
  'Ein Biss, und der Angreifer hat plötzlich das Maul voller Schleim. Schleimaale sind die Meister der ekligen Verteidigung.',
  'Ein Schleimaal macht aus einem Löffel voll Schleim-Vorstufe in weniger als einer Zehntelsekunde rund einen Liter Schleim.',
  'Ein Raubfisch beißt zu und hat im nächsten Moment das Maul voller Glibber. Willkommen in der Welt der Schleimaale. **Aus einem Löffel voll Schleim-Vorstufe machen sie in weniger als einer Zehntelsekunde rund einen Liter Schleim.**

## Schleim mit eingebauten Fäden

Schleimaale sind keine Aale, sondern eine uralte Gruppe kieferloser Meerestiere. Seit rund 300 Millionen Jahren haben sie sich kaum verändert. Wird einer angegriffen, geben Drüsen an seinem Körper Tausende kleine Päckchen ins Wasser ab. Innerhalb von Millisekunden quellen sie auf.

Das Geheimnis sind winzige Fäden. Jede Schleimzelle produziert einen einzigen Faden von etwa 15 Zentimetern Länge, rund 1000-mal so lang wie die Zelle selbst. Im Wasser entwirren sich die Fäden und halten das Ganze zusammen. Das Ergebnis ist etwa 100.000-mal weicher als Gelatine und verstopft Angreifern die Kiemen.

Angeblich kann ein einzelner Schleimaal sogar einen 5-Gallonen-Eimer, also knapp 19 Liter, in wenigen Minuten mit Schleim füllen. Das Smithsonian Magazine führt das allerdings ausdrücklich als „Schleimaal-Mythologie“, gemessen hat es offenbar niemand.

## Knoten statt Taschentuch

Bleibt die Frage: Wie wird man den eigenen Schleim wieder los? Schleimaale **knoten sich selbst** und schieben den Knoten am Körper entlang, damit ihnen der Glibber nicht ins Gesicht tropft. Auch beim Fressen hilft der Knotentrick: Mit einem Knoten im Schwanz bekommen sie mehr Kraft in ihren Biss.

Ihr Körperbau ist genauso seltsam. Schleimaale haben einen Schädel aus Knorpel, aber keine richtige Wirbelsäule. Ganz so einfach ist es aber nicht: 2011 fanden Forschende bei einer japanischen Art kleine wirbelähnliche Knorpelstückchen. Vermutlich haben Schleimaale ihre Wirbel also im Lauf der Evolution größtenteils verloren.

> Schleimaale haben keine Kiefer, sondern zwei Reihen hornartiger Zähnchen. Und sie können Nährstoffe direkt über die Haut aufnehmen.

Ein Fisch, der sich verknotet, Gegner einschleimt und mit der Haut frisst: Gegen den wirkt jedes Filmmonster ziemlich harmlos.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hagfish-slime', 'de', 1, 'Bildband über Tiere der Tiefsee', 'Tiefsee Bildband Tiere', 'Spektakuläre Fotos von den seltsamsten Bewohnern der Ozeane, ideal zum Durchblättern.'),
  ('hagfish-slime', 'de', 2, 'Schleim-Bastelset zum Selbermachen', 'Schleim selber machen Set', 'Damit rührst du deinen eigenen Glibber an, deutlich harmloser als das Original.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hagfish-slime', 'de', 1, 'Knowable Magazine: A fine time for slime', 'https://knowablemagazine.org/article/living-world/2017/fine-time-slime'),
  ('hagfish-slime', 'de', 2, 'Smithsonian Magazine: 14 Fun Facts About Hagfish', 'https://www.smithsonianmag.com/science-nature/14-fun-facts-about-hagfish-77165589/'),
  ('hagfish-slime', 'de', 3, 'Nature Communications: Identification of vertebra-like elements and their possible differentiation from sclerotomes in the hagfish', 'https://www.nature.com/articles/ncomms1355');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hagfish-slime', 'en', 'hagfish-slime',
  'Hagfish turn water into slime in a split second',
  'One bite, and the attacker suddenly has a mouth full of goo. Hagfish are the masters of gross self-defense.',
  'A hagfish can turn a spoonful of slime precursor into about a liter of slime in less than a tenth of a second.',
  'A predator bites down and a moment later its mouth is full of goo. Welcome to the world of hagfish. **They can turn a spoonful of slime precursor into about a liter of slime in less than a tenth of a second.**

## Slime with built-in threads

Hagfish aren''t eels at all. They''re an ancient group of jawless sea creatures that has barely changed in around 300 million years. When one is attacked, glands along its body release thousands of tiny packets into the water. They swell up within milliseconds.

The secret is tiny threads. Each slime cell produces a single thread about 15 centimeters long, roughly 1000 times the length of the cell itself. In the water, the threads unravel and hold everything together. The result is about 100,000 times softer than gelatin and clogs attackers'' gills.

Supposedly, a single hagfish can even fill a 5-gallon bucket, just under 19 liters, with slime in a few minutes. Smithsonian Magazine, however, explicitly files that under "hagfish mythology," and nobody seems to have actually measured it.

## Knots instead of tissues

Which raises the question: how do you get rid of your own slime? Hagfish **tie themselves in knots** and slide the knot along their body so the goo doesn''t drip onto their face. The knot trick helps with eating too: a knot in the tail gives their bite extra power.

Their anatomy is just as strange. Hagfish have a skull made of cartilage but no real backbone. It''s not quite that simple, though: in 2011, researchers found small vertebra-like bits of cartilage in a Japanese species. So hagfish probably lost most of their vertebrae over the course of evolution.

> Hagfish have no jaws, just two rows of horny tooth-like structures. And they can absorb nutrients directly through their skin.

A fish that ties itself in knots, slimes its enemies and eats through its skin: next to that, every movie monster looks pretty tame.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hagfish-slime', 'en', 1, 'Deep sea creatures photo book', 'deep sea creatures photo book', 'Stunning photos of the strangest residents of the ocean, perfect for flipping through.'),
  ('hagfish-slime', 'en', 2, 'DIY slime making kit', 'DIY slime kit', 'Lets you mix up your own goo, way more harmless than the real thing.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hagfish-slime', 'en', 1, 'Knowable Magazine: A fine time for slime', 'https://knowablemagazine.org/article/living-world/2017/fine-time-slime'),
  ('hagfish-slime', 'en', 2, 'Smithsonian Magazine: 14 Fun Facts About Hagfish', 'https://www.smithsonianmag.com/science-nature/14-fun-facts-about-hagfish-77165589/'),
  ('hagfish-slime', 'en', 3, 'Nature Communications: Identification of vertebra-like elements and their possible differentiation from sclerotomes in the hagfish', 'https://www.nature.com/articles/ncomms1355');
