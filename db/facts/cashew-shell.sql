-- WTFact-Fakt „Darum kannst du Cashews nie mit Schale kaufen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('cashew-shell', '2026-08-27', 'food', '🌰', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cashew-shell', 'de', 'cashews-nie-mit-schale',
  'Darum kannst du Cashews nie mit Schale kaufen',
  'Die Schale enthält ein ätzendes Öl, verwandt mit dem Stoff aus dem Gift-Efeu. Und die Nuss hängt außen an einer Frucht.',
  'Zwischen den Schalen der Cashew sitzt ein ätzendes Öl, deshalb kommen Cashews nur geschält in den Handel.',
  'Pistazien gibt es mit Schale, Erdnüsse auch, Walnüsse sowieso. Aber hast du jemals eine Cashew in ihrer Schale im Laden gesehen? Wahrscheinlich nicht. Und das hat einen ziemlich guten Grund: **Die Schale der Cashew enthält ein ätzendes Öl.**

## Ein Öl, das Blasen macht

Laut dem Ernährungsmuseum Alimentarium in der Schweiz hat die Cashew zwei Schalen. Dazwischen sitzt eine giftige, stark ätzende ölige Flüssigkeit, die auf der Haut Blasen verursachen kann, wenn man sie direkt anfasst. Deshalb werden Cashews nach der Ernte erst geröstet, damit das Öl austritt. Danach knackt man die Schale vorsichtig auf, meist sogar heute noch von Hand, und zieht zum Schluss das dünne Häutchen um den Kern ab.

Laut Scientific American enthält die Schale Urushiol, denselben Stoff, der beim Gift-Efeu für juckenden Ausschlag sorgt. Die Cashew gehört nämlich zur Familie der Sumachgewächse, zusammen mit Mango, Gift-Efeu und, ja, auch Pistazien. Beim Rösten mit hohen Temperaturen wird das Problem-Öl zerstört, bevor du die Nuss in die Hand bekommst.

## Die Nuss, die außen hängt

Die zweite Überraschung steckt am Baum. Die Cashew wächst nicht in einer Frucht, sondern **hängt unten an einer Frucht dran**. Dieser birnenförmige „Cashewapfel“ ist eine Scheinfrucht, und an jedem hängt genau eine einzige Nuss. Laut Alimentarium wird der Cashewapfel roh gegessen, gekocht, zu Saft und Sirup verarbeitet oder zu Wein vergoren.

Ursprünglich stammt der Cashewbaum aus Brasilien. Portugiesische Händler brachten ihn im 16. Jahrhundert nach Afrika und Indien.

> Auch Mangos gehören zur Cashew-Familie und tragen laut Scientific American Urushiol in ihrer Schale.

## Viel Arbeit für einen Snack

Falls dir Cashews teuer vorkommen: Hinter jeder einzelnen steckt Rösten, Knacken und Schälen, oft per Hand. Selbst das abgetrennte Öl wird noch genutzt, laut Alimentarium etwa für Lacke, Harze und Tinten.

Die harmloseste Nuss im Studentenfutter hat also eine ziemlich wehrhafte Vergangenheit.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cashew-shell', 'de', 1, 'Cashewmus', 'Cashewmus ohne Zusätze', 'Cremig, mild und vielseitig: aufs Brot, ins Curry oder in den Smoothie.'),
  ('cashew-shell', 'de', 2, 'Snackschale mit Fächern', 'Snackschale mit Fächern Keramik', 'Mehrere Fächer für Nüsse, Chips und Dips, praktisch für den Filmabend.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cashew-shell', 'de', 1, 'Scientific American: What Do Cashews, Mangos, and Poison Ivy Have in Common?', 'https://www.scientificamerican.com/article/what-do-cashews-mangoes-and-poison-ivy-have-in-common/'),
  ('cashew-shell', 'de', 2, 'Alimentarium: Cashew nuts', 'https://www.alimentarium.org/en/fact-sheet/cashew-nuts');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cashew-shell', 'en', 'cashews-never-in-shell',
  'This is why you can never buy cashews in the shell',
  'The shell holds a caustic oil related to poison ivy''s. And the nut hangs off the outside of a fruit.',
  'A caustic oil sits between the cashew''s shells, which is why cashews are only ever sold shelled.',
  'You can buy pistachios in the shell, peanuts too, walnuts obviously. But have you ever seen a cashew in its shell at the store? Probably not. And there''s a pretty good reason: **the cashew shell contains a caustic oil.**

## An oil that blisters

According to Alimentarium, the Swiss food museum, the cashew has two shells. Between them sits a toxic, highly caustic oily substance that can blister your skin if you touch it directly. That''s why cashews get roasted after harvest, to release the oil. Then the shell is carefully cracked, still mostly by hand today, and finally the thin skin around the kernel is removed.

According to Scientific American, the shell contains urushiol, the same compound that gives you an itchy rash from poison ivy. The cashew belongs to the cashew family, Anacardiaceae, together with mango, poison ivy and, yes, pistachios. Roasting at high temperatures destroys the troublesome oil before the nut ever reaches you.

## The nut that hangs outside

The second surprise is on the tree. The cashew doesn''t grow inside a fruit. **It hangs off the bottom of one.** This pear-shaped "cashew apple" is a false fruit, and each one carries exactly one nut. According to Alimentarium, cashew apples are eaten raw or cooked, turned into juice and syrup, or fermented into wine.

The cashew tree originally comes from Brazil. Portuguese traders brought it to Africa and India in the 16th century.

> Mangos belong to the cashew family too and, according to Scientific American, carry urushiol in their skin.

## A lot of work for a snack

If cashews ever seem pricey: every single one has been roasted, cracked and peeled, often by hand. Even the extracted oil gets used, according to Alimentarium for things like varnish, resin and inks.

The most harmless-looking nut in your trail mix has a surprisingly well-armed past.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cashew-shell', 'en', 1, 'Cashew butter', 'cashew butter no additives', 'Creamy, mild and versatile: on toast, in curry or in a smoothie.'),
  ('cashew-shell', 'en', 2, 'Divided snack serving bowl', 'divided snack serving bowl ceramic', 'Several compartments for nuts, chips and dips, perfect for movie night.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cashew-shell', 'en', 1, 'Scientific American: What Do Cashews, Mangos, and Poison Ivy Have in Common?', 'https://www.scientificamerican.com/article/what-do-cashews-mangoes-and-poison-ivy-have-in-common/'),
  ('cashew-shell', 'en', 2, 'Alimentarium: Cashew nuts', 'https://www.alimentarium.org/en/fact-sheet/cashew-nuts');
