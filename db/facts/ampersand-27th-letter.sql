-- WTFact-Fakt „Das &-Zeichen gehörte mal als 27. Zeichen zum Alphabet“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('ampersand-27th-letter', '2026-10-07T03:57:42+02:00', 'language', '🔤', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ampersand-27th-letter', 'de', 'und-zeichen-27-buchstabe-alphabet',
  'Das &-Zeichen gehörte mal als 27. Zeichen zum Alphabet',
  'Englischsprachige Kinder sagten früher nach dem Z noch etwas auf, und daraus wurde ein eigenes Wort.',
  'Das & stand früher am Ende des englischen Alphabets, und sein Name „ampersand“ ist aus dem Aufsagespruch „and per se and“ zusammengeschliffen.',
  'Sag mal kurz das Alphabet auf. A, B, C, bis Z, fertig. Englischsprachige Schulkinder waren vor rund 200 Jahren an dieser Stelle noch nicht fertig. Nach dem Z kam noch ein Zeichen: **&**. Laut Dictionary.com war der kleine Schnörkel einmal das 27. Mitglied des Alphabets.

## „Und für sich allein heißt und“

Nur: Wie sagt man ein Zeichen auf? Im Spätmittelalter bekamen einzelne Buchstaben, die gleichzeitig Wörter waren, beim Buchstabieren eine kleine Formel, erklärt Merriam-Webster. Für das englische „I“ (ich) hieß sie „I per se, I“, lateinisch für „I für sich allein (ist das Wort) I“. Laut Etymonline lief das im 15. und 16. Jahrhundert manchmal auch bei „a“ und „o“ so.

Das & bekam dieselbe Behandlung. In frühen Alphabetlisten stand es direkt hinter dem Z und hieß „& per se, and“, also „& für sich allein (ist das Wort) and“. Laut Dictionary.com beendeten Schulkinder Anfang des 19. Jahrhunderts ihr ABC mit „X, Y, Z, and per se and“. Etymonline nennt das eine Mischformel, halb Latein, halb Englisch.

## Wie aus einem Aufsagespruch ein Wort wurde

Sag „and per se and“ oft genug und schnell genug, und heraus kommt das Wort, das Englischsprachige bis heute benutzen: **ampersand**. Merriam-Webster nennt 1795 als ersten bekannten Beleg, Etymonline datiert es auf 1797 und kennt sogar eine ältere umgangssprachliche Form von 1706: „ampassy“. Mit „amp“ oder „sand“ hat der Name laut Merriam-Webster übrigens nichts zu tun.

Das Zeichen selbst ist viel älter als sein Name. Britannica führt es auf eine Ligatur des lateinischen Worts „et“ zurück, und das heißt „und“. Laut Dictionary.com schrieben römische Schreiber im ersten Jahrhundert in Schreibschrift und verbanden dabei E und T. Etymonline verweist auf Kürzel, die in Graffiti aus Pompeji belegt sind. Deshalb heißt es im Deutschen laut Duden auch Et-Zeichen oder Und-Zeichen. Und deshalb schrieb man früher oft „&c“ für „etc.“, das ja auch mit „et“ anfängt.

> Weil alte Schulbücher das Ampersand ganz ans Ende des Alphabets druckten, bekam das Wort laut Etymonline in den 1880er-Jahren eine Slangbedeutung: Hintern.

Jedes & in einem Firmennamen ist also ein Buchstabe im Ruhestand, der immer noch zur Arbeit kommt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ampersand-27th-letter', 'de', 1, 'Buch über die Geschichte der Schrift', 'Buch Geschichte der Schrift', 'Erzählt, wie aus Bildzeichen und Kürzeln unsere heutigen Buchstaben wurden.'),
  ('ampersand-27th-letter', 'de', 2, 'Typografie-Poster mit Buchstaben', 'Typografie Poster Buchstaben', 'Schöne Schriftzeichen als Wanddeko, ideal für alle, die Schriften mögen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ampersand-27th-letter', 'de', 1, 'Dictionary.com: What Character Was Removed From The Alphabet?', 'https://www.dictionary.com/e/ampersand/'),
  ('ampersand-27th-letter', 'de', 2, 'Merriam-Webster: AMPERSAND Definition & Meaning', 'https://www.merriam-webster.com/dictionary/ampersand'),
  ('ampersand-27th-letter', 'de', 3, 'Etymonline: Ampersand - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/ampersand'),
  ('ampersand-27th-letter', 'de', 4, 'Britannica: Ampersand | Origins, Meaning, & Usage', 'https://www.britannica.com/topic/ampersand'),
  ('ampersand-27th-letter', 'de', 5, 'Duden: Et-Zeichen ▶ Rechtschreibung, Bedeutung, Definition, Herkunft', 'https://www.duden.de/rechtschreibung/Et_Zeichen');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ampersand-27th-letter', 'en', 'ampersand-was-27th-letter',
  'The & was once the 27th member of the alphabet',
  'Kids used to keep going after Z, and what they said turned into a brand-new word.',
  'The & once came at the end of the English alphabet, and its name "ampersand" is a slurred version of the recited phrase "and per se and".',
  'Sing the alphabet in your head. A, B, C, all the way down to Z, done. Two hundred years ago, English-speaking kids weren''t done yet. After Z came one more character: **&**. According to Dictionary.com, that little squiggle was once the 27th member of the alphabet.

## And by itself is and

The problem: how do you recite a symbol? In the late Middle Ages, Merriam-Webster explains, single letters that were also words got a little phrase when spelled out. For "I" it was "I per se, I", Latin for "I by itself (is the word) I". Etymonline says "a" and "o" were sometimes treated the same way back in the 15th and 16th centuries.

The & got the same deal. In early alphabet lists it came right after Z and was rendered "& per se, and", meaning "& by itself (is the word) and". Dictionary.com says that in the early 1800s, school kids reciting their ABCs ended with "X, Y, Z, and per se and". Etymonline calls it a hybrid phrase, partly Latin, partly English.

## How a chant became a word

Say "and per se and" fast enough, often enough, and you get the word we use today: **ampersand**. Merriam-Webster puts its first known use at 1795, Etymonline dates it to 1797 and even lists an earlier colloquial form, "ampassy", from 1706. Merriam-Webster is very clear about one thing: the name owes nothing to "amp" or "sand".

The symbol itself is far older than its name. Britannica traces it to a ligature of the Latin word "et", meaning "and". Dictionary.com says Roman scribes in the first century wrote in cursive and linked the E and the T. Etymonline points to shorthand signs found in graffiti from Pompeii. That''s also why "&c" was once a common way of writing "etc.", which starts with "et" too.

> Because old schoolbooks printed the ampersand at the very end of the alphabet, by the 1880s "ampersand" had picked up a slang meaning, according to Etymonline: your rear end.

So every & in a company name or a logo is a retired letter that still shows up for work.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ampersand-27th-letter', 'en', 1, 'Book on the history of writing', 'history of writing book', 'Shows how scribbles, shorthand and symbols turned into the letters we use today.'),
  ('ampersand-27th-letter', 'en', 2, 'Typography alphabet poster', 'typography alphabet poster', 'Good-looking letterforms as wall decor for anyone who loves fonts.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ampersand-27th-letter', 'en', 1, 'Dictionary.com: What Character Was Removed From The Alphabet?', 'https://www.dictionary.com/e/ampersand/'),
  ('ampersand-27th-letter', 'en', 2, 'Merriam-Webster: AMPERSAND Definition & Meaning', 'https://www.merriam-webster.com/dictionary/ampersand'),
  ('ampersand-27th-letter', 'en', 3, 'Etymonline: Ampersand - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/ampersand'),
  ('ampersand-27th-letter', 'en', 4, 'Britannica: Ampersand | Origins, Meaning, & Usage', 'https://www.britannica.com/topic/ampersand'),
  ('ampersand-27th-letter', 'en', 5, 'Duden: Et-Zeichen ▶ Rechtschreibung, Bedeutung, Definition, Herkunft', 'https://www.duden.de/rechtschreibung/Et_Zeichen');
