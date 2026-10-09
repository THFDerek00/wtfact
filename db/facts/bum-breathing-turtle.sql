-- WTFact-Fakt „Diese Schildkröte atmet unter Wasser durch den Hintern“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('bum-breathing-turtle', NULL, 'animals', '🐢', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bum-breathing-turtle', 'de', 'schildkroete-atmet-durch-den-hintern',
  'Diese Schildkröte atmet unter Wasser durch den Hintern',
  'In Australien lebt eine Schildkröte, die zum Luftholen kaum auftauchen muss. Der Grund sitzt am anderen Ende.',
  'Die Fitzroy-Schildkröte aus Australien holt sich unter Wasser Sauerstoff über ihre Kloake und kann laut Greening Australia bis zu 21 Tage am Stück abgetaucht bleiben.',
  'Schildkröten haben Lungen. Sie müssen also irgendwann an die Oberfläche, um Luft zu holen. Eine Art in Australien hat dafür eine Lösung gefunden, über die man erst mal grinsen muss.

## Ein Hinterteil mit Kiemen-Funktion

Die Fitzroy-Schildkröte, wissenschaftlich Rheodytes leukops, lebt im Fitzroy-Flusssystem im australischen Bundesstaat Queensland. In Australien hat sie einen Spitznamen, der kaum Fragen offenlässt: „bum-breathing turtle“, also ungefähr Hinternatmer-Schildkröte.

Der Grund ist ihre Kloake. Das ist die einzige Körperöffnung unter dem Schwanz, die gleichzeitig für Ausscheidungen und Fortpflanzung zuständig ist. Laut der Naturschutzorganisation Greening Australia sitzen darin kiemenartige Strukturen. Die Schildkröte pumpt Wasser hinein und wieder heraus und nimmt dabei Sauerstoff auf. Auf diese Weise kann sie laut Greening Australia bis zu 21 Tage am Stück unter Wasser bleiben.

## Kein Einzelfall, aber die Meisterin

Ganz allein ist sie mit dem Trick nicht. Laut Live Science beherrschen nur etwa ein Dutzend Schildkrötenarten diese sogenannte Kloakenatmung richtig gut, ungefähr die Hälfte davon in Australien. Der Wildtierphysiologe Craig Franklin von der University of Queensland erklärte dort, dass die Fitzroy-Schildkröte ihren gesamten Energiebedarf so decken kann. Theoretisch könnte sie damit unbegrenzt unter Wasser bleiben.

Laut Live Science sind junge Flussschildkröten in der Regel sogar besser darin als erwachsene. Das hilft ihnen, sich von der gefährlichen Wasseroberfläche fernzuhalten, wo Fressfeinde lauern.

> Bonusfakt: Laut Greening Australia sind frisch geschlüpfte Fitzroy-Schildkröten kaum größer als eine 20-Cent-Münze.

## Ein Superkraft-Tier mit Problemen

So genial die Atmung ist, an Land hat die Art ein Problem. Laut Greening Australia gilt sie als gefährdet, weil eingeschleppte Füchse, Katzen und Schweine ohne Schutz fast alle Eier fressen oder zerstören. Ein Nest enthält 16 bis 20 Eier. In der Saison 2016 schützten Forschende 196 Nester, und mehr als 3.000 Jungtiere schafften es sicher ins Wasser.

Manche Tiere sind stolz auf ihr Gebiss oder ihre Krallen. Diese Schildkröte hat ihre Stärke einfach hinten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bum-breathing-turtle', 'de', 1, 'Schildkröten-Kuscheltier', 'Schildkröte Kuscheltier Plüsch', 'Mit weichem Panzer und ganz ohne Kloakenatmung.'),
  ('bum-breathing-turtle', 'de', 2, 'Bildband über Australiens Tierwelt', 'Bildband Australien Tiere', 'Zeigt die schrägsten Tiere eines Kontinents, der davon jede Menge hat.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bum-breathing-turtle', 'de', 1, 'Greening Australia: Protecting the "bum-breathing turtles" of the Fitzroy River', 'https://www.greeningaustralia.org.au/protecting-the-bum-breathing-turtles-of-the-fitzroy-river/'),
  ('bum-breathing-turtle', 'de', 2, 'Live Science: Can turtles really breathe through their butts?', 'https://www.livescience.com/can-turtles-breathe-through-butts');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bum-breathing-turtle', 'en', 'turtle-breathes-through-its-butt',
  'This turtle breathes through its butt underwater',
  'There''s a turtle in Australia that barely needs to come up for air. The reason is at the other end.',
  'Australia''s Fitzroy River turtle takes up oxygen underwater through its cloaca and, according to Greening Australia, can stay submerged for up to 21 days at a time.',
  'Turtles have lungs, so sooner or later they have to come up for air. One species in Australia found a workaround that will make you grin.

## A rear end that works like gills

The Fitzroy River turtle, scientific name Rheodytes leukops, lives in the Fitzroy River system in the Australian state of Queensland. In Australia it has a nickname that leaves little to the imagination: the "bum-breathing turtle".

The reason is its cloaca. That is the single opening under the tail used for both waste and reproduction. According to the conservation group Greening Australia, it contains gill-like structures. The turtle pumps water in and out and takes up oxygen as it does. That way, according to Greening Australia, it can stay underwater for up to 21 days at a time.

## Not the only one, but the champion

It isn''t completely alone. According to Live Science, only about a dozen turtle species are really good at this so-called cloacal respiration, roughly half of them in Australia. Wildlife physiologist Craig Franklin of the University of Queensland told the site that the Fitzroy River turtle can cover all of its energy needs this way. In theory, that would let it stay underwater indefinitely.

According to Live Science, young river turtles are generally even better at it than adults. That helps them stay away from the dangerous surface, where predators are waiting.

> Bonus fact: According to Greening Australia, newly hatched Fitzroy River turtles are barely bigger than a 20 cent coin.

## A superpower with problems

As brilliant as its breathing is, the species has trouble on land. According to Greening Australia, it is listed as vulnerable because, without protection, introduced foxes, cats and pigs eat or destroy almost all of the eggs. A nest holds 16 to 20 eggs. In the 2016 season, researchers protected 196 nests, and more than 3,000 hatchlings made it safely into the water.

Some animals brag about their teeth or claws. This turtle keeps its superpower in the back.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bum-breathing-turtle', 'en', 1, 'Turtle plush toy', 'turtle plush stuffed animal', 'Soft shell, and no cloacal breathing required.'),
  ('bum-breathing-turtle', 'en', 2, 'Photo book on Australian wildlife', 'Australian wildlife photo book', 'Shows the strangest animals of a continent that has plenty of them.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bum-breathing-turtle', 'en', 1, 'Greening Australia: Protecting the "bum-breathing turtles" of the Fitzroy River', 'https://www.greeningaustralia.org.au/protecting-the-bum-breathing-turtles-of-the-fitzroy-river/'),
  ('bum-breathing-turtle', 'en', 2, 'Live Science: Can turtles really breathe through their butts?', 'https://www.livescience.com/can-turtles-breathe-through-butts');
