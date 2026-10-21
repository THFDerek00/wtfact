-- WTFact-Fakt „Für Butter im Stollen brauchte es 1491 eine Erlaubnis vom Papst“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('stollen-butter-letter', '2026-12-11T00:00:00+01:00', 'food', '🍞', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stollen-butter-letter', 'de', 'stollen-butterbrief-papst',
  'Für Butter im Stollen brauchte es 1491 eine Erlaubnis vom Papst',
  'Der Christstollen war mal eine trockene Fastenspeise. Bis Sachsens Fürsten nach Rom schrieben.',
  'Weil Butter im Advent verboten war, erlaubte Papst Innozenz VIII. erst 1491 mit dem sogenannten Butterbrief, sie für den Stollen zu verwenden.',
  'Butter, Rosinen, Puderzucker: Ein guter Stollen ist das Gegenteil von Verzicht. Ursprünglich war er aber genau dafür gedacht, und für die Butter musste erst der Papst unterschreiben.

## Ein Fastengebäck aus Wasser und Öl

Der Advent war im Mittelalter eine Fastenzeit. Die Kirche verbot in dieser Zeit Milch und Butter. Laut evangelisch.de bestand der frühe Stollen deshalb nur aus Mehl, Wasser, Hafer und Rübsenöl. Satt machte das, lecker war es eher nicht. Ein Gebäck für die Zeit des Wartens, nicht für das Fest selbst.

Erstmals schriftlich erwähnt wird der Stollen schon 1329 in Naumburg an der Saale, als Weihnachtsgeschenk für den Naumburger Bischof. Mit dem süßen, schweren Gebäck von heute hatte er wenig gemeinsam. Rosinen, Zitronat und Mandeln kamen erst viel später dazu.

## Post nach Rom

Die sächsischen Fürsten wollten mehr Geschmack und keinen trockenen Fastenkuchen mehr auf der Festtafel. Laut Atlas Obscura baten sie den Papst, das Butterverbot für den Stollen aufzuheben. Die Antwort kam 1491 von Papst Innozenz VIII., in einem Schreiben, das heute als „Butterbrief“ bekannt ist.

Ganz umsonst war die Erlaubnis nicht. Laut evangelisch.de war sie an Bußgelder geknüpft, die in den Bau des Freiberger Doms flossen. Wer Butter wollte, zahlte also für eine Kirche mit.

> Bonusfakt: Dresden feiert den Stollen bis heute groß. Beim Stollenfest wird ein Riesenstollen durch die Stadt gefahren, laut Atlas Obscura schon 2019 rund 8700 Pfund schwer, also fast vier Tonnen, gebacken von 63 Bäckereien.

Jedes Stück Stollen mit dicker Butterschicht ist also ein kleiner Sieg über ein mittelalterliches Kirchenverbot.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stollen-butter-letter', 'de', 1, 'Stollenbackform aus Metall', 'Stollenbackform Metall', 'Gibt dem selbstgebackenen Stollen die typische Form.'),
  ('stollen-butter-letter', 'de', 2, 'Weihnachtsbackbuch mit klassischen Rezepten', 'Weihnachtsbäckerei Backbuch Klassiker', 'Rezepte für Stollen, Lebkuchen und Plätzchen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stollen-butter-letter', 'de', 1, 'evangelisch.de: Christstollen - ursprünglich eine Fastenspeise', 'https://www.evangelisch.de/inhalte/97358/08-12-2009/christstollen-urspruenglich-eine-fastenspeise'),
  ('stollen-butter-letter', 'de', 2, 'Atlas Obscura: Every Year, Dresden Kickstarts the Christmas Season With a Four-Ton Cake', 'https://www.atlasobscura.com/articles/dresden-stollen.amp');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stollen-butter-letter', 'en', 'stollen-butter-letter-pope',
  'Putting butter in stollen took the pope''s permission in 1491',
  'Christmas stollen used to be a dry fasting bread. Until Saxony''s rulers wrote to Rome.',
  'Because butter was banned during Advent, it took Pope Innocent VIII''s so-called Butter Letter of 1491 to allow it in stollen.',
  'Butter, raisins, powdered sugar: a good German stollen is the opposite of self-denial. Yet that''s exactly what it was meant for, and the butter needed the pope''s signature first.

## A fasting bread of water and oil

In the Middle Ages, Advent was a time of fasting. The church banned milk and butter during it. According to evangelisch.de, early stollen was made only of flour, water, oats and rapeseed oil. Filling, but hardly delicious. A bread for the time of waiting, not for the feast itself.

Stollen is first mentioned in writing as early as 1329, in Naumburg on the Saale, as a Christmas gift for the Bishop of Naumburg. It had little in common with today''s heavy, sweet loaf. Raisins, candied peel and almonds only came much later.

## A letter to Rome

Saxony''s rulers wanted more flavor. According to Atlas Obscura, they asked the pope to lift the butter ban for stollen. The answer came in 1491 from Pope Innocent VIII, in a document now known as the "Butter Letter".

The permission wasn''t free. According to evangelisch.de, it came with penance payments that went toward building Freiberg Cathedral. So anyone who wanted butter helped pay for a church.

> Bonus fact: Dresden still celebrates stollen in a big way. At its Stollen Festival, a giant stollen is paraded through the city. According to Atlas Obscura, the 2019 one weighed about 8700 pounds, almost four tons, baked by 63 bakeries.

Every slice of stollen with a thick layer of butter is a small victory over a medieval church ban.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stollen-butter-letter', 'en', 1, 'Metal stollen baking tin', 'stollen baking tin', 'Gives homemade stollen its classic shape.'),
  ('stollen-butter-letter', 'en', 2, 'German Christmas baking cookbook', 'german christmas baking cookbook', 'Recipes for stollen, gingerbread and cookies.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stollen-butter-letter', 'en', 1, 'evangelisch.de: Christstollen - ursprünglich eine Fastenspeise', 'https://www.evangelisch.de/inhalte/97358/08-12-2009/christstollen-urspruenglich-eine-fastenspeise'),
  ('stollen-butter-letter', 'en', 2, 'Atlas Obscura: Every Year, Dresden Kickstarts the Christmas Season With a Four-Ton Cake', 'https://www.atlasobscura.com/articles/dresden-stollen.amp');
