-- WTFact-Fakt „In Island frisst eine Riesenkatze alle ohne neue Kleidung“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('yule-cat-iceland', '2026-12-05T00:00:00+01:00', 'horror', '🐈‍⬛', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'yule-cat-iceland', 'de', 'weihnachtskatze-island',
  'In Island frisst eine Riesenkatze alle ohne neue Kleidung',
  'Vergiss den Krampus. Islands Weihnachten hat eine Katze, die größer ist als ein Haus.',
  'In Islands Weihnachtsfolklore schleicht die riesige Weihnachtskatze Jólakötturinn umher und frisst jeden, der zu Weihnachten keine neuen Kleider bekommen hat.',
  'Bei uns kommt das Christkind, in Österreich der Krampus. In Island streift an Weihnachten etwas durch die Dunkelheit, das noch unheimlicher ist: eine Katze.

## Größer als die Häuser

Sie heißt Jólakötturinn, die Weihnachtskatze. Laut NPR geht sie von Haus zu Haus und sucht nach Kindern, die zu Weihnachten keine neuen Kleider tragen. Wer sie nicht hat, wird gefressen. Erwachsene sind übrigens nicht sicherer, die Katze nimmt jeden. In manchen Versionen frisst sie auch nur das Festessen weg, was kaum beruhigender ist.

Berühmt wurde die Katze durch ein Gedicht. 1932 veröffentlichte der isländische Dichter Jóhannes úr Kötlum den Band „Jólin koma“ (Weihnachten kommt). Darin beschreibt er eine riesige Katze mit glühenden Augen, die nachts in die Fenster schaut. Bis heute kennt in Island fast jedes Kind diese Zeilen.

## Ein Monster als Arbeitsanreiz

Älter ist die Legende aber schon. Die ältesten schriftlichen Berichte stammen laut ZME Science aus dem 19. Jahrhundert. Und sie hatte einen ziemlich praktischen Zweck. Auf isländischen Höfen musste vor Weihnachten die ganze Wolle verarbeitet werden. Wer fleißig mitarbeitete, bekam zur Belohnung etwas Neues zum Anziehen. Wer faul war, ging leer aus und bekam es mit der Katze zu tun.

Mit der Zeit drehte sich die Botschaft. Heute heißt es eher: Verschenk Kleidung an Menschen, die wenig haben, dann geht die Katze leer aus.

> Bonusfakt: Seit dem 20. Jahrhundert gilt die Katze als Haustier von Grýla, einer Riesin aus der isländischen Folklore, die unartige Kinder in ihren Kochtopf steckt.

Neue Socken unterm Baum sind in Island also kein langweiliges Geschenk, sondern Lebensversicherung.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('yule-cat-iceland', 'de', 1, 'Isländische Märchen und Sagen', 'Buch isländische Märchen Sagen', 'Geschichten von Trollen, Riesinnen und Weihnachtsgestalten aus Island.'),
  ('yule-cat-iceland', 'de', 2, 'Dicke Wollsocken mit Norwegermuster', 'Wollsocken Norwegermuster dick', 'Warme Socken für kalte Abende, ganz ohne Katze.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('yule-cat-iceland', 'de', 1, 'NPR: You''ve heard of Santa, maybe even Krampus. But what about the child-eating Yule Cat?', 'https://www.npr.org/2023/12/23/1221454825'),
  ('yule-cat-iceland', 'de', 2, 'ZME Science: The Yule Cat: Forget Santa, Embrace the Dark Side of Icelandic Christmas', 'https://zmescience.com/feature-post/christmas-myths-yule-cat'),
  ('yule-cat-iceland', 'de', 3, 'Wikipedia: Yule cat', 'https://en.wikipedia.org/wiki/Yule_cat');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'yule-cat-iceland', 'en', 'iceland-yule-cat-eats-people',
  'In Iceland, a giant cat eats anyone without new clothes',
  'Forget Krampus. Iceland''s Christmas has a cat bigger than a house.',
  'In Icelandic Christmas folklore, the giant Yule Cat, Jólakötturinn, prowls around and eats anyone who didn''t get new clothes for Christmas.',
  'Some countries get Santa, Austria gets Krampus. In Iceland, something even creepier roams the dark at Christmas: a cat.

## Bigger than the houses

It''s called Jólakötturinn, the Yule Cat. According to NPR, it goes from house to house looking for children who aren''t wearing new clothes for Christmas. Anyone without them gets eaten. Grown-ups aren''t safe either, the cat isn''t picky. In some versions it only eats their holiday dinner, which is hardly more reassuring.

The cat became famous thanks to a poem. In 1932, Icelandic poet Jóhannes úr Kötlum published the collection Jólin koma (Christmas is Coming). In it, he describes a huge cat with glowing eyes peering through windows at night. Nearly every child in Iceland still knows those lines.

## A monster as a work incentive

The legend is older than the poem, though. ZME Science says the oldest written accounts date to the 19th century. And it had a very practical purpose. On Icelandic farms, all the wool had to be processed before Christmas. Those who worked hard got something new to wear as a reward. Those who slacked got nothing and had to face the cat.

Over time, the message flipped. Today it''s more like: give clothes to people who have little, and the cat goes hungry.

> Bonus fact: Since the 20th century, the cat has been considered the pet of Grýla, a giantess from Icelandic folklore who throws naughty children into her cooking pot.

So in Iceland, new socks under the tree aren''t a boring gift. They''re life insurance.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('yule-cat-iceland', 'en', 1, 'Icelandic folk tales collection', 'Icelandic folk tales book', 'Stories of trolls, giantesses and Christmas creatures from Iceland.'),
  ('yule-cat-iceland', 'en', 2, 'Thick Nordic wool socks', 'thick nordic wool socks', 'Warm socks for cold evenings, no cat involved.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('yule-cat-iceland', 'en', 1, 'NPR: You''ve heard of Santa, maybe even Krampus. But what about the child-eating Yule Cat?', 'https://www.npr.org/2023/12/23/1221454825'),
  ('yule-cat-iceland', 'en', 2, 'ZME Science: The Yule Cat: Forget Santa, Embrace the Dark Side of Icelandic Christmas', 'https://zmescience.com/feature-post/christmas-myths-yule-cat'),
  ('yule-cat-iceland', 'en', 3, 'Wikipedia: Yule cat', 'https://en.wikipedia.org/wiki/Yule_cat');
