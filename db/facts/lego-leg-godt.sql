-- WTFact-Fakt „LEGO heißt „spiel gut“, und die ersten LEGO-Spielsachen waren aus Holz“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('lego-leg-godt', NULL, 'brands', '🧱', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lego-leg-godt', 'de', 'lego-heisst-spiel-gut',
  'LEGO heißt „spiel gut“, und die ersten LEGO-Spielsachen waren aus Holz',
  'Hinter einem der berühmtesten Spielzeugnamen der Welt stecken ein dänischer Tischler, zwei dänische Wörter und ein lateinischer Zufall.',
  'Der Name LEGO kommt vom dänischen „leg godt“, also „spiel gut“, und bevor es Plastiksteine gab, baute die Firma Holzspielzeug.',
  'LEGO klingt nach Kunstwort, nach Marketingabteilung und Logo-Agentur. In Wahrheit hat sich ein Tischler aus einem kleinen dänischen Ort den Namen selbst ausgedacht, lange bevor es den ersten Plastikstein gab.

## Ein Tischler in der Krise

Ole Kirk Kristiansen war Tischlermeister in Billund in Dänemark. Laut LEGO stellte er 1932, mitten in der Weltwirtschaftskrise, auf Holzspielzeug und kleine Haushaltsgegenstände um. Laut dem Lemelson-Programm des MIT verkaufte seine Werkstatt auch Trittleitern und Bügelbretter. Die erste Spielzeugkollektion umfasste laut LEGO 36 Teile, darunter Autos, Flugzeuge und Jo-Jos.

## Zwei Wörter, ein Name

Den Namen erfand Ole Kirk selbst. Er zog die dänischen Wörter „leg godt“ zusammen, auf Deutsch „spiel gut“. Wann genau, ist gar nicht so eindeutig: Viele Darstellungen nennen 1934. LEGO selbst schreibt in einem Artikel von 2026, der Name tauche Anfang 1936 erstmals in Firmendokumenten auf und sei im Januar desselben Jahres zum offiziellen Firmennamen geworden.

Jetzt kommt der schräge Teil: „lego“ ist auch ein lateinisches Wort und lässt sich laut LEGO mit „ich sammle“ übersetzen. Laut MIT kann es auch „ich setze zusammen“ heißen. Klingt wie geplant, ist aber Zufall, denn den Namen gab es vor den Bausteinen.

## Die ersten Steine waren kein Hit

1949 brachte die Firma ihre ersten Plastikprodukte heraus, darunter einen Baukasten namens „Automatic Binding Bricks“. Die Steine wurden zunächst nur in Dänemark verkauft. Laut LEGO liefen sie ganz ordentlich, waren aber nicht das erfolgreichste Plastikspielzeug der Firma. Das war ein Ferguson-Traktor.

Erst 1958 ließ LEGO das Stecksystem mit Noppen und Röhren patentieren, das die Steine so fest zusammenhält. Ole Kirk Kristiansen starb im selben Jahr.

> Bonusfakt: Laut MIT brannte die Fabrik 1944 ab, und Ole Kirk baute sie bis 1947 wieder auf.

Eine der bekanntesten Spielzeugmarken der Welt ist also nach einem Ratschlag benannt. Und der passt bis heute.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lego-leg-godt', 'de', 1, 'Bildband zur Geschichte von LEGO', 'LEGO Buch Geschichte', 'Zeigt die Entwicklung vom Holzspielzeug bis zu riesigen Modellen, mit vielen Fotos aus dem Archiv.'),
  ('lego-leg-godt', 'de', 2, 'LEGO Classic Steinebox', 'LEGO Classic Bausteine Box', 'Eine bunte Kiste Steine ohne Bauanleitung, ideal zum freien Bauen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lego-leg-godt', 'de', 1, 'LEGO: A 90 year history of the LEGO® name', 'https://www.lego.com/de-lu/aboutus/news/2026/february/90-year-history-of-the-lego-name'),
  ('lego-leg-godt', 'de', 2, 'LEGO: Automatic Binding Bricks', 'https://www.lego.com/en-us/history/articles/c-automatic-binding-bricks'),
  ('lego-leg-godt', 'de', 3, 'Lemelson-MIT: Ole Christiansen', 'https://lemelson.mit.edu/resources/ole-christiansen');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lego-leg-godt', 'en', 'lego-means-play-well',
  'LEGO means ‘play well’, and the first LEGO toys were made of wood',
  'Behind one of the most famous toy names in the world are a Danish carpenter, two Danish words and a Latin coincidence.',
  'The name LEGO comes from the Danish "leg godt", meaning "play well", and before plastic bricks existed, the company made wooden toys.',
  'LEGO sounds like a made-up brand name, the kind a marketing team would invent. In fact, a carpenter from a small Danish town came up with it himself, long before the first plastic brick.

## A carpenter in a crisis

Ole Kirk Kristiansen was a master carpenter in Billund, Denmark. According to LEGO, in 1932, in the middle of the Great Depression, he switched to making wooden toys and small household items. According to MIT''s Lemelson program, his workshop also sold stepladders and ironing boards. LEGO says his first toy collection had 36 items, including cars, airplanes and yo-yos.

## Two words, one name

Ole Kirk came up with the name himself. He squeezed together the Danish words "leg godt", which means "play well". When exactly that happened is less clear than you''d think: many accounts say 1934. In a 2026 article, LEGO itself says the name first appeared in company documents in early 1936 and became the official company name that January.

Now for the odd part: "lego" is also a Latin word and, according to LEGO, can be translated as "I collect". According to MIT, it can also mean "I put together". Sounds planned, but it''s a coincidence, because the name came before the bricks.

## The first bricks weren''t a hit

In 1949, the company released its first plastic products, including a building set called "Automatic Binding Bricks". At first they were only sold in Denmark. According to LEGO, they did reasonably well, but they weren''t the company''s best-selling plastic toy. That was a Ferguson tractor.

LEGO only patented the stud-and-tube coupling system that makes the bricks hold together so well in 1958. Ole Kirk Kristiansen died that same year.

> Bonus fact: According to MIT, the factory burned down in 1944, and Ole Kirk had it rebuilt by 1947.

So one of the best-known toy brands in the world is named after a piece of advice. And it still fits.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lego-leg-godt', 'en', 1, 'Illustrated book on the history of LEGO', 'LEGO history book', 'Follows the journey from wooden toys to huge models, with lots of photos from the archive.'),
  ('lego-leg-godt', 'en', 2, 'LEGO Classic brick box', 'LEGO Classic bricks box', 'A colorful box of bricks without instructions, perfect for building whatever you like.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lego-leg-godt', 'en', 1, 'LEGO: A 90 year history of the LEGO® name', 'https://www.lego.com/de-lu/aboutus/news/2026/february/90-year-history-of-the-lego-name'),
  ('lego-leg-godt', 'en', 2, 'LEGO: Automatic Binding Bricks', 'https://www.lego.com/en-us/history/articles/c-automatic-binding-bricks'),
  ('lego-leg-godt', 'en', 3, 'Lemelson-MIT: Ole Christiansen', 'https://lemelson.mit.edu/resources/ole-christiansen');
