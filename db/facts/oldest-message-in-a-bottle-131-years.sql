-- WTFact-Fakt „Die älteste Flaschenpost der Welt wurde 131 Jahre nach dem Wurf über Bord gefunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('oldest-message-in-a-bottle-131-years', '2026-11-07T08:00:00+01:00', 'records', '🍾', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'oldest-message-in-a-bottle-131-years', 'de', 'aelteste-flaschenpost-der-welt',
  'Die älteste Flaschenpost der Welt wurde 131 Jahre nach dem Wurf über Bord gefunden',
  'Eine Familie hob an einem australischen Strand eine alte Ginflasche auf und knackte dabei aus Versehen einen Weltrekord.',
  'Im Januar 2018 fand Tonya Illman an einem Strand bei Wedge Island in Westaustralien eine Flasche mit einem Zettel, den ein deutscher Kapitän am 12. Juni 1886 über Bord geworfen hatte: die älteste bekannte Flaschenpost.',
  'Im Januar 2018 lief Tonya Illman an einem abgelegenen Strand bei Wedge Island in Westaustralien entlang, als sie eine alte Ginflasche entdeckte, halb im Sand vergraben. Sie dachte, die gäbe eine schöne Deko ab. Dann kippte die Freundin ihres Sohnes den Sand aus, und heraus kam ein eng gerolltes Stück Papier, das aussah wie eine Zigarette.

## Ein Zettel von 1886

Das Papier war zu nass und zu brüchig zum Aufrollen, also trocknete die Familie es ein paar Minuten im Backofen. Danach konnte man ein Datum lesen: 12. Juni 1886. Auf dem gedruckten Formular standen außerdem Koordinaten, die Route von Cardiff nach Makassar und der Name des Schiffs: die deutsche Bark Paula.

Die Flasche gehörte zu einem riesigen Forschungsprojekt. Von 1864 bis 1933 warfen deutsche Schiffe Tausende Flaschen über Bord, um Meeresströmungen und Schifffahrtsrouten zu untersuchen. Auf jedem Zettel stand die Bitte, ihn mit Zeit und Ort des Fundes an die Deutsche Seewarte in Hamburg oder an die nächste deutsche Botschaft zu schicken.

## Das Journal des Kapitäns lieferte den Beweis

Ross Anderson vom Western Australian Museum prüfte den Fund zusammen mit Fachleuten in Deutschland und den Niederlanden. In einem deutschen Archiv tauchte das meteorologische Journal der Paula auf. Am 12. Juni 1886 hatte der Kapitän dort eine Treibflasche eingetragen, die er über Bord geworfen hatte, an Koordinaten, die zum Zettel passten. Auch die Handschrift stimmte überein.

Guinness World Records führt sie als älteste Flaschenpost: 131 Jahre und 223 Tage zwischen Wurf und Fund. Der Haken: Wahrscheinlich ist sie gar nicht die ganze Zeit im Meer geschaukelt. Sie wurde im südöstlichen Indischen Ozean über Bord geworfen, fast 950 Kilometer vom Fundort entfernt, und ist vermutlich innerhalb von 12 Monaten angespült worden. Danach lag sie mehr als ein Jahrhundert lang im Sand.

> Bonusfakt: Vor dieser Flasche waren 662 Zettel aus dem deutschen Experiment zurückgekommen, das hier war also Nummer 663. Der bisherige Rekordhalter war 108 Jahre und 138 Tage alt und stammte aus einem ähnlichen britischen Experiment.

Manche Post ist eben langsam. Diese hier hat über hundert Jahre im Sand darauf gewartet, dass jemand nach unten schaut.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('oldest-message-in-a-bottle-131-years', 'de', 1, 'Flaschenpost-Glasflaschen mit Korken', 'Flaschenpost Glasflaschen mit Korken', 'Kleine Flaschen mit Korken, um eigene Nachrichten zu verstecken.'),
  ('oldest-message-in-a-bottle-131-years', 'de', 2, 'Nautischer Kompass aus Messing', 'Kompass Messing nautisch Deko', 'Ein klassisches Seefahrer-Stück für Schreibtisch oder Regal.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('oldest-message-in-a-bottle-131-years', 'de', 1, 'Guinness World Records: Oldest message in a bottle', 'https://guinnessworldrecords.com/world-records/oldest-message-in-a-bottle'),
  ('oldest-message-in-a-bottle-131-years', 'de', 2, 'Guinness World Records: World''s oldest message in a bottle confirmed - 132 years after being thrown overboard', 'https://www.guinnessworldrecords.com/news/2018/3/worlds-oldest-message-in-a-bottle-confirmed-132-years-after-being-thrown-overb-517329'),
  ('oldest-message-in-a-bottle-131-years', 'de', 3, 'ScienceAlert: The Oldest Known Message in a Bottle Was Just Found, And The Contents Are Fascinating', 'https://www.sciencealert.com/oldest-known-message-in-a-bottle-ocean-currents-german-barque-paula'),
  ('oldest-message-in-a-bottle-131-years', 'de', 4, 'National Geographic: World''s Oldest Message in a Bottle Found on Beach', 'https://www.nationalgeographic.com/history/article/oldest-message-in-a-bottle-australia-german-spd');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'oldest-message-in-a-bottle-131-years', 'en', 'oldest-message-in-a-bottle',
  'The world''s oldest message in a bottle was found 131 years after it went overboard',
  'A family on an Australian beach picked up an old gin bottle and accidentally broke a world record.',
  'In January 2018, Tonya Illman found a bottle on a beach near Wedge Island in Western Australia with a note that a German captain had thrown overboard on 12 June 1886, making it the oldest known message in a bottle.',
  'In January 2018, Tonya Illman was walking along a remote beach near Wedge Island in Western Australia when she spotted an old gin bottle half-buried in the sand. She thought it would make a nice decoration. Then her son''s girlfriend tipped out the sand, and out came a tightly rolled piece of paper that looked like a cigarette.

## A note from 1886

The paper was too wet and fragile to unroll, so the family dried it in their oven for a few minutes. Then they could read a date: 12 June 1886. The printed form also listed coordinates, the route from Cardiff to Makassar and the name of the ship: the German barque Paula.

The bottle was part of a huge science project. From 1864 to 1933, German ships threw thousands of bottles overboard to study ocean currents and shipping routes. Each note asked the finder to send it back to the Deutsche Seewarte in Hamburg or to the nearest German embassy, with the time and place of the discovery.

## The captain''s journal had the answer

Ross Anderson of the Western Australian Museum checked the find with experts in Germany and the Netherlands. In a German archive, they tracked down the Paula''s meteorological journal. On 12 June 1886, the captain had logged a drift bottle thrown overboard, at coordinates that matched the note. The handwriting matched too.

Guinness World Records lists it as the oldest message in a bottle: 131 years and 223 days between release and discovery. The twist: it probably didn''t bob around the ocean all that time. It was thrown into the south-eastern Indian Ocean, nearly 950 kilometres from where it was found, and most likely washed ashore within 12 months. After that, it lay buried in the sand for more than a century.

> Bonus fact: Before this bottle turned up, 662 messages from the German experiment had been returned, so this was number 663. The previous record holder was 108 years and 138 days old and came from a similar British experiment.

Some mail is slow. This one spent over a century waiting in the sand for someone to look down.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('oldest-message-in-a-bottle-131-years', 'en', 1, 'Message in a bottle glass set with corks', 'message in a bottle glass bottles with cork', 'Small corked bottles for writing and hiding your own notes.'),
  ('oldest-message-in-a-bottle-131-years', 'en', 2, 'Brass nautical compass', 'brass nautical compass decoration', 'A classic seafaring piece for a desk or shelf.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('oldest-message-in-a-bottle-131-years', 'en', 1, 'Guinness World Records: Oldest message in a bottle', 'https://guinnessworldrecords.com/world-records/oldest-message-in-a-bottle'),
  ('oldest-message-in-a-bottle-131-years', 'en', 2, 'Guinness World Records: World''s oldest message in a bottle confirmed - 132 years after being thrown overboard', 'https://www.guinnessworldrecords.com/news/2018/3/worlds-oldest-message-in-a-bottle-confirmed-132-years-after-being-thrown-overb-517329'),
  ('oldest-message-in-a-bottle-131-years', 'en', 3, 'ScienceAlert: The Oldest Known Message in a Bottle Was Just Found, And The Contents Are Fascinating', 'https://www.sciencealert.com/oldest-known-message-in-a-bottle-ocean-currents-german-barque-paula'),
  ('oldest-message-in-a-bottle-131-years', 'en', 4, 'National Geographic: World''s Oldest Message in a Bottle Found on Beach', 'https://www.nationalgeographic.com/history/article/oldest-message-in-a-bottle-australia-german-spd');
