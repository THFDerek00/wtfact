-- WTFact-Fakt „Die Mikrowelle begann mit einem geschmolzenen Schokoriegel in der Hosentasche“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('microwave-chocolate-bar', NULL, 'brands', '🍫', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'microwave-chocolate-bar', 'de', 'mikrowelle-geschmolzener-schokoriegel',
  'Die Mikrowelle begann mit einem geschmolzenen Schokoriegel in der Hosentasche',
  'Ein Radartechniker stand neben einer Röhre, und plötzlich war seine Schokolade weich. Der Rest ist Küchengeschichte.',
  'Percy Spencer von der Firma Raytheon bemerkte Mitte der 1940er, dass ein Schokoriegel in seiner Tasche neben einem Magnetron schmolz, und daraus entstand der erste Mikrowellenherd.',
  'Popcorn in drei Minuten, Reste vom Vortag, kalter Kaffee wieder warm: Die Mikrowelle ist aus kaum einer Küche wegzudenken. Angefangen hat sie mit einer ziemlich klebrigen Hosentasche.

## Schokolade neben dem Radar

Percy Spencer arbeitete bei der US-Firma Raytheon, die Radartechnik baute. Laut dem Lemelson-Programm des MIT stand er in der Nähe eines Magnetrons, einer Röhre, die Mikrowellen erzeugt, als er merkte, dass der Schokoriegel in seiner Tasche zu schmelzen begann. IEEE Spectrum datiert die Szene auf 1946, das Patent hatte Raytheon laut MIT aber schon am 8. Oktober 1945 angemeldet. Die Quellen sind sich beim Jahr also nicht ganz einig.

Spencer wollte es genauer wissen und legte Popcorn-Mais neben das Magnetron. Laut IEEE Spectrum knackten und poppten die Körner durch sein ganzes Labor.

## Ein Ofen so groß wie ein Kühlschrank

1947 kam das erste Gerät auf den Markt, der Radarange. Mit deiner Mikrowelle hatte der wenig gemeinsam. Laut IEEE Spectrum war der Prototyp fast 2 Meter hoch und wog rund 340 Kilogramm. Das MIT nennt ähnliche Werte. Gedacht war er für Großküchen, nicht für Privathaushalte, denn er kostete mehrere tausend Dollar.

Erst 1967 brachte die Firma Amana, die inzwischen zu Raytheon gehörte, ein Tischgerät für zu Hause heraus. Es kostete laut IEEE Spectrum 495 Dollar.

## Ein Erfinder ohne Abschluss

Das Schrägste an der Geschichte ist Spencer selbst. Laut MIT verließ er mit 12 Jahren die Schule, um in einer Weberei zu arbeiten. Mathe und Physik brachte er sich später selbst aus Lehrbüchern bei. Am Ende hatte er über 100 Patente.

> Bonusfakt: Laut IEEE Spectrum stand 1997 in rund 90 Prozent der US-Haushalte eine Mikrowelle.

Eine der bekanntesten Küchenmaschinen der Welt verdanken wir also einem Snack, der zur falschen Zeit am falschen Ort war.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('microwave-chocolate-bar', 'de', 1, 'Popcornschüssel aus Silikon für die Mikrowelle', 'Mikrowellen Popcorn Schüssel Silikon', 'Faltbare Schüssel, in der du Popcorn ohne Fertigtüte machst.'),
  ('microwave-chocolate-bar', 'de', 2, 'Buch über zufällige Erfindungen', 'Buch zufällige Erfindungen', 'Sammelt Geschichten von Entdeckungen, die eigentlich ein Versehen waren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('microwave-chocolate-bar', 'de', 1, 'Lemelson-MIT: Percy Spencer', 'https://lemelson.mit.edu/resources/percy-spencer'),
  ('microwave-chocolate-bar', 'de', 2, 'IEEE Spectrum: A History of the Microwave Oven', 'https://spectrum.ieee.org/a-history-of-the-microwave-oven');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'microwave-chocolate-bar', 'en', 'microwave-melted-chocolate-bar',
  'The microwave oven began with a melted chocolate bar in an engineer''s pocket',
  'A radar engineer stood next to a tube, and suddenly his chocolate went soft. The rest is kitchen history.',
  'In the mid-1940s, Percy Spencer of Raytheon noticed that a chocolate bar in his pocket melted near a magnetron, and that led to the first microwave oven.',
  'Popcorn in three minutes, yesterday''s leftovers, cold coffee warm again: it''s hard to picture a kitchen without a microwave. It all started with a pretty sticky pocket.

## Chocolate next to the radar

Percy Spencer worked at Raytheon, a US company that built radar equipment. According to MIT''s Lemelson program, he was standing near a magnetron, a tube that produces microwaves, when he noticed the chocolate bar in his pocket starting to melt. IEEE Spectrum dates the scene to 1946, but according to MIT, Raytheon had already filed the patent on 8 October 1945. So the sources don''t fully agree on the year.

Spencer wanted to know more and put popcorn kernels next to the magnetron. According to IEEE Spectrum, they sputtered and popped all over his lab.

## An oven the size of a fridge

In 1947, the first device hit the market: the Radarange. It had little in common with your microwave. According to IEEE Spectrum, the prototype was almost 2 meters tall and weighed about 340 kilograms. MIT gives similar figures. It was meant for commercial kitchens, not homes, since it cost several thousand dollars.

Only in 1967 did Amana, which by then belonged to Raytheon, release a countertop model for the home. According to IEEE Spectrum, it cost 495 dollars.

## An inventor without a diploma

The oddest part of the story is Spencer himself. According to MIT, he left school at 12 to work in a weaving mill. He later taught himself math and physics from textbooks. By the end, he held over 100 patents.

> Bonus fact: According to IEEE Spectrum, about 90 percent of US households had a microwave by 1997.

One of the best-known kitchen appliances in the world exists because a snack was in the wrong place at the wrong time.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('microwave-chocolate-bar', 'en', 1, 'Silicone microwave popcorn bowl', 'microwave popcorn popper silicone', 'A collapsible bowl for making popcorn without ready-made bags.'),
  ('microwave-chocolate-bar', 'en', 2, 'Book about accidental inventions', 'accidental inventions book', 'Collects stories of discoveries that were really happy mistakes.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('microwave-chocolate-bar', 'en', 1, 'Lemelson-MIT: Percy Spencer', 'https://lemelson.mit.edu/resources/percy-spencer'),
  ('microwave-chocolate-bar', 'en', 2, 'IEEE Spectrum: A History of the Microwave Oven', 'https://spectrum.ieee.org/a-history-of-the-microwave-oven');
