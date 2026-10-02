-- WTFact-Fakt „Flamingos sind nur pink, weil sie es essen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('flamingo-pink', '2026-09-06', 'nature', '🦩', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'flamingo-pink', 'de', 'flamingos-rosa',
  'Flamingos sind nur pink, weil sie es essen',
  'Flamingo-Küken schlüpfen grau-weiß. Ihre berühmte Farbe kommt erst mit der Nahrung.',
  'Flamingos werden grau-weiß geboren und erst durch Farbstoffe in ihrem Futter rosa.',
  'Kaum ein Tier ist so sehr mit einer Farbe verbunden wie der Flamingo. Pink ist quasi sein Markenzeichen. Umso überraschender: **Flamingos kommen gar nicht pink zur Welt.** Die Farbe müssen sie sich erst anfuttern.

## Du bist, was du isst, ganz wörtlich

Flamingos fressen Algen und kleine Krebstiere wie Salinenkrebse. In dieser Nahrung stecken **Carotinoide**, natürliche Farbstoffe, die auch Karotten orange machen. Der Flamingo filtert sie mit seinem Schnabel aus dem Wasser und verarbeitet sie weiter.

In der Leber werden die Carotinoide umgewandelt und anschließend in Haut und Federn eingelagert. Je mehr der Vogel davon abbekommt, desto kräftiger wird seine Farbe. Ein Flamingo, der lange keine passende Nahrung findet, kann deshalb mit der Zeit blasser werden.

## Graue Küken mit geradem Schnabel

Frisch geschlüpfte Flamingos sehen ganz anders aus als ihre Eltern. Laut dem Smithsonian''s National Zoo haben sie **grau-weiße Daunen und einen geraden Schnabel**. Erst nach und nach wachsen ihnen Federn, und es dauert mehrere Jahre, bis sie das typische Rosa und den geknickten Schnabel der Erwachsenen haben.

Bis dahin werden die Küken von beiden Eltern gefüttert, und zwar mit einer Art Milch. Diese sogenannte Kropfmilch bilden Männchen und Weibchen im oberen Verdauungstrakt. Sie ist voller Proteine und Fett.

## Rosa ist nicht gleich rosa

Weltweit gibt es sechs Flamingoarten, und nicht alle sehen gleich aus. Manche sind blassrosa, andere leuchten fast lachsrot. Wie intensiv die Farbe ist, hängt stark davon ab, wie viele Carotinoide ihre jeweilige Nahrung liefert.

> Flamingos stehen oft auf einem Bein. Laut dem Smithsonian''s National Zoo ist das möglicherweise einfach weniger anstrengend und hilft außerdem, Körperwärme zu sparen.

Ein Flamingo ohne seine Lieblingsspeise wäre also ziemlich unscheinbar. Pink ist bei ihm kein Gen, sondern ein Speiseplan.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('flamingo-pink', 'de', 1, 'Aufblasbarer Flamingo als Schwimmring', 'Flamingo Schwimmring aufblasbar', 'Der Sommer-Klassiker für Pool und Badesee. Auffälliger geht Entspannen kaum.'),
  ('flamingo-pink', 'de', 2, 'Flamingo-Lampe als Neon-Deko', 'Flamingo Neon Lampe LED', 'Taucht dein Zimmer in rosa Licht. Ein Hingucker auf Regal oder Schreibtisch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('flamingo-pink', 'de', 1, 'Wikipedia: Flamingos', 'https://de.wikipedia.org/wiki/Flamingos'),
  ('flamingo-pink', 'de', 2, 'Smithsonian''s National Zoo: Why Are Flamingos Pink? And Other Flamingo Facts', 'https://nationalzoo.si.edu/animals/news/why-are-flamingos-pink-and-other-flamingo-facts'),
  ('flamingo-pink', 'de', 3, 'National Geographic Kids: Flamingo', 'https://kids.nationalgeographic.com/animals/birds/facts/flamingo');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'flamingo-pink', 'en', 'flamingos-pink',
  'Flamingos are only pink because of what they eat',
  'Flamingo chicks hatch grayish white. Their famous color comes from their food.',
  'Flamingos hatch grayish white and only turn pink thanks to pigments in their food.',
  'Hardly any animal is as tied to one color as the flamingo. Pink is basically its brand. Which makes this surprising: **flamingos aren''t born pink.** They have to eat their way there.

## You are what you eat, literally

Flamingos eat algae and tiny crustaceans like brine shrimp. That food is packed with **carotenoids**, natural pigments, the same kind that make carrots orange. The flamingo filters them out of the water with its bill and processes them.

Enzymes in the liver break the carotenoids down into pigments, which end up in the bird''s skin and feathers. The more it gets, the stronger its color. A flamingo that goes without the right food for a long time can gradually fade.

## Gray chicks with straight bills

Freshly hatched flamingos look nothing like their parents. According to Smithsonian''s National Zoo, they have **white-gray downy feathers and straight bills**. Their feathers come in bit by bit, and it takes several years for them to get the signature pink and the bent bill of the adults.

Until then, both parents feed the chicks a kind of milk. This crop milk is made by males and females alike in their upper digestive tract, and it''s full of protein and fat.

## Not all pinks are equal

There are six flamingo species worldwide, and they don''t all look the same. Some are pale pink, others glow almost salmon red. How intense the color gets depends largely on how many carotenoids their particular diet provides.

> Flamingos often stand on one leg. According to Smithsonian''s National Zoo, that may simply be less tiring, and it helps them save body heat.

A flamingo without its favorite food would be pretty plain. For this bird, pink isn''t in the genes. It''s on the menu.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('flamingo-pink', 'en', 1, 'Inflatable flamingo pool float', 'inflatable flamingo pool float', 'The summer classic for pools and lakes. Relaxing has never looked louder.'),
  ('flamingo-pink', 'en', 2, 'Flamingo neon LED light', 'flamingo neon sign LED light', 'Bathes your room in pink light. A great eye-catcher for a shelf or desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('flamingo-pink', 'en', 1, 'Wikipedia: Flamingo', 'https://en.wikipedia.org/wiki/Flamingo'),
  ('flamingo-pink', 'en', 2, 'Smithsonian''s National Zoo: Why Are Flamingos Pink? And Other Flamingo Facts', 'https://nationalzoo.si.edu/animals/news/why-are-flamingos-pink-and-other-flamingo-facts'),
  ('flamingo-pink', 'en', 3, 'National Geographic Kids: Flamingo', 'https://kids.nationalgeographic.com/animals/birds/facts/flamingo');
