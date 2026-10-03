-- WTFact-Fakt „Der 3. Oktober ist der einzige Feiertag, den der Bund festlegt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('unity-day-federal-holiday', '2026-10-03T11:51:32+02:00', 'history', '🗓️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'unity-day-federal-holiday', 'de', '3-oktober-einziger-bundes-feiertag',
  'Der 3. Oktober ist der einzige Feiertag, den der Bund festlegt',
  'Ostern, Pfingsten, Weihnachten: Alles Ländersache. Nur ein einziger Feiertag in Deutschland steht in einem Bundesgesetz.',
  'Feiertage legen in Deutschland eigentlich die Bundesländer fest, der Tag der Deutschen Einheit am 3. Oktober ist der einzige gesetzliche Feiertag, der per Bundesrecht gilt.',
  'Du denkst, „der Staat“ legt fest, wann du frei hast? Fast. In Deutschland sind dafür eigentlich die Bundesländer zuständig. **Es gibt aber genau eine Ausnahme: den 3. Oktober.**

## Ein Feiertag aus einem Staatsvertrag

Das Bundesinnenministerium sagt es ganz trocken: „Die Festlegung von Feiertagen ist in der Bundesrepublik Deutschland grundsätzlich Sache der Länder.“ Und gleich danach: „Der einzige bundesrechtlich festgelegte Feiertag ist der Tag der Deutschen Einheit.“

Woher kommt diese Sonderrolle? Aus dem Einigungsvertrag zwischen der Bundesrepublik und der DDR. In Artikel 2 stehen direkt hintereinander zwei Sätze: Hauptstadt Deutschlands ist Berlin. Und: „Der 3. Oktober ist als Tag der Deutschen Einheit gesetzlicher Feiertag.“ Neujahr, Ostern oder der 1. Mai stehen dagegen in den Feiertagsgesetzen der einzelnen Länder.

## Warum ausgerechnet der 3. Oktober?

Das Datum ist kein Jahrestag einer Rede oder eines Festes, sondern ein Stichtag. Am 3. Oktober 1990 trat die DDR dem Geltungsbereich des Grundgesetzes bei. Beschlossen hatte das die Volkskammer der DDR laut der Landeszentrale für politische Bildung Baden-Württemberg in der Nacht vom 22. auf den 23. August 1990.

Der 3. Oktober hat dabei gleich zwei ältere Feiertage abgelöst. Im Westen hieß bis 1990 schon der 17. Juni „Tag der Deutschen Einheit“. Im Osten wurde am 7. Oktober der „Tag der Republik“ gefeiert. Seit 1990 gibt es für beide Seiten nur noch einen gemeinsamen Termin.

> Die große offizielle Feier wandert jedes Jahr: Gastgeber ist die Landeshauptstadt des Bundeslandes, das gerade den Vorsitz im Bundesrat hat. 2026 ist das Bremen.

Der Feiertag, der für alle gleich ist, ist also auch der, über den die Länder nicht mitreden dürfen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('unity-day-federal-holiday', 'de', 1, 'Puzzle Deutschlandkarte mit Bundesländern', 'Puzzle Deutschlandkarte Bundesländer', 'Macht aus 16 Bundesländern ein Puzzle, das man auch zu zweit gut legen kann.'),
  ('unity-day-federal-holiday', 'de', 2, 'Sachbuch zur Geschichte der Deutschen Einheit', 'Buch Geschichte Deutsche Einheit 1990', 'Erzählt die Monate zwischen Mauerfall und Einheit kompakt und gut lesbar.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('unity-day-federal-holiday', 'de', 1, 'BMI: Nationale Feiertage', 'https://www.bmi.bund.de/DE/themen/verfassung/staatliche-symbole/nationale-feiertage/nationale-feiertage-node.html'),
  ('unity-day-federal-holiday', 'de', 2, 'LpB Baden-Württemberg: Tag der Deutschen Einheit – 3. Oktober', 'https://www.lpb-bw.de/tag-der-deutschen-einheit');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'unity-day-federal-holiday', 'en', 'october-3-only-federal-holiday-germany',
  'October 3 is the only public holiday Germany sets at federal level',
  'Easter, Christmas, May Day: all handled by the states. Just one German holiday is written into federal law.',
  'In Germany, public holidays are normally set by the 16 states, but German Unity Day on October 3 is the only public holiday fixed by federal law.',
  'You''d think the national government decides when Germans get a day off. Almost. In Germany, that is actually a job for the 16 states. **But there is exactly one exception: October 3.**

## A holiday written into a treaty

The German Federal Ministry of the Interior puts it plainly: setting public holidays is, in principle, a matter for the states. And right after that: the only holiday set by federal law is German Unity Day.

Where does this special status come from? From the Unification Treaty between West Germany and East Germany. Article 2 contains two sentences back to back: Berlin is the capital of Germany. And: October 3, as the Day of German Unity, is a public holiday. New Year''s Day, Easter or May 1, on the other hand, are set in the holiday laws of the individual states.

## Why October 3?

The date doesn''t mark a famous speech or a party. It is a legal deadline. On October 3, 1990, East Germany joined the area covered by West Germany''s constitution, the Basic Law. According to the Baden-Württemberg State Agency for Civic Education, the East German parliament, the Volkskammer, voted for this in the night of August 22 to 23, 1990.

October 3 replaced two older holidays at once. In the West, June 17 had been called "Day of German Unity" until 1990. In the East, October 7 was celebrated as "Republic Day". Since 1990, both sides have shared one date.

> The big official celebration moves around every year: the host is the capital of whichever state currently chairs the Bundesrat, Germany''s chamber of the states. In 2026, that is Bremen.

So the one holiday everyone in Germany shares is also the one the states don''t get a say in.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('unity-day-federal-holiday', 'en', 1, 'Germany map jigsaw puzzle with states', 'Germany map jigsaw puzzle', 'Turns all 16 German states into a puzzle that works well for two people.'),
  ('unity-day-federal-holiday', 'en', 2, 'History book on German reunification', 'German reunification history book', 'Covers the months between the fall of the Wall and unification in a compact, readable way.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('unity-day-federal-holiday', 'en', 1, 'BMI: Nationale Feiertage', 'https://www.bmi.bund.de/DE/themen/verfassung/staatliche-symbole/nationale-feiertage/nationale-feiertage-node.html'),
  ('unity-day-federal-holiday', 'en', 2, 'LpB Baden-Württemberg: Tag der Deutschen Einheit – 3. Oktober', 'https://www.lpb-bw.de/tag-der-deutschen-einheit');
