-- WTFact-Fakt „Auf der ISS geht die Sonne 16-mal am Tag auf“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('iss-16-sunrises', '2026-10-10T08:00:00+02:00', 'space', '🛰️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'iss-16-sunrises', 'de', 'iss-16-sonnenaufgaenge-am-tag',
  'Auf der ISS geht die Sonne 16-mal am Tag auf',
  'Ein Tag im All hat mehr Sonnenaufgänge als ein normaler Mensch in zwei Wochen.',
  'Die Internationale Raumstation umrundet die Erde etwa alle 90 Minuten, deshalb sieht die Crew jeden Tag 16 Sonnenaufgänge und 16 Sonnenuntergänge.',
  'Einen Sonnenaufgang zu sehen, bedeutet für die meisten: Wecker stellen und leiden. Auf der Internationalen Raumstation ISS bekommst du sie praktisch im Abo.

## Einmal um die Erde in 90 Minuten

Die ISS fliegt laut EarthSky in rund 400 Kilometern Höhe und ist dabei etwa 27.500 Kilometer pro Stunde schnell. Für eine Runde um die Erde braucht sie laut NASA ungefähr 90 Minuten, das macht 16 Umläufe in 24 Stunden.

Bei jedem Umlauf fliegt die Station einmal über die Tagseite und einmal über die Nachtseite der Erde. Das Ergebnis: 16 Sonnenaufgänge und 16 Sonnenuntergänge pro Tag. Die Crew erlebt also in einem einzigen Tag mehr Sonnenaufgänge, als du in zwei Wochen zu sehen bekommst.

Ganz nebenbei legt die Station laut NASA an einem Tag ungefähr die Strecke zum Mond und zurück zurück.

## Schlafen, wenn die Sonne Party macht

So schön das klingt, für den Körper ist es ein Problem. Unser innerer Rhythmus orientiert sich am Wechsel von hell und dunkel, und der kommt auf der ISS alle paar Dutzend Minuten. Laut der Kanadischen Raumfahrtagentur macht genau das einen regelmäßigen Schlaf schwierig.

Die Lösung ist ein fester Plan statt Sonnenlicht. Eingeplant sind laut der Agentur etwa 8,5 Stunden Schlaf pro Tag, viele Astronautinnen und Astronauten fühlen sich aber schon nach etwa 6 Stunden fit. Gegen das ständige Licht helfen eine Schlafmaske und Ohrstöpsel gegen den Lärm der Station. Wer nicht in einer Schlafkabine liegt, macht den Schlafsack einfach an Boden, Decke oder Wand fest.

> Bonusfakt: An Bord gilt die Greenwich Mean Time, laut der Kanadischen Raumfahrtagentur ein Kompromiss zwischen den Kontrollzentren in Houston und Moskau.

Frühaufsteher haben dort oben einen echt anstrengenden Job.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('iss-16-sunrises', 'de', 1, 'LEGO-Set der Internationalen Raumstation', 'LEGO Ideas Internationale Raumstation', 'Ein detailreiches Modell der ISS zum Bauen und Aufhängen, mit kleinen Raumfähren dazu.'),
  ('iss-16-sunrises', 'de', 2, 'Bildband mit Erdfotos von der ISS', 'Bildband Erde aus dem Weltall ISS Fotos', 'Polarlichter, Städte bei Nacht und Wüsten aus 400 Kilometern Höhe, aufgenommen von Astronauten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('iss-16-sunrises', 'de', 1, 'NASA: International Space Station Facts and Figures', 'https://www.nasa.gov/international-space-station/space-station-facts-and-figures/'),
  ('iss-16-sunrises', 'de', 2, 'EarthSky: A new day from space', 'https://earthsky.org/?p=277072'),
  ('iss-16-sunrises', 'de', 3, 'Canadian Space Agency: Sleeping in space', 'https://www.asc-csa.gc.ca/eng/astronauts/living-in-space/sleeping-in-space.asp');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'iss-16-sunrises', 'en', 'iss-16-sunrises-a-day',
  'On the ISS, the Sun rises 16 times a day',
  'A single day in orbit has more sunrises than most people see in two weeks.',
  'The International Space Station circles Earth about every 90 minutes, so its crew sees 16 sunrises and 16 sunsets every day.',
  'For most people, seeing a sunrise means setting an alarm and suffering. On the International Space Station, you basically get them on subscription.

## Around the world in 90 minutes

According to EarthSky, the ISS flies about 400 kilometers up at roughly 27,500 kilometers per hour. NASA says it takes about 90 minutes to go around Earth once, which adds up to 16 orbits in 24 hours.

On every orbit, the station passes over the day side and the night side of the planet. The result: 16 sunrises and 16 sunsets per day. In a single day, the crew sees more sunrises than you get in two weeks.

On the side, according to NASA, the station covers roughly the distance to the Moon and back in about a day.

## Sleeping while the Sun parties

As beautiful as that sounds, it is a problem for the body. Our internal rhythm follows the switch between light and dark, and on the ISS that switch comes every few dozen minutes. According to the Canadian Space Agency, this makes a regular sleep pattern hard to keep.

The solution is a fixed schedule instead of sunlight. According to the agency, crew members are allotted about 8.5 hours of sleep a day, but many feel fully rested after about 6 hours. A sleep mask blocks the constant light, and earplugs block the station''s noise. Anyone not sleeping in a sleep compartment simply attaches their sleeping bag to the floor, ceiling or wall.

> Bonus fact: The station runs on Greenwich Mean Time, which the Canadian Space Agency describes as a compromise between mission control centers in Houston and Moscow.

Up there, being an early bird is a seriously exhausting job.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('iss-16-sunrises', 'en', 1, 'LEGO International Space Station set', 'LEGO Ideas International Space Station', 'A detailed ISS model to build and display, with tiny space shuttles included.'),
  ('iss-16-sunrises', 'en', 2, 'Photo book of Earth seen from the ISS', 'Earth from space ISS photo book', 'Auroras, cities at night and deserts from 400 kilometers up, shot by astronauts.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('iss-16-sunrises', 'en', 1, 'NASA: International Space Station Facts and Figures', 'https://www.nasa.gov/international-space-station/space-station-facts-and-figures/'),
  ('iss-16-sunrises', 'en', 2, 'EarthSky: A new day from space', 'https://earthsky.org/?p=277072'),
  ('iss-16-sunrises', 'en', 3, 'Canadian Space Agency: Sleeping in space', 'https://www.asc-csa.gc.ca/eng/astronauts/living-in-space/sleeping-in-space.asp');
