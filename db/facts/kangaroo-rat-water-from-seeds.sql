-- WTFact-Fakt „Kängururatten müssen nicht trinken: Ihr Wasser machen sie aus trockenen Samen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('kangaroo-rat-water-from-seeds', '2026-10-27T16:00:00+01:00', 'survival', '🐭', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kangaroo-rat-water-from-seeds', 'de', 'kaengururatten-wasser-aus-trockenen-samen',
  'Kängururatten müssen nicht trinken: Ihr Wasser machen sie aus trockenen Samen',
  'In der Wüste ist Wasser das Knappste überhaupt. Dieses kleine Nagetier lässt das Trinken einfach aus.',
  'Kängururatten in den Wüsten Nordamerikas trinken kaum oder nie: Sie leben fast nur von Wasser, das ihr Körper beim Abbau trockener Samen herstellt, etwa ein halbes Gramm pro Gramm kohlenhydratreicher Samen.',
  'Stell dir vor, du lebst in der Wüste und greifst nie zu einem Glas Wasser. Für Kängururatten ist das normal. Die kleinen Wüstennager, die auf riesigen Hinterbeinen herumhüpfen, trinken kaum oder nie.

## Wasser aus trockenen Samen

Kängururatten fressen vor allem Samen, und die sehen knochentrocken aus. Doch wenn der Körper die Nährstoffe darin abbaut, entsteht als Nebenprodukt Wasser. Dazu kommt das bisschen Feuchtigkeit, das schon in den Samen steckt, und das reicht ihnen.

Laut dem Arizona-Sonora Desert Museum bevorzugen die Tiere kohlenhydratreiche Samen, aus denen sie pro gefressenem Gramm etwa ein halbes Gramm Wasser gewinnen. An den Wangen haben sie außen fellgefütterte Backentaschen, damit können sie Samen gleich in großen Mengen nach Hause tragen.

## Jeder Tropfen zählt

Wasser herstellen ist nur die halbe Miete. Die andere Hälfte: es nicht wieder zu verlieren. Ihre Nieren konzentrieren den Urin so stark, dass er zähflüssig wird. In der Tageshitze bleiben Kängururatten in ihren Bauen und kommen erst nachts heraus. Die Eingänge verstopfen sie, in White Sands mit Sand, damit es unten kühler und feuchter bleibt.

Manche Arten legen in ihren Bauen Samenvorräte an. Laut dem Desert Museum können diese Samen aus der feuchten Luft bis zu 30 Prozent mehr Feuchtigkeit aufnehmen.

Sogar ihr Atem wird recycelt. Warme, feuchte Luft einfach in die Wüste auszuatmen, würde sie austrocknen. Wie der Biologe Knut Schmidt-Nielsen von der Duke University herausfand, wirken Strukturen in ihrer Nase wie eine Falle: Die Feuchtigkeit aus der ausgeatmeten Luft schlägt sich dort an den kühlen Flächen nieder, und der nächste Atemzug nimmt sie auf dem Weg zur Lunge wieder mit.

> Bonusfakt: Wie ihr Name verspricht, sind Kängururatten Spitzenspringer. Laut dem Desert Museum springen sie mit einem einzigen Satz bis zu 2,75 Meter weit, so entkommen sie Fressfeinden.

Ein Wüstentier, das sein Frühstück in Trinkwasser verwandelt: Das ist weniger eine Diät als eine Superkraft.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kangaroo-rat-water-from-seeds', 'de', 1, 'Plüschtier Wüstenmaus', 'Plüschtier Wüstenspringmaus', 'Ein weicher Wüstennager mit großen Ohren, viel kuscheliger als das Original.'),
  ('kangaroo-rat-water-from-seeds', 'de', 2, 'Illustriertes Buch über Wüstentiere', 'Kinderbuch Sachbuch Wüstentiere illustriert', 'Zeigt, wie ganz verschiedene Tiere dort leben, wo es fast nie regnet.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kangaroo-rat-water-from-seeds', 'de', 1, 'Arizona-Sonora Desert Museum: Heteromyidae: Kangaroo Rats & Pocket Mice', 'https://desertmuseum.org/books/nhsd_heteromyidae.php'),
  ('kangaroo-rat-water-from-seeds', 'de', 2, 'U.S. National Park Service: Kangaroo Rats - White Sands National Park', 'https://www.nps.gov/whsa/learn/nature/kangaroo-rats.htm'),
  ('kangaroo-rat-water-from-seeds', 'de', 3, 'Carl Zimmer: The Importance of Noses', 'https://carlzimmer.com/the-importance-of-noses/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kangaroo-rat-water-from-seeds', 'en', 'kangaroo-rats-water-from-dry-seeds',
  'Kangaroo rats don''t need to drink: they make their water from dry seeds',
  'In the desert, water is the scarcest thing around. This little rodent simply skips drinking.',
  'Kangaroo rats in North America''s deserts rarely, if ever, drink: they live almost entirely on water their bodies produce while breaking down dry seeds, about half a gram per gram of carbohydrate-rich seed.',
  'Imagine living in the desert and never reaching for a glass of water. For kangaroo rats, that''s normal. These small desert rodents, which hop around on huge hind legs, rarely, if ever, drink.

## Water from dry seeds

Kangaroo rats mostly eat seeds, and those seeds look bone-dry. But when the body breaks down the nutrients inside, water is produced as a by-product. Add the little moisture the seeds already contain, and that covers their needs.

According to the Arizona-Sonora Desert Museum, the animals prefer seeds rich in carbohydrates, which yield about half a gram of water for every gram of seed eaten. Their cheeks come with fur-lined pouches on the outside, so they can carry seeds home in bulk.

## Saving every drop

Making water is only half the trick. The other half is not losing it. Their kidneys concentrate urine so much that it becomes thick and viscous. During the hot day, kangaroo rats stay in their burrows and only come out at night. They plug the entrances, at White Sands with sand, so that it stays cooler and more humid down there.

Some species store piles of seeds in their burrows. According to the Desert Museum, those seeds can soak up to 30 percent more moisture from the humid air.

Even their breath is recycled. Breathing out warm, humid air into the desert would dry them out. As biologist Knut Schmidt-Nielsen of Duke University discovered, structures inside their nose act as a trap: moisture from the outgoing breath condenses on the cool surfaces there, and the next breath picks it up again on its way back to the lungs.

> Bonus fact: True to their name, kangaroo rats are top jumpers. According to the Desert Museum, they can jump up to 2.75 meters in a single bound, which helps them escape predators.

A desert animal that turns breakfast into drinking water: that''s less a diet than a superpower.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kangaroo-rat-water-from-seeds', 'en', 1, 'Plush desert mouse', 'plush desert mouse jerboa stuffed animal', 'A soft, big-eared desert rodent that''s much easier to hold than the real thing.'),
  ('kangaroo-rat-water-from-seeds', 'en', 2, 'Illustrated book about desert animals', 'illustrated book desert animals', 'Shows how all kinds of animals manage to live where it hardly ever rains.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kangaroo-rat-water-from-seeds', 'en', 1, 'Arizona-Sonora Desert Museum: Heteromyidae: Kangaroo Rats & Pocket Mice', 'https://desertmuseum.org/books/nhsd_heteromyidae.php'),
  ('kangaroo-rat-water-from-seeds', 'en', 2, 'U.S. National Park Service: Kangaroo Rats - White Sands National Park', 'https://www.nps.gov/whsa/learn/nature/kangaroo-rats.htm'),
  ('kangaroo-rat-water-from-seeds', 'en', 3, 'Carl Zimmer: The Importance of Noses', 'https://carlzimmer.com/the-importance-of-noses/');
