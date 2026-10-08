-- WTFact-Fakt „Das Wort Dollar kommt von einer Münze von 1519, benannt nach einem Tal“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('dollar-from-thaler', '2026-10-10T16:00:00+02:00', 'language', '💵', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dollar-from-thaler', 'de', 'dollar-nach-tal-benannt',
  'Das Wort Dollar kommt von einer Münze von 1519, benannt nach einem Tal',
  'Der Name der bekanntesten Währung der Welt begann als deutsche Abkürzung für eine Silbermünze aus Böhmen.',
  '„Dollar“ kommt vom deutschen „Taler“, kurz für Joachimsthaler, eine Silbermünze, die ab 1519 geprägt wurde und nach dem böhmischen Ort Joachimsthal benannt ist.',
  'Jedes Mal, wenn jemand „Dollar“ sagt, redet er heimlich Deutsch. Das Wort geht auf eine Silbermünze aus einem Tal in Böhmen zurück, im heutigen Tschechien.

## Ein Tal voller Silber

Laut dem Etymologie-Wörterbuch Etymonline wurde 1516 bei Sankt Joachimsthal im Erzgebirge ein Silberbergwerk eröffnet. Ab 1519 prägte man aus dem Silber große Münzen. Der Name war schlicht: Joachimsthaler, also so viel wie „der aus dem Joachimstal“. Dictionary.com schreibt den Namen Graf Hieronymus Schlick aus Böhmen zu.

Der Name war allerdings ein Zungenbrecher, also wurde gekürzt. Schon in den 1530er-Jahren sagte man einfach „Taler“. Bald prägten auch andere Regionen ähnliche große Silbermünzen, und der Name wanderte mit.

## Vom Taler zum Dollar

Englischsprachige übernahmen das Wort aus dem Niederdeutschen. In den 1550er-Jahren tauchte es im Englischen als „daler“ auf, um 1600 war daraus „dollar“ geworden. Gemeint war damit zuerst eine deutsche Silbermünze, nichts Amerikanisches.

Dann kamen die Spanier ins Spiel. Ihre großen Silbermünzen hießen „Spanish dollars“, weil sie den Talern ähnelten. Sie dienten als internationales Zahlungsmittel und landeten in Großbritanniens nordamerikanischen Kolonien, wo britisches Geld knapp war. So gewöhnten sich die Kolonisten ans Rechnen in Dollar, lange bevor es die USA gab.

> Bonusfakt: 1786 wählte der Kontinentalkongress „Dollar“ als Namen für die neue US-Währungseinheit, und 1794 kamen die ersten US-Dollarmünzen in Umlauf.

## Warum das in beiden Sprachen funktioniert

Im Deutschen steckt der Hinweis schon im Wort: Ein „Thaler“ ist wörtlich „einer aus dem Tal“. Im Englischen verwischt der Lautwandel von „taler“ zu „dollar“ diese Spur fast komplett, deshalb bringt kaum jemand die beiden zusammen.

Der berühmteste Währungsname der Welt ist also im Grunde ein Spitzname für ein böhmisches Tal. Der Greenback spricht mit Erzgebirgs-Akzent.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dollar-from-thaler', 'de', 1, 'Der Aufstieg des Geldes von Niall Ferguson', 'Der Aufstieg des Geldes Niall Ferguson Buch', 'Eine gut lesbare Geschichte des Geldes, von antiken Münzen bis zur Börse.'),
  ('dollar-from-thaler', 'de', 2, 'Münzalbum für Sammler', 'Münzalbum Sammelalbum Münzen', 'Hält alte Münzen und Urlaubsgeld sortiert und geschützt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dollar-from-thaler', 'de', 1, 'Etymonline: Dollar - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/dollar'),
  ('dollar-from-thaler', 'de', 2, 'Dictionary.com: How The Word "Dollar" Derives From "Joachimsthaler"', 'https://www.dictionary.com/e/dollar-joachimsthaler-origin/'),
  ('dollar-from-thaler', 'de', 3, 'The Perth Mint: Where does the term ''Dollar'' originate', 'https://perthmint.com/news/collector/coin-collecting/where-does-the-term-dollar-originate');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'dollar-from-thaler', 'en', 'dollar-named-after-bohemian-valley',
  'The word dollar comes from a 1519 coin named after a valley',
  'The name of the world''s best-known currency started out as a German short form for a silver coin from Bohemia.',
  '"Dollar" comes from the German "Taler", short for Joachimsthaler, a silver coin minted from 1519 and named after Joachimsthal, a valley town in Bohemia.',
  'Every time someone says "dollar", they''re quietly speaking German. The word goes back to a silver coin from a valley in Bohemia, in what is now the Czech Republic.

## A valley full of silver

According to the etymology dictionary Etymonline, a silver mine opened near Sankt Joachimsthal in the Erzgebirge mountains in 1516. From 1519, its silver was turned into big coins. The name was simple: Joachimsthaler, meaning something like "the one from Joachim''s valley". Dictionary.com credits Count Hieronymus Schlick of Bohemia with coining the name.

That name was a mouthful, so people cut it short. By the 1530s, Germans were just saying "Taler". Other regions soon minted their own large silver coins in the same style, and the name traveled with them.

## From Taler to dollar

English speakers borrowed the word from Low German. In the 1550s it showed up in English as "daler", and by 1600 the spelling had become "dollar". At first it meant a German silver coin, not anything American.

Then came the Spanish. Their big silver coins were called "Spanish dollars" because they looked like talers. They were used as international money and ended up in Britain''s North American colonies, where British money was scarce. So the colonists got used to counting in dollars long before the USA existed.

> Bonus fact: In 1786, the Continental Congress picked "dollar" as the name of the new US currency unit, and the first US dollar coins went into circulation in 1794.

## Why this works in both languages

In German, the clue is hiding in plain sight: "Tal" means valley, so a "Thaler" is literally "one from the valley". In English, the sound shift from "taler" to "dollar" wipes out that trace almost completely, which is why most people never connect the two.

So the world''s most famous currency name is basically a nickname for a Bohemian valley. The greenback has a mining-town accent.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('dollar-from-thaler', 'en', 1, 'The Ascent of Money by Niall Ferguson', 'The Ascent of Money Niall Ferguson book', 'A readable history of money, from ancient coins to modern finance.'),
  ('dollar-from-thaler', 'en', 2, 'Coin collecting album', 'coin collection album binder', 'Keeps old coins and travel change sorted and protected.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('dollar-from-thaler', 'en', 1, 'Etymonline: Dollar - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/dollar'),
  ('dollar-from-thaler', 'en', 2, 'Dictionary.com: How The Word "Dollar" Derives From "Joachimsthaler"', 'https://www.dictionary.com/e/dollar-joachimsthaler-origin/'),
  ('dollar-from-thaler', 'en', 3, 'The Perth Mint: Where does the term ''Dollar'' originate', 'https://perthmint.com/news/collector/coin-collecting/where-does-the-term-dollar-originate');
