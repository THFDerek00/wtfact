-- WTFact-Fakt „Der Erfinder des Zauberwürfels brauchte rund einen Monat, um ihn selbst zu lösen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('rubik-month-to-solve', '2026-11-01T12:00:00+01:00', 'brands', '🧩', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rubik-month-to-solve', 'de', 'rubik-brauchte-einen-monat-fuer-seinen-wuerfel',
  'Der Erfinder des Zauberwürfels brauchte rund einen Monat, um ihn selbst zu lösen',
  'Ernő Rubik baute ein Rätsel, verdrehte es und bekam es nicht mehr zurück. Es folgten Wochen voller Ausprobieren.',
  'Nachdem Ernő Rubik in Budapest die erste Version seines Würfels gebaut hatte, brauchte er rund einen Monat, um ihn wieder in den Ausgangszustand zu bringen.',
  'Man könnte meinen, wer ein Rätsel erfindet, kennt auch die Lösung. Bei diesem nicht. Ernő Rubik baute seinen Würfel, drehte daran und hatte dann ein echtes Problem.

## Ein Designprofessor und seine Holzklötzchen

Rubik wurde 1944 in Budapest geboren und unterrichtete dort Design an der Akademie für angewandte Kunst und Gestaltung. Laut Britannica baute er seinen Prototyp während dieser Zeit aus 27 Holzklötzchen. Mental Floss beschreibt eine frühe Version, die von Büroklammern und Gummibändern zusammengehalten wurde. Er baute sie, gleich nachdem ihm die Idee für den Drehmechanismus gekommen war. „Es war sehr emotional“, sagte er laut Mental Floss 2012 dem Sender CNN.

Ein Bestseller war nicht der Plan. Laut Mental Floss zeigte Rubik den Würfel seinen Studierenden, weil er dachte, er könne beim Unterricht über räumliches Denken und Gruppentheorie helfen. Auch Britannica nennt ihn ein nützliches Werkzeug, um algebraische Gruppentheorie zu lehren.

## Dann verdrehte er ihn

Den Würfel zu verdrehen ist leicht. Ihn zurückzudrehen nicht. Laut Britannica und Mental Floss brauchte Rubik rund einen Monat Ausprobieren, bis seine eigene Erfindung wieder ihr Ausgangsmuster zeigte.

Dass es so schwer ist, liegt an der schieren Zahl der Möglichkeiten. Britannica beziffert die möglichen Stellungen auf rund 43 Trillionen, und nur eine davon ist der gelöste Würfel.

> Bonusfakt: In Ungarn kam der Würfel zuerst als „Magic Cube“, also Zauberwürfel, in den Handel. Laut Mental Floss bestellte die US-Firma Ideal Toy nach fünf Tagen Verhandlung in Budapest eine Million Stück, danach hieß er Rubik''s Cube.

## Vom Hörsaal zum weltweiten Hype

Die ungarische Firma Konsumex begann laut Britannica Ende 1977 mit dem Verkauf. Die große Welle kam nach 1980: In rund drei Jahren auf dem Höhepunkt wurde der Großteil von mehr als 100 Millionen offiziellen Würfeln verkauft, dazu schätzungsweise 50 Millionen Nachahmungen.

Wenn du also schon mal nach zehn Minuten aufgegeben hast: Entspann dich. Sein eigener Erfinder brauchte Wochen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rubik-month-to-solve', 'de', 1, 'Klassischer 3x3-Zauberwürfel', 'Rubik''s Cube 3x3 Original Zauberwürfel', 'Das Original-Drehpuzzle, bereit für deinen eigenen Monat voller Ausprobieren.'),
  ('rubik-month-to-solve', 'de', 2, 'Speedcube für Einsteiger', 'Speedcube 3x3 magnetisch Anfänger', 'Dreht sich leichter und schneller als ein klassischer Würfel, ideal, sobald du die Züge kennst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rubik-month-to-solve', 'de', 1, 'Britannica: Erno Rubik', 'https://www.britannica.com/biography/Erno-Rubik'),
  ('rubik-month-to-solve', 'de', 2, 'Mental Floss: How Ernö Rubik Created the Rubik''s Cube', 'https://www.mentalfloss.com/article/58162/how-erno-rubik-created-rubiks-cube');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rubik-month-to-solve', 'en', 'rubik-needed-a-month-to-solve-his-cube',
  'The inventor of the Rubik''s Cube needed about a month to solve it himself',
  'Ernő Rubik built a puzzle, scrambled it, and then couldn''t get it back. Weeks of trial and error followed.',
  'After Ernő Rubik built the first version of his cube in Budapest, it took him about a month to bring it back to its original state.',
  'You''d think the person who invents a puzzle knows the answer. Not with this one. Ernő Rubik built his cube, turned it, and then had a real problem.

## A design professor and his wooden blocks

Rubik was born in Budapest in 1944 and taught design at the Academy of Applied Arts and Design there. According to Britannica, he built his prototype while teaching, out of 27 wooden blocks. Mental Floss describes an early version held together with paper clips and rubber bands, built right after the idea for the turning mechanism hit him. "It was very emotional," he told CNN in 2012, according to Mental Floss.

The idea wasn''t to create a bestseller. Mental Floss writes that Rubik showed the cube to his students because he thought it could help with lessons on spatial thinking and group theory. Britannica also calls it a useful tool for teaching algebraic group theory.

## Then he scrambled it

Turning the cube is easy. Turning it back is not. According to both Britannica and Mental Floss, it took Rubik about a month of trial and error to return his own invention to its starting pattern.

The reason it''s so hard is the sheer number of possibilities. Britannica puts the number of possible arrangements at about 43 quintillion, and only one of them is the solved cube.

> Bonus fact: The cube was first sold in Hungary as the "Magic Cube". According to Mental Floss, the American company Ideal Toy ordered one million of them after five days of negotiations in Budapest, and it was rebranded as the Rubik''s Cube.

## From classroom to worldwide craze

The Hungarian company Konsumex started selling the cube in late 1977, Britannica says. The big wave came after 1980: in roughly three years of peak popularity, the bulk of more than 100 million authorized cubes were sold, plus an estimated 50 million imitations.

So if you''ve ever given up on a cube after ten minutes, relax. Its own inventor needed weeks.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rubik-month-to-solve', 'en', 1, 'Classic 3x3 puzzle cube', 'Rubik''s Cube 3x3 original', 'The original twisty puzzle, ready for your own month of trial and error.'),
  ('rubik-month-to-solve', 'en', 2, 'Speed cube for beginners', 'speed cube 3x3 magnetic beginner', 'Turns smoother and faster than a classic cube, nice once you know the moves.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rubik-month-to-solve', 'en', 1, 'Britannica: Erno Rubik', 'https://www.britannica.com/biography/Erno-Rubik'),
  ('rubik-month-to-solve', 'en', 2, 'Mental Floss: How Ernö Rubik Created the Rubik''s Cube', 'https://www.mentalfloss.com/article/58162/how-erno-rubik-created-rubiks-cube');
