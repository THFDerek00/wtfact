-- WTFact-Fakt „Auf der Venus dauert ein Tag länger als ein ganzes Jahr“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('venus-day-year', '2026-08-20', 'science', '🪐', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'venus-day-year', 'de', 'venus-tag-laenger-als-jahr',
  'Auf der Venus dauert ein Tag länger als ein ganzes Jahr',
  'Unser Nachbarplanet dreht sich so lahm um sich selbst, dass er schneller um die Sonne kommt. Und rückwärts dreht er sich auch noch.',
  'Die Venus braucht 243 Erdtage für eine Drehung um sich selbst, aber nur 225 für eine Runde um die Sonne.',
  'Stell dir vor, du hast Geburtstag, und die Sonne ist seit deinem letzten Geburtstag noch nicht einmal einmal um den Himmel gewandert. Auf der Venus wäre das ganz normal. **Dort dauert eine Drehung um die eigene Achse länger als eine komplette Runde um die Sonne.**

## Langsamster Dreh im Sonnensystem

Die Erde braucht für eine Drehung um sich selbst etwa 24 Stunden. Die Venus braucht dafür **rund 243 Erdtage**. Für ihre Bahn um die Sonne, also ein Venusjahr, braucht sie dagegen nur **rund 225 Erdtage**.

Gemessen an den Sternen ist ein Venustag damit länger als ein Venusjahr. Kein anderer Planet in unserem Sonnensystem dreht sich so langsam.

## Und dann auch noch rückwärts

Fast alle Planeten drehen sich in dieselbe Richtung, in der sie um die Sonne laufen. Die Venus nicht. Sie rotiert rückwärts. Die Folge: **Auf der Venus geht die Sonne im Westen auf und im Osten unter.**

Diese Rückwärtsdrehung hat einen schrägen Nebeneffekt. Weil sich Rotation und Umlauf gegeneinander auswirken, kommt die Sonne schneller wieder an dieselbe Stelle am Himmel, als man erwarten würde. Von einem Sonnenaufgang bis zum nächsten vergehen **rund 117 Erdtage**. Ein „Sonnentag“ ist also kürzer als eine volle Drehung. Klingt paradox, ist aber reine Geometrie.

## Warum sie so tickt, weiß niemand genau

Wie die Venus zu ihrer lahmen Rückwärtsdrehung kam, ist bis heute nicht abschließend geklärt. Diskutiert werden zum Beispiel heftige Einschläge in der Frühzeit des Sonnensystems oder die Wirkung ihrer extrem dichten Atmosphäre.

Gemütlich wäre ein Venustag übrigens nicht. Die Atmosphäre besteht vor allem aus Kohlendioxid, darüber hängen Wolken aus Schwefelsäure. Der Treibhauseffekt heizt den Boden auf **über 460 Grad Celsius** auf. Damit ist die Venus heißer als der Merkur, obwohl der näher an der Sonne liegt.

> Die Venus ist nach dem Mond das hellste natürliche Objekt am Nachthimmel und deshalb oft als „Abendstern“ oder „Morgenstern“ zu sehen.

Ein Jahr, das schneller vorbei ist als ein Tag: Auf der Venus ist das Wochenende gefühlt ewig.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('venus-day-year', 'de', 1, 'Teleskop für Einsteiger', 'Teleskop für Einsteiger Astronomie', 'Ein einfaches Linsenteleskop für den Balkon. Damit siehst du Mond, Planeten und hellere Sterne deutlich größer.'),
  ('venus-day-year', 'de', 2, 'Poster Sonnensystem', 'Poster Sonnensystem Planeten', 'Alle Planeten auf einen Blick als Wanddeko. Macht sich gut über dem Schreibtisch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('venus-day-year', 'de', 1, 'Wikipedia: Venus (Planet)', 'https://de.wikipedia.org/wiki/Venus_(Planet)'),
  ('venus-day-year', 'de', 2, 'NASA Science: Venus: Facts', 'https://science.nasa.gov/venus/venus-facts/'),
  ('venus-day-year', 'de', 3, 'Royal Museums Greenwich: Interesting facts about Venus', 'https://www.rmg.co.uk/stories/space-astronomy/interesting-facts-about-venus');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'venus-day-year', 'en', 'venus-day-longer-than-year',
  'On Venus, a day lasts longer than a whole year',
  'Our neighbor planet spins so lazily that it gets around the Sun faster. And it spins backward, too.',
  'Venus needs 243 Earth days to spin once, but only 225 to circle the Sun.',
  'Imagine it''s your birthday, and the Sun hasn''t even finished one trip across the sky since your last one. On Venus, that would be totally normal. **There, one spin on its axis takes longer than a full orbit around the Sun.**

## The slowest spin in the solar system

Earth spins once roughly every 24 hours. Venus needs **about 243 Earth days**. Its trip around the Sun, a Venus year, takes only **about 225 Earth days**.

Measured against the stars, a day on Venus is longer than a year on Venus. No other planet in our solar system spins this slowly.

## And it goes backward

Almost all planets spin in the same direction they orbit the Sun. Not Venus. It rotates backward. The result: **on Venus, the Sun rises in the west and sets in the east.**

That backward spin has a strange side effect. Because rotation and orbit work against each other, the Sun returns to the same spot in the sky sooner than you''d expect. From one sunrise to the next takes **about 117 Earth days**. So a "solar day" is shorter than one full spin. Sounds like a paradox, but it''s just geometry.

## Nobody knows exactly why

How Venus ended up with its slow, backward spin still isn''t fully settled. Ideas include massive impacts in the early solar system or the effects of its super thick atmosphere.

A day on Venus wouldn''t be pleasant, by the way. The atmosphere is mostly carbon dioxide, topped with clouds of sulfuric acid. The greenhouse effect heats the ground to **more than 860 degrees Fahrenheit, or over 460 degrees Celsius**. That makes Venus hotter than Mercury, even though Mercury is closer to the Sun.

> After the Moon, Venus is the brightest natural object in the night sky, which is why it''s often called the "evening star" or "morning star."

A year that''s over faster than a day: on Venus, the weekend would feel endless.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('venus-day-year', 'en', 1, 'Beginner telescope', 'beginner telescope for adults', 'A simple refractor telescope for your backyard or balcony. Makes the Moon, planets and brighter stars look way bigger.'),
  ('venus-day-year', 'en', 2, 'Solar system poster', 'solar system planets poster', 'All the planets at a glance as wall decor. Looks great above a desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('venus-day-year', 'en', 1, 'Wikipedia: Venus', 'https://en.wikipedia.org/wiki/Venus'),
  ('venus-day-year', 'en', 2, 'NASA Science: Venus: Facts', 'https://science.nasa.gov/venus/venus-facts/'),
  ('venus-day-year', 'en', 3, 'Royal Museums Greenwich: Interesting facts about Venus', 'https://www.rmg.co.uk/stories/space-astronomy/interesting-facts-about-venus');
