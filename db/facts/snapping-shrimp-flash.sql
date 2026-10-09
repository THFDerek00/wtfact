-- WTFact-Fakt „Dieser Krebs schnappt so heftig zu, dass das Wasser kurz aufleuchtet“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES ('snapping-shrimp-flash', NULL, 'animals', '🦐', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'snapping-shrimp-flash', 'de', 'knallkrebs-schere-wasser-leuchtet',
  'Dieser Krebs schnappt so heftig zu, dass das Wasser kurz aufleuchtet',
  'Knallkrebse jagen nicht mit der Schere selbst, sondern mit einer Blase, die beim Platzen heißer wird, als du dir vorstellen kannst.',
  'Wenn ein Knallkrebs seine Schere zuschnappen lässt, entsteht eine Blase, die beim Zusammenfallen mindestens 5.000 Kelvin erreicht und einen winzigen Lichtblitz abgibt.',
  'Knallkrebse sind nur ein paar Zentimeter groß. Trotzdem knallt es unter Wasser ordentlich, wenn sie jagen, und das Geräusch kommt nicht einmal von ihrer Schere.

## Der Knall kommt nicht von der Schere

Lange dachte man, das typische Knacken entsteht, wenn die beiden Hälften der großen Schere aufeinanderschlagen. Im Jahr 2000 schauten Forschende der Universität Twente und der Technischen Universität München genauer hin. Sie filmten sieben Knallkrebse mit einer Hochgeschwindigkeitskamera und nahmen gleichzeitig mit einem Unterwassermikrofon auf.

Das Ergebnis laut Physics World: Beim Zuschnappen schießt ein extrem schneller Wasserstrahl aus der Schere. Dahinter fällt der Druck so stark ab, dass eine Blase entsteht. Sobald sich der Druck wieder aufbaut, fällt sie in sich zusammen. Genau in diesem Moment knallt es, und die Druckwelle reicht, um kleine Beutetiere zu betäuben. Der Krebs schießt also mit Wasser.

## Ein Lichtblitz im Meer

2001 legte dasselbe Team nach. In der Fachzeitschrift Nature berichteten Detlef Lohse, Barbara Schmitz und Michel Versluis, dass die zusammenfallende Blase einen kurzen Lichtblitz abgibt. Sie tauften das Phänomen „Shrimpoluminescence“, eine Mischung aus Shrimp und Lumineszenz. Laut der Studie war es das erste Mal, dass man diese Art Lichterzeugung bei einem Tier beobachtet hat.

Damit Licht entsteht, muss es in der Blase extrem heiß werden. Die Autoren gehen von mindestens 5.000 Kelvin aus, also grob 4.700 Grad Celsius. Science News verglich das mit der Oberfläche der Sonne. Sehen kannst du den Blitz allerdings nicht: Er ist so kurz und schwach, dass die Forschenden ihn nur mit einem empfindlichen Lichtsensor messen konnten.

> Bonusfakt: Laut Physics World erzeugen ganze Kolonien von Knallkrebsen so viel Hintergrundrauschen, dass es den Einsatz von Sonar stören kann.

## Mehr Physik als Muskelkraft

Das Geniale daran: Der Krebs braucht keinen riesigen Körper, um so viel Wirkung zu erzeugen. Er nutzt ein Prinzip, das Ingenieure als Kavitation kennen und bei Schiffsschrauben eher fürchten. Wo Menschen mit Blasen kämpfen, hat dieses Tier daraus eine Waffe gebaut.

Ein paar Zentimeter Krebs, eine Schere und eine Blase, die kurz so heiß wird wie ein Stern.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('snapping-shrimp-flash', 'de', 1, 'Bildband über das Leben im Ozean', 'Bildband Meerestiere Ozean', 'Großformatige Fotos von Riffen, Tiefsee und allem, was dort krabbelt und schwimmt.'),
  ('snapping-shrimp-flash', 'de', 2, 'Unterwasser-Kamera für Einsteiger', 'Unterwasserkamera wasserdicht', 'Damit kannst du beim Schnorcheln selbst Fotos von Fischen und Krebsen machen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('snapping-shrimp-flash', 'de', 1, 'Nature: Snapping shrimp make flashing bubbles', 'https://www.nature.com/articles/35097152'),
  ('snapping-shrimp-flash', 'de', 2, 'Science News: Shrimps spew bubbles as hot as the sun', 'https://www.sciencenews.org/article/shrimps-spew-bubbles-hot-sun'),
  ('snapping-shrimp-flash', 'de', 3, 'Physics World: The bubble bursts for shrimps', 'https://physicsworld.com/a/the-bubble-bursts-for-shrimps/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'snapping-shrimp-flash', 'en', 'snapping-shrimp-water-flashes',
  'This shrimp snaps its claw so hard that the water briefly lights up',
  'Snapping shrimp don''t hunt with their claw itself, but with a bubble that gets hotter than you''d believe when it collapses.',
  'When a snapping shrimp shuts its claw, it creates a bubble that reaches at least 5,000 kelvin as it collapses and gives off a tiny flash of light.',
  'Snapping shrimp are only a few centimeters long. Still, they make a proper bang underwater when they hunt, and the noise doesn''t even come from their claw.

## The bang isn''t the claw

For a long time, people assumed the typical crack came from the two halves of the big claw slamming together. In 2000, researchers from the University of Twente and the Technical University of Munich took a closer look. They filmed seven snapping shrimp with a high-speed camera while recording them with an underwater microphone.

The result, according to Physics World: when the claw snaps shut, it fires out a very fast jet of water. Behind it, the pressure drops so much that a bubble forms. As soon as the pressure recovers, the bubble collapses. That is the moment of the bang, and the shock wave is strong enough to stun small prey. The shrimp is basically shooting with water.

## A flash of light in the sea

In 2001, the same team went further. In the journal Nature, Detlef Lohse, Barbara Schmitz and Michel Versluis reported that the collapsing bubble gives off a short flash of light. They called it "shrimpoluminescence". According to the study, it was the first time this kind of light production had been seen in any animal.

For light to appear, the inside of the bubble has to get extremely hot. The authors estimate at least 5,000 kelvin, roughly 4,700 degrees Celsius. Science News compared it to the surface of the sun. You can''t see the flash, though: it is so brief and faint that the researchers could only detect it with a sensitive light sensor.

> Bonus fact: According to Physics World, whole colonies of snapping shrimp make so much background noise that it can interfere with sonar.

## More physics than muscle

The clever part: the shrimp doesn''t need a big body to pack this much punch. It uses an effect engineers call cavitation, which they mostly dread because it damages ship propellers. Where humans fight bubbles, this animal turned them into a weapon.

A few centimeters of shrimp, one claw, and a bubble that briefly burns like a star.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('snapping-shrimp-flash', 'en', 1, 'Illustrated book about ocean life', 'ocean life illustrated book sea creatures', 'Big photos of reefs, the deep sea and everything that crawls and swims there.'),
  ('snapping-shrimp-flash', 'en', 2, 'Beginner underwater camera', 'waterproof underwater camera', 'Lets you take your own photos of fish and crabs while snorkeling.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('snapping-shrimp-flash', 'en', 1, 'Nature: Snapping shrimp make flashing bubbles', 'https://www.nature.com/articles/35097152'),
  ('snapping-shrimp-flash', 'en', 2, 'Science News: Shrimps spew bubbles as hot as the sun', 'https://www.sciencenews.org/article/shrimps-spew-bubbles-hot-sun'),
  ('snapping-shrimp-flash', 'en', 3, 'Physics World: The bubble bursts for shrimps', 'https://physicsworld.com/a/the-bubble-bursts-for-shrimps/');
