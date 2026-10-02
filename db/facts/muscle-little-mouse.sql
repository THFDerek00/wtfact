-- WTFact-Fakt „„Muskel“ heißt wörtlich „kleine Maus““
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('muscle-little-mouse', '2026-09-01', 'language', '💪', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'muscle-little-mouse', 'de', 'muskel-heisst-kleine-maus',
  '„Muskel“ heißt wörtlich „kleine Maus“',
  'Wenn du deinen Bizeps anspannst, zeigst du sprachlich gesehen ein Mäuschen.',
  'Das Wort „Muskel“ kommt vom lateinischen „musculus“, und das bedeutet „Mäuschen“.',
  'Du spannst den Bizeps an, unter der Haut wölbt sich etwas, rundlich, und bewegt sich ein bisschen. Für die alten Römer sah das aus wie eine kleine Maus, die unter der Haut herumhuscht. Und genau daher hat der Muskel seinen Namen.

## Die Maus im Oberarm

Das lateinische Wort **„mus“ heißt Maus**. Hängt man eine Verkleinerungsendung dran, wird daraus „musculus“, also „Mäuschen“. Und genau dieses Wort benutzten die Römer auch für Muskeln. Laut Merriam-Webster erinnerten sie vor allem Arm- und Beinmuskeln an Mäuse, Etymonline nennt besonders den Bizeps.

Warum eigentlich? Das DWDS, das große digitale Wörterbuch der deutschen Sprache, nennt zwei mögliche Erklärungen: Entweder erinnerte das Zucken und Gleiten unter der Haut an eine laufende Maus. Oder die ovale, rundliche Form eines Muskels an den Körper eines kleinen Nagers. Vielleicht war es auch beides.

## Nicht nur die Römer

Auf die Idee kamen auch andere. Im Altgriechischen stand laut Etymonline das Wort **„mys“ sowohl für Maus als auch für Muskel**. Und im Kornischen, einer keltischen Sprache aus Cornwall, hieß ein Muskel wörtlich „Maus des Beins“. Gleich mehrere Sprachen denken beim Anblick von Muskeln also an Nagetiere. Ziemlich schräg.

Ins Englische kam „muscle“ im 14. Jahrhundert. Im Deutschen ist „Muskel“ laut DWDS sogar erst seit dem frühen 18. Jahrhundert verbreitet, als gelehrtes Wort aus dem medizinischen Latein.

> Auch die Miesmuschel hängt mit drin: Das englische Wort für sie, „mussel“, geht laut Etymonline ebenfalls auf „musculus“ zurück, also auf das kleine Mäuschen.

## Von der Maus zur Macht

Im Englischen hat sich das Wort später noch weiterentwickelt. Seit dem 19. Jahrhundert steht „muscle“ auch für Kraft und Stärke, heute spricht man etwa von „political muscle“, also politischer Schlagkraft. Laut Etymonline tauchte 1969 sogar das „muscle car“ auf, das PS-starke Auto. Ganz schön viel Power für ein Wort, das mit einem kleinen Nagetier angefangen hat.

Wer im Gym Muskeln aufbaut, züchtet streng genommen also Mäuse.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('muscle-little-mouse', 'de', 1, 'Anatomie-Poster der Muskulatur', 'Anatomie Poster Muskulatur', 'Zeigt alle großen Muskeln des Körpers mit Namen. Macht sich gut im Arbeitszimmer oder im Fitnessraum.'),
  ('muscle-little-mouse', 'de', 2, 'Anatomie-Malbuch', 'Anatomie Malbuch', 'Muskeln, Knochen und Organe zum Ausmalen. Entspannt und bringt nebenbei Ordnung in die Fachbegriffe.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('muscle-little-mouse', 'de', 1, 'Etymonline: Muscle - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/muscle'),
  ('muscle-little-mouse', 'de', 2, 'Merriam-Webster: MUSCLE Definition & Meaning', 'https://www.merriam-webster.com/dictionary/muscle'),
  ('muscle-little-mouse', 'de', 3, 'DWDS: Muskel', 'https://www.dwds.de/wb/Muskel');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'muscle-little-mouse', 'en', 'muscle-means-little-mouse',
  '‘Muscle’ literally means ‘little mouse’',
  'When you flex your biceps, you''re technically showing off a tiny mouse.',
  'The word ‘muscle’ comes from the Latin ‘musculus,’ which means ‘little mouse.’',
  'You flex your biceps, and something round bulges up under your skin and shifts around a little. To the ancient Romans, that looked like a little mouse scurrying around beneath the skin. And that''s exactly where the muscle got its name.

## The mouse in your arm

The Latin word **"mus" means mouse**. Add a little diminutive ending and you get "musculus," meaning "little mouse." The Romans used that very same word for muscles. According to Merriam-Webster, arm and leg muscles in particular reminded them of mice, and Etymonline singles out the biceps.

But why? The DWDS, the big digital dictionary of the German language, offers two possible explanations. Either the twitching and gliding under the skin looked like a running mouse, or the oval, rounded shape of a muscle resembled the body of a small rodent. Maybe it was both.

## Not just the Romans

Others had the same idea. In Ancient Greek, according to Etymonline, the word **"mys" meant both mouse and muscle**. And in Cornish, a Celtic language from Cornwall, one muscle was literally called "mouse of the leg." So several languages looked at muscles and thought of rodents. Pretty bizarre.

"Muscle" made its way into English in the 14th century. German only picked up "Muskel" in the early 18th century, according to the DWDS, as a scholarly loanword from medical Latin.

> The mussel is in on it too: according to Etymonline, the shellfish''s name also goes back to "musculus," the little mouse.

## From mouse to might

In English, the word kept evolving. Since the 19th century, "muscle" has also meant strength and power, as in "political muscle." According to Etymonline, the "muscle car" showed up in 1969, all horsepower and attitude. That''s a lot of power for a word that started out as a small rodent.

So every time you hit the gym to build muscle, you''re technically raising mice.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('muscle-little-mouse', 'en', 1, 'Muscular system anatomy poster', 'muscular system anatomy poster', 'Shows all the major muscles of the body with their names. Looks great in a study or a home gym.'),
  ('muscle-little-mouse', 'en', 2, 'Anatomy coloring book', 'anatomy coloring book', 'Muscles, bones and organs to color in. Relaxing, and it quietly sorts out all those Latin terms for you.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('muscle-little-mouse', 'en', 1, 'Etymonline: Muscle - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/muscle'),
  ('muscle-little-mouse', 'en', 2, 'Merriam-Webster: MUSCLE Definition & Meaning', 'https://www.merriam-webster.com/dictionary/muscle'),
  ('muscle-little-mouse', 'en', 3, 'DWDS: Muskel', 'https://www.dwds.de/wb/Muskel');
