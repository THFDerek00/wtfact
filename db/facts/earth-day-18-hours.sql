-- WTFact-Fakt „Vor 1,4 Milliarden Jahren dauerte ein Tag nur gut 18 Stunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('earth-day-18-hours', '2026-10-04T04:00:53+02:00', 'science', '🌙', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'earth-day-18-hours', 'de', 'erdtag-dauerte-nur-18-stunden',
  'Vor 1,4 Milliarden Jahren dauerte ein Tag nur gut 18 Stunden',
  'Früher drehte sich die Erde deutlich schneller, und der Grund dafür hängt jede Nacht am Himmel.',
  'Vor 1,4 Milliarden Jahren dauerte ein Tag auf der Erde nur etwa 18,7 Stunden, zumindest teilweise, weil der Mond näher war.',
  'Du hättest gern mehr Stunden am Tag? Dann bist du nur etwa 1,4 Milliarden Jahre zu spät geboren. Damals war es genau andersrum: **Ein Tag auf der Erde dauerte nur gut 18 Stunden, laut Studie etwa 18,7.** Schuld daran ist der Mond.

## Der Mond war näher dran

Die Zahl stammt aus einer Studie von Stephen Meyers (University of Wisconsin–Madison) und Alberto Malinverno (Columbia University), erschienen 2018 in den „Proceedings of the National Academy of Sciences“. Ihr Ergebnis: Vor 1,4 Milliarden Jahren war der Mond nur etwa **341.000 Kilometer** von der Erde entfernt. Heute sind es im Schnitt rund **385.000 Kilometer**.

Laut den Forschern lag der kürzere Tag zumindest teilweise daran, dass der Mond näher war und die Drehung der Erde beeinflusste. Meyers vergleicht das mit einer Eiskunstläuferin bei der Pirouette: Streckt sie die Arme aus, dreht sie sich langsamer. Der Mond ist sozusagen der Arm der Erde, und der wandert seit Ewigkeiten nach außen.

## Uhren aus Stein

Wie misst man einen Tag, der vor über einer Milliarde Jahren vorbei war? Mit Gestein. Die Erde schwankt in ihrer Bahn und Achsneigung in regelmäßigen Zyklen, den sogenannten Milanković-Zyklen. Die steuern, wie das Sonnenlicht auf der Erde verteilt wird, und hinterlassen Muster in Gesteinsschichten. Das Team hat diese Muster statistisch ausgewertet, unter anderem in der **1,4 Milliarden Jahre alten Xiamaling-Formation in Nordchina**. Daraus ließen sich Tageslänge und Mondabstand von damals zurückrechnen.

## Er haut immer noch ab

Der Mond ist nicht fertig mit Weglaufen. Laut NASA wächst der Abstand zwischen Erde und Mond um etwa **3,8 Zentimeter pro Jahr**. Das liegt an den Gezeiten: Die Anziehung zwischen den Flutbergen der Erde und dem Mond bremst die Erddrehung und zieht den Mond gleichzeitig auf seiner Bahn nach vorn. Die Erde wird langsamer, der Mond driftet nach außen. Deshalb werden auch unsere Tage weiterhin minimal länger.

> Gemessen wird der Abstand mit Lasern: Teleskope in New Mexico, Frankreich, Italien und Deutschland schießen Laserpulse auf Spiegel, die Astronauten von Apollo 11, 14 und 15 auf dem Mond aufgestellt haben.

Dein Wecker klingelt also jeden Morgen in einem Tag, der ein winziges Stück länger ist als je zuvor. Ausschlafen wird trotzdem nicht leichter.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('earth-day-18-hours', 'de', 1, '3D-Mondlampe', '3D Mond Lampe LED', 'Eine Leuchtkugel mit detailgetreuer Mondoberfläche, die als Nachtlicht oder Deko im Zimmer schön warm leuchtet.'),
  ('earth-day-18-hours', 'de', 2, 'Sachbuch über den Mond', 'Sachbuch Mond Astronomie', 'Erklärt anschaulich, wie der Mond entstanden ist, wie er die Gezeiten macht und was die Mondlandungen herausgefunden haben.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('earth-day-18-hours', 'de', 1, 'UW–Madison News: Thank the moon for Earth''s lengthening day', 'https://news.wisc.edu/thank-the-moon-for-earths-lengthening-day'),
  ('earth-day-18-hours', 'de', 2, 'State of the Planet: Days on Earth Are Getting Longer. You Can Thank the Moon, Not the Seasons.', 'https://news.climate.columbia.edu/2018/06/04/days-getting-longer-moon/'),
  ('earth-day-18-hours', 'de', 3, 'NASA: The Apollo Experiment That Keeps on Giving', 'https://www.nasa.gov/solar-system/the-apollo-experiment-that-keeps-on-giving/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'earth-day-18-hours', 'en', 'earth-day-was-only-18-hours',
  '1.4 billion years ago, a day lasted just over 18 hours',
  'Earth used to spin a lot faster, and the reason is hanging in the night sky.',
  '1.4 billion years ago, a day on Earth lasted only about 18.7 hours, at least partly because the Moon was closer.',
  'Ever wished you had more hours in the day? Then you were born about 1.4 billion years too late. Back then it was the other way around: **a day on Earth lasted just over 18 hours, about 18.7 according to the study.** Blame the Moon.

## The Moon was closer

The number comes from a study by Stephen Meyers (University of Wisconsin–Madison) and Alberto Malinverno (Columbia University), published in 2018 in the "Proceedings of the National Academy of Sciences." Their result: 1.4 billion years ago, the Moon was only about **341,000 kilometers** from Earth. Today the average distance is around **385,000 kilometers**.

According to the researchers, the shorter day was at least partly because the Moon was closer and changed the way Earth spun. Meyers compares it to a figure skater spinning: stretch your arms out and you slow down. The Moon is basically Earth''s arm, and it has been drifting outward for ages.

## Clocks made of rock

How do you measure a day that ended more than a billion years ago? With rocks. Earth''s orbit and tilt wobble in regular cycles called Milankovitch cycles. They control how sunlight is distributed on Earth and leave patterns in layers of rock. The team analyzed these patterns statistically, including in the **1.4 billion-year-old Xiamaling Formation in northern China**. From that, they worked out the length of the day and the Earth–Moon distance back then.

## It''s still leaving

The Moon isn''t done running away. According to NASA, the distance between Earth and the Moon grows by about **3.8 centimeters (1.5 inches) a year**. Tides are behind it: the pull between Earth''s tidal bulges and the Moon slows Earth''s rotation and at the same time pulls the Moon forward along its orbit. Earth slows down, the Moon drifts outward. That''s why our days keep getting a tiny bit longer.

> The distance is measured with lasers: telescopes in New Mexico, France, Italy and Germany fire laser pulses at reflectors that Apollo 11, 14 and 15 astronauts set up on the Moon.

So every morning your alarm goes off in a day that''s a tiny bit longer than ever before. Sleeping in still doesn''t get any easier.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('earth-day-18-hours', 'en', 1, '3D Moon lamp', '3D moon lamp LED', 'A glowing globe with a detailed lunar surface that works as a night light or room decoration.'),
  ('earth-day-18-hours', 'en', 2, 'Popular science book about the Moon', 'popular science book about the moon', 'Explains in plain language how the Moon formed, how it drives the tides and what the Moon landings revealed.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('earth-day-18-hours', 'en', 1, 'UW–Madison News: Thank the moon for Earth''s lengthening day', 'https://news.wisc.edu/thank-the-moon-for-earths-lengthening-day'),
  ('earth-day-18-hours', 'en', 2, 'State of the Planet: Days on Earth Are Getting Longer. You Can Thank the Moon, Not the Seasons.', 'https://news.climate.columbia.edu/2018/06/04/days-getting-longer-moon/'),
  ('earth-day-18-hours', 'en', 3, 'NASA: The Apollo Experiment That Keeps on Giving', 'https://www.nasa.gov/solar-system/the-apollo-experiment-that-keeps-on-giving/');
