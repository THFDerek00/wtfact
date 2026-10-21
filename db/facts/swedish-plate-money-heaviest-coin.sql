-- WTFact-Fakt „Die schwerste Münze der Geschichte wog fast 20 Kilo“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('swedish-plate-money-heaviest-coin', '2026-10-24T10:00:00+02:00', 'money', '🪙', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'swedish-plate-money-heaviest-coin', 'de', 'schweden-plattengeld-schwerste-muenze',
  'Die schwerste Münze der Geschichte wog fast 20 Kilo',
  'Schweden machte Geld aus Kupferplatten. Ein Geldbeutel war dafür keine Option.',
  'Schwedens 10-Daler-Plattengeld von 1644 wog laut Guinness World Records 19,7 Kilogramm. Es ist die schwerste Münze, die je für den Umlauf geprägt wurde.',
  'Kleingeld nervt. Es klimpert, beult die Hosentasche aus und ist nie da, wenn man es braucht. Im Schweden des 17. Jahrhunderts hatte man ein ganz anderes Problem: Münzen, für die man fast eine Sackkarre brauchte.

## Kupfer statt Silber

Schweden hatte damals reichlich Kupfer aus eigenen Bergwerken. Also machte man Geld aus Kupfer. Weil Kupfer aber viel weniger wert ist als Silber, mussten die Münzen riesig sein, damit sie genug Metall für ihren Wert enthielten.

Rund kleine Kupfermünzen zu prägen war teuer und umständlich. Die Lösung: Man nahm gleich ganze Kupferplatten, wie sie aus den Bergwerken kamen, und stempelte sie mit offiziellen Zeichen. Fertig war das Plattengeld.

## Fast 20 Kilo in der Hand

Die ersten großen Platten erschienen 1644. Die 10-Daler-Platte wog laut Guinness World Records 19,7 Kilogramm und maß etwa 30 mal 70 Zentimeter. Damit ist sie die schwerste Münze, die je für den Umlauf geprägt wurde. Zwischen 1644 und 1655 wurden rund 25.500 Stück davon hergestellt. Bekannt sind heute noch sieben.

Später gab es auch kleinere Platten über 8, 4, 2, 1 und einen halben Daler. Laut Stack’s Bowers wurde Plattengeld über 130 Jahre lang geprägt und gehandelt, bis nach Indien und in den Pazifikraum.

> Bonusfakt: Weil niemand gern 20 Kilo Kupfer herumschleppte, kursierten Quittungen über eingezahltes Plattengeld. Laut Guinness gehören sie zu den frühesten Formen von Papiergeld.

Die Idee mit dem Papier war im Rückblick also eine ziemlich naheliegende. Wer einmal eine Münze von 19,7 Kilogramm durch die Stadt getragen hat, freut sich über jeden Zettel.

Das Plattengeld war in Schweden bis 1776 verbreitet. Danach durfte das Portemonnaie wieder kleiner werden.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('swedish-plate-money-heaviest-coin', 'de', 1, 'Sachbuch über Münzen und ihre Geschichte', 'Buch Münzen Geschichte Numismatik', 'Erzählt die Geschichte des Geldes anhand besonderer Münzen.'),
  ('swedish-plate-money-heaviest-coin', 'de', 2, 'Münzalbum für Sammler', 'Münzalbum Sammler', 'Ordnet Münzen aus aller Welt übersichtlich, solange sie unter 20 Kilo wiegen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('swedish-plate-money-heaviest-coin', 'de', 1, 'Guinness World Records: Heaviest coin for circulation', 'https://www.guinnessworldrecords.com/world-records/66885-heaviest-coin'),
  ('swedish-plate-money-heaviest-coin', 'de', 2, 'Stack’s Bowers Galleries: Copper Plate Money', 'https://stacksbowers.com/copper-plate-money/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'swedish-plate-money-heaviest-coin', 'en', 'swedish-plate-money-heaviest-coin',
  'The heaviest coin in history weighed almost 20 kilos',
  'Sweden made money out of copper plates. A wallet was not an option.',
  'Sweden’s 10-daler plate money from 1644 weighed 19.7 kilograms, according to Guinness World Records. It’s the heaviest coin ever made for circulation.',
  'Small change is annoying. It jingles, bulges your pocket and is never there when you need it. In 17th-century Sweden, people had a very different problem: coins you almost needed a hand truck for.

## Copper instead of silver

Sweden had plenty of copper from its own mines back then. So it made money out of copper. But because copper is worth far less than silver, the coins had to be huge to contain enough metal to match their value.

Minting small round copper coins was expensive and fiddly. The solution: take whole copper plates straight from the mines and stamp them with official marks. Plate money was born.

## Almost 20 kilos in your hands

The first big plates appeared in 1644. According to Guinness World Records, the 10-daler plate weighed 19.7 kilograms (43 pounds) and measured about 30 by 70 centimeters. That makes it the heaviest coin ever minted for circulation. Around 25,500 of them were made between 1644 and 1655. Seven are known to survive today.

Later there were smaller plates worth 8, 4, 2, 1 and half a daler. According to Stack’s Bowers, plate money was minted and traded for more than 130 years, reaching as far as India and the Pacific.

> Bonus fact: Since nobody liked hauling 20 kilos of copper around, receipts for deposited plate money circulated instead. According to Guinness, they were among the earliest forms of paper money.

In hindsight, the paper idea was pretty obvious. Anyone who has carried a 19.7-kilogram coin across town would be happy with a slip of paper.

Plate money was common in Sweden until 1776. After that, wallets were allowed to shrink again.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('swedish-plate-money-heaviest-coin', 'en', 1, 'Book about coins and their history', 'book coins history numismatics', 'Tells the story of money through remarkable coins.'),
  ('swedish-plate-money-heaviest-coin', 'en', 2, 'Coin collector album', 'coin collection album', 'Keeps coins from around the world organized, as long as they weigh under 20 kilos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('swedish-plate-money-heaviest-coin', 'en', 1, 'Guinness World Records: Heaviest coin for circulation', 'https://www.guinnessworldrecords.com/world-records/66885-heaviest-coin'),
  ('swedish-plate-money-heaviest-coin', 'en', 2, 'Stack’s Bowers Galleries: Copper Plate Money', 'https://stacksbowers.com/copper-plate-money/');
