-- WTFact-Fakt „Die Frisbee ist nach einer Pie-Bäckerei benannt, nur falsch geschrieben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES ('frisbee-pie-bakery', NULL, 'brands', '🥧', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'frisbee-pie-bakery', 'de', 'frisbee-pie-baeckerei-falsch-geschrieben',
  'Die Frisbee ist nach einer Pie-Bäckerei benannt, nur falsch geschrieben',
  'Bevor es Plastikscheiben gab, flogen über US-Unis angeblich leere Kuchenformen. Ihr Hersteller gab der Frisbee ihren Namen.',
  'Der Name Frisbee geht auf die Frisbie Pie Company aus Connecticut zurück, deren leere Kuchenformen Studierende sich zuwarfen, und Wham-O änderte nur die Schreibweise.',
  'Eine Plastikscheibe, ein Park, ein Hund, der hinterherrennt. Die Frisbee wirkt wie ein Produkt aus dem Spielzeuglabor. Ihr Name stammt aber aus einer Bäckerei.

## Pies aus Bridgeport

William Russell Frisbie gründete laut New England Historical Society 1871 in Bridgeport im US-Bundesstaat Connecticut die Frisbie Pie Company. Die Firma lief gut: Laut dem Weltverband für Frisbeesport (WFDF) backte sie 1956 zu ihren besten Zeiten 80.000 Pies am Tag. Die Pies wurden in Blechformen verkauft, auf die laut New England Historical Society 10 Cent Pfand anfielen.

Und hier kommt die Legende ins Spiel: Studierende in Yale und an anderen Unis sollen die leeren Formen geworfen haben. Damit der Fänger aufpasst, riefen sie „Frisbie!“. Die New England Historical Society nennt das ausdrücklich eine Überlieferung, auch der WFDF erzählt die Geschichte so.

## Plastik statt Blech

An der Westküste tüftelte unterdessen Walter Frederick „Fred“ Morrison an einer Wurfscheibe aus Plastik. Laut Sky History entwickelte er sie 1948 zusammen mit Warren Franscioni. Später verkaufte Morrison eine verbesserte Version namens „Pluto Platter“, passend zum damaligen UFO-Hype.

Mitte der 1950er kaufte die Spielzeugfirma Wham-O ihm die Rechte ab. Die Quellen nennen 1956 oder 1957. Am 23. Januar 1957 liefen laut Sky History die ersten Scheiben bei Wham-O vom Band.

## Ein Name, ein Buchstabe anders

1958 nannte Wham-O die Scheibe dann „Frisbee“. Sky History schreibt ausdrücklich, dass der Name der Pie-Firma dabei falsch geschrieben wurde: aus „Frisbie“ wurde „Frisbee“. Laut New England Historical Society machte die Frisbie Pie Company im selben Jahr dicht. Die Marke „Frisbee“ wurde laut WFDF 1959 eingetragen.

> Bonusfakt: 1972 spielten Rutgers und Princeton das erste Ultimate-Frisbee-Spiel zwischen zwei Unis, Rutgers gewann 29 zu 27.

Laut WFDF wurden weltweit über 100 Millionen Wurfscheiben verkauft. Die Bäckerei hat davon nichts mehr erlebt, ihr Name fliegt trotzdem weiter.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('frisbee-pie-bakery', 'de', 1, 'Ultimate-Frisbee-Scheibe 175 g', 'Ultimate Frisbee 175g', 'Die Standard-Scheibe für Ultimate, fliegt stabil und weit.'),
  ('frisbee-pie-bakery', 'de', 2, 'Pie-Backform aus Metall', 'Pie Form Metall Backform', 'Eine klassische Form für amerikanische Pies, egal ob Apfel oder Kürbis.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('frisbee-pie-bakery', 'de', 1, 'New England Historical Society: A Brief History of the Frisbee', 'https://newenglandhistoricalsociety.com/the-sweet-new-england-history-of-the-frisbee/'),
  ('frisbee-pie-bakery', 'de', 2, 'Sky HISTORY: First frisbees produced', 'https://www.history.co.uk/this-day-in-history/23-january/first-frisbees-produced'),
  ('frisbee-pie-bakery', 'de', 3, 'WFDF: History of Flying Disc', 'https://wfdf.sport/history/history-of-flying-disc/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'frisbee-pie-bakery', 'en', 'frisbee-named-after-pie-bakery',
  'The Frisbee is named after a pie bakery, just spelled wrong',
  'Before plastic discs, empty pie tins reportedly flew across US campuses. The company that made them gave the Frisbee its name.',
  'The name Frisbee goes back to the Frisbie Pie Company in Connecticut, whose empty pie tins students tossed to each other, and Wham-O only changed the spelling.',
  'A plastic disc, a park, a dog sprinting after it. The Frisbee looks like something straight out of a toy lab. But its name comes from a bakery.

## Pies from Bridgeport

According to the New England Historical Society, William Russell Frisbie founded the Frisbie Pie Company in Bridgeport, Connecticut, in 1871. Business was good: according to the World Flying Disc Federation (WFDF), at its 1956 peak the company baked 80,000 pies a day. The pies came in metal tins that carried a 10 cent deposit, according to the New England Historical Society.

And here''s where the legend comes in: students at Yale and other colleges are said to have thrown the empty tins. To warn the catcher, they shouted "Frisbie!". The New England Historical Society explicitly calls this lore, and WFDF tells the story the same way.

## Plastic instead of tin

Meanwhile, on the West Coast, Walter Frederick "Fred" Morrison was working on a plastic flying disc. According to Sky History, he developed it in 1948 with Warren Franscioni. Morrison later sold an improved version called the "Pluto Platter", riding the UFO craze of the time.

In the mid-1950s, the toy company Wham-O bought the rights from him. Sources give 1956 or 1957. According to Sky History, Wham-O''s first discs came off the line on 23 January 1957.

## One name, one letter off

In 1958, Wham-O renamed the disc "Frisbee". Sky History says explicitly that this misspelled the pie company''s name: "Frisbie" became "Frisbee". According to the New England Historical Society, the Frisbie Pie Company closed its doors that same year. WFDF says the "Frisbee" trademark was registered in 1959.

> Bonus fact: In 1972, Rutgers and Princeton played the first intercollegiate Ultimate Frisbee game, and Rutgers won 29 to 27.

According to WFDF, more than 100 million flying discs have been sold worldwide. The bakery didn''t live to see it, but its name is still flying.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('frisbee-pie-bakery', 'en', 1, 'Ultimate flying disc 175 g', 'ultimate frisbee disc 175g', 'The standard disc for Ultimate, with a stable, long flight.'),
  ('frisbee-pie-bakery', 'en', 2, 'Metal pie pan', 'metal pie pan', 'A classic pan for American pies, from apple to pumpkin.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('frisbee-pie-bakery', 'en', 1, 'New England Historical Society: A Brief History of the Frisbee', 'https://newenglandhistoricalsociety.com/the-sweet-new-england-history-of-the-frisbee/'),
  ('frisbee-pie-bakery', 'en', 2, 'Sky HISTORY: First frisbees produced', 'https://www.history.co.uk/this-day-in-history/23-january/first-frisbees-produced'),
  ('frisbee-pie-bakery', 'en', 3, 'WFDF: History of Flying Disc', 'https://wfdf.sport/history/history-of-flying-disc/');
