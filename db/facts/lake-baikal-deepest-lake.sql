-- WTFact-Fakt „Im Baikalsee steckt rund 20 Prozent des flüssigen Süßwassers der Erde“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('lake-baikal-deepest-lake', '2026-10-24T10:00:00+02:00', 'records', '🏞️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lake-baikal-deepest-lake', 'de', 'baikalsee-tiefster-see',
  'Im Baikalsee steckt rund 20 Prozent des flüssigen Süßwassers der Erde',
  'Er ist der tiefste und älteste See der Welt. Und voller Tiere, die es nirgendwo sonst gibt.',
  'Der Baikalsee in Sibirien ist bis zu 1.638 Meter tief. Laut UNESCO enthält er rund 20 Prozent des nicht gefrorenen Süßwassers der Erde.',
  'Wie viel Wasser passt in einen See? Beim Baikalsee in Sibirien lautet die Antwort: unvorstellbar viel. Er hält gleich mehrere Weltrekorde.

## Tiefer als jeder andere See

Der Baikalsee liegt im Süden Sibiriens in Russland. Laut der Weltnaturschutzunion IUCN ist er bis zu 1.638 Meter tief. Damit ist er der tiefste See der Erde. Würde man ein Hochhaus nach dem anderen hineinstapeln, bräuchte man Dutzende, um vom Grund bis zur Oberfläche zu kommen.

Laut UNESCO, die den See als Weltnaturerbe schützt, ist er außerdem rund 25 Millionen Jahre alt. Das macht ihn zum ältesten See der Welt. Die meisten Seen sind dagegen erst nach der letzten Eiszeit entstanden und viel jünger.

## Ein Fünftel des Süßwassers

Der beeindruckendste Rekord betrifft die Wassermenge. Laut UNESCO enthält der Baikalsee rund 20 Prozent des nicht gefrorenen Süßwassers der Erde. Etwa jeder fünfte Liter flüssiges Süßwasser auf dem Planeten liegt also in diesem einen See.

Das liegt vor allem an seiner enormen Tiefe. An der Oberfläche wirkt er gar nicht so riesig, doch nach unten geht es weit hinab.

> Bonusfakt: Im Baikalsee leben laut IUCN rund 2.640 Tierarten. Etwa 56 Prozent davon kommen nur dort vor und nirgendwo sonst auf der Welt.

Berühmt ist zum Beispiel die Baikalrobbe. Sie ist eine der wenigen Robbenarten, die ausschließlich im Süßwasser lebt.

Durch sein hohes Alter hatten Tiere und Pflanzen am Baikal sehr viel Zeit, sich an die besonderen Bedingungen anzupassen. So sind über Millionen Jahre viele Arten entstanden, die nur hier vorkommen.

Im Winter friert der See zu. Dann fahren Menschen auf dem Eis Schlittschuh, Rad oder sogar Auto. Unter ihnen liegt mehr als ein Kilometer Wasser. Ein See, der auch als kleines Meer durchgehen würde.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lake-baikal-deepest-lake', 'de', 1, 'Reiseführer Sibirien und Baikalsee', 'Reiseführer Baikalsee Transsibirische Eisenbahn', 'Für eine Reise mit der Transsib an den tiefsten See der Welt.'),
  ('lake-baikal-deepest-lake', 'de', 2, 'Buch über Seen und Flüsse der Welt', 'Buch Seen Flüsse der Welt', 'Die spannendsten Gewässer unseres Planeten im Überblick.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lake-baikal-deepest-lake', 'de', 1, 'UNESCO World Heritage Centre: Lake Baikal', 'https://whc.unesco.org/en/list/754'),
  ('lake-baikal-deepest-lake', 'de', 2, 'IUCN World Heritage Outlook: Lake Baikal', 'https://worldheritageoutlook.iucn.org/node/1073');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lake-baikal-deepest-lake', 'en', 'lake-baikal-deepest-lake',
  'Lake Baikal holds about 20 percent of the Earth’s liquid fresh water',
  'It’s the deepest and oldest lake in the world. And full of animals found nowhere else.',
  'Lake Baikal in Siberia is up to 1,638 meters deep. According to UNESCO, it holds about 20 percent of the Earth’s unfrozen fresh water.',
  'How much water can a lake hold? For Lake Baikal in Siberia, the answer is: an unimaginable amount. It holds several world records at once.

## Deeper than any other lake

Lake Baikal lies in southern Siberia, Russia. According to the International Union for Conservation of Nature (IUCN), it’s up to 1,638 meters (5,374 feet) deep. That makes it the deepest lake on Earth. Stack one skyscraper on top of another and you’d need dozens to reach from the bottom to the surface.

According to UNESCO, which protects the lake as a World Heritage Site, it’s also about 25 million years old. That makes it the oldest lake in the world. Most lakes, by contrast, formed after the last ice age and are much younger.

## A fifth of the fresh water

The most impressive record is about volume. According to UNESCO, Lake Baikal holds about 20 percent of the Earth’s unfrozen fresh water. So roughly one in every five liters of liquid fresh water on the planet sits in this one lake.

That’s mainly down to its enormous depth. On the surface, it doesn’t look that huge, but it goes a long way down.

> Bonus fact: According to the IUCN, about 2,640 animal species live in Lake Baikal. About 56 percent of them live there and nowhere else in the world.

One famous example is the Baikal seal. It’s one of the few seal species that live only in fresh water.

Because the lake is so old, animals and plants around Baikal have had a very long time to adapt to its special conditions. Over millions of years, many species evolved that exist only here.

In winter, the lake freezes over. People skate, cycle and even drive cars on the ice. Beneath them lies more than a kilometer of water. A lake that could pass for a small sea.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lake-baikal-deepest-lake', 'en', 1, 'Siberia and Lake Baikal travel guide', 'Lake Baikal Trans-Siberian travel guide', 'For a Trans-Siberian trip to the deepest lake in the world.'),
  ('lake-baikal-deepest-lake', 'en', 2, 'Book about the world’s lakes and rivers', 'book lakes rivers of the world', 'The most fascinating waters on our planet at a glance.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lake-baikal-deepest-lake', 'en', 1, 'UNESCO World Heritage Centre: Lake Baikal', 'https://whc.unesco.org/en/list/754'),
  ('lake-baikal-deepest-lake', 'en', 2, 'IUCN World Heritage Outlook: Lake Baikal', 'https://worldheritageoutlook.iucn.org/node/1073');
