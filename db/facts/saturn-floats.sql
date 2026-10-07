-- WTFact-Fakt „Saturn ist rund 30 Prozent weniger dicht als Wasser“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('saturn-floats', '2026-10-07T03:57:42+02:00', 'science', '🪐', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'saturn-floats', 'de', 'saturn-wuerde-im-wasser-schwimmen',
  'Saturn ist rund 30 Prozent weniger dicht als Wasser',
  'Ein Gasriese, 95-mal so schwer wie die Erde, hätte in einer riesigen Badewanne kein Problem: Er würde oben treiben.',
  'Saturn hat eine mittlere Dichte von nur 0,687 Gramm pro Kubikzentimeter und ist damit laut NASA der einzige Planet im Sonnensystem, der im Schnitt weniger dicht ist als Wasser.',
  'Ein Planet, 95-mal so schwer wie die Erde, der in der Badewanne oben schwimmt? Klingt nach Quatsch, ist aber Physik. **Saturn ist laut NASA der einzige Planet unseres Sonnensystems, dessen mittlere Dichte geringer ist als die von Wasser.**

## Riesig, aber fluffig

Die Zahlen: Laut BBC Sky at Night Magazine hat Saturn eine mittlere Dichte von nur 0,687 Gramm pro Kubikzentimeter. Wasser kommt auf 1 Gramm pro Kubikzentimeter. Saturn ist also rund 30 Prozent weniger dicht als Wasser. Zum Vergleich: Die Erde hat laut dem Saturn-Datenblatt der NASA eine Dichte von 5.513 Kilogramm pro Kubikmeter, Saturn nur 687.

Dabei ist Saturn alles andere als ein Leichtgewicht. Er hat das 95-Fache der Erdmasse und ist laut NASA etwa 9-mal so breit wie die Erde. Ins Volumen von Saturn würde die Erde laut NASA-Datenblatt rund 764-mal passen.

Der Trick: Die riesige Masse verteilt sich auf ein noch viel riesigeres Volumen. Saturn besteht vor allem aus Wasserstoff und Helium, den beiden leichtesten Elementen im Universum. Viel Volumen, vergleichsweise wenig Masse, und schon ist die Durchschnittsdichte im Keller.

## Die Sache mit der Badewanne

Die NASA formuliert es so: Der Gasriese könnte in einer Badewanne schwimmen, „wenn es so ein kolossales Ding gäbe“. Genau da liegt der Haken. Laut BBC Sky at Night Magazine müsste die Wanne etwa 120.000 Kilometer breit sein. So etwas gibt es natürlich nirgends, das Ganze ist ein Gedankenexperiment.

Und ganz gleichmäßig fluffig ist Saturn auch nicht. Unter den dicken Wolkenschichten liegt laut BBC Sky at Night Magazine ein Kern aus schwereren Elementen, umgeben von metallischem Wasserstoff. Die 0,687 sind also ein Durchschnittswert über den ganzen Planeten.

> Die Hauptringe des Saturn sind laut NASA meist nur etwa 10 Meter dick. Sie bestehen aus Milliarden kleiner Brocken aus Eis und Gestein.

Dazu dreht sich der Riese ordentlich schnell: Ein Tag auf Saturn dauert laut NASA nur 10,7 Stunden. Ein Saturnjahr dagegen etwa 29,4 Erdjahre.

Der Herr der Ringe ist also im Grunde ein gigantischer Wasserball, nur ohne Wasser.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('saturn-floats', 'de', 1, 'Teleskop für Einsteiger', 'Teleskop Einsteiger Planeten', 'Ein handliches Linsenteleskop für erste Blicke auf Mond und Planeten.'),
  ('saturn-floats', 'de', 2, 'Planeten-Mobile für das Zimmer', 'Sonnensystem Mobile Planeten', 'Hängt das ganze Sonnensystem unter die Decke, Saturn samt Ringen inklusive.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('saturn-floats', 'de', 1, 'NASA Science: Saturn: Facts', 'https://science.nasa.gov/saturn/facts/'),
  ('saturn-floats', 'de', 2, 'BBC Sky at Night Magazine: Saturn, the enormous gas giant, could float on water (if you could find a big enough bathtub)', 'https://www.skyatnightmagazine.com/space-science/saturn-could-float-on-water'),
  ('saturn-floats', 'de', 3, 'NASA Space Science Data Coordinated Archive: Saturn Fact Sheet', 'https://nssdc.gsfc.nasa.gov/planetary/factsheet/saturnfact.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'saturn-floats', 'en', 'saturn-would-float-in-water',
  'Saturn is about 30 percent less dense than water',
  'A gas giant 95 times heavier than Earth would have no trouble in a giant bathtub: it would bob on top.',
  'Saturn has an average density of just 0.687 grams per cubic centimeter, which according to NASA makes it the only planet in the solar system that is less dense than water on average.',
  'A planet 95 times heavier than Earth that floats in the bath? Sounds like nonsense, but it''s physics. **According to NASA, Saturn is the only planet in our solar system with an average density lower than water''s.**

## Huge, but fluffy

The numbers: BBC Sky at Night Magazine puts Saturn''s average density at just 0.687 grams per cubic centimeter. Water comes in at 1 gram per cubic centimeter. So Saturn is about 30 percent less dense than water. For comparison, NASA''s Saturn fact sheet lists Earth''s density as 5,513 kilograms per cubic meter. Saturn''s is just 687.

And Saturn is anything but a lightweight. It has 95 times the mass of Earth and, according to NASA, is about 9 times wider than Earth. According to NASA''s fact sheet, Earth would fit into Saturn''s volume about 764 times.

The trick: all that mass is spread over an even more enormous volume. Saturn is made mostly of hydrogen and helium, the two lightest elements in the universe. Lots of volume, comparatively little mass, and the average density hits rock bottom.

## About that bathtub

NASA puts it like this: the gas giant could float in a bathtub "if such a colossal thing existed". That''s the catch. According to BBC Sky at Night Magazine, the tub would have to be about 120,000 kilometers wide. Nothing like that exists anywhere, so the whole thing is a thought experiment.

Saturn isn''t evenly fluffy all the way through, either. Beneath its thick cloud layers, BBC Sky at Night Magazine says, lies a core of heavier elements surrounded by metallic hydrogen. So the 0.687 is an average across the whole planet.

> According to NASA, Saturn''s main rings are typically only about 10 meters thick. They''re made of billions of small chunks of ice and rock.

On top of that, the giant spins fast: a day on Saturn lasts only 10.7 hours, NASA says. A Saturn year, on the other hand, takes about 29.4 Earth years.

So the lord of the rings is basically a gigantic beach ball, just without the beach.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('saturn-floats', 'en', 1, 'Beginner telescope', 'beginner telescope planets', 'A compact refractor for your first looks at the Moon and planets.'),
  ('saturn-floats', 'en', 2, 'Solar system hanging mobile', 'solar system planets hanging mobile', 'Hangs the whole solar system from your ceiling, ringed Saturn included.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('saturn-floats', 'en', 1, 'NASA Science: Saturn: Facts', 'https://science.nasa.gov/saturn/facts/'),
  ('saturn-floats', 'en', 2, 'BBC Sky at Night Magazine: Saturn, the enormous gas giant, could float on water (if you could find a big enough bathtub)', 'https://www.skyatnightmagazine.com/space-science/saturn-could-float-on-water'),
  ('saturn-floats', 'en', 3, 'NASA Space Science Data Coordinated Archive: Saturn Fact Sheet', 'https://nssdc.gsfc.nasa.gov/planetary/factsheet/saturnfact.html');
