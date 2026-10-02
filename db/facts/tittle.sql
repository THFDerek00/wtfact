-- WTFact-Fakt „Der Punkt auf dem i hat einen eigenen Namen: Tittle“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('tittle', '2026-09-17', 'weird', '✏️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tittle', 'de', 'i-punkt-tittle',
  'Der Punkt auf dem i hat einen eigenen Namen: Tittle',
  'Im Englischen heißt das Pünktchen über i und j „tittle“. Und es gibt einen guten Grund, warum es überhaupt existiert.',
  'Der Punkt auf dem kleinen i und j heißt im Englischen „tittle“, im Deutschen schlicht i-Punkt oder i-Tüpfelchen.',
  'Du setzt ihn hundertfach am Tag, meistens ohne nachzudenken: den kleinen Punkt über dem i. Im Englischen hat dieses Pünktchen tatsächlich einen eigenen Namen. **Es heißt „tittle“.**

## Ein Wort mit langer Geschichte

Laut Wikipedia bezeichnet „tittle“ den Punkt über dem kleinen i und dem kleinen j. Das Wort stammt vom lateinischen „titulus“ ab. Merriam-Webster belegt es schon seit dem 12. Jahrhundert, damals ganz allgemein für einen kleinen Punkt oder ein Zeichen über einem Buchstaben. Eine zweite Bedeutung: **ein winziges Stück von etwas**.

Berühmt wurde das Wort durch die King-James-Bibel. In Matthäus 5,18 heißt es dort, dass kein „jot“ und kein „tittle“ vom Gesetz vergehen werde. Gemeint ist: nicht das kleinste bisschen.

Und auf Deutsch? Da gibt es kein eigenes Fachwort, aber zwei schöne Begriffe. Der Duden kennt den **i-Punkt** und das **i-Tüpfelchen**. Letzteres benutzen wir meist im übertragenen Sinn, für den letzten Schliff, der etwas perfekt macht.

## Warum das i überhaupt einen Punkt hat

Der Punkt ist kein Deko-Element, sondern eine Lesehilfe. In mittelalterlichen Handschriften, besonders in der gotischen Schrift, bestanden Buchstaben wie i, m, n und u aus lauter gleich aussehenden senkrechten Strichen, sogenannten Minimen. Ein Wort wie „minimum“ wurde so zu einem kaum lesbaren Lattenzaun.

Ein lateinischer Zungenbrecher aus dem 13. Jahrhundert, der mit „mimi numinum“ beginnt, treibt das auf die Spitze. Laut Wikipedia führte genau dieses Problem schließlich zum **i mit Punkt** und zu eigenen Buchstaben für j und v.

> Das j war ursprünglich nur eine Variante des i. Erst im 16. Jahrhundert wurden die beiden laut Wikipedia klar unterschieden. Den Punkt hat das kleine j bis heute behalten.

Im Türkischen ist der Punkt übrigens kein Detail, sondern Pflicht: Dort sind i mit Punkt und ı ohne Punkt zwei verschiedene Buchstaben mit unterschiedlichem Klang. Ein vergessener tittle kann dort also ein Wort verändern.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tittle', 'de', 1, 'Kalligrafie-Set mit Federhalter und Tinte', 'Kalligrafie Set Federhalter Tinte Anfänger', 'Mit Feder und Tinte merkst du schnell, warum Schreiber früher jeden Strich und jeden Punkt so ernst genommen haben.'),
  ('tittle', 'de', 2, 'Buch über die Geschichte der Schrift und des Alphabets', 'Geschichte der Schrift Alphabet Buch', 'Erzählt, wie aus Bildzeichen unsere heutigen Buchstaben wurden. Spannend für alle, die gern genau hinschauen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tittle', 'de', 1, 'Wikipedia: Tittle', 'https://en.wikipedia.org/wiki/Tittle'),
  ('tittle', 'de', 2, 'Wikipedia: Minim (palaeography)', 'https://en.wikipedia.org/wiki/Minim_(palaeography)'),
  ('tittle', 'de', 3, 'Merriam-Webster: Tittle Definition & Meaning', 'https://www.merriam-webster.com/dictionary/tittle'),
  ('tittle', 'de', 4, 'Duden: i-Punkt', 'https://www.duden.de/rechtschreibung/i_Punkt'),
  ('tittle', 'de', 5, 'Duden: Tüpfelchen', 'https://www.duden.de/rechtschreibung/Tuepfelchen');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tittle', 'en', 'tittle-dot-on-i',
  'The dot on your i has its own name: tittle',
  'That tiny dot over i and j is called a tittle. And there''s a good reason it exists at all.',
  'The dot over a lowercase i or j is called a tittle, a word that goes back to the Latin titulus.',
  'You type it hundreds of times a day without a second thought: the little dot over the i. Turns out it has its own name. **It''s called a tittle.**

## A word with a long history

According to Wikipedia, a tittle is the dot over a lowercase i and j. The word comes from the Latin "titulus." Merriam-Webster traces it back to the 12th century, when it meant any small point or sign used as a mark over a letter. It has a second meaning, too: **a very small part of something**.

The word got famous thanks to the King James Bible. Matthew 5:18 says that not "one jot or one tittle" shall pass from the law. Translation: not the tiniest bit.

What about German? There''s no special technical term, but there are two nice words for it. The Duden dictionary lists "i-Punkt" and "i-Tüpfelchen." Germans mostly use the second one as a figure of speech, for the finishing touch that makes something perfect.

## Why the i has a dot in the first place

The dot isn''t decoration. It''s a reading aid. In medieval manuscripts, especially in Gothic script, letters like i, m, n and u were built from identical vertical strokes called minims. A word like "minimum" turned into an unreadable picket fence.

A 13th-century Latin tongue twister that starts with "mimi numinum" takes this to the extreme. According to Wikipedia, this exact problem eventually led to the **dotted i** and to separate letters for j and v.

> The j started out as just a variation of the i. According to Wikipedia, the two weren''t clearly told apart until the 16th century. The lowercase j still has its dot today.

In Turkish, the dot isn''t a detail. It''s essential: dotted i and dotless ı are two different letters with different sounds. A missing tittle there can change a word.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tittle', 'en', 1, 'Beginner calligraphy set with dip pen and ink', 'beginner calligraphy set dip pen ink', 'Once you write with a nib and ink, you get why scribes took every stroke and dot so seriously.'),
  ('tittle', 'en', 2, 'Book on the history of writing and the alphabet', 'history of the alphabet book writing', 'Tells how ancient symbols turned into the letters we use today. Great if you love the little details.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tittle', 'en', 1, 'Wikipedia: Tittle', 'https://en.wikipedia.org/wiki/Tittle'),
  ('tittle', 'en', 2, 'Wikipedia: Minim (palaeography)', 'https://en.wikipedia.org/wiki/Minim_(palaeography)'),
  ('tittle', 'en', 3, 'Merriam-Webster: Tittle Definition & Meaning', 'https://www.merriam-webster.com/dictionary/tittle'),
  ('tittle', 'en', 4, 'Duden: i-Punkt', 'https://www.duden.de/rechtschreibung/i_Punkt'),
  ('tittle', 'en', 5, 'Duden: Tüpfelchen', 'https://www.duden.de/rechtschreibung/Tuepfelchen');
