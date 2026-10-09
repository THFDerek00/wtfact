-- WTFact-Fakt „Auf dem roten Planeten sind Sonnenuntergänge blau“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('mars-blue-sunset', '2026-10-10T11:00:00+02:00', 'space', '🌅', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mars-blue-sunset', 'de', 'mars-sonnenuntergang-ist-blau',
  'Auf dem roten Planeten sind Sonnenuntergänge blau',
  'Auf der Erde wird der Himmel abends rot. Auf dem Mars macht er genau das Gegenteil.',
  'Der Marsrover Curiosity hat 2015 einen Sonnenuntergang gefilmt, und das Licht um die Sonne leuchtete blau, weil der feine Staub in der Marsluft blaues Licht besser durchlässt.',
  'Der Mars heißt der rote Planet, und tagsüber passt das auch: Sein Himmel wirkt eher rötlich bis bräunlich. Aber sobald die Sonne untergeht, dreht er die Farben einfach um.

## Ein Sonnenuntergang in Blau

Am 15. April 2015 hat der NASA-Rover Curiosity im Gale-Krater einen Sonnenuntergang in Farbe aufgenommen, über sieben Minuten hinweg. Das Ergebnis: Rund um die untergehende Sonne leuchtet der Himmel bläulich, ein kühler Schein, wie man ihn von der Erde überhaupt nicht kennt.

Curiosity war dabei kein Einzelfall. Laut IFLScience haben auch die Rover Spirit und Opportunity blaue Sonnenuntergänge auf dem Mars festgehalten.

## Schuld ist der Staub

Bei uns wird es abends rot, weil die Moleküle in der Luft vor allem blaues Licht in alle Richtungen streuen. Wenn die Sonne tief steht, muss ihr Licht einen langen Weg durch die Atmosphäre nehmen. Das Blaue geht unterwegs verloren, das Rote kommt bei dir an.

Auf dem Mars ist die Luft extrem dünn, laut IFLScience beträgt der Druck nur etwa 1 Prozent von dem auf der Erde. Dafür schwebt dort jede Menge feiner Staub. Und dieser Staub verhält sich anders als unsere Luft: Laut NASA lässt er blaues Licht effizienter durch die Atmosphäre als rotes. Rotes Licht wird also eher herausgestreut, und je tiefer die Sonne steht, desto deutlicher bleibt nahe der Sonne ein blauer Schimmer übrig.

Tagsüber sorgt derselbe Staub dafür, dass der Marshimmel rötlich aussieht. Ein Planet, zwei Farbschemata, je nach Uhrzeit.

> Bonusfakt: Staub in der Marsatmosphäre ist laut NASA vor allem im Marsfrühling häufig, dann ist der blaue Effekt besonders gut zu sehen.

Rot ist auf dem Mars nur die Tagesschicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mars-blue-sunset', 'de', 1, 'Mars-Globus mit Beschriftung', 'Mars Globus Planet', 'Krater, Vulkane und Täler des Mars zum Drehen und Entdecken, schön als Deko im Regal.'),
  ('mars-blue-sunset', 'de', 2, 'Bildband mit Fotos der Mars-Rover', 'Mars Bildband Rover Fotos Buch', 'Echte Aufnahmen von der Marsoberfläche, die so nah dran sind, dass du fast den Staub riechst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mars-blue-sunset', 'de', 1, 'NASA SVS: NASA On Air: NASA''s Curiosity Sees Blue Sunset On Mars (5/21/2015)', 'https://svs.gsfc.nasa.gov/11875'),
  ('mars-blue-sunset', 'de', 2, 'IFLScience: Why Are Mars'' Sunsets Blue?', 'https://www.iflscience.com/space/why-are-mars-sunsets-blue/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mars-blue-sunset', 'en', 'mars-sunsets-are-blue',
  'On the red planet, sunsets are blue',
  'On Earth the evening sky turns red. On Mars it does the exact opposite.',
  'NASA''s Curiosity rover filmed a sunset in 2015, and the light around the Sun glowed blue, because the fine dust in the Martian air lets blue light through more easily.',
  'Mars is called the red planet, and during the day that fits: its sky looks reddish to brownish. But once the Sun goes down, it flips the colors around.

## A sunset in blue

On April 15, 2015, NASA''s Curiosity rover recorded a sunset in color from Gale Crater, over a span of seven minutes. The result: around the setting Sun, the sky glows bluish, a cool shimmer you never see on Earth.

Curiosity was not a one-off. According to IFLScience, the rovers Spirit and Opportunity also captured blue sunsets on Mars.

## Blame the dust

On Earth, evenings turn red because molecules in the air scatter mostly blue light in all directions. When the Sun is low, its light has to travel a long way through the atmosphere. The blue gets lost on the way, and the red reaches you.

The air on Mars is extremely thin. According to IFLScience, the pressure is only about 1 percent of Earth''s. Instead, lots of fine dust floats around. And that dust behaves differently from our air: NASA says it lets blue light pass through the atmosphere more efficiently than red light. So the red gets scattered away, and the lower the Sun sinks, the more a blue glow stays near it.

During the day, that same dust is what makes the Martian sky look reddish. One planet, two color schemes, depending on the time of day.

> Bonus fact: According to NASA, dust in the Martian atmosphere is especially common during the Martian spring, which is when the blue effect shows up best.

On Mars, red only works the day shift.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mars-blue-sunset', 'en', 1, 'Labeled Mars globe', 'Mars globe planet', 'Craters, volcanoes and valleys of Mars to spin and explore, and it looks great on a shelf.'),
  ('mars-blue-sunset', 'en', 2, 'Photo book of Mars rover images', 'Mars rover photo book', 'Real images from the Martian surface, so close up you can almost smell the dust.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mars-blue-sunset', 'en', 1, 'NASA SVS: NASA On Air: NASA''s Curiosity Sees Blue Sunset On Mars (5/21/2015)', 'https://svs.gsfc.nasa.gov/11875'),
  ('mars-blue-sunset', 'en', 2, 'IFLScience: Why Are Mars'' Sunsets Blue?', 'https://www.iflscience.com/space/why-are-mars-sunsets-blue/');
