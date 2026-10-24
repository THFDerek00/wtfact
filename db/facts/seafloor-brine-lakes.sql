-- WTFact-Fakt „Am Meeresgrund gibt es Seen, mit eigenem Ufer“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('seafloor-brine-lakes', '2026-10-30T08:00:00+01:00', 'ocean', '🌊', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'seafloor-brine-lakes', 'de', 'seen-am-meeresgrund',
  'Am Meeresgrund gibt es Seen, mit eigenem Ufer',
  'Tief im Golf von Mexiko ist manches Wasser so salzig, dass es sich wie ein See im Meer am Boden sammelt.',
  'Am Boden des Golfs von Mexiko liegen Salzlaken-Seen: Wasser, das so salzig und schwer ist, dass es sich nicht mit dem Meer darüber mischt und eine eigene Oberfläche und ein Ufer bildet.',
  'Ein See am Grund des Meeres klingt nach einem Widerspruch. Wasser im Wasser? Doch im Golf von Mexiko gibt es genau das.

## Zu salzig fürs Meer

Laut NOAA Ocean Explorer entstehen diese Seen, wenn Meerwasser vergrabene Salzlager auflöst. Das Salz stammt aus einer Zeit, in der der Golf ausgetrocknet war, und die Schicht aus Salz und Mineralien ist stellenweise bis zu 8 Kilometer dick. Heraus kommt eine Sole, die um ein Vielfaches salziger ist als Meerwasser. Weil sie dichter ist als das Wasser drumherum, sammelt sie sich in Senken am Meeresboden, statt sich zu vermischen.

Deshalb haben diese Becken etwas, das du unter Wasser nie erwarten würdest: eine klare Oberfläche und ein Ufer. Die NOAA beschreibt Solen-Seen von gerade einmal 1 Meter Breite bis zu 20 Kilometern Länge. Am Ufer sitzen oft dichte Muschelbänke, die vom Methan in der Sole leben.

## Der „Whirlpool der Verzweiflung“

Das bekannteste Beispiel hat einen Spitznamen wie aus einem Horrorfilm: „Jacuzzi of Despair“, also „Whirlpool der Verzweiflung“. Ein Team, zu dem der Biologe Erik Cordes von der Temple University gehört, hat ihn mit ferngesteuerten Tauchrobotern untersucht. Er liegt mehr als 1.000 Meter unter der Oberfläche, und sein Wasser ist vier- bis fünfmal salziger als das Meer ringsum.

Laut WFTV ist das Becken etwa 30 Meter breit und knapp 4 Meter tief. Die Sole hat rund 18 Grad Celsius, das Wasser drumherum nur etwa 4 Grad. Der Christian Science Monitor berichtet, dass die Sole an einer Seite sogar als Wasserfall über den Kraterrand fließt. Größere Tiere meiden die Brühe. Laut WFTV sterben Krebse, die hineingeraten, und werden, wie es ein Forscher sagt, „eingelegt und konserviert“. Cordes fasst den Anblick so zusammen: „Man hat das Gefühl, nicht auf dieser Welt zu sein.“

> Bonusfakt: Das Salz hinter diesen Seen ist uralt. Die NOAA datiert die dicke Salzschicht auf den mittleren Jura, als der Golf von Mexiko ein flaches Meer war.

In der Tiefsee gibt es also nicht nur Wasser. Es gibt dort Seen mit Ufer, und mindestens einer davon hat einen Wasserfall.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('seafloor-brine-lakes', 'de', 1, 'Bildband über die Tiefsee', 'Tiefsee Buch Bildband', 'Große Bilder von den seltsamsten Orten und Tieren am Meeresgrund.'),
  ('seafloor-brine-lakes', 'de', 2, 'Kristallzucht-Set', 'Kristalle züchten Set', 'Damit züchtest du zu Hause eigene Salzkristalle und siehst ihnen beim Wachsen zu.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('seafloor-brine-lakes', 'de', 1, 'NOAA Ocean Explorer: Lakes Within Oceans', 'https://oceanexplorer.noaa.gov/explorations/02mexico/background/brinepool/brinepool.html'),
  ('seafloor-brine-lakes', 'de', 2, 'The Christian Science Monitor: How this ''Jacuzzi of Despair'' formed beneath the Gulf of Mexico', 'https://csmonitor.com/Science/2016/1102/How-this-Jacuzzi-of-Despair-formed-beneath-the-Gulf-of-Mexico'),
  ('seafloor-brine-lakes', 'de', 3, 'WFTV: ''Jacuzzi of Despair'' lake discovered beneath Gulf of Mexico', 'https://www.wftv.com/news/trending-now/jacuzzi-of-despair-lake-discovered-beneath-gulf-of-mexico/462832049');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'seafloor-brine-lakes', 'en', 'lakes-on-the-seafloor',
  'There are lakes on the seafloor, with their own shoreline',
  'Deep in the Gulf of Mexico, some water is so salty that it pools on the seabed like a lake inside the ocean.',
  'On the floor of the Gulf of Mexico lie brine lakes: water so salty and dense that it doesn''t mix with the sea above and forms its own surface and shoreline.',
  'A lake at the bottom of the sea sounds like a contradiction. Water inside water? But in the Gulf of Mexico, that''s exactly what you find.

## Too salty for the sea

According to NOAA''s Ocean Explorer, these brine lakes form when seawater dissolves buried salt deposits. That salt is a leftover from a time when the Gulf dried out, and in places the layer of salt and minerals is up to 8 kilometers thick. The result is brine that is many times saltier than seawater. Because it is denser than the water around it, it collects in dips on the seafloor instead of mixing in.

That''s why these pools have something you''d never expect underwater: a distinct surface and a shoreline. NOAA describes brine lakes from as small as 1 meter across to as long as 20 kilometers. Their shores are often lined with dense beds of mussels that live off the methane dissolved in the brine.

## The Jacuzzi of Despair

The most famous example has a nickname straight out of a horror film: the "Jacuzzi of Despair". A team including Temple University biologist Erik Cordes studied it with remotely operated vehicles. It lies more than 1,000 meters below the surface, and its water is four to five times saltier than the surrounding ocean.

According to WFTV, the pool is about 30 meters wide and almost 4 meters deep. Its brine is about 18 degrees Celsius, while the water around it is about 4 degrees. The Christian Science Monitor reports that the brine even spills over one side of the crater in a waterfall. Most larger animals stay away. According to WFTV, crabs that end up in the brine die and, as one scientist put it, "get pickled and preserved". Cordes summed up the view like this: "It feels like you are not on this world."

> Bonus fact: The salt behind these lakes is ancient. NOAA dates the thick salt layer to the middle Jurassic period, when the Gulf of Mexico was a shallow sea.

So the deep sea doesn''t just contain water. It contains lakes with shorelines, and at least one of them has a waterfall.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('seafloor-brine-lakes', 'en', 1, 'Illustrated deep-sea book', 'deep sea creatures illustrated book', 'Big pictures of the strangest places and animals at the bottom of the ocean.'),
  ('seafloor-brine-lakes', 'en', 2, 'Crystal growing kit', 'crystal growing kit', 'Lets you grow your own salt crystals at home and watch them form.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('seafloor-brine-lakes', 'en', 1, 'NOAA Ocean Explorer: Lakes Within Oceans', 'https://oceanexplorer.noaa.gov/explorations/02mexico/background/brinepool/brinepool.html'),
  ('seafloor-brine-lakes', 'en', 2, 'The Christian Science Monitor: How this ''Jacuzzi of Despair'' formed beneath the Gulf of Mexico', 'https://csmonitor.com/Science/2016/1102/How-this-Jacuzzi-of-Despair-formed-beneath-the-Gulf-of-Mexico'),
  ('seafloor-brine-lakes', 'en', 3, 'WFTV: ''Jacuzzi of Despair'' lake discovered beneath Gulf of Mexico', 'https://www.wftv.com/news/trending-now/jacuzzi-of-despair-lake-discovered-beneath-gulf-of-mexico/462832049');
