-- WTFact-Fakt „Das Wort „dord“ gab es nie, trotzdem stand es jahrelang im Wörterbuch“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('dord-ghost-word', '2026-08-20', 'language', '📖', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dord-ghost-word', 'de', 'dord-geisterwort',
  'Das Wort „dord“ gab es nie, trotzdem stand es jahrelang im Wörterbuch',
  'Eine Karteikarte im falschen Stapel erfand ein Wort für Dichte. Und jahrelang merkte es niemand.',
  'Im großen Webster-Wörterbuch von 1934 stand das Wort „dord“ mit der Bedeutung „Dichte“, dabei war es nur ein Sortierfehler.',
  'Wörterbücher gelten als die oberste Instanz in Sachen Sprache. Was drinsteht, ist ein Wort. Ziemlich peinlich also, wenn ein Wort drinsteht, das niemand je benutzt hat.

## Eine Karte im falschen Stapel

1934 erschien die zweite Ausgabe von „Webster''s New International Dictionary“, einem der wichtigsten Wörterbücher der USA. Auf Seite 771, zwischen „Dorcopsis“ und „doré“, stand ein Eintrag: **„dord“, ein Substantiv aus Physik und Chemie, Bedeutung: Dichte.**

Das Problem: Dieses Wort gab es nicht. Laut Snopes lief es so ab: Für die neue Ausgabe wurden Abkürzungen in einen eigenen Teil hinten im Buch verschoben. Eine Karteikarte mit dem Vermerk „D or d, cont./density“ sollte bei diesen Abkürzungen landen. Gemeint war: Ein großes oder kleines D kann für „density“, also Dichte, stehen.

Die Karte rutschte aber in den Stapel mit den normalen Wörtern. Dort wurde aus „D or d“ beim Setzen ein einziges Wort: **dord**. Ohne Herkunft, ohne Beispiel, aber mit Definition.

## Fünf Jahre unentdeckt

Der Eintrag ging durch alle Korrekturen. Erst 1939 fiel einem Redakteur auf, dass bei „dord“ jede Angabe zur Wortherkunft fehlte. Er prüfte die Unterlagen und entdeckte den Fehler. Aus späteren Drucken flog das Wort heraus, laut Mental Floss war es spätestens 1947 komplett verschwunden.

Seitdem ist „dord“ das Paradebeispiel für ein **„Geisterwort“**: einen Eintrag, der nur durch einen Fehler entstanden ist und nie wirklich in Gebrauch war.

> Manche Wörterbücher bauen falsche Wörter sogar absichtlich ein, um Abschreiber zu ertappen. Das „New Oxford American Dictionary“ erfand dafür „esquivalience“, angeblich „das absichtliche Drücken vor den eigenen Pflichten“.

## Was das über Sprache verrät

Die Geschichte zeigt, wie Wörterbücher entstehen: nicht durch göttliche Eingebung, sondern durch Menschen, Zettel und Stapel. Und manchmal reicht eine falsch abgelegte Karte, damit ein Wort fünf Jahre lang offiziell existiert.

Selbst das dickste Wörterbuch ist am Ende nur so gut wie sein Karteikasten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dord-ghost-word', 'de', 1, '„Der Professor und der Wahnsinnige“ von Simon Winchester', 'Der Professor und der Wahnsinnige Simon Winchester', 'Die wahre Geschichte hinter dem Oxford English Dictionary, spannend erzählt wie ein Roman.'),
  ('dord-ghost-word', 'de', 2, 'Scrabble', 'Scrabble Brettspiel', 'Der Klassiker unter den Wortspielen. Perfekt für Streit darüber, welche Wörter wirklich existieren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dord-ghost-word', 'de', 1, 'Snopes: Dord: The Word That Didn''t Exist', 'https://www.snopes.com/fact-check/ghost-word/'),
  ('dord-ghost-word', 'de', 2, 'Etymonline: Dord - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/dord'),
  ('dord-ghost-word', 'de', 3, 'Mental Floss: 9 Fake Words That Ended Up in the Dictionary', 'https://www.mentalfloss.com/article/69880/7-fake-words-ended-dictionary');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dord-ghost-word', 'en', 'dord-ghost-word',
  'The word ‘dord’ never existed, yet it sat in the dictionary for years',
  'One index card in the wrong pile invented a word for density. And for years, nobody noticed.',
  'Webster''s big 1934 dictionary listed the word ‘dord,’ meaning ‘density,’ but it was nothing more than a filing mistake.',
  'Dictionaries are supposed to be the final authority on language. If it''s in there, it''s a word. So it''s pretty embarrassing when a word is in there that nobody has ever used.

## A card in the wrong pile

In 1934, the second edition of Webster''s New International Dictionary came out, one of the most important dictionaries in the US. On page 771, between "Dorcopsis" and "doré," sat an entry: **"dord," a noun used in physics and chemistry, meaning density.**

The problem: that word didn''t exist. According to Snopes, here''s what happened. For the new edition, abbreviations were moved to their own section at the back of the book. An index card marked "D or d, cont./density" was supposed to end up with those abbreviations. The idea was that a capital or lowercase D can stand for density.

But the card slipped into the pile of regular words. There, "D or d" got set as a single word: **dord**. No origin, no example, but a definition all the same.

## Five years undetected

The entry made it through every round of proofreading. Only in 1939 did an editor notice that "dord" had no etymology at all. He checked the files and uncovered the mistake. The word was dropped from later printings, and according to Mental Floss it was completely gone by 1947.

Since then, "dord" has been the go-to example of a **"ghost word"**: an entry created purely by mistake that was never actually in use.

> Some dictionaries even plant fake words on purpose to catch copycats. The New Oxford American Dictionary invented "esquivalience" for this, supposedly meaning "the willful avoidance of one''s official responsibilities."

## What it says about language

The story shows how dictionaries really get made: not by divine inspiration, but by people, slips of paper and piles. And sometimes all it takes is one misfiled card for a word to officially exist for five years.

Even the thickest dictionary is only as good as its filing system.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dord-ghost-word', 'en', 1, 'The Professor and the Madman by Simon Winchester', 'The Professor and the Madman Simon Winchester', 'The true story behind the Oxford English Dictionary, told as grippingly as a novel.'),
  ('dord-ghost-word', 'en', 2, 'Scrabble', 'Scrabble board game', 'The classic word game. Perfect for arguing over which words actually exist.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dord-ghost-word', 'en', 1, 'Snopes: Dord: The Word That Didn''t Exist', 'https://www.snopes.com/fact-check/ghost-word/'),
  ('dord-ghost-word', 'en', 2, 'Etymonline: Dord - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/dord'),
  ('dord-ghost-word', 'en', 3, 'Mental Floss: 9 Fake Words That Ended Up in the Dictionary', 'https://www.mentalfloss.com/article/69880/7-fake-words-ended-dictionary');
