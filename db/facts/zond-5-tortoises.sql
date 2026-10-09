-- WTFact-Fakt „Die ersten Erdbewohner, die den Mond umrundeten, waren 2 Schildkröten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('zond-5-tortoises', '2026-10-11T05:00:00+02:00', 'space', '🐢', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zond-5-tortoises', 'de', 'schildkroeten-flogen-1968-um-den-mond',
  'Die ersten Erdbewohner, die den Mond umrundeten, waren 2 Schildkröten',
  'Noch vor den Apollo-Astronauten flogen zwei Reptilien um den Mond, und zwar in einer sowjetischen Kapsel.',
  'Im September 1968 umrundeten 2 Steppenschildkröten an Bord der sowjetischen Sonde Zond 5 den Mond und kamen lebend zur Erde zurück, Monate vor den ersten Menschen.',
  'Wer als Erstes um den Mond geflogen ist? Die meisten denken an die Crew von Apollo 8. Die Antwort ist langsamer, gepanzerter und frisst Salat.

## Passagiere mit Panzer

Im September 1968 lag die Sowjetunion im Wettrennen zum Mond, und sie wollte wissen, ob Lebewesen einen Flug dorthin und zurück überstehen. Also schickte sie die Sonde Zond 5 los, an Bord: 2 Steppenschildkröten. Laut Guinness World Records waren es Vierzehenschildkröten, wissenschaftlich Testudo horsfieldii, und sie hatten keine Namen.

Ganz allein waren sie nicht. Laut Astronomy flogen auch ein paar Würmer, Fliegen und Pflanzensamen mit. Am 18. September 1968 umrundete Zond 5 den Mond, und damit waren die Schildkröten die ersten Tiere, die das je geschafft haben.

## Rückkehr mit Umweg

Geplant war eine Landung in Kasachstan. Stattdessen ging die Kapsel am 21. September im Indischen Ozean nieder. Die Schildkröten hat das offenbar nicht groß gestört. Laut Guinness hatten sie nach der Bergung etwa 10 Prozent ihres Körpergewichts verloren, zeigten aber keine weiteren Schäden und hatten weiterhin Appetit.

Für die Raumfahrt war das ein wichtiger Schritt. Zond 5 sollte zeigen, dass ein bemannter Flug zum Mond möglich ist. Die Menschen folgten wenige Monate später: Laut Astronomy war Apollo 8 die erste Mission mit Crew, die um den Mond flog.

Die erste Mondumrundung durch Lebewesen von der Erde ging also nicht an einen Astronauten mit Helm, sondern an zwei Reptilien, die für einen Meter wahrscheinlich eine halbe Minute brauchen.

> Bonusfakt: Laut Guinness war Zond 5 auch die erste Raumsonde überhaupt, die am Mond vorbeiflog und wieder zur Erde zurückkehrte.

Das Wettrennen zum Mond hat eine Schildkröte gewonnen. Äsop wäre stolz.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zond-5-tortoises', 'de', 1, 'Plüschschildkröte', 'Schildkröte Kuscheltier Plüsch', 'Weich, knuffig und mit Panzer, der perfekte Mitbewohner fürs Sofa.'),
  ('zond-5-tortoises', 'de', 2, 'Sachbuch über die Geschichte der Raumfahrt', 'Geschichte der Raumfahrt Buch', 'Vom ersten Satelliten bis zur Mondlandung, mit vielen Fotos und Hintergründen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zond-5-tortoises', 'de', 1, 'Guinness World Records: First animals to circle the Moon', 'https://www.guinnessworldrecords.com/world-records/385311-first-animals-to-circle-the-moon'),
  ('zond-5-tortoises', 'de', 2, 'Astronomy: First earthlings around the Moon were two Soviet tortoises', 'https://www.astronomy.com/space-exploration/first-earthlings-around-the-moon-were-two-soviet-tortoises/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zond-5-tortoises', 'en', 'tortoises-flew-around-moon-1968',
  'The first Earthlings to circle the Moon were 2 tortoises',
  'Before the Apollo astronauts, two reptiles flew around the Moon in a Soviet capsule.',
  'In September 1968, 2 tortoises aboard the Soviet probe Zond 5 circled the Moon and came back to Earth alive, months before the first humans did.',
  'Who was first to fly around the Moon? Most people think of the Apollo 8 crew. The real answer is slower, armored and eats lettuce.

## Passengers with shells

In September 1968, the Soviet Union was in the race to the Moon, and it wanted to know whether living things could survive a trip there and back. So it launched the probe Zond 5 with 2 tortoises on board. According to Guinness World Records, they were Horsfield''s tortoises, Testudo horsfieldii, and they didn''t have names.

They weren''t completely alone. According to Astronomy, some worms, flies and plant seeds came along too. On September 18, 1968, Zond 5 circled the Moon, which made the tortoises the first animals ever to do so.

## A detour on the way home

The plan was to land in Kazakhstan. Instead, the capsule came down in the Indian Ocean on September 21. The tortoises apparently took it in stride. According to Guinness, after recovery they had lost about 10 percent of their body weight but showed no other ill effects and still had their appetite.

For spaceflight, this was an important step. Zond 5 was meant to show that a crewed flight to the Moon was possible. Humans followed a few months later: according to Astronomy, Apollo 8 was the first crewed mission to fly around the Moon.

So the first lap around the Moon by living things from Earth didn''t go to an astronaut in a helmet. It went to two reptiles that probably need half a minute to cover a meter.

> Bonus fact: According to Guinness, Zond 5 was also the first spacecraft ever to fly past the Moon and return to Earth.

The race to the Moon was won by a tortoise. Aesop would be proud.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zond-5-tortoises', 'en', 1, 'Plush tortoise', 'tortoise plush stuffed animal', 'Soft, cuddly and armored, the perfect roommate for your couch.'),
  ('zond-5-tortoises', 'en', 2, 'Book on the history of spaceflight', 'history of space exploration book', 'From the first satellite to the Moon landing, with lots of photos and background stories.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zond-5-tortoises', 'en', 1, 'Guinness World Records: First animals to circle the Moon', 'https://www.guinnessworldrecords.com/world-records/385311-first-animals-to-circle-the-moon'),
  ('zond-5-tortoises', 'en', 2, 'Astronomy: First earthlings around the Moon were two Soviet tortoises', 'https://www.astronomy.com/space-exploration/first-earthlings-around-the-moon-were-two-soviet-tortoises/');
