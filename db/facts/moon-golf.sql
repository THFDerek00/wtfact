-- WTFact-Fakt „Ein Astronaut hat 1971 auf dem Mond Golf gespielt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('moon-golf', '2026-09-03', 'sport', '⛳', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'moon-golf', 'de', 'golf-auf-dem-mond',
  'Ein Astronaut hat 1971 auf dem Mond Golf gespielt',
  'Alan Shepard schmuggelte einen Golfschläger zum Mond. Seine Schläge waren aber nicht ganz so weit, wie er dachte.',
  'Bei Apollo 14 im Februar 1971 schlug Alan Shepard mit einem selbstgebauten Golfschläger zwei Golfbälle auf dem Mond.',
  'Die meisten Menschen spielen Golf auf grünem Rasen. Alan Shepard wählte grauen Mondstaub. **Im Februar 1971 schlug der Astronaut bei der Mission Apollo 14 zwei Golfbälle auf dem Mond.** Golf ist damit eine der ganz wenigen Sportarten, die je auf einem anderen Himmelskörper betrieben wurden.

## Ein Schläger im Raumanzug

Shepard war nicht irgendwer. Er war der erste US-Amerikaner im Weltraum und bei Apollo 14 der Kommandant. Und er war Golffan.

Einen normalen Golfschläger konnte er natürlich nicht einfach mitnehmen. Also bastelte er sich einen: Er nahm den Kopf eines Eisens 6 der Marke Wilson und befestigte ihn am Griff eines Werkzeugs, das eigentlich zum Einsammeln von Mondgestein gedacht war. Laut dem National Air and Space Museum passte der Schlägerkopf so in eine Tasche seines Raumanzugs.

## „Meilen und Meilen“

Auf dem Mond war Shepard ziemlich zufrieden mit sich. Über seinen zweiten Schlag sagte er sinngemäß, der Ball fliege „Meilen und Meilen und Meilen“. Er selbst schätzte die Weite auf rund 200 Yards.

Die Wahrheit kam erst Jahrzehnte später ans Licht. Der Bildspezialist Andy Saunders wertete alte Fotos und Videoaufnahmen der Mission aus und verglich sie mit Satellitenbildern der NASA-Sonde Lunar Reconnaissance Orbiter. Ergebnis laut dem Magazin Astronomy: Der zweite Ball flog etwa **40 Yards**, also rund 37 Meter.

Fairerweise muss man sagen: In einem steifen Raumanzug und mit einem Werkzeuggriff als Schaft ist jeder Schlag eine kleine Meisterleistung.

> Den echten Schlägerkopf schenkte Shepard nach der Rückkehr dem Museum des US-Golfverbands USGA in New Jersey. Eine Replik übergab er 1975 dem Smithsonian.

## Golf ohne Luftwiderstand

Theoretisch ist der Mond ein Paradies für weite Schläge: Es gibt keine Luft, die bremst, und die Schwerkraft beträgt nur ein Sechstel der irdischen. Nur bringt das alles wenig, wenn man sich im Raumanzug kaum drehen kann.

Die beiden Bälle liegen bis heute dort oben. Das ist wohl der abgelegenste Golfplatz, den es gibt, und niemand hat dort je eingelocht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('moon-golf', 'de', 1, '3D-Mondlampe', '3D Mondlampe', 'Leuchtet wie ein kleiner Vollmond auf dem Nachttisch, mit dimmbarem Licht.'),
  ('moon-golf', 'de', 2, 'Puttingmatte für drinnen', 'Golf Puttingmatte Indoor', 'Ein kleines Grün fürs Wohnzimmer, für Golfrunden ohne Raumanzug.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('moon-golf', 'de', 1, 'Smithsonian National Air and Space Museum: Head, Golf Club, Apollo 14, Replica', 'https://airandspace.si.edu/collection-objects/head-golf-club-apollo-14-replica/nasm_A19751468000'),
  ('moon-golf', 'de', 2, 'Astronomy: Alan Shepard smacked golf balls on the Moon — and now we know where they landed', 'https://www.astronomy.com/observing/alan-shepard-smacked-golf-balls-on-the-moon-and-now-we-know-where-they-landed/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'moon-golf', 'en', 'golf-on-the-moon',
  'An astronaut played golf on the Moon in 1971',
  'Alan Shepard smuggled a golf club to the Moon. His shots just didn''t go quite as far as he thought.',
  'During Apollo 14 in February 1971, Alan Shepard used a homemade golf club to hit two golf balls on the Moon.',
  'Most people play golf on green grass. Alan Shepard picked gray moon dust. **In February 1971, during the Apollo 14 mission, the astronaut hit two golf balls on the Moon.** That makes golf one of the very few sports ever played on another world.

## A club in a spacesuit

Shepard wasn''t just anyone. He was the first American in space and the commander of Apollo 14. He was also a golf fan.

Obviously, he couldn''t just pack a regular golf club. So he built one: he took the head of a Wilson six-iron and attached it to the handle of a tool that was actually meant for collecting lunar samples. According to the National Air and Space Museum, that let him carry the club head in a pocket of his spacesuit.

## "Miles and miles"

On the Moon, Shepard was pretty pleased with himself. About his second shot, he said the ball went "miles and miles and miles". His own estimate was about 200 yards.

The truth only came out decades later. Image specialist Andy Saunders analyzed old photos and video from the mission and compared them with satellite images from NASA''s Lunar Reconnaissance Orbiter. The result, according to Astronomy magazine: the second ball flew about **40 yards**, roughly 37 meters.

To be fair: in a stiff spacesuit, with a tool handle for a shaft, every swing is a small miracle.

> After he got back, Shepard gave the real club head to the museum of the US golf association, the USGA, in New Jersey. He gave a replica to the Smithsonian in 1975.

## Golf without air resistance

In theory, the Moon is paradise for long shots: there''s no air to slow the ball down, and gravity is only one sixth of Earth''s. But that doesn''t help much if you can barely turn in a spacesuit.

Both balls are still up there. It might be the most remote golf course in existence, and nobody has ever sunk a putt on it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('moon-golf', 'en', 1, '3D moon lamp', '3D moon lamp', 'Glows like a tiny full moon on your nightstand, with dimmable light.'),
  ('moon-golf', 'en', 2, 'Indoor putting mat', 'indoor golf putting mat', 'A little green for your living room, for rounds of golf without a spacesuit.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('moon-golf', 'en', 1, 'Smithsonian National Air and Space Museum: Head, Golf Club, Apollo 14, Replica', 'https://airandspace.si.edu/collection-objects/head-golf-club-apollo-14-replica/nasm_A19751468000'),
  ('moon-golf', 'en', 2, 'Astronomy: Alan Shepard smacked golf balls on the Moon — and now we know where they landed', 'https://www.astronomy.com/observing/alan-shepard-smacked-golf-balls-on-the-moon-and-now-we-know-where-they-landed/');
