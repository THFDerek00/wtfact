-- WTFact-Fakt „Die Rentiere des Weihnachtsmanns sind höchstwahrscheinlich Weibchen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('santas-reindeer-female', '2026-12-14T00:00:00+01:00', 'animals', '🦌', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'santas-reindeer-female', 'de', 'rentiere-weihnachtsmann-weiblich',
  'Die Rentiere des Weihnachtsmanns sind höchstwahrscheinlich Weibchen',
  'Rudolph und Co. tragen auf allen Bildern ein Geweih. Genau das verrät sie.',
  'Männliche Rentiere werfen ihr Geweih um Anfang Dezember ab, Weibchen behalten es bis zum Frühjahr, Rentiere mit Geweih an Weihnachten sind also meist weiblich.',
  'Rudolph mit der roten Nase, Dasher, Dancer und all die anderen: In Liedern und Filmen sind die Rentiere des Weihnachtsmanns meistens Jungs. Die Biologie sieht das allerdings ganz anders.

## Das Geweih verrät es

Rentiere sind besonders. Laut ZME Science sind sie die einzige Hirschart, bei der Männchen und Weibchen ein Geweih tragen. Bei Rehen oder Rothirschen haben nur die Männchen eins.

Spannend wird es beim Zeitpunkt. Die Bullen werfen ihr Geweih nach der Brunftzeit im Herbst ab. Laut The Old Farmer''s Almanac passiert das etwa zwischen Ende November und Mitte Dezember. Neu wächst es erst im Frühling.

Die Weibchen dagegen behalten ihr Geweih den ganzen Winter über. Erst wenn sie im Frühling ihre Kälber bekommen haben, werfen sie es ab.

## Was das für Heiligabend heißt

Jetzt schau dir ein beliebiges Bild vom Weihnachtsschlitten an. Alle Rentiere tragen stolz ein Geweih, mitten im Dezember. Nach der Biologie spricht deshalb alles dafür, dass Rudolph und die anderen Weibchen sind. ZME Science und der Almanac kommen beide zu diesem Schluss.

Das Geweih hat für die Weibchen übrigens einen guten Grund. Laut Almanac hilft es trächtigen Weibchen, im harten Winter ihr Futter zu verteidigen. Sie graben Flechten unter dem Schnee frei, und mit Geweih lässt sich die Futterstelle besser gegen andere verteidigen.

> Bonusfakt: Bullen, die im Dezember schon geweihlos sind, stehen damit in der Rangordnung plötzlich weiter unten, und die Weibchen setzen sich am Futter durch.

Den Schlitten durch die Weihnachtsnacht ziehen also aller Wahrscheinlichkeit nach ein paar sehr entschlossene Rentierdamen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('santas-reindeer-female', 'de', 1, 'Rentier-Plüschtier', 'Rentier Plüschtier groß', 'Ein kuscheliges Rentier, mit oder ohne rote Nase.'),
  ('santas-reindeer-female', 'de', 2, 'Bildband über Lappland', 'Bildband Lappland Natur', 'Landschaften und Tiere aus dem hohen Norden.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('santas-reindeer-female', 'de', 1, 'The Old Farmer''s Almanac: Reindeer Trivia: Santa''s Reindeer Are Female', 'https://www.almanac.com/why-santas-reindeer-are-female'),
  ('santas-reindeer-female', 'de', 2, 'ZME Science: Why Santa''s Reindeer Are All Female, According to Biology', 'https://zmescience.com/science/news-science/female-reindeer-santa-science');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'santas-reindeer-female', 'en', 'santas-reindeer-are-female',
  'Santa''s reindeer are most likely female',
  'Rudolph and friends wear antlers in every picture. That''s exactly what gives them away.',
  'Male reindeer shed their antlers around early December, while females keep theirs until spring, so reindeer with antlers at Christmas are usually female.',
  'Rudolph with his red nose, Dasher, Dancer and the rest: in songs and movies, Santa''s reindeer are mostly boys. Biology disagrees.

## The antlers give it away

Reindeer are special. According to ZME Science, they''re the only deer species in which both males and females grow antlers. In other deer, only the males have them.

The timing is where it gets interesting. Bulls shed their antlers after the autumn mating season. According to The Old Farmer''s Almanac, that happens roughly between late November and mid-December. They only start growing new ones in spring.

Females, on the other hand, keep their antlers through the whole winter. They only drop them after giving birth to their calves in spring.

## What that means for Christmas Eve

Now look at any picture of Santa''s sleigh. Every reindeer proudly wears antlers, in the middle of December. So biology strongly suggests Rudolph and the others are female. ZME Science and the Almanac both reach that conclusion.

The females have a good reason to keep them. According to the Almanac, antlers help pregnant females protect their food through harsh winter weather. They dig lichen out from under the snow, and with antlers it''s easier to defend a feeding spot against others.

> Bonus fact: Bulls that have already lost their antlers by December suddenly rank lower, and the females win out at the food.

So the sleigh that crosses the sky on Christmas Eve is most likely pulled by a team of very determined reindeer ladies.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('santas-reindeer-female', 'en', 1, 'Reindeer plush toy', 'reindeer plush toy large', 'A cuddly reindeer, red nose optional.'),
  ('santas-reindeer-female', 'en', 2, 'Lapland photo book', 'Lapland nature photo book', 'Landscapes and animals from the far north.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('santas-reindeer-female', 'en', 1, 'The Old Farmer''s Almanac: Reindeer Trivia: Santa''s Reindeer Are Female', 'https://www.almanac.com/why-santas-reindeer-are-female'),
  ('santas-reindeer-female', 'en', 2, 'ZME Science: Why Santa''s Reindeer Are All Female, According to Biology', 'https://zmescience.com/science/news-science/female-reindeer-santa-science');
