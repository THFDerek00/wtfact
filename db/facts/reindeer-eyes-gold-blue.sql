-- WTFact-Fakt „Rentieraugen werden im Winter von Gold zu Blau“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('reindeer-eyes-gold-blue', '2026-10-24T16:00:00+02:00', 'animals', '🦌', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'reindeer-eyes-gold-blue', 'de', 'rentier-augen-gold-blau',
  'Rentieraugen werden im Winter von Gold zu Blau',
  'Arktische Rentiere wechseln mit den Jahreszeiten die Farbe einer Schicht hinten in ihren Augen.',
  'Bei arktischen Rentieren ist die reflektierende Schicht hinter der Netzhaut, das Tapetum lucidum, im Sommer goldfarben und im Winter tiefblau.',
  'Deine Augenfarbe steht fürs Leben fest. Arktische Rentiere haben einen anderen Deal: Ein Teil ihrer Augen wechselt mit den Jahreszeiten die Farbe.

## Ein Spiegel, der die Farbe wechselt

Hinter der Netzhaut haben Rentiere eine reflektierende Schicht, das Tapetum lucidum. Es wirft Licht zurück durch die Netzhaut und gibt den Sinneszellen eine zweite Chance, es einzufangen. 2013 beschrieben Forschende vom UCL in London und der Universität Tromsø in Norwegen unter der Leitung von Glen Jeffery im Fachblatt Proceedings of the Royal Society B, was damit im Lauf des Jahres passiert. Im Sommer ist das Tapetum arktischer Rentiere goldfarben. Im Winter ist es tiefblau.

Viele der Augen stammten von samischen Rentierhaltern, von Tieren, die im Sommer und im Winter geschlachtet wurden. Laut Live Science sagte Jeffery: „So etwas hat noch nie jemand bei einem Säugetier gesehen, schon gar nicht eine so große Veränderung.“

## Druck im Auge

Die Arktis liefert Extreme: laut National Geographic etwa drei Monate Dauerlicht und drei Monate Dauerdunkel. Im dunklen Winter bleiben die Pupillen der Rentiere monatelang weit offen. Das Team vermutet, dass dadurch der Druck im Auge steigt. Der presst die Kollagenfasern im Tapetum enger zusammen, und engere Abstände reflektieren bläulicheres Licht.

Die goldene Sommerschicht wirft viel Licht zurück durch die Netzhaut. Die blaue Winterschicht wirft deutlich weniger Licht aus dem Auge hinaus und streut mehr davon auf die Sinneszellen. Das hilft im schwachen Winterlicht, kostet aber etwas Schärfe. National Geographic berichtet, das Team habe die blauen Netzhäute als mindestens 1.000-mal lichtempfindlicher gemessen als die goldenen. Ein dort zitierter Sehforscher rechnete allerdings vor, dass die reflektierende Schicht allein die Empfindlichkeit höchstens verdoppeln kann. Diese Zahl ist also noch nicht ganz erklärt.

> Bonusfakt: Dasselbe Team hatte schon vorher herausgefunden, dass arktische Rentiere ultraviolettes Licht sehen können. Laut UCL begünstigt die blaue Winterreflexion vermutlich genau diese UV-Empfindlichkeit.

Gleiches Rentier, gleiche Augen, zwei Farben im Jahr. Der Schlittentrupp vom Weihnachtsmann kommt mit eingebautem Saisonmodus.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('reindeer-eyes-gold-blue', 'de', 1, 'Rentier-Plüschtier', 'Rentier Plüschtier', 'Ein weiches Kuschel-Rentier fürs Sofa oder als Geschenk.'),
  ('reindeer-eyes-gold-blue', 'de', 2, 'Buch über Tiere der Arktis', 'Tiere der Arktis Buch', 'Zeigt, wie Tiere Polartag und Polarnacht überstehen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('reindeer-eyes-gold-blue', 'de', 1, 'UCL News: Reindeers'' eyes change colour with Arctic seasons', 'https://www.ucl.ac.uk/news/2013/oct/reindeers-eyes-change-colour-arctic-seasons'),
  ('reindeer-eyes-gold-blue', 'de', 2, 'Live Science: Reindeer Eyes Turn Blue in the Winter', 'https://www.livescience.com/40813-reindeer-eyes-turn-blue-in-winter.html'),
  ('reindeer-eyes-gold-blue', 'de', 3, 'National Geographic: Why Are Reindeer Eyes Golden In Summer But Blue In Winter?', 'https://www.nationalgeographic.com/science/article/why-are-reindeer-eyes-golden-in-summer-but-blue-in-winter');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'reindeer-eyes-gold-blue', 'en', 'reindeer-eyes-gold-to-blue',
  'Reindeer eyes turn from gold to blue in winter',
  'Arctic reindeer switch the color of a layer at the back of their eyes with the seasons.',
  'In Arctic reindeer, the reflective layer behind the retina, the tapetum lucidum, is gold in summer and deep blue in winter.',
  'Your eye color is set for life. Arctic reindeer have a different deal: part of their eyes switches color with the seasons.

## A mirror that changes color

Behind the retina, reindeer have a reflective layer called the tapetum lucidum. It bounces light back through the retina, giving the light-sensitive cells a second chance to catch it. In 2013, scientists from UCL in London and the University of Tromsø in Norway, led by Glen Jeffery, described in the journal Proceedings of the Royal Society B what happens to it over the year. In summer, the tapetum of Arctic reindeer is gold. In winter, it is deep blue.

Many of the eyes came from Sami reindeer herders, from animals killed in summer and in winter. According to Live Science, Jeffery said: "No one has ever seen anything like this in a mammal before, let alone such a large shift."

## Pressure in the eye

The Arctic serves up extremes: according to National Geographic, about three months of constant daylight and three months of constant darkness. In the dark winter, reindeer pupils stay wide open for months. The team thinks this probably raises the pressure inside the eye. That squeezes the collagen fibers in the tapetum closer together, and tighter spacing reflects bluer light.

The golden summer layer reflects a lot of light back through the retina. The blue winter layer reflects far less light back out of the eye and scatters more of it onto the light-sensitive cells. That helps in the dim winter light, at the cost of some sharpness. National Geographic reports that the team measured the blue retinas as at least 1,000 times more sensitive to light than the golden ones. A vision scientist quoted there calculated, though, that the reflective layer alone could at most double sensitivity, so that number still needs explaining.

> Bonus fact: The same team had found earlier that Arctic reindeer can see ultraviolet light. According to UCL, the blue winter reflection likely favors that UV sensitivity.

Same reindeer, same eyes, two colors a year. Santa''s team comes with built-in seasonal settings.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('reindeer-eyes-gold-blue', 'en', 1, 'Reindeer plush toy', 'reindeer plush toy', 'A soft, cuddly reindeer for the sofa or as a gift.'),
  ('reindeer-eyes-gold-blue', 'en', 2, 'Book about Arctic animals', 'arctic animals book', 'Shows how animals live through polar day and polar night.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('reindeer-eyes-gold-blue', 'en', 1, 'UCL News: Reindeers'' eyes change colour with Arctic seasons', 'https://www.ucl.ac.uk/news/2013/oct/reindeers-eyes-change-colour-arctic-seasons'),
  ('reindeer-eyes-gold-blue', 'en', 2, 'Live Science: Reindeer Eyes Turn Blue in the Winter', 'https://www.livescience.com/40813-reindeer-eyes-turn-blue-in-winter.html'),
  ('reindeer-eyes-gold-blue', 'en', 3, 'National Geographic: Why Are Reindeer Eyes Golden In Summer But Blue In Winter?', 'https://www.nationalgeographic.com/science/article/why-are-reindeer-eyes-golden-in-summer-but-blue-in-winter');
