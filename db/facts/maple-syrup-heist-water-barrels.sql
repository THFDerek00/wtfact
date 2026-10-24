-- WTFact-Fakt „Diebe stahlen Ahornsirup für rund 18 Millionen kanadische Dollar und ließen Wasser in den Fässern zurück“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('maple-syrup-heist-water-barrels', '2026-10-29T08:00:00+01:00', 'crime', '🍁', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'maple-syrup-heist-water-barrels', 'de', 'ahornsirup-raub-wasser-in-faessern',
  'Diebe stahlen Ahornsirup für rund 18 Millionen kanadische Dollar und ließen Wasser in den Fässern zurück',
  'Einer der wohl größten Diebstähle der kanadischen Geschichte drehte sich nicht um Gold oder Diamanten, sondern um Pancake-Sirup.',
  'Zwischen 2011 und 2012 zapften Diebe rund 2.700 Tonnen Ahornsirup im Wert von fast 18 Millionen kanadischen Dollar aus einem Lagerhaus in Québec ab und füllten viele der leeren Fässer mit Wasser auf.',
  'Manche Länder haben eine strategische Ölreserve. Québec hat eine strategische Ahornsirup-Reserve. Und ja, jemand hat sie ausgeraubt.

## Ein Lager voller flüssigem Gold

Die Reserve gehört dem Verband der Ahornsirup-Produzenten in Québec, der laut Mental Floss rund 75 Prozent des weltweiten Ahornsirup-Angebots verwaltet. Sie wurde im Jahr 2000 angelegt und 2011 nach einem Sirup-Überschuss vergrößert. 2012 standen in einem ihrer Lagerhäuser in Saint-Louis-de-Blandford rund 16.000 Fässer im Gesamtwert von etwa 30 Millionen kanadischen Dollar.

Überwachungskameras gab es dort keine. Das sollte noch wichtig werden.

## Sirup raus, Wasser rein

Von 2011 bis 2012 zapfte eine Gruppe von Dieben in aller Ruhe Sirup aus den vollen Fässern in eigene Behälter ab. Danach füllten sie die leeren Fässer mit Wasser auf und stellten sie zurück, sodass die Stapel weiter vollständig aussahen. Insgesamt verschwanden etwa 2.700 Tonnen Sirup, rund sechs Millionen Pfund, im Wert von fast 18 Millionen kanadischen Dollar. Verkauft wurde der Sirup über New Brunswick, er landete in Ontario und in den USA.

Aufgeflogen ist die Sache im Juli 2012 bei einer routinemäßigen Inventur. Ein Mann, der die Fässer zählen sollte, kletterte auf einen Stapel, und ein Fass kippte unter ihm fast um. Es war leer. Bald tauchten weitere leere Fässer auf und andere, in denen nur noch Wasser war.

## Ermittlungen in einem klebrigen Fall

Die Polizei von Québec, die Sûreté du Québec, ging von Insidern aus. Die Ermittler befragten Hunderte Menschen und stellten 40 Durchsuchungsbeschlüsse aus. Vier Männer wurden am Ende verurteilt, der mutmaßliche Kopf der Bande, Richard Vallières, bekam sieben Jahre und zehn Monate Haft. Nur ein Teil des gestohlenen Sirups tauchte je wieder auf.

> Bonusfakt: Laut Global News war ein Fass dieses Sirups etwa 13-mal so viel wert wie ein Fass Rohöl.

Der dreisteste Coup der jüngeren Geschichte Québecs bestand also aus einem Schlauch, viel Wasser und einem Fass, das im falschen Moment gewackelt hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('maple-syrup-heist-water-barrels', 'de', 1, 'Kanadischer Ahornsirup im Geschenkset', 'Ahornsirup Geschenkset Kanada', 'Mehrere Sirup-Sorten, die du beim Frühstück direkt vergleichen kannst.'),
  ('maple-syrup-heist-water-barrels', 'de', 2, 'Buch über die spektakulärsten Raubzüge der Geschichte', 'Buch berühmte Raubüberfälle Geschichte', 'Berühmte Coups und Gaunereien zum Am-Stück-Lesen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('maple-syrup-heist-water-barrels', 'de', 1, 'The Canadian Encyclopedia: Great Canadian Maple Syrup Heist', 'https://thecanadianencyclopedia.ca/en/article/great-canadian-maple-syrup-heist'),
  ('maple-syrup-heist-water-barrels', 'de', 2, 'Mental Floss: The World''s Greatest Maple Syrup Heist', 'https://www.mentalfloss.com/article/63848/worlds-greatest-maple-syrup-heist'),
  ('maple-syrup-heist-water-barrels', 'de', 3, 'Global News: UPDATE: More arrests in Quebec maple syrup heist', 'https://globalnews.ca/news/1589998/how-did-18-million-dollars-worth-of-maple-syrup-go-missing-from-a-warehouse-in-quebec');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'maple-syrup-heist-water-barrels', 'en', 'maple-syrup-heist-swapped-for-water',
  'Thieves stole maple syrup worth about 18 million Canadian dollars and left water in the barrels',
  'Possibly one of the biggest thefts in Canadian history didn''t involve gold or diamonds, but pancake topping.',
  'Between 2011 and 2012, thieves siphoned roughly 2,700 tonnes of maple syrup worth nearly 18 million Canadian dollars out of a Quebec warehouse and refilled many of the emptied barrels with water.',
  'Some countries keep a strategic oil reserve. Quebec keeps a strategic maple syrup reserve. And yes, someone robbed it.

## A warehouse full of liquid gold

The reserve is run by the Quebec maple syrup producers'' federation, which, according to Mental Floss, oversees about 75 percent of the world''s maple syrup supply. It was set up in 2000 and expanded in 2011 after a syrup surplus. By 2012, one of its warehouses in Saint-Louis-de-Blandford held around 16,000 barrels worth about 30 million Canadian dollars in total.

The warehouse had no security cameras. That turned out to matter.

## Syrup out, water in

From 2011 to 2012, a group of thieves quietly siphoned syrup out of the full barrels into their own containers. Then they topped the emptied barrels up with water and put them back in place, so the stacks still looked complete. In total, about 2,700 tonnes of syrup vanished, roughly six million pounds, worth nearly 18 million Canadian dollars. The syrup was sold on through New Brunswick and ended up in Ontario and the United States.

The scheme fell apart in July 2012 during a routine inventory. A man counting the barrels climbed up a stack, and one barrel nearly tipped over under him. It was empty. Soon, more empty barrels turned up, and others that contained nothing but water.

## Detectives on a sticky case

The Sûreté du Québec treated it as an inside job. Investigators interviewed hundreds of people and issued 40 search warrants. Four men were eventually convicted, and the alleged ringleader, Richard Vallières, was sentenced to seven years and ten months in prison. Only part of the stolen syrup was ever recovered.

> Bonus fact: According to Global News, one barrel of the syrup was worth about 13 times as much as a barrel of crude oil.

So the most daring heist in Quebec''s recent history came down to a hose, a lot of water and a barrel that wobbled at the wrong moment.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('maple-syrup-heist-water-barrels', 'en', 1, 'Canadian maple syrup gift set', 'Canadian maple syrup gift set', 'Several grades of syrup to taste side by side at breakfast.'),
  ('maple-syrup-heist-water-barrels', 'en', 2, 'Book about the greatest heists in history', 'greatest heists in history book', 'A collection of famous robberies and cons to read in one go.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('maple-syrup-heist-water-barrels', 'en', 1, 'The Canadian Encyclopedia: Great Canadian Maple Syrup Heist', 'https://thecanadianencyclopedia.ca/en/article/great-canadian-maple-syrup-heist'),
  ('maple-syrup-heist-water-barrels', 'en', 2, 'Mental Floss: The World''s Greatest Maple Syrup Heist', 'https://www.mentalfloss.com/article/63848/worlds-greatest-maple-syrup-heist'),
  ('maple-syrup-heist-water-barrels', 'en', 3, 'Global News: UPDATE: More arrests in Quebec maple syrup heist', 'https://globalnews.ca/news/1589998/how-did-18-million-dollars-worth-of-maple-syrup-go-missing-from-a-warehouse-in-quebec');
