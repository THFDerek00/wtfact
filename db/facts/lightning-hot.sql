-- WTFact-Fakt „Ein Blitz ist heißer als die Oberfläche der Sonne“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('lightning-hot', '2026-09-19', 'science', '⚡', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lightning-hot', 'de', 'blitz-heisser-als-sonne',
  'Ein Blitz ist heißer als die Oberfläche der Sonne',
  'Für einen winzigen Moment wird die Luft in einem Blitzkanal heißer als die Oberfläche unseres Sterns.',
  'Ein Blitz erhitzt die Luft auf bis zu 30.000 °C, die Sonnenoberfläche kommt nur auf etwa 5.500 °C.',
  'Die Sonne gilt als Inbegriff von Hitze. Doch ein ganz normales Sommergewitter schlägt sie locker, zumindest für einen Wimpernschlag. **Im Blitzkanal wird die Luft schlagartig auf bis zu 30.000 °C erhitzt.** Die Oberfläche der Sonne bringt es auf rund 5.500 °C. Ein Blitz ist damit grob fünfmal so heiß.

## Warum die Luft so heiß wird

Streng genommen hat ein Blitz selbst gar keine Temperatur. Er ist elektrische Ladung, die sich bewegt. Heiß wird die Luft, durch die er sich seinen Weg bahnt. Luft leitet Strom nämlich ziemlich schlecht. Wenn trotzdem gewaltige Ladungsmengen hindurchschießen, heizt sich der schmale Kanal extrem auf.

Der US-Wetterdienst National Weather Service nennt rund 50.000 Grad Fahrenheit, das sind knapp 28.000 °C. Auch er kommt zu dem Schluss: **etwa fünfmal heißer als die Sonnenoberfläche.**

Lange hält das nicht an. Die eigentliche Hauptentladung ist nach winzigen Bruchteilen einer Sekunde vorbei. Was du als einen einzigen Blitz wahrnimmst, besteht oft aus mehreren Entladungen kurz hintereinander. Deshalb scheint er zu flackern.

## Donner ist ein Hitzeknall

Diese plötzliche Hitze hat eine Folge, die du sogar hörst. Die extrem aufgeheizte Luft dehnt sich explosionsartig aus. Dabei entsteht eine Druckwelle, und genau die kommt als **Donner** bei dir an. Ein Gewitter ist also im Grunde ein Feuerwerk aus Elektrizität und überhitzter Luft.

Dass der Donner meist erst nach dem Blitz kommt, liegt daran, dass Licht viel schneller unterwegs ist als Schall. Je länger die Pause, desto weiter weg ist das Gewitter.

> Schlägt ein Blitz in einen Baum ein, kann das Wasser im Holz so schnell verdampfen, dass die Rinde abplatzt oder der Stamm regelrecht explodiert.

Die Sonne leuchtet ununterbrochen, ein Blitz nur für einen Augenblick. Aber in diesem Augenblick hat er die Nase vorn. Nicht schlecht für ein bisschen Wetter.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lightning-hot', 'de', 1, 'Plasmakugel mit Berührungseffekt', 'Plasmakugel', 'Lässt kleine violette Blitze durch eine Glaskugel zucken, die deinem Finger folgen.'),
  ('lightning-hot', 'de', 2, 'Sturmglas als Wetter-Deko', 'Sturmglas Wetterglas', 'Ein Glas mit Kristallen, die sich je nach Temperatur verändern. Schöne Schreibtischdeko.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lightning-hot', 'de', 1, 'Wikipedia: Blitz', 'https://de.wikipedia.org/wiki/Blitz'),
  ('lightning-hot', 'de', 2, 'National Weather Service: How Hot Is Lightning?', 'https://www.weather.gov/safety/lightning-temperature'),
  ('lightning-hot', 'de', 3, 'BBC Science Focus: 5 times hotter than the Sun: Here''s why lightning is so powerful', 'https://www.sciencefocus.com/planet-earth/why-lightning-is-so-powerful');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lightning-hot', 'en', 'lightning-hotter-than-sun',
  'Lightning is hotter than the surface of the sun',
  'For a split second, the air inside a lightning bolt gets hotter than the surface of our own star.',
  'Lightning heats the air to around 30,000 °C, while the sun''s surface sits at only about 5,500 °C.',
  'The sun is basically the definition of hot. But an ordinary summer thunderstorm beats it, at least for the blink of an eye. **Inside a lightning channel, the air is heated to around 30,000 °C almost instantly.** The surface of the sun? Roughly 5,500 °C. That makes lightning about five times hotter.

## Why the air gets so hot

Technically, lightning itself doesn''t have a temperature. It''s electrical charge on the move. What gets hot is the air it forces its way through. Air is a pretty lousy conductor of electricity, so when a massive amount of charge blasts through anyway, that narrow channel heats up like crazy.

The US National Weather Service puts it at about 50,000 °F and lands on the same comparison: **roughly five times hotter than the surface of the sun.**

It doesn''t last long, though. The main stroke is over in a tiny fraction of a second. What you see as one bolt is often several strokes in quick succession, which is why lightning seems to flicker.

## Thunder is a heat blast

That sudden heat has a side effect you can actually hear. The superheated air expands explosively and creates a shock wave. That shock wave reaches you as **thunder**. A thunderstorm is basically a fireworks show made of electricity and overheated air.

You usually hear the thunder after you see the flash because light travels way faster than sound. The longer the gap, the farther away the storm.

> When lightning strikes a tree, the water inside the wood can vaporize so fast that the bark blasts off or the trunk practically explodes.

The sun shines nonstop, while a lightning bolt lasts only an instant. But for that one instant, lightning wins.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lightning-hot', 'en', 1, 'Touch-sensitive plasma ball', 'plasma ball', 'Little purple lightning bolts crackle inside a glass globe and follow your fingertip.'),
  ('lightning-hot', 'en', 2, 'Storm glass weather predictor', 'storm glass weather predictor', 'A sealed glass full of crystals that shift with the temperature. Great desk decor.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lightning-hot', 'en', 1, 'Wikipedia: Lightning', 'https://en.wikipedia.org/wiki/Lightning'),
  ('lightning-hot', 'en', 2, 'National Weather Service: How Hot Is Lightning?', 'https://www.weather.gov/safety/lightning-temperature'),
  ('lightning-hot', 'en', 3, 'BBC Science Focus: 5 times hotter than the Sun: Here''s why lightning is so powerful', 'https://www.sciencefocus.com/planet-earth/why-lightning-is-so-powerful');
