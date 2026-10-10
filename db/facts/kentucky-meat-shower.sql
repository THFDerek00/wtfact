-- WTFact-Fakt „1876 fielen in Kentucky Fleischbrocken aus heiterem Himmel“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('kentucky-meat-shower', '2026-10-17T16:00:00+02:00', 'weird', '🥩', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kentucky-meat-shower', 'de', 'fleischregen-kentucky-1876',
  '1876 fielen in Kentucky Fleischbrocken aus heiterem Himmel',
  'Auf eine Farm regnete es scheinbar rohes Fleisch, Leute probierten davon, und ganz gelöst ist das Rätsel bis heute nicht.',
  'Am 3. März 1876 fielen Brocken, die wie rohes Fleisch aussahen, aus wolkenlosem Himmel auf die Farm der Familie Crouch in Olympian Springs in Kentucky.',
  'Regen, Schnee, Hagel: alles normal. Aber am 3. März 1876 kam auf eine Farm in Olympian Springs in Kentucky etwas anderes herunter. Laut Mental Floss war es ein sonniger, wolkenloser Tag, als Brocken, die wie rohes Fleisch aussahen, vom Himmel fielen.

## „Oma, es schneit!“

Mrs. Crouch kochte gerade im Hof Seife, als ihr Enkel rief, es schneie. Es war kein Schnee. Um sie herum landeten sehnige Fetzen Fleisch, manche angeblich so lang wie ihre Hand. Laut Mental Floss schätzte sie die Menge auf mindestens einen halben Scheffel, verteilt auf etwa einen Morgen Land, also rund 4.000 Quadratmeter.

Die Geschichte schaffte es bis in die New York Times, die sie unter der Überschrift „Flesh Descending in a Shower“ (Fleisch kommt als Schauer herunter) brachte. Leute aus der Gegend kamen, um sich das Zeug anzusehen, und manche steckten es sogar in den Mund. Ein Metzger aus dem nahen Mount Sterling soll ein Stück gekaut, wieder ausgespuckt und mit Hammelfleisch verglichen haben. Ein Fallensteller war sich sicher: Bärenfleisch. Den Tieren auf dem Hof war das offenbar egal, sie fraßen es einfach.

## Die Wissenschaft stritt sich

Proben wurden konserviert und an Fachleute geschickt, die sich nicht einig wurden. Einer, Leopold Brandeis, hielt das Material für Nostoc, ein Cyanobakterium, das nach Regen gallertartige Klumpen bilden kann. Andere, die Proben untersuchten, sagten: Fleisch. Skeptoid weist darauf hin, dass ein Großteil der Geschichte auf einen einzigen Mann aus dem Ort zurückgeht, Harrison Gill. Wie viel davon genau so passiert ist, lässt sich also schwer sagen.

Die plausibelste Erklärung, damals wie heute, ist ziemlich eklig: Geier. Truthahngeier und Rabengeier würgen ihren Mageninhalt hoch, wenn sie sich bedroht fühlen. Ein Schwarm, der sich über der Farm erleichtert, würde den Fleischregen erklären. Bewiesen ist das aber nie worden.

> Bonusfakt: Ein konserviertes Stück liegt an der Transylvania University. 2007 ließ ein Kunstprofessor in einem Labor Jelly Beans nach seinen Geschmacksstoffen herstellen. Ein Testesser tippte auf „Erdbeer-Schweinekotelett“.

Das Rätsel ist bis heute offen, und Bath County feiert es trotzdem. Im Februar 2026 erinnerte ein Kentucky Meat Shower Festival an den 150. Jahrestag, mit Kochwettbewerb, Fleisch-Spielen und einem Blick auf die konservierte Probe. Andere Orte haben einen berühmten Hagelsturm. Dieser hier hatte einen Himmel voller Fleisch.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kentucky-meat-shower', 'de', 1, 'Buch über ungelöste Rätsel', 'Buch ungelöste Rätsel mysteriöse Phänomene', 'Eine Sammlung schräger Ereignisse und offener Fragen zum Durchschmökern.'),
  ('kentucky-meat-shower', 'de', 2, 'Jelly-Beans-Mischung', 'Jelly Beans Mischung Geschmacksrichtungen', 'Ein großer Mix aus klassischen und schrägen Sorten für deinen eigenen Geschmackstest.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kentucky-meat-shower', 'de', 1, 'Mental Floss: Digging Into the Explosive Mystery Behind the Kentucky Meat Shower of 1876', 'https://www.mentalfloss.com/history/kentucky-meat-shower-1876-history'),
  ('kentucky-meat-shower', 'de', 2, 'Skeptoid: The Great Kentucky Meat Shower', 'https://skeptoid.com/episodes/4653'),
  ('kentucky-meat-shower', 'de', 3, 'WYMT: Kentucky Meat Shower Festival marks 150th anniversary of Bath County’s most unusual event', 'https://www.wymt.com/2026/02/28/kentucky-meat-shower-festival-marks-150th-anniversary-bath-countys-most-unusual-event');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kentucky-meat-shower', 'en', 'kentucky-meat-shower-1876',
  'In 1876, chunks of meat fell from a clear sky in Kentucky',
  'A farm got showered with raw-looking flesh, people tasted it, and nobody has fully solved it since.',
  'On March 3, 1876, chunks of what looked like raw meat fell from a cloudless sky onto the Crouch family farm in Olympian Springs, Kentucky.',
  'Rain, snow, hail: fine. But on March 3, 1876, something else came down on a farm in Olympian Springs, Kentucky. According to Mental Floss, it was a sunny, cloudless day when chunks of what looked like raw meat started falling from the sky.

## "Grandma, it''s snowing!"

Mrs. Crouch was making soap in the yard when her grandson said it was snowing. It wasn''t snow. Gristly flakes of flesh were landing all around them, some reportedly as long as her hand. Mental Floss reports that she estimated at least half a bushel, spread over roughly an acre, about 4,000 square meters.

The story made it all the way to the New York Times, which ran it under the headline "Flesh Descending in a Shower." Locals came to inspect the stuff, and some even put it in their mouths. A butcher from nearby Mount Sterling reportedly chewed a piece, spat it out and compared it to mutton. A trapper insisted it was bear meat. The farm animals apparently didn''t care and simply ate it.

## Science tried, and argued

Samples were preserved and sent to experts, who couldn''t agree. One, Leopold Brandeis, identified the material as Nostoc, a cyanobacterium that can form jelly-like clumps after rain. Others who examined samples said it was meat. Skeptoid points out that much of the story traces back to one local man, Harrison Gill, so it''s hard to know how much really happened as told.

The most plausible explanation, then and now, is surprisingly gross: vultures. Turkey vultures and black vultures throw up when they feel threatened, so a flock emptying its stomachs over the farm would explain the meat shower. It has never been proven, though.

> Bonus fact: A preserved piece is kept at Transylvania University. In 2007, an art professor had a lab create jelly beans based on its flavor compounds. One taste-tester guessed "strawberry porkchop."

The mystery is still open, and Bath County celebrates it anyway. In February 2026, a Kentucky Meat Shower Festival marked the 150th anniversary with a cookoff, meat-themed games and a look at the preserved sample. Some places get a famous hailstorm. This one got a sky full of meat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kentucky-meat-shower', 'en', 1, 'Book of unexplained mysteries', 'book unexplained mysteries strange phenomena', 'A collection of odd events and unsolved puzzles to read through.'),
  ('kentucky-meat-shower', 'en', 2, 'Gourmet jelly beans assortment', 'jelly beans assorted flavors', 'A big mix of strange and classic flavors for your own taste test.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kentucky-meat-shower', 'en', 1, 'Mental Floss: Digging Into the Explosive Mystery Behind the Kentucky Meat Shower of 1876', 'https://www.mentalfloss.com/history/kentucky-meat-shower-1876-history'),
  ('kentucky-meat-shower', 'en', 2, 'Skeptoid: The Great Kentucky Meat Shower', 'https://skeptoid.com/episodes/4653'),
  ('kentucky-meat-shower', 'en', 3, 'WYMT: Kentucky Meat Shower Festival marks 150th anniversary of Bath County’s most unusual event', 'https://www.wymt.com/2026/02/28/kentucky-meat-shower-festival-marks-150th-anniversary-bath-countys-most-unusual-event');
