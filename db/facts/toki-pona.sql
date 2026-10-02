-- WTFact-Fakt „Diese Sprache kommt mit etwa 120 Wörtern aus“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('toki-pona', '2026-09-21', 'language', '💬', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'toki-pona', 'de', 'toki-pona-120-woerter',
  'Diese Sprache kommt mit etwa 120 Wörtern aus',
  'Kein eigenes Wort für Computer, Freund oder Pizza? Kein Problem, man baut sie einfach zusammen.',
  'Toki Pona ist eine erfundene Sprache mit nur etwa 120 Grundwörtern, und seit 2022 hat sie sogar einen offiziellen ISO-Sprachcode.',
  'Deutsch und Englisch haben jeweils Hunderttausende Wörter. Und dann gibt es Toki Pona. Diese Sprache kommt mit **ungefähr 120 Wörtern** aus. Nicht als Grundwortschatz für Anfänger, sondern insgesamt.

## Eine Sprache für einfache Gedanken

Erfunden hat Toki Pona die kanadische Übersetzerin Sonja Lang. 2001 stellte sie erste Entwürfe ins Internet. Sie entwickelte die Sprache in einer Phase, in der es ihr nicht gut ging, als eine Art Werkzeug, um Gedanken einfacher zu machen. Inspiriert war sie unter anderem vom Taoismus und der Frage, wie es wäre, als Mensch ganz schlicht in der Natur zu leben und die Dinge ganz grundlegend zu benennen.

„Toki pona“ heißt übersetzt „die Sprache des Guten“. In ihrem Buch von 2014 stellte Lang rund 120 Hauptwörter vor, ein Wörterbuch von 2021 listet 137 wichtige Wörter.

## Baukasten statt Wörterbuch

Wie sagt man mit so wenigen Wörtern alles? **Man kombiniert.** Beschreibende Wörter stehen einfach hinter dem, was sie beschreiben: „sike loje mi“ heißt Wort für Wort „Kugel rot ich“, also „mein roter Ball“. Viele Wörter haben eine sehr breite Bedeutung, und der Zusammenhang erledigt den Rest. „mi moku“ kann „ich esse“ heißen, aber auch „ich bin Essen“.

Auch beim Klang ist Toki Pona minimalistisch: Es gibt nur 14 Laute, neun Konsonanten und fünf Vokale. Namen werden passend gemacht. Aus „John“ wird „San“, aus „English“ wird „Inli“.

> Neben dem lateinischen Alphabet hat Toki Pona eine eigene Bildschrift namens „sitelen pona“, die ein bisschen an Hieroglyphen erinnert.

## Jetzt ganz offiziell

Eine Online-Community hält die Sprache seit über 20 Jahren am Leben, auf Discord, Reddit und in Foren, manchmal auch bei echten Treffen, etwa in Berlin oder Amsterdam. Schätzungen von 2021 gehen von 500 bis 5.000 Sprechenden aus.

Im Januar 2022 dann der Ritterschlag: Toki Pona bekam den **ISO-639-3-Code „tok“**, also einen offiziellen internationalen Sprachcode, nachdem frühere Anträge abgelehnt worden waren. Damit steht die Mini-Sprache auf einer Liste mit Deutsch, Englisch und Tausenden anderen Sprachen.

Weniger Wörter, mehr Kreativität: toki pona li pona.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('toki-pona', 'de', 1, '„Toki Pona: The Language of Good“ von Sonja Lang', 'Toki Pona The Language of Good Sonja Lang', 'Das offizielle Lehrbuch der Erfinderin, auf Englisch. Damit kannst du die ganze Sprache an ein paar Wochenenden lernen.'),
  ('toki-pona', 'de', 2, 'Notizbuch im Taschenformat', 'Notizbuch A6 gepunktet', 'Klein genug für jede Jackentasche, perfekt für Vokabeln, Ideen oder eigene Schriftzeichen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('toki-pona', 'de', 1, 'Wikipedia: Toki Pona', 'https://en.wikipedia.org/wiki/Toki_Pona'),
  ('toki-pona', 'de', 2, 'Boing Boing: Toki Pona: a whole language in about 120 words', 'https://boingboing.net/2026/07/19/toki-pona.html'),
  ('toki-pona', 'de', 3, 'sona pona: Toki Pona', 'https://sona.pona.la/wiki/Toki_Pona');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'toki-pona', 'en', 'toki-pona-120-words',
  'This language gets by with about 120 words',
  'No word for computer, friend or pizza? No problem. You just build them yourself.',
  'Toki Pona is an invented language with only about 120 core words, and since 2022 it even has an official ISO language code.',
  'English and German each have hundreds of thousands of words. And then there''s Toki Pona. This language gets by with **roughly 120 words**. Not as a starter vocabulary, but in total.

## A language for simple thoughts

Toki Pona was created by Canadian translator Sonja Lang. She posted the first drafts online in 2001. She developed the language during a rough period in her life, as a kind of tool for simplifying her thoughts. Among other things, she drew on Taoism and the question of what it would be like to live simply as a person in nature and name things in the most basic way.

"Toki pona" translates to "the language of good." In her 2014 book, Lang presented about 120 main words, and a 2021 dictionary lists 137 essential words.

## A building kit, not a dictionary

So how do you say everything with so few words? **You combine them.** Describing words simply follow the thing they describe: "sike loje mi" is literally "ball red me," meaning "my red ball." Many words have very broad meanings, and context does the rest. "mi moku" can mean "I eat," but also "I am food."

The sound system is just as minimalist: there are only 14 sounds, nine consonants and five vowels. Names get adapted to fit. "John" becomes "San," and "English" becomes "Inli."

> Besides the Latin alphabet, Toki Pona has its own pictographic script called "sitelen pona," which looks a bit like hieroglyphs.

## Now it''s official

An online community has kept the language alive for over 20 years, on Discord, Reddit and forums, and sometimes at real-life meetups in cities like Berlin or Amsterdam. Estimates from 2021 put the number of speakers somewhere between 500 and 5,000.

Then in January 2022 came the big moment: Toki Pona received the **ISO 639-3 code "tok,"** an official international language code, after earlier applications had been rejected. That puts the mini language on the same list as English, German and thousands of other languages.

Fewer words, more creativity: toki pona li pona.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('toki-pona', 'en', 1, 'Toki Pona: The Language of Good by Sonja Lang', 'Toki Pona The Language of Good Sonja Lang', 'The official textbook by the language''s creator. You could learn the whole thing over a few weekends.'),
  ('toki-pona', 'en', 2, 'Pocket notebook', 'pocket notebook dotted A6', 'Small enough for any jacket pocket, perfect for vocab, ideas or your own made-up symbols.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('toki-pona', 'en', 1, 'Wikipedia: Toki Pona', 'https://en.wikipedia.org/wiki/Toki_Pona'),
  ('toki-pona', 'en', 2, 'Boing Boing: Toki Pona: a whole language in about 120 words', 'https://boingboing.net/2026/07/19/toki-pona.html'),
  ('toki-pona', 'en', 3, 'sona pona: Toki Pona', 'https://sona.pona.la/wiki/Toki_Pona');
