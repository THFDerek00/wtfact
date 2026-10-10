-- WTFact-Fakt „In Stroops Test von 1935 brauchten Menschen 74 Prozent länger, um die Druckfarbe eines unpassenden Farbworts zu nennen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('stroop-effect-preacher', '2026-10-13T16:00:00+02:00', 'mind', '🎨', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stroop-effect-preacher', 'de', 'stroop-effekt-farbwoerter',
  'In Stroops Test von 1935 brauchten Menschen 74 Prozent länger, um die Druckfarbe eines unpassenden Farbworts zu nennen',
  'Der Stroop-Test gehört zu den berühmtesten Aufgaben der Psychologie. Sein Erfinder kehrte dem Fach weitgehend den Rücken.',
  'In seiner Studie von 1935 fand John Ridley Stroop heraus, dass Menschen rund 74 Prozent länger brauchten, um Druckfarben zu benennen, wenn die Farbe ein anderes Farbwort bildete, und gegen Ende seines Lebens wandte er sich weitgehend von der Psychologie ab und dem Bibelstudium zu.',
  'Probier mal: Das Wort GRÜN ist in roter Farbe gedruckt, und du sollst die Druckfarbe sagen, nicht das Wort. Dein Mund will trotzdem „grün“ sagen. Dieses kleine Stolpern heißt Stroop-Effekt, und der Mann dahinter hat kaum mitbekommen, wie berühmt er wurde.

## 100 Studierende und eine Stoppuhr

John Ridley Stroop entdeckte den Effekt im Rahmen seiner Doktorarbeit am George Peabody College for Teachers. 1935 veröffentlichte er ihn im Journal of Experimental Psychology unter dem Titel „Studies of interference in serial verbal reactions“.

In einem Experiment sollten 100 Studierende die Farben von 100 Elementen benennen. Waren es einfache farbige Quadrate, brauchten sie im Schnitt 63,3 Sekunden. Waren es Farbwörter in einer unpassenden Druckfarbe, brauchten sie 110,3 Sekunden. Das sind rund 74 Prozent mehr Zeit, nur weil ihr Gehirn das Wort immer mitlas.

Umgekehrt spielte es kaum eine Rolle. Die Wörter vorzulesen und die Farbe zu ignorieren, kostete nur 2,3 Sekunden mehr als bei schwarz gedruckten Wörtern, und diesen Unterschied hielt Stroop selbst nicht für verlässlich. Lesen läuft bei dir so automatisch, dass es sich einfach vordrängelt, während das Benennen einer Farbe echte Anstrengung kostet.

## Der Prediger, der sich abwandte

Stroops Leben nahm eine andere Richtung. Er predigte schon mit 20 und arbeitete fast 40 Jahre als Lehrer und in der Verwaltung des David Lipscomb College in Nashville. Laut seinem Sohn Fred kehrte er der Psychologie gegen Ende seines Lebens weitgehend den Rücken und widmete sich dem Bibelstudium. Er starb 1973, ohne zu ahnen, wie groß seine Entdeckung werden würde.

Seine Doktorarbeit wurde derweil immer weiter zitiert: bis 2014 mehr als 9.900 Mal. Daniel Levin, Psychologieprofessor an der Vanderbilt University, nannte den Stroop-Test „die berühmteste Aufgabe der kognitiven Psychologie“.

> Bonusfakt: Stroops Sohn Fred hat eine seltene erbliche Form der Farbenblindheit. Den berühmten Effekt seines Vaters kann er deshalb selbst nicht erleben.

Einer der bekanntesten Tests der Psychologie stammt von einem Mann, dessen eigentliche Leidenschaft ganz woanders lag.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stroop-effect-preacher', 'de', 1, 'Farbwort-Kartenspiel zum Stroop-Effekt', 'Stroop Effekt Farben Kartenspiel', 'Ein schnelles Partyspiel, bei dem die richtige Farbe zu sagen schwerer ist, als es aussieht.'),
  ('stroop-effect-preacher', 'de', 2, 'Buch mit optischen Täuschungen', 'optische Täuschungen Buch', 'Eine Sammlung von Bildern, die zeigen, wie leicht sich dein Gehirn austricksen lässt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stroop-effect-preacher', 'de', 1, 'Vanderbilt University News: Stroop Effect', 'https://news.vanderbilt.edu/2014/06/18/stroop-effect/'),
  ('stroop-effect-preacher', 'de', 2, 'Classics in the History of Psychology: Studies of Interference in Serial Verbal Reactions', 'https://psychclassics.yorku.ca/Stroop/'),
  ('stroop-effect-preacher', 'de', 3, 'Mind Hacks: Stroop: an unrecognised legacy', 'https://mindhacks.com/2014/03/06/stroop-an-unrecognised-legacy/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stroop-effect-preacher', 'en', 'stroop-effect-color-words',
  'In Stroop''s 1935 test, people took 74 percent longer to name the ink color of a clashing color word',
  'The Stroop test is one of psychology''s most famous tasks. Its inventor largely turned his back on the field.',
  'In his 1935 study, John Ridley Stroop found that people needed about 74 percent longer to name ink colors when the ink spelled a different color word, and near the end of his life he largely left psychology for biblical studies.',
  'Try this: the word GREEN is printed in red ink, and you have to say the ink color, not the word. Your mouth wants to say "green". That tiny stumble is the Stroop effect, and the man behind it barely stuck around to see it become famous.

## 100 students and a stopwatch

John Ridley Stroop discovered the effect as part of his doctoral thesis at George Peabody College for Teachers. He published it in 1935 in the Journal of Experimental Psychology under the title "Studies of interference in serial verbal reactions".

In one experiment, 100 college students named the colors of 100 items. When the items were simple colored squares, they needed 63.3 seconds on average. When the items were color words printed in a clashing ink, they needed 110.3 seconds. That is about 74 percent more time, just because their brain kept reading the word.

The reverse barely mattered. Reading the words out loud while ignoring the ink slowed people down by only 2.3 seconds compared with words in black ink, a difference Stroop himself did not consider reliable. Reading is so automatic for you that it barges in, while naming a color takes real effort.

## The preacher who walked away

Stroop''s life went in a different direction. He had started preaching at 20 and spent nearly 40 years as a teacher and administrator at David Lipscomb College in Nashville. According to his son Fred, he largely left psychology near the end of his life and devoted himself to biblical studies. He died in 1973 without knowing how big his discovery would become.

Meanwhile, his thesis kept getting cited: by 2014, more than 9,900 times. Vanderbilt psychology professor Daniel Levin called the Stroop task "the most famous task in cognitive psychology".

> Bonus fact: Stroop''s son Fred has a rare inherited form of color blindness, so he cannot experience his father''s famous effect himself.

One of psychology''s best-known tests came from a man whose real passion was somewhere else entirely.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stroop-effect-preacher', 'en', 1, 'Stroop effect color word card game', 'stroop color word card game', 'A quick party game where saying the right color is harder than it looks.'),
  ('stroop-effect-preacher', 'en', 2, 'Optical illusions book', 'optical illusions book brain tricks', 'A collection of images that show how easily your brain can be fooled.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stroop-effect-preacher', 'en', 1, 'Vanderbilt University News: Stroop Effect', 'https://news.vanderbilt.edu/2014/06/18/stroop-effect/'),
  ('stroop-effect-preacher', 'en', 2, 'Classics in the History of Psychology: Studies of Interference in Serial Verbal Reactions', 'https://psychclassics.yorku.ca/Stroop/'),
  ('stroop-effect-preacher', 'en', 3, 'Mind Hacks: Stroop: an unrecognised legacy', 'https://mindhacks.com/2014/03/06/stroop-an-unrecognised-legacy/');
