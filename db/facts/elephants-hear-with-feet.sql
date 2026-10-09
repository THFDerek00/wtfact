-- WTFact-Fakt „Elefanten spüren Botschaften über ihre Füße“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('elephants-hear-with-feet', '2026-10-11T08:00:00+02:00', 'animals', '🐘', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'elephants-hear-with-feet', 'de', 'elefanten-spueren-botschaften-mit-den-fuessen',
  'Elefanten spüren Botschaften über ihre Füße',
  'Elefanten rufen sich nicht nur durch die Luft etwas zu. Ein Teil ihrer Gespräche läuft durch den Boden.',
  'Elefanten erzeugen mit tiefen Rufen Vibrationen im Boden, die sich über mehr als 2 Kilometer ausbreiten können, und Forschende vermuten, dass sie diese über Füße und Rüssel wahrnehmen.',
  'Wenn ein Elefant ruft, hörst du oft nur einen Teil davon. Ein anderer Teil wandert durch die Erde, und andere Elefanten können ihn offenbar spüren.

## Rufe, die durch den Boden laufen

Elefanten kommunizieren mit tiefem Grollen, dem sogenannten Rumble. Laut Physics World liegt der Grundton dieser Rufe unter 30 Hertz und damit im Infraschall, den Menschen nicht hören können. Nur einige Obertöne bekommen wir mit.

Die Stanford-Forscherin Caitlin O''Connell-Rodwell hat sich mit Kollegen angesehen, was dabei im Boden passiert. Für eine Studie von 2004 legten sie laut Physics World eine Reihe von 57 Geophonen aus. Das sind Bodensensoren, und die Reihe reichte etwa 175 Meter vom Gehege dreier afrikanischer Elefanten weg. Ihr Ergebnis: Die Rufe erzeugen seismische Wellen, die sich durch den Boden ausbreiten. Laut Computermodellen können sie dabei mehr als 2 Kilometer weit kommen.

## Hören mit den Füßen

Spannend ist, wie Elefanten diese Signale aufnehmen könnten. Laut ScienceDaily gibt es zwei Ideen. Entweder gelangen die Vibrationen über die Knochen vom Fuß bis ins Ohr, oder Tastrezeptoren in den Füßen nehmen sie wahr, ähnlich wie im Rüssel. Die Forschenden halten auch eine Kombination für möglich. Ganz bewiesen ist das noch nicht.

Hinweise aus dem Freiland gibt es aber. Laut einem Bericht der Stanford University spielte O''Connell-Rodwell im Etosha-Nationalpark in Namibia Paarungsrufe von Elefantenkühen über einen Lautsprecher ab, der mit dem Boden verbunden war und so auch Vibrationen erzeugte. Die Bullen blieben stehen, drückten den Rüssel auf den Boden und richteten sich quer zur Richtung des Signals aus.

> Bonusfakt: Laut ScienceDaily wird anekdotisch berichtet, dass sich Elefanten in Angola auf Regen zubewegen, der rund 100 Meilen entfernt fällt. Wie sie das merken, ist nicht geklärt.

## Ein Netzwerk unter deinen Füßen

Das Bild vom schweren, plumpen Elefanten passt also nicht ganz. Unter jedem dieser riesigen Füße steckt womöglich ein empfindlicher Sensor. Laut ScienceDaily beschäftigt sich O''Connell-Rodwell mit dem Thema schon seit den frühen 1990er-Jahren, ihre Feldforschung begann 1992.

Was für uns nur Stille ist, könnte für eine Elefantenherde ein ganzes Gespräch sein.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('elephants-hear-with-feet', 'de', 1, 'Elefanten-Kuscheltier', 'Elefant Kuscheltier Plüsch', 'Großer Rüssel, weiche Ohren und ein Klassiker unter den Plüschtieren.'),
  ('elephants-hear-with-feet', 'de', 2, 'Sachbuch über die Sinne der Tiere', 'Buch Sinne der Tiere', 'Erklärt, wie Tiere Dinge wahrnehmen, von denen wir nichts mitbekommen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('elephants-hear-with-feet', 'de', 1, 'Physics World: Elephants turn to seismic communication', 'https://physicsworld.com/a/elephants-turn-to-seismic-communication/'),
  ('elephants-hear-with-feet', 'de', 2, 'ScienceDaily: Elephants Pick Up Good Vibrations -- Through Their Feet', 'https://www.sciencedaily.com/releases/2001/03/010312071729.htm'),
  ('elephants-hear-with-feet', 'de', 3, 'Stanford University: When love beckons, male elephants can feel it in their bones', 'https://biox.stanford.edu/node/2683');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'elephants-hear-with-feet', 'en', 'elephants-sense-messages-through-feet',
  'Elephants pick up messages through their feet',
  'Elephants don''t just call to each other through the air. Part of their conversations runs through the ground.',
  'Elephant calls create vibrations in the ground that can travel more than 2 kilometers, and researchers think elephants sense them through their feet and trunks.',
  'When an elephant calls, you often only hear part of it. Another part travels through the earth, and other elephants apparently can feel it.

## Calls that run through the ground

Elephants communicate with deep rumbles. According to Physics World, the fundamental frequency of these calls is below 30 hertz, which is infrasound that humans can''t hear. We only pick up some of the overtones.

Stanford researcher Caitlin O''Connell-Rodwell and colleagues looked at what happens in the ground. For a 2004 study, according to Physics World, they laid out a line of 57 geophones, sensors that pick up ground motion, stretching about 175 meters from the enclosure of three African elephants. Their result: the calls create seismic waves that spread through the ground. According to computer models, they can travel more than 2 kilometers.

## Listening with your feet

The exciting part is how elephants might pick up these signals. According to ScienceDaily, there are two ideas. Either the vibrations travel through the bones from the foot to the ear, or touch receptors in the feet sense them, similar to those in the trunk. The researchers think it could be a combination. It hasn''t been fully proven yet.

There are clues from the field, though. According to a Stanford University report, O''Connell-Rodwell played female elephants'' mating calls in Etosha National Park in Namibia through a speaker coupled to the ground, so it sent out vibrations as well as sound. The bulls stopped, pressed their trunks to the ground and turned sideways to the direction of the signal.

> Bonus fact: According to ScienceDaily, there are anecdotal reports of elephants in Angola moving toward rain falling about 100 miles away. How they notice it is unclear.

## A network under your feet

So the image of the heavy, clumsy elephant doesn''t quite fit. Each of those huge feet may hide a sensitive sensor. According to ScienceDaily, O''Connell-Rodwell has worked on the topic since the early 1990s, and her fieldwork began in 1992.

What sounds like silence to us could be a whole conversation for an elephant herd.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('elephants-hear-with-feet', 'en', 1, 'Elephant plush toy', 'elephant plush stuffed animal', 'Big trunk, soft ears and a classic among plush toys.'),
  ('elephants-hear-with-feet', 'en', 2, 'Book about animal senses', 'animal senses book', 'Explains how animals perceive things we never notice.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('elephants-hear-with-feet', 'en', 1, 'Physics World: Elephants turn to seismic communication', 'https://physicsworld.com/a/elephants-turn-to-seismic-communication/'),
  ('elephants-hear-with-feet', 'en', 2, 'ScienceDaily: Elephants Pick Up Good Vibrations -- Through Their Feet', 'https://www.sciencedaily.com/releases/2001/03/010312071729.htm'),
  ('elephants-hear-with-feet', 'en', 3, 'Stanford University: When love beckons, male elephants can feel it in their bones', 'https://biox.stanford.edu/node/2683');
