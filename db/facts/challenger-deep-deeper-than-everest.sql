-- WTFact-Fakt „Der tiefste Punkt im Meer liegt fast 11 Kilometer unter der Oberfläche“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('challenger-deep-deeper-than-everest', '2026-10-22T10:00:00+02:00', 'ocean', '🌊', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'challenger-deep-deeper-than-everest', 'de', 'challengertief-tiefer-als-everest-hoch',
  'Der tiefste Punkt im Meer liegt fast 11 Kilometer unter der Oberfläche',
  'Würde man den Mount Everest dort versenken, wäre über seinem Gipfel noch mehr als 2 Kilometer Wasser.',
  'Das Challengertief im Marianengraben ist laut einer Messung der US-Behörde NOAA von 2021 rund 10.935 Meter tief. Das sind fast 11 Kilometer.',
  'Der Mount Everest ist der höchste Berg der Welt. Doch es gibt einen Ort, der tiefer hinabreicht, als der Everest hoch ist: das Challengertief im Pazifik.

## Tiefer als jeder Berg hoch

Das Challengertief liegt am südlichen Ende des Marianengrabens im westlichen Pazifik. Laut Live Science ergab eine Messung der US-Behörde NOAA im Jahr 2021 eine Tiefe von rund 10.935 Metern. Das sind fast 11 Kilometer.

Der Mount Everest ist laut EarthDate 8.848 Meter hoch. Würde man ihn also ins Challengertief stellen, läge sein Gipfel immer noch mehr als 2 Kilometer unter der Wasseroberfläche. Live Science gibt den Unterschied mit rund 2.100 Metern an.

## Ein Druck wie unter Elefanten

Am Grund des Grabens ist es nicht nur stockdunkel und kalt. Laut Live Science herrscht dort ein Druck von über 1.000 Atmosphären, also mehr als tausendmal so viel wie an der Oberfläche. Ein normales U-Boot würde dabei zerquetscht werden.

Trotzdem waren Menschen schon dort unten. Am 23. Januar 1960 tauchten Jacques Piccard und Don Walsh mit dem Tauchboot „Trieste“ bis zum Grund. Fast 52 Jahre später, am 26. März 2012, schaffte es der Regisseur James Cameron allein in einem eigens gebauten Tauchboot.

> Bonusfakt: Die genaue Tiefe ist gar nicht so leicht zu messen. Laut Live Science braucht ein Sonarsignal rund 14 Sekunden bis zum Grund und zurück. Weil Salzgehalt, Temperatur und Druck den Schall verändern, ist die Messung nur auf etwa 25 Meter genau.

Damit gehört der Grund des Challengertiefs zu den am wenigsten besuchten Orten der Erde. Auf dem Gipfel des Everest standen schon Tausende Menschen, am tiefsten Punkt des Meeres nur vergleichsweise wenige.

Ein Tauchgang bis zum Boden im Schwimmbad schafft vielleicht 3 Meter. Bis zum Grund des Challengertiefs fehlen dann nur noch rund 10.932.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('challenger-deep-deeper-than-everest', 'de', 1, 'Buch über den Marianengraben und die Tiefsee', 'Buch Marianengraben Tiefsee', 'Nimmt mit auf die Reise an den tiefsten Ort der Erde.'),
  ('challenger-deep-deeper-than-everest', 'de', 2, 'Poster Tiefsee-Zonen', 'Poster Tiefsee Zonen Ozean', 'Zeigt, welche Tiere in welcher Tiefe leben, bis ganz nach unten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('challenger-deep-deeper-than-everest', 'de', 1, 'Live Science: How deep is the Mariana Trench?', 'https://www.livescience.com/how-deep-is-the-mariana-trench'),
  ('challenger-deep-deeper-than-everest', 'de', 2, 'EarthDate: The Deepest Deep', 'https://earthdate.org/episodes/the-deepest-deep');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'challenger-deep-deeper-than-everest', 'en', 'challenger-deep-deeper-than-everest',
  'The deepest point in the ocean is almost 11 kilometers down',
  'If you sank Mount Everest there, there would still be more than 2 kilometers of water above its peak.',
  'According to a 2021 measurement by the US agency NOAA, Challenger Deep in the Mariana Trench is about 10,935 meters deep. That’s almost 11 kilometers.',
  'Mount Everest is the highest mountain in the world. But there’s a place that goes down deeper than Everest goes up: Challenger Deep in the Pacific.

## Deeper than any mountain is tall

Challenger Deep lies at the southern end of the Mariana Trench in the western Pacific. According to Live Science, a 2021 measurement by the US agency NOAA found a depth of about 10,935 meters (35,876 feet). That’s almost 11 kilometers.

According to EarthDate, Mount Everest is 8,848 meters tall. So if you put it into Challenger Deep, its peak would still be more than 2 kilometers below the surface. Live Science puts the difference at about 2,100 meters.

## Pressure like a pile of elephants

At the bottom of the trench, it isn’t just pitch dark and cold. According to Live Science, the pressure there is more than 1,000 atmospheres, over a thousand times what it is at the surface. A normal submarine would be crushed.

Still, people have been down there. On January 23, 1960, Jacques Piccard and Don Walsh dove to the bottom in the submersible "Trieste". Almost 52 years later, on March 26, 2012, film director James Cameron made it alone in a specially built sub.

> Bonus fact: The exact depth isn’t easy to measure. According to Live Science, a sonar signal takes about 14 seconds to reach the bottom and come back. Because salinity, temperature and pressure change how sound travels, the measurement is only accurate to about 25 meters.

That makes the bottom of Challenger Deep one of the least visited places on Earth. Thousands of people have stood on top of Everest, but only comparatively few have reached the deepest point of the ocean.

A dive to the bottom of a swimming pool gets you maybe 3 meters. Only about 10,932 more to go to the bottom of Challenger Deep.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('challenger-deep-deeper-than-everest', 'en', 1, 'Book about the Mariana Trench and the deep sea', 'book Mariana Trench deep sea', 'Takes you on a trip to the deepest place on Earth.'),
  ('challenger-deep-deeper-than-everest', 'en', 2, 'Ocean depth zones poster', 'ocean depth zones poster', 'Shows which animals live at which depth, all the way down.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('challenger-deep-deeper-than-everest', 'en', 1, 'Live Science: How deep is the Mariana Trench?', 'https://www.livescience.com/how-deep-is-the-mariana-trench'),
  ('challenger-deep-deeper-than-everest', 'en', 2, 'EarthDate: The Deepest Deep', 'https://earthdate.org/episodes/the-deepest-deep');
