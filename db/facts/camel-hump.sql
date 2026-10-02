-- WTFact-Fakt „Im Kamelhöcker steckt kein Wasser, sondern Fett“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('camel-hump', '2026-08-25', 'survival', '🐪', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'camel-hump', 'de', 'kamelhoecker-fett-statt-wasser',
  'Im Kamelhöcker steckt kein Wasser, sondern Fett',
  'Der Höcker ist eine Vorratskammer, aber kein Wassertank. Warum Kamele trotzdem so lange ohne Trinken auskommen.',
  'Der Höcker eines Kamels ist ein Fettspeicher und kein Wassertank.',
  'Du hast es bestimmt schon mal gehört: Kamele tragen ihren Wasservorrat im Höcker mit sich herum. Klingt logisch, ist aber falsch. **Im Höcker steckt Fett**, zusammengehalten von Bindegewebe. Er ist eine Vorratskammer für Energie, kein Tank zum Nachfüllen.

## Ein Rucksack voller Energie

Ein Höcker kann bis zu 80 Pfund Fett speichern, also gut 36 Kilo. Findet das Tier lange nichts zu fressen, zehrt es von diesem Vorrat, und der Höcker schrumpft sichtbar. Frisst es wieder genug, wird er wieder prall.

Beim Abbau des Fetts entsteht zwar chemisch sogar etwas Wasser. Weil das Tier dafür aber mehr atmen muss und dabei Feuchtigkeit über die Lunge verliert, bleibt unterm Strich kein Plus. Der eigentliche Trick der Kamele ist ein anderer: **Sie sparen extrem gut.**

## Profis im Wassersparen

Ein Dromedar lässt seine Körpertemperatur über den Tag schwanken, von etwa 34 Grad am Morgen auf rund 40 Grad und mehr am Abend. Es fängt also erst spät an zu schwitzen und verliert dadurch viel weniger Wasser.

Dazu kommt eine enorme Toleranz gegen Austrocknung. Die meisten Säugetiere geraten schon bei einem Wasserverlust von etwa 12 bis 15 Prozent ihres Körpergewichts in Lebensgefahr. **Kamele stecken ein Viertel bis ein Drittel weg.** Ihre roten Blutkörperchen sind außerdem oval statt rund, eine Besonderheit unter Säugetieren. So kann das Blut auch bei Wassermangel weiter fließen.

Das Ergebnis: Ein Dromedar kann selbst bei großer Hitze mit einem Schluck alle 10 Tage auskommen.

## Und dann wird nachgetankt

Wenn ein Kamel dann an Wasser kommt, wird es ernst. **Es kann rund 100 Liter in nur 10 Minuten trinken.** Für die meisten anderen Säugetiere wäre so eine Menge in so kurzer Zeit lebensgefährlich.

> Bei einem Sandsturm können Dromedare ihre Nasenlöcher verschließen, damit kein Sand eindringt.

Der Höcker ist also kein Wassertank, sondern die Speisekammer für schlechte Zeiten. Den Durst regeln Kamele mit Physiologie statt mit Gepäck.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('camel-hump', 'de', 1, 'Kamel-Kuscheltier', 'Kamel Kuscheltier Dromedar', 'Ein flauschiges Dromedar mit Höcker, das sich als Deko oder Geschenk gut macht.'),
  ('camel-hump', 'de', 2, 'Bildband über Wüsten der Welt', 'Bildband Wüsten der Welt', 'Großformatige Fotos von Sahara bis Atacama, mit Texten zu den Tieren und Pflanzen, die dort leben.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('camel-hump', 'de', 1, 'Wikipedia: Camel', 'https://en.wikipedia.org/wiki/Camel'),
  ('camel-hump', 'de', 2, 'Animal Diversity Web: Camelus dromedarius (dromedary)', 'https://animaldiversity.org/accounts/Camelus_dromedarius/'),
  ('camel-hump', 'de', 3, 'Cleveland Zoological Society: Truth or Tail: A camel''s hump', 'https://www.clevelandzoosociety.org/z/2021/04/06/truth-or-tail-a-camels-hump');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'camel-hump', 'en', 'camel-hump-fat-not-water',
  'A camel''s hump is full of fat, not water',
  'The hump is a pantry, not a water tank. So how do camels go so long without a drink?',
  'A camel''s hump stores fat, not water.',
  'You''ve probably heard it before: camels carry their water supply around in their humps. Sounds logical, but it''s wrong. **The hump is fat**, held together by fibrous tissue. It''s an energy pantry, not a refillable tank.

## A backpack full of energy

A single hump can store up to 80 pounds of fat. When a camel can''t find food for a long time, it lives off that reserve, and the hump visibly shrinks. Once it eats well again, the hump plumps back up.

Chemically, burning that fat even produces some water. But the extra breathing it takes also lets moisture escape from the lungs, so in dry air there''s no net gain. The camel''s real trick is something else: **it''s extremely good at saving water.**

## Water-saving pros

A dromedary lets its body temperature swing over the course of the day, from about 93 degrees Fahrenheit (34 degrees Celsius) in the morning to around 104 degrees Fahrenheit (40 degrees Celsius) or more in the evening. That means it starts sweating late and loses far less water.

On top of that, camels handle dehydration like few other animals. Most mammals are in serious danger after losing about 12 to 15 percent of their body weight in water. **Camels can lose a quarter to a third.** Their red blood cells are also oval instead of round, which is unusual for a mammal and helps their blood keep flowing when water runs low.

The result: even in serious heat, a dromedary can get by drinking as rarely as once every 10 days.

## Then it''s time to refuel

When a camel finally reaches water, it doesn''t mess around. **It can drink about 100 liters, roughly 26 gallons, in just 10 minutes.** For most other mammals, that much water that fast would be dangerous.

> During a sandstorm, dromedaries can close their nostrils to keep the sand out.

So the hump isn''t a water tank, it''s a pantry for hard times. Camels handle thirst with physiology, not luggage.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('camel-hump', 'en', 1, 'Camel plush toy', 'camel plush toy dromedary', 'A fluffy one-humped dromedary that works as decor or a gift.'),
  ('camel-hump', 'en', 2, 'Deserts of the world photo book', 'deserts of the world photography book', 'Big photos from the Sahara to the Atacama, with stories about the animals and plants that live there.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('camel-hump', 'en', 1, 'Wikipedia: Camel', 'https://en.wikipedia.org/wiki/Camel'),
  ('camel-hump', 'en', 2, 'Animal Diversity Web: Camelus dromedarius (dromedary)', 'https://animaldiversity.org/accounts/Camelus_dromedarius/'),
  ('camel-hump', 'en', 3, 'Cleveland Zoological Society: Truth or Tail: A camel''s hump', 'https://www.clevelandzoosociety.org/z/2021/04/06/truth-or-tail-a-camels-hump');
