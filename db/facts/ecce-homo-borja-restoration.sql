-- WTFact-Fakt „Die schlechteste Restaurierung der Welt lockte 150.000 Touristen an“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ecce-homo-borja-restoration', '2026-10-23T19:00:00+02:00', 'art', '🐒', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ecce-homo-borja-restoration', 'de', 'ecce-homo-borja-restaurierung',
  'Die schlechteste Restaurierung der Welt lockte 150.000 Touristen an',
  'Eine Rentnerin wollte ein Jesusbild auffrischen. Heraus kam ein Gesicht, das um die Welt ging.',
  '2012 versuchte die 82-jährige Cecilia Giménez, ein verblasstes Jesus-Fresko in der spanischen Stadt Borja auszubessern. Das Ergebnis wurde weltberühmt und brachte dem Ort laut Artnet rund 150.000 Besucher.',
  'Gut gemeint ist nicht immer gut gemacht. Manchmal ist es aber trotzdem ein Erfolg. Die Geschichte vom „Ecce Homo“ aus Borja beweist das.

## Ein Bild wird aufgefrischt

In einer kleinen Kirche in Borja im Nordosten Spaniens hing ein Wandgemälde von Jesus. Gemalt hatte es der Künstler Elías García Martínez. Über die Jahre war das Bild verblasst und die Farbe blätterte ab.

2012 beschloss Cecilia Giménez, eine damals 82-jährige Frau aus dem Ort, das Bild auszubessern. Sie war keine ausgebildete Restauratorin. Das Ergebnis sah dem Original danach kaum noch ähnlich.

## Vom Fehler zur Attraktion

Statt eines würdevollen Jesusgesichts blickte nun eine verschwommene, rundliche Figur von der Wand. Fotos davon verbreiteten sich im Internet rasend schnell, und die Restaurierung wurde zu einem der bekanntesten Memes ihrer Zeit.

Für Borja hatte das eine unerwartete Folge. Laut dem Kunstmagazin Artnet kamen in den folgenden Jahren rund 150.000 Touristen in die kleine Stadt, um das Bild mit eigenen Augen zu sehen. Fotos und Parodien davon finden sich bis heute im Netz.

Laut dem kanadischen Sender CBC zog das Bild in der Kirche Santuario de Misericordia schon kurz nach dem Vorfall Scharen von Touristen an.

> Bonusfakt: Laut Artnet erhielt Cecilia Giménez später einen Anteil an den Einnahmen aus Fanartikeln. Einen Großteil davon spendete sie für wohltätige Zwecke.

Was als peinliches Missgeschick begann, wurde so zu einem Glücksfall für eine ganze Stadt. Cecilia Giménez wurde ungewollt berühmt.

Wer einmal versehentlich ein Bild ruiniert, kann sich also trösten. Mit ein bisschen Glück wird daraus eine Touristenattraktion.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ecce-homo-borja-restoration', 'de', 1, 'Reiseführer Nordspanien', 'Reiseführer Nordspanien Aragonien', 'Für einen Ausflug nach Aragonien, mit Abstecher nach Borja.'),
  ('ecce-homo-borja-restoration', 'de', 2, 'Malen-nach-Zahlen-Set für Erwachsene', 'Malen nach Zahlen Erwachsene', 'Damit gelingt das eigene Kunstwerk garantiert besser.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ecce-homo-borja-restoration', 'de', 1, 'Artnet News: Botched Restoration of Jesus Fresco Miraculously Saves Spanish Town', 'https://news.artnet.com/art-world/botched-restoration-of-jesus-fresco-miraculously-saves-spanish-town-197057'),
  ('ecce-homo-borja-restoration', 'de', 2, 'CBC News: Botched Christ fresco in Spain draws tourists', 'https://www.cbc.ca/lite/story/1.1260952');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ecce-homo-borja-restoration', 'en', 'ecce-homo-borja-restoration',
  'The worst restoration in the world drew 150,000 tourists',
  'A pensioner wanted to touch up a painting of Jesus. The result was a face that went around the world.',
  'In 2012, 82-year-old Cecilia Giménez tried to touch up a faded Jesus fresco in the Spanish town of Borja. The result became world-famous and, according to Artnet, brought the town about 150,000 visitors.',
  'Good intentions don’t always lead to good results. But sometimes they still pay off. The story of the "Ecce Homo" in Borja proves it.

## Touching up a painting

In a small church in Borja in northeastern Spain hung a wall painting of Jesus. It had been painted by the artist Elías García Martínez. Over the years, the picture had faded and the paint was flaking off.

In 2012, Cecilia Giménez, an 82-year-old local woman at the time, decided to fix it. She wasn’t a trained restorer. Afterwards, the result barely resembled the original.

## From mistake to attraction

Instead of a dignified face of Jesus, a blurry, roundish figure now looked down from the wall. Photos of it spread across the internet at lightning speed, and the restoration became one of the best-known memes of its time.

For Borja, that had an unexpected effect. According to the art magazine Artnet, about 150,000 tourists came to the small town over the following years to see the painting for themselves. Photos and parodies of it can still be found online.

According to the Canadian broadcaster CBC, the painting in the Santuario de Misericordia church was drawing crowds of tourists soon after the incident.

> Bonus fact: According to Artnet, Cecilia Giménez later received a share of the merchandising revenue. She gave much of it to charity.

What started as an embarrassing mishap became a stroke of luck for an entire town. Cecilia Giménez became famous without meaning to.

So if you ever accidentally ruin a painting, take comfort. With a bit of luck, it might become a tourist attraction.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ecce-homo-borja-restoration', 'en', 1, 'Northern Spain travel guide', 'northern Spain Aragon travel guide', 'For a trip to Aragon, with a detour to Borja.'),
  ('ecce-homo-borja-restoration', 'en', 2, 'Paint-by-numbers kit for adults', 'paint by numbers adults', 'Guarantees your own masterpiece turns out better.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ecce-homo-borja-restoration', 'en', 1, 'Artnet News: Botched Restoration of Jesus Fresco Miraculously Saves Spanish Town', 'https://news.artnet.com/art-world/botched-restoration-of-jesus-fresco-miraculously-saves-spanish-town-197057'),
  ('ecce-homo-borja-restoration', 'en', 2, 'CBC News: Botched Christ fresco in Spain draws tourists', 'https://www.cbc.ca/lite/story/1.1260952');
