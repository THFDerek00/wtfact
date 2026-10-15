-- WTFact-Fakt „Die Perseiden sind Sandkörnchen mit 59 Kilometern pro Sekunde“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('perseids-sand-grains', '2026-08-12T00:00:00+02:00', 'holiday', '🌠', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'perseids-sand-grains', 'de', 'perseiden-sandkoerner-59-km-pro-sekunde',
  'Die Perseiden sind Sandkörnchen mit 59 Kilometern pro Sekunde',
  'Die hellsten Sternschnuppen des Sommers stammen von Krümeln, die kaum größer sind als Sand. Ihr Trick ist das Tempo.',
  'Die Sternschnuppen der Perseiden sind meist nur sandkorngroße Staubteilchen des Kometen Swift-Tuttle, die mit etwa 59 Kilometern pro Sekunde in die Atmosphäre rasen.',
  'Diese Nacht ist Sternschnuppen-Nacht. Die Perseiden haben ihren Höhepunkt, und laut NASA kannst du unter dunklem Himmel bis zu 100 Meteore pro Stunde sehen. **Das Verrückte daran: Die meisten Lichtspuren stammen von Teilchen, die nicht größer sind als ein Sandkorn.**

## Krümel von einem Riesen

Die Perseiden kommen von einem Kometen namens 109P/Swift-Tuttle. Entdeckt wurde er 1862 von Lewis Swift und Horace Tuttle. Für eine Runde um die Sonne braucht er 133 Jahre, zuletzt war er 1992 im inneren Sonnensystem.

Auf seinem Weg verliert der Komet ständig Staub. Jedes Jahr im August fliegt die Erde durch diese Staubspur. Laut dem Magazin Space.com sind die meisten Teilchen so groß wie Sandkörner, einige wie Erbsen oder Murmeln.

Der Komet selbst ist dagegen ein Brocken: Sein Kern misst laut NASA etwa 26 Kilometer. Space.com rechnet vor, dass er damit etwa doppelt so groß ist wie der Asteroid, der die Dinosaurier auslöschte.

## Warum ein Sandkorn so hell leuchtet

Der Grund ist die Geschwindigkeit. Die Teilchen treffen mit etwa 59 Kilometern pro Sekunde auf die Atmosphäre. Das sind über 200.000 Kilometer pro Stunde. Dabei werden sie laut Space.com auf mehr als 1650 Grad Celsius erhitzt und verglühen. Laut der Max-Planck-Gesellschaft blitzt der Meteor meist in rund 80 Kilometern Höhe auf, weit über allen Flugzeugen.

Was du siehst, ist also kein fallender Stern, sondern ein Staubkorn, das in Sekundenbruchteilen verdampft.

## Die Tränen des Laurentius

Im deutschen Volksmund haben die Perseiden einen eigenen Namen: „Laurentiustränen“, wie die Max-Planck-Gesellschaft schreibt. Der Gedenktag des heiligen Laurentius ist der 10. August, also genau in der Zeit, in der die Sternschnuppen fallen.

> Keine Sorge wegen des großen Bruders: Bei seinem nächsten engen Vorbeiflug am 5. August 2126 bleibt Swift-Tuttle laut Live Science etwa 23 Millionen Kilometer von der Erde entfernt.

Leg dich heute Nacht also irgendwo hin, wo es dunkel ist. Der Komet liefert, du musst nur hochschauen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('perseids-sand-grains', 'de', 1, 'Dobson-Teleskop mit 200 mm Spiegel', 'Dobson Teleskop 200 mm', 'Ein großer Spiegel für Mondkrater, Saturnringe und Galaxien, ohne komplizierte Montierung.'),
  ('perseids-sand-grains', 'de', 2, 'Großfernglas 15x70 mit Stativadapter', 'Fernglas 15x70 Astronomie Stativadapter', 'Riesige Linsen sammeln viel Licht und zeigen dir den Himmel heller, als du ihn je gesehen hast.'),
  ('perseids-sand-grains', 'de', 3, 'Sternenhimmel-Projektor für zu Hause', 'Sternenhimmel Projektor Planetarium', 'Bringt Sternbilder und die Milchstraße an die Zimmerdecke, auch wenn draußen Wolken sind.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('perseids-sand-grains', 'de', 1, 'NASA Science: Perseids', 'https://science.nasa.gov/solar-system/meteors-meteorites/perseids/'),
  ('perseids-sand-grains', 'de', 2, 'Space.com: 10 fascinating Perseid meteor shower facts', 'https://www.space.com/12592-top-10-perseid-meteor-shower-facts.html'),
  ('perseids-sand-grains', 'de', 3, 'Max-Planck-Gesellschaft: Sterne, die vom Himmel fallen', 'https://www.mpg.de/22456082/perseiden'),
  ('perseids-sand-grains', 'de', 4, 'Live Science: What Would Happen If Comet Swift-Tuttle Hit the Earth?', 'https://www.livescience.com/55484-swift-tuttle-collision-with-earth.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'perseids-sand-grains', 'en', 'perseids-sand-grains-59-km-per-second',
  'The Perseids are sand grains moving at 59 kilometers per second',
  'The brightest shooting stars of summer come from crumbs barely bigger than sand. Their trick is speed.',
  'Perseid shooting stars are mostly sand-sized dust grains from comet Swift-Tuttle, hitting the atmosphere at about 59 kilometers per second.',
  'Tonight is shooting star night. The Perseids are at their peak, and according to NASA you can see up to 100 meteors an hour under a dark sky. **The wild part: most of those streaks come from particles no bigger than a grain of sand.**

## Crumbs from a giant

The Perseids come from a comet called 109P/Swift-Tuttle. It was discovered in 1862 by Lewis Swift and Horace Tuttle. It takes 133 years to orbit the Sun once and last visited the inner solar system in 1992.

Along its path, the comet keeps shedding dust. Every August, Earth flies through that dust trail. According to Space.com, most of the particles are the size of grains of sand, some as large as peas or marbles.

The comet itself, on the other hand, is a monster: according to NASA, its nucleus is about 26 kilometers across. Space.com points out that this makes it about twice the size of the asteroid that wiped out the dinosaurs.

## Why a grain of sand shines so bright

The reason is speed. The particles hit the atmosphere at about 59 kilometers per second. That''s more than 200,000 kilometers per hour. According to Space.com, they heat up to more than 1650 degrees Celsius and burn up. According to the Max Planck Society, the meteor usually flashes at a height of around 80 kilometers, far above any airplane.

So what you''re seeing isn''t a falling star, but a speck of dust vaporizing in a split second.

## The tears of St. Lawrence

In German folk tradition, the Perseids have their own name: "Laurentiustränen", the tears of St. Lawrence, as the Max Planck Society notes. St. Lawrence''s feast day is August 10, right when the shooting stars are falling.

> No need to worry about the big brother: at its next close pass on August 5, 2126, Swift-Tuttle will stay about 23 million kilometers away from Earth, according to Live Science.

So lie down somewhere dark tonight. The comet delivers, you just have to look up.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('perseids-sand-grains', 'en', 1, 'Dobsonian telescope with 200 mm mirror', 'Dobsonian telescope 200mm', 'A big mirror for lunar craters, Saturn''s rings and galaxies, without a complicated mount.'),
  ('perseids-sand-grains', 'en', 2, '15x70 astronomy binoculars with tripod adapter', '15x70 astronomy binoculars tripod adapter', 'Huge lenses gather lots of light and show you the sky brighter than you have ever seen it.'),
  ('perseids-sand-grains', 'en', 3, 'Home planetarium star projector', 'home planetarium star projector', 'Puts constellations and the Milky Way on your ceiling, even when it is cloudy outside.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('perseids-sand-grains', 'en', 1, 'NASA Science: Perseids', 'https://science.nasa.gov/solar-system/meteors-meteorites/perseids/'),
  ('perseids-sand-grains', 'en', 2, 'Space.com: 10 fascinating Perseid meteor shower facts', 'https://www.space.com/12592-top-10-perseid-meteor-shower-facts.html'),
  ('perseids-sand-grains', 'en', 3, 'Max-Planck-Gesellschaft: Sterne, die vom Himmel fallen', 'https://www.mpg.de/22456082/perseiden'),
  ('perseids-sand-grains', 'en', 4, 'Live Science: What Would Happen If Comet Swift-Tuttle Hit the Earth?', 'https://www.livescience.com/55484-swift-tuttle-collision-with-earth.html');
