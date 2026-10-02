-- WTFact-Fakt „Diese Flechten haben 34 Tage auf einem Labor-Mars überlebt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('lichen-mars', '2026-09-14', 'survival', '🪨', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lichen-mars', 'de', 'flechten-ueberleben-mars-simulation',
  'Diese Flechten haben 34 Tage auf einem Labor-Mars überlebt',
  'Eiskalt, kaum Luft, volle UV-Dröhnung. Flechten hat das erstaunlich wenig gestört.',
  'In einer Mars-Simulationskammer des DLR überlebten Flechten 34 Tage Mars-Bedingungen und betrieben sogar weiter Photosynthese.',
  'Diese unscheinbaren Krusten auf Steinen und Baumrinde hast du sicher schon tausendmal übersehen. Dabei gehören Flechten zu den härtesten Lebewesen der Erde. So hart, dass Forschende sie auf einen nachgebauten Mars geschickt haben.

## Eine Flechte ist eine WG

Eine Flechte ist kein einzelnes Lebewesen, sondern eine Partnerschaft: Ein Pilz lebt eng zusammen mit Algen oder Cyanobakterien. Der Pilz bietet Schutz und Halt, die Partner liefern per Photosynthese Nährstoffe. Diese Teamarbeit macht Flechten berühmt dafür, extreme Trockenheit wegzustecken.

## Ein Monat auf dem Labor-Mars

Das Deutsche Zentrum für Luft- und Raumfahrt (DLR) wollte es genau wissen. Planetenforscher Jean-Pierre de Vera und sein Team setzten in Berlin Flechten aus Hochgebirge und Polarregionen in eine Mars-Simulationskammer. Dort herrschten Bedingungen wie auf dem Roten Planeten:

- eine Atmosphäre aus 95 Prozent Kohlendioxid und 4 Prozent Stickstoff
- ein Luftdruck von nur 6 Millibar
- Temperaturen zwischen minus 50 und plus 23 Grad Celsius
- Strahlung vom Ultraviolett bis zum Infrarot

**Nach 34 Tagen lebten die Flechten noch.** Mehr noch: Sie betrieben weiter Photosynthese. Wasser holten sie sich aus Kondensation, die sich in den simulierten Mars-Morgen- und Abendstunden bildete, am besten geschützt in Felsnischen und Bodenritzen.

## Auch der echte Weltraum reicht nicht

Schon 2005 hatte die ESA zwei Flechtenarten, die Landkartenflechte und die Zierliche Gelbflechte, mit der Kapsel Foton-M2 ins All geschickt. **14,6 Tage lang** waren sie dem Vakuum, starken Temperaturschwankungen, voller Sonnen-UV-Strahlung und kosmischer Strahlung ausgesetzt. Zurück auf der Erde zeigte die Analyse: Alle hatten überlebt, und ihre Photosynthese funktionierte wie vorher.

> In der Mars-Kammer des DLR steckten nicht nur Flechten. Auch einige Cyanobakterien überstanden das Experiment und blieben aktiv.

Heißt das, auf dem Mars wächst bald Flechte? Nicht so schnell. Die Forschenden räumen selbst ein, dass ein Monat im Labor offenlässt, wie es über viel längere Zeiträume aussieht. Spannend für die Suche nach Leben ist es trotzdem: Wenn irdische Organismen solche Bedingungen aushalten, könnte sich auf dem Mars Leben in geschützten Nischen gehalten haben.

Die Flechte am Gartenzaun ist also ein heimlicher Astronaut.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lichen-mars', 'de', 1, 'Mars-Globus mit Beleuchtung', 'Mars Globus beleuchtet', 'Krater, Vulkane und Canyons des Roten Planeten zum Drehen. Leuchtet abends schön auf dem Schreibtisch.'),
  ('lichen-mars', 'de', 2, 'Taschenmikroskop mit LED', 'Taschenmikroskop LED 60x', 'Passt in jede Jacke und zeigt dir die Struktur von Moos, Flechten und Rinde in starker Vergrößerung.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lichen-mars', 'de', 1, 'DLR: Surviving the conditions on Mars', 'https://www.dlr.de/en/latest/news/2012/20120426_surviving-the-conditions-on-mars_3409'),
  ('lichen-mars', 'de', 2, 'The Planetary Society: Earth''s toughest life could survive on Mars', 'https://www.planetary.org/articles/20120515-earth-life-survive-mars'),
  ('lichen-mars', 'de', 3, 'Universe Today: Lichen Can Survive in Space', 'https://www.universetoday.com/articles/lichen-can-survive-in-space');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lichen-mars', 'en', 'lichen-survived-mars-simulation',
  'These lichens survived 34 days on a lab-made Mars',
  'Freezing cold, barely any air, full UV blast. Lichens were surprisingly unbothered.',
  'In a DLR Mars simulation chamber, lichens survived 34 days of Mars-like conditions and even kept photosynthesizing.',
  'You''ve probably walked past those crusty patches on rocks and tree bark a thousand times without noticing. But lichens are some of the toughest living things on Earth. So tough that scientists sent them to a fake Mars.

## A lichen is a roommate situation

A lichen isn''t a single organism. It''s a partnership: a fungus living closely with algae or cyanobacteria. The fungus provides shelter and structure, while its partners make food through photosynthesis. That teamwork is why lichens are famous for shrugging off extreme dryness.

## A month on lab Mars

The German Aerospace Center (DLR) wanted to find out just how tough. In Berlin, planetary researcher Jean-Pierre de Vera and his team put lichens from high mountains and polar regions into a Mars simulation chamber. Conditions inside matched the Red Planet:

- an atmosphere of 95 percent carbon dioxide and 4 percent nitrogen
- air pressure of just 6 millibars
- temperatures swinging between minus 50 and plus 23 degrees Celsius
- radiation from ultraviolet to infrared

**After 34 days, the lichens were still alive.** Better yet, they kept photosynthesizing. They got their water from condensation that formed during the simulated Martian mornings and evenings, doing best when tucked into rock niches and cracks in the soil.

## Even real space isn''t enough

Back in 2005, the European Space Agency (ESA) launched two lichen species, map lichen and elegant sunburst lichen, on the Foton-M2 capsule. For **14.6 days** they were exposed to vacuum, huge temperature swings, the full spectrum of solar UV and cosmic radiation. Back on Earth, the analysis showed they had all survived, and their photosynthesis worked just like before.

> Lichens weren''t the only ones in DLR''s Mars chamber. Some cyanobacteria also made it through the experiment and stayed active.

So will lichens be growing on Mars soon? Not so fast. The researchers themselves admit that one month in a lab leaves open what happens over much longer stretches of time. It''s still a big deal for the search for life: if Earth organisms can handle these conditions, life on Mars could have held out in sheltered niches.

That lichen on your garden fence is basically an undercover astronaut.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lichen-mars', 'en', 1, 'Illuminated Mars globe', 'Mars globe illuminated', 'Craters, volcanoes and canyons of the Red Planet you can spin. Glows nicely on your desk at night.'),
  ('lichen-mars', 'en', 2, 'Pocket microscope with LED light', 'pocket microscope LED 60x', 'Fits in any jacket and shows you moss, lichen and tree bark at serious magnification.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lichen-mars', 'en', 1, 'DLR: Surviving the conditions on Mars', 'https://www.dlr.de/en/latest/news/2012/20120426_surviving-the-conditions-on-mars_3409'),
  ('lichen-mars', 'en', 2, 'The Planetary Society: Earth''s toughest life could survive on Mars', 'https://www.planetary.org/articles/20120515-earth-life-survive-mars'),
  ('lichen-mars', 'en', 3, 'Universe Today: Lichen Can Survive in Space', 'https://www.universetoday.com/articles/lichen-can-survive-in-space');
