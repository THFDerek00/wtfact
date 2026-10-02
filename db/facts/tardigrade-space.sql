-- WTFact-Fakt „Bärtierchen haben 10 Tage im offenen Weltall überlebt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('tardigrade-space', '2026-09-12', 'nature', '🐻', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tardigrade-space', 'de', 'baertierchen-im-weltall',
  'Bärtierchen haben 10 Tage im offenen Weltall überlebt',
  '2007 schickte die ESA winzige Tiere ins All, ohne Raumanzug, ohne Schutz. Viele kamen lebend zurück.',
  '2007 überlebten Bärtierchen 10 Tage im Vakuum des Weltalls. Es waren die ersten Tiere, die das geschafft haben.',
  'Keine Luft, eisige Kälte, gnadenlose Strahlung: Das Weltall ist so ziemlich der lebensfeindlichste Ort, den es gibt. Ein Mensch ohne Raumanzug wäre dort in kürzester Zeit verloren. **Bärtierchen dagegen haben es überlebt.**

## Ein Ausflug mit der Foton-M3

Im September 2007 startete die Europäische Weltraumorganisation ESA die Mission Foton-M3. An Bord: rund 3.000 Bärtierchen. Die winzigen Tiere wurden in getrocknetem Zustand **10 Tage lang dem offenen Weltraum** ausgesetzt, also Vakuum und kosmischer Strahlung.

Das Ergebnis überraschte selbst die Forscher. Projektleiter Ingemar Jönsson sagte laut ESA, das Vakuum mit seiner extremen Austrocknung und die kosmische Strahlung seien für die Bärtierchen „kein Problem“ gewesen. Das reine Vakuum hatte keinen nennenswerten Effekt. Die ESA nennt sie **die ersten Tiere, die den Aufenthalt im offenen Weltall überlebt haben**.

## Nur die Sonne war zu viel

Ganz unverwundbar sind sie aber nicht. Gefährlich wurde es, wenn zum Vakuum noch das ungefilterte UV-Licht der Sonne kam. Bei der Art Richtersius coronifer überlebte nur 1 Prozent, bei Milnesium tardigradum immerhin 68 Prozent derjenigen, die einer begrenzten UV-Dosis ausgesetzt waren. In den Tagen danach starben allerdings noch viele.

## Kleine Tiere, große Tricks

Bärtierchen sind meist nur etwa 0,5 Millimeter lang, die größten Arten erreichen 1,3 Millimeter. Ihren Namen verdanken sie Johann August Ephraim Goeze, der sie 1773 als „kleiner Wasserbär“ beschrieb. Heute kennt man rund 1.500 Arten.

Ihr Geheimnis heißt **Kryptobiose**. Wird es zu trocken, ziehen sie Beine und Kopf ein, trocknen aus und fahren ihren Stoffwechsel fast komplett herunter. In diesem Tönnchen-Zustand kommen sie jahrelang ohne Futter und Wasser aus. Bekommen sie wieder Wasser, erwachen sie zu neuem Leben.

> Zumindest kurzzeitig überstehen Bärtierchen Temperaturen von −272 °C bis +149 °C.

Sie leben in Moos, im Meer und vermutlich gerade auch irgendwo in deiner Nähe. Die härtesten Tiere der Welt passen locker auf einen Stecknadelkopf.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tardigrade-space', 'de', 1, 'Kuscheltier Bärtierchen', 'Bärtierchen Kuscheltier Tardigrade Plüsch', 'Ein plüschiges, achtbeiniges Wasserbärchen. Ungewöhnlich süß für ein Tier, das man nur unterm Mikroskop sieht.'),
  ('tardigrade-space', 'de', 2, 'Mikroskop für Einsteiger', 'Mikroskop Einsteiger Kinder Jugendliche Durchlicht', 'Ein Durchlichtmikroskop mit mehreren Vergrößerungen, mit dem du Proben aus Moos oder Teichwasser selbst untersuchen kannst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tardigrade-space', 'de', 1, 'ESA: Tiny animals survive exposure to space', 'https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Research/Tiny_animals_survive_exposure_to_space'),
  ('tardigrade-space', 'de', 2, 'Wikipedia: Tardigrade', 'https://en.wikipedia.org/wiki/Tardigrade'),
  ('tardigrade-space', 'de', 3, 'National Geographic: Tardigrades become first animals to survive vacuum of space', 'https://www.nationalgeographic.com/science/article/tardigrades-become-first-animals-to-survive-vacuum-of-space');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tardigrade-space', 'en', 'tardigrades-survived-space',
  'Tardigrades survived 10 days in the vacuum of space',
  'In 2007, ESA sent tiny animals into space with no spacesuit and no protection. Lots of them made it back alive.',
  'In 2007, tardigrades survived 10 days in the vacuum of space, the first animals ever known to do it.',
  'No air, brutal cold, relentless radiation: space is about as hostile to life as it gets. A human without a spacesuit wouldn''t last long out there. **Tardigrades, on the other hand, made it.**

## A ride on Foton-M3

In September 2007, the European Space Agency launched its Foton-M3 mission. On board: about 3,000 tardigrades, also known as water bears. The tiny animals were dried out and then exposed to **open space for 10 days**, meaning vacuum and cosmic radiation.

The result surprised even the scientists. According to ESA, project leader Ingemar Jönsson said the space vacuum, with its extreme dehydration, and cosmic radiation "were not a problem for water bears." Vacuum alone had no significant effect. ESA calls them **the first animals to survive exposure to space**.

## The sun was the real problem

They''re not invincible, though. Things got dangerous when unfiltered UV light from the sun was added to the vacuum. Only 1 percent of the species Richtersius coronifer survived, while Milnesium tardigradum did much better: 68 percent of those exposed to a limited UV dose survived. Many still died in the days after.

## Tiny animals, big tricks

Tardigrades are usually about 0.5 millimeters long, and the biggest species reach 1.3 millimeters. They got their nickname from Johann August Ephraim Goeze, who described them in 1773 as "little water bears." Today about 1,500 species are known.

Their secret is called **cryptobiosis**. When things get too dry, they pull in their legs and head, dry out and shut their metabolism down almost completely. In this "tun" state, they can go years without food or water. Add water, and they come back to life.

> At least briefly, tardigrades can survive temperatures from −272 °C to +149 °C.

They live in moss, in the ocean and probably somewhere near you right now. The toughest animals on the planet would fit on the head of a pin with room to spare.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tardigrade-space', 'en', 1, 'Tardigrade plush toy', 'tardigrade plush water bear', 'A squishy eight-legged water bear. Surprisingly cute for an animal you can only see under a microscope.'),
  ('tardigrade-space', 'en', 2, 'Beginner microscope', 'beginner compound microscope for students', 'A light microscope with several magnifications, so you can check out samples of moss or pond water yourself.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tardigrade-space', 'en', 1, 'ESA: Tiny animals survive exposure to space', 'https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Research/Tiny_animals_survive_exposure_to_space'),
  ('tardigrade-space', 'en', 2, 'Wikipedia: Tardigrade', 'https://en.wikipedia.org/wiki/Tardigrade'),
  ('tardigrade-space', 'en', 3, 'National Geographic: Tardigrades become first animals to survive vacuum of space', 'https://www.nationalgeographic.com/science/article/tardigrades-become-first-animals-to-survive-vacuum-of-space');
