-- WTFact-Fakt „Die NASA ließ ein Stück Raumschiff auf den Mond krachen, und er bebte fast eine Stunde nach“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('moon-rings-like-bell', NULL, 'space', '🔔', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'moon-rings-like-bell', 'de', 'mond-vibrierte-fast-eine-stunde',
  'Die NASA ließ ein Stück Raumschiff auf den Mond krachen, und er bebte fast eine Stunde nach',
  'Ein gezielter Crash mit der Mondfähre sollte ein Messgerät testen. Das Ergebnis überraschte die Forschenden.',
  '1969 ließ die NASA die ausgediente Mondfähre von Apollo 12 auf den Mond stürzen, und das Seismometer dort zeichnete danach fast eine Stunde lang Erschütterungen auf.',
  'Was macht man mit einer Mondfähre, die man nicht mehr braucht? Die NASA hatte 1969 eine klare Antwort: draufwerfen. Auf den Mond. Mit voller Absicht.

## Ein Crash als Experiment

Bei der Mission Apollo 12 stellten die Astronauten ein Seismometer auf den Mond, ein Gerät, das Erschütterungen misst. Um es zu eichen, brauchte man einen Stoß, dessen Stärke und Ort man genau kannte.

Also schickte die Bodenkontrolle der Aufstiegsstufe der Mondfähre Intrepid, nachdem die Crew wieder ins Mutterschiff umgestiegen war, einen Befehl: Die Triebwerke feuerten laut NASA 83 Sekunden lang, die Fähre verließ ihre Umlaufbahn und schlug etwa 40 Meilen, also rund 64 Kilometer, vom Seismometer entfernt auf. Laut Popular Science hatte der Einschlag ungefähr die Wucht von einer Tonne TNT.

## Der Mond hört nicht auf zu zittern

Dann kam die Überraschung. Laut NASA zeichnete das Seismometer nach dem Einschlag fast eine Stunde lang Signale auf. Popular Science beschreibt, dass die Welle innerhalb von acht Minuten ihren Höhepunkt erreichte und erst nach etwa einer Stunde ganz abklang. Es war, so das Magazin, fast so, als würde der Mond wie eine Glocke läuten.

Auf der Erde wäre so ein Beben viel schneller vorbei. Der Grund ist Wasser: Feuchtigkeit im Gestein schluckt bei uns einen großen Teil der Energie. Der Mond dagegen ist knochentrocken und starr. Ohne Wasser, das bremst, laufen die Schwingungen immer wieder durch das Gestein hin und her, bis sie sich endlich totlaufen.

> Bonusfakt: Bei Apollo 13 ließ die NASA eine ausgebrannte Raketenstufe einschlagen. Deren Erschütterungen waren laut Popular Science etwa 30-mal stärker und viermal länger als beim Crash von Apollo 12.

Ein Mond, angeschlagen wie eine Glocke, und die Wissenschaft hat mitgeschrieben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('moon-rings-like-bell', 'de', 1, 'Mondlampe mit 3D-Oberfläche', 'Mondlampe 3D Mond Nachtlicht', 'Krater für Krater nachgebildet, sorgt sie abends für sanftes Mondlicht im Zimmer.'),
  ('moon-rings-like-bell', 'de', 2, 'Bildband über die Apollo-Missionen', 'Apollo Mondlandung Bildband', 'Die großen Mondflüge in Fotos, von den Startrampen bis zu den Spuren im Mondstaub.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('moon-rings-like-bell', 'de', 1, 'NASA: 50 Years Ago: Apollo 12 – The Journey Home', 'https://www.nasa.gov/feature/50-years-ago-apollo-12-the-journey-home'),
  ('moon-rings-like-bell', 'de', 2, 'Popular Science: Does the Moon Sound Like a Bell?', 'https://www.popsci.com/does-moon-sound-like-bell/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'moon-rings-like-bell', 'en', 'nasa-crashed-lander-moon-shook-an-hour',
  'NASA crashed part of a spacecraft into the Moon, and it kept shaking for almost an hour',
  'A deliberate crash with a lunar module was meant to test an instrument. The result surprised scientists.',
  'In 1969, NASA crashed Apollo 12''s discarded lunar module into the Moon, and the seismometer there recorded tremors for nearly an hour afterward.',
  'What do you do with a lunar module you no longer need? In 1969, NASA had a clear answer: throw it. At the Moon. On purpose.

## A crash as an experiment

During the Apollo 12 mission, astronauts set up a seismometer on the Moon, an instrument that measures ground shaking. To calibrate it, scientists needed a jolt whose strength and location they knew exactly.

So once the crew had moved back into the command module, Mission Control sent a command to the ascent stage of the lunar module Intrepid. According to NASA, its thrusters fired for 83 seconds, it dropped out of orbit and struck the surface about 40 miles, or roughly 64 kilometers, from the seismometer. Popular Science puts the impact at roughly the force of one ton of TNT.

## The Moon wouldn''t stop shaking

Then came the surprise. According to NASA, the seismometer recorded signals for nearly an hour after the impact. Popular Science describes how the wave peaked within eight minutes and took about an hour to fully fade. It was, as the magazine puts it, almost as if the Moon was ringing like a bell.

On Earth, a quake like that would be over much faster. The reason is water: moisture in rock soaks up a large part of the energy. The Moon, by contrast, is bone dry and rigid. With no water to dampen them, the vibrations keep bouncing back and forth through the rock until they finally die out.

> Bonus fact: For Apollo 13, NASA crashed a spent rocket stage into the Moon. According to Popular Science, its shockwaves were about 30 times greater and four times longer than those from the Apollo 12 crash.

A Moon struck like a bell, with science taking notes.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('moon-rings-like-bell', 'en', 1, '3D moon lamp', '3D moon lamp night light', 'Recreated crater by crater, it fills your room with soft moonlight at night.'),
  ('moon-rings-like-bell', 'en', 2, 'Photo book about the Apollo missions', 'Apollo moon missions photo book', 'The great Moon flights in pictures, from the launch pads to the footprints in lunar dust.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('moon-rings-like-bell', 'en', 1, 'NASA: 50 Years Ago: Apollo 12 – The Journey Home', 'https://www.nasa.gov/feature/50-years-ago-apollo-12-the-journey-home'),
  ('moon-rings-like-bell', 'en', 2, 'Popular Science: Does the Moon Sound Like a Bell?', 'https://www.popsci.com/does-moon-sound-like-bell/');
