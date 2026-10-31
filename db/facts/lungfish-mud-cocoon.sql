-- WTFact-Fakt „Dieser Fisch übersteht Dürren eingemauert im Schlamm, bis zu vier Jahre lang“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('lungfish-mud-cocoon', '2026-11-04T12:00:00+01:00', 'survival', '🐟', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lungfish-mud-cocoon', 'de', 'lungenfisch-ueberlebt-duerre-im-schlamm',
  'Dieser Fisch übersteht Dürren eingemauert im Schlamm, bis zu vier Jahre lang',
  'Trocknet sein Fluss aus, baut sich der Westafrikanische Lungenfisch einen Schleimkokon und schaltet auf Standby.',
  'Bei Dürre gräbt sich der Westafrikanische Lungenfisch in den Schlamm, schließt sich in einen Kokon ein und kommt bis zu vier Jahre ohne Nahrung aus.',
  'Ein Fisch braucht Wasser. Logisch. Außer er ist ein Westafrikanischer Lungenfisch, denn der sitzt eine Dürre einfach eingegraben im getrockneten Schlamm aus. Laut Guinness World Records kommt er bis zu vier Jahre (vielleicht sogar fünf) ohne Nahrung aus.

## Ein Fisch, der ertrinken kann

Der Trick beginnt bei seinem Körperbau. Neben Kiemen hat der Lungenfisch eine einfache Lunge und kann Sauerstoff aus der Luft aufnehmen. Laut National Geographic Education muss er sogar etwa jede halbe Stunde Luft holen, sonst ertrinkt er. Ein Fisch, der ertrinkt, klingt absurd, aber genau diese Lunge lässt ihn an Land überleben.

Trocknen seine Flüsse und Seen aus, gräbt sich der Fisch in den schlammigen Grund. In etwa 10 Zoll Tiefe, also rund 25 Zentimetern, gibt er Schleim ab, der zu einer Hülle aushärtet. Die hält Feuchtigkeit drin und lässt trotzdem Luft durch. The Oxford Scientist beschreibt sie als wasserdichten Kokon mit nur einer Lücke für das Maul. Darin fällt der Fisch in einen Ruhezustand namens Ästivation, eine Art Winterschlaf in der Hitze. Er frisst nicht, trinkt nicht, scheidet nichts aus und lebt teilweise von seinen eigenen Muskeln.

## Leben im Standby

Die Zahlen sind extrem. Bei Afrikanischen Lungenfischen sinkt laut The Oxford Scientist der Sauerstoffverbrauch auf etwa die Hälfte eines aktiven Lungenfischs im Wasser, und das Herz schlägt nur noch etwa zweimal pro Minute statt 25-mal beim Schwimmen. Kommt endlich wieder Regen, läuft Wasser in das Maul des Fischs, den einzigen Teil, der nicht eingeschlossen ist, und das startet das Aufwachen. Nach etwa zehn Tagen fängt der Fisch wieder an zu fressen.

Und dann ist da noch der Schleim selbst. Lange galt der Kokon als passive Schutzschicht. Eine Studie von 2021 in der Fachzeitschrift Science berichtete, dass er voller Granulozyten steckt, einer Art weißer Blutkörperchen, die Krankheitserreger abfangen, bevor sie den schlafenden Fisch erreichen. Wurden diese Zellen in Experimenten ausgeschaltet, hatten die Lungenfische mehr Bakterien im Blut und mehr Hautinfektionen.

> Bonusfakt: Laut Guinness World Records gibt es heute nur sechs Lungenfischarten: vier in Afrika, eine in Südamerika und eine in Australien. The Oxford Scientist schreibt, dass Afrikanische Lungenfische seit etwa 390 Millionen Jahren weitgehend gleich aussehen.

Vier Jahre in einer Schlammkapsel mit selbstreinigender Tapete. Nicht schlecht für einen Fisch.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lungfish-mud-cocoon', 'de', 1, '„Der Fisch in uns“ von Neil Shubin', 'Der Fisch in uns Neil Shubin', 'Ein gut lesbares Buch darüber, wie viel Fisch noch im menschlichen Körper steckt.'),
  ('lungfish-mud-cocoon', 'de', 2, 'Fisch-Kuscheltier', 'Fisch Plüschtier realistisch', 'Ein weicher Fisch zum Knuddeln für Schreibtisch oder Sofa.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lungfish-mud-cocoon', 'de', 1, 'Guinness World Records: Longest duration without food for a fish', 'https://www.guinnessworldrecords.com/world-records/632699-longest-duration-without-food-for-a-fish'),
  ('lungfish-mud-cocoon', 'de', 2, 'National Geographic Education: West African Lungfish', 'https://education.nationalgeographic.org/resource/west-african-lungfish'),
  ('lungfish-mud-cocoon', 'de', 3, 'The Oxford Scientist: A fish out of water: How African Lungfish sleep through the heat', 'https://oxsci.org/a_fish_out_of_water_how_african_lungfish_sleep_through_the_heat/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lungfish-mud-cocoon', 'en', 'lungfish-survives-drought-in-mud',
  'This fish waits out droughts sealed in dried mud, for up to four years',
  'When its river dries up, the West African lungfish builds a slime cocoon and switches to standby.',
  'During droughts, the West African lungfish buries itself in mud, seals itself in a cocoon and can go as long as four years without food.',
  'A fish needs water. Obviously. Unless it''s the West African lungfish, which simply waits out a drought buried in dried mud. According to Guinness World Records, it can go as long as four years (and possibly up to five) without food.

## A fish that can drown

The trick starts with its anatomy. Besides gills, the lungfish has a primitive lung and can take in oxygen from the air. National Geographic Education even says it still needs air every half hour, otherwise it drowns. A fish that drowns sounds absurd, but that lung is exactly what lets it survive on land.

When its rivers and lakes dry up, the fish burrows into the muddy bottom. About 10 inches (roughly 25 centimetres) down, it releases mucus that hardens into a shelter, which holds in moisture and still lets air through. The Oxford Scientist describes it as a watertight cocoon with just a gap for the mouth. Inside, the fish enters a dormant state called aestivation, a bit like hibernation in the heat. It doesn''t eat, drink or excrete, and it lives partly off its own muscle.

## Life on standby

The numbers are extreme. In African lungfish, The Oxford Scientist reports, oxygen consumption drops to about half that of an active lungfish in water, and the heart slows to around two beats per minute, compared with 25 while swimming. When the rain finally returns, water fills the fish''s mouth, the only part not sealed in, and that starts the wake-up. After around ten days, the fish begins to feed again.

Then there''s the mucus itself. For a long time the cocoon was seen as a passive barrier. A 2021 study in the journal Science reported that it is packed with granulocytes, a type of white blood cell, which catch pathogens before they reach the sleeping fish. When those cells were disabled in experiments, the lungfish had more bacteria in their blood and more skin infections.

> Bonus fact: According to Guinness World Records, only six lungfish species exist today: four in Africa, one in South America and one in Australia. The Oxford Scientist says African lungfish have looked largely the same for about 390 million years.

Four years in a mud pod with a self-cleaning wallpaper. Not bad for a fish.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lungfish-mud-cocoon', 'en', 1, 'Your Inner Fish by Neil Shubin', 'Your Inner Fish Neil Shubin', 'A readable book on how fish anatomy still shows up in the human body.'),
  ('lungfish-mud-cocoon', 'en', 2, 'Fish plush toy', 'realistic fish plush toy', 'A soft, cuddly fish for the desk or the sofa.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lungfish-mud-cocoon', 'en', 1, 'Guinness World Records: Longest duration without food for a fish', 'https://www.guinnessworldrecords.com/world-records/632699-longest-duration-without-food-for-a-fish'),
  ('lungfish-mud-cocoon', 'en', 2, 'National Geographic Education: West African Lungfish', 'https://education.nationalgeographic.org/resource/west-african-lungfish'),
  ('lungfish-mud-cocoon', 'en', 3, 'The Oxford Scientist: A fish out of water: How African Lungfish sleep through the heat', 'https://oxsci.org/a_fish_out_of_water_how_african_lungfish_sleep_through_the_heat/');
