-- WTFact-Fakt „Du leuchtest im Dunkeln, nur 1000-mal zu schwach fürs Auge“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('humans-glow', '2026-08-29', 'body', '✨', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'humans-glow', 'de', 'menschen-leuchten',
  'Du leuchtest im Dunkeln, nur 1000-mal zu schwach fürs Auge',
  'Eine Spezialkamera in Japan hat gefilmt, was niemand sehen kann: das Licht, das dein Gesicht abstrahlt.',
  'Dein Körper sendet ständig ein winziges bisschen Licht aus, aber 1000-mal zu schwach, als dass du es sehen könntest.',
  'Glühwürmchen, Tiefseefische, leuchtende Pilze: Wir denken bei Biolumineszenz an exotische Lebewesen. Dabei leuchtest du selbst. Gerade jetzt. Nur eben so schwach, dass dein eigenes Auge keine Chance hat.

## Eine Kamera, die fast nichts sieht und trotzdem alles

2009 veröffentlichten die japanischen Forscher Masaki Kobayashi, Daisuke Kikuchi und Hitoshi Okamura eine Studie im Fachjournal PLOS ONE. Sie setzten fünf gesunde Männer in ihren Zwanzigern vor eine extrem empfindliche CCD-Kamera, die auf minus 120 Grad Celsius gekühlt wurde. Das Ergebnis: **Der menschliche Körper strahlt Licht ab, aber rund 1000-mal schwächer, als unsere Augen wahrnehmen können.**

Am hellsten war das Gesicht, vor allem die Wangen und die Partie rund um den Mund. Die Augenpartie und der restliche Körper glimmten schwächer.

## Dein Glow hat einen Tagesrhythmus

Die Forscher filmten ihre Probanden zu verschiedenen Tageszeiten, und das Leuchten war nicht immer gleich. Morgens war es schwach, im Lauf des Tages wurde es stärker und **erreichte am späten Nachmittag gegen 16 Uhr seinen Höhepunkt**. An den Wangen war es dann etwa doppelt so hell wie um 10 Uhr morgens.

Interessant: Das Leuchten verlief gegenläufig zum Stresshormon Cortisol. Die Forscher vermuten deshalb, dass die innere Uhr über den Stoffwechsel mitbestimmt, wie stark wir glimmen.

## Woher das Licht kommt

Die Quelle ist keine Leuchtzelle wie beim Glühwürmchen, sondern ganz normaler Stoffwechsel. Dabei entstehen **freie Radikale**, also besonders reaktionsfreudige Moleküle. Bei ihren chemischen Reaktionen werden manche Moleküle kurz in einen angeregten Zustand versetzt. Fallen sie zurück, geben sie die Energie als winziges Lichtteilchen ab, als Photon.

Fachleute nennen dieses Phänomen ultraschwache Photonenemission. Sie kommt nicht nur bei Menschen vor, sondern bei vielen Lebewesen.

> Laut Wikipedia geben Gewebe dabei grob 1 bis 1000 Photonen pro Quadratzentimeter und Sekunde ab. Eine Schreibtischlampe schafft unvorstellbar viel mehr.

Du bist also keine Glühbirne. Aber ein bisschen Licht steckt in dir, und am meisten davon um 4 Uhr nachmittags.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('humans-glow', 'de', 1, 'Below the Edge of Darkness von Edith Widder (Sachbuch über Biolumineszenz, englisch)', 'Below the Edge of Darkness Edith Widder', 'Eine Tiefseeforscherin erzählt, wie Lebewesen Licht erzeugen. Spannend wie ein Abenteuerroman.'),
  ('humans-glow', 'de', 2, 'Selbstklebende Leuchtsterne für die Zimmerdecke', 'Leuchtsterne selbstklebend Zimmerdecke', 'Laden sich tagsüber auf und glimmen nachts sanft. Ein Sternenhimmel für jedes Zimmer.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('humans-glow', 'de', 1, 'PLOS ONE: Imaging of Ultraweak Spontaneous Photon Emission from Human Body Displaying Diurnal Rhythm', 'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0006256'),
  ('humans-glow', 'de', 2, 'Wikipedia: Biophoton', 'https://en.wikipedia.org/wiki/Biophoton'),
  ('humans-glow', 'de', 3, 'NBC News: Humans glow in visible light', 'https://www.nbcnews.com/id/wbna32090918');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'humans-glow', 'en', 'humans-glow-in-the-dark',
  'You glow in the dark, just 1000 times too faintly to see',
  'A super-sensitive camera in Japan filmed something no one can see: the light your face gives off.',
  'Your body constantly gives off a tiny bit of light, but it''s 1000 times too faint for your eyes to see.',
  'Fireflies, deep-sea fish, glowing mushrooms: when you hear "bioluminescence," you think of exotic creatures. But you glow too. Right now. Just so faintly that your own eyes don''t stand a chance.

## A camera that sees almost nothing, and still enough

In 2009, Japanese researchers Masaki Kobayashi, Daisuke Kikuchi and Hitoshi Okamura published a study in the journal PLOS ONE. They put five healthy men in their 20s in front of an extremely sensitive CCD camera cooled to minus 120 degrees Celsius. The result: **the human body gives off light, but about 1000 times weaker than what our eyes can detect.**

The face was the brightest part, especially the cheeks and the area around the mouth. The eye area and the rest of the body glowed less.

## Your glow runs on a schedule

The researchers filmed their volunteers at different times of day, and the glow wasn''t constant. It was weak in the morning, grew stronger over the day and **peaked in the late afternoon, around 4 p.m.** At that point, the cheeks were about twice as bright as at 10 a.m.

Here''s the interesting part: the glow moved in the opposite direction to the stress hormone cortisol. So the researchers suspect that your body clock, through your metabolism, helps set how brightly you shine.

## Where the light comes from

The source isn''t a special light organ like a firefly''s. It''s plain old metabolism. Your cells produce **free radicals**, highly reactive molecules. Their chemical reactions briefly push some molecules into an excited state. When those molecules drop back down, they release the extra energy as a tiny particle of light, a photon.

Scientists call this ultraweak photon emission. It isn''t unique to humans, either. Lots of living things do it.

> According to Wikipedia, tissues give off roughly 1 to 1000 photons per square centimeter per second. A desk lamp blasts out unimaginably more.

So no, you''re not a light bulb. But there''s a little light in you, and the most of it shows up around 4 in the afternoon.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('humans-glow', 'en', 1, 'Below the Edge of Darkness by Edith Widder', 'Below the Edge of Darkness Edith Widder', 'A deep-sea explorer tells how living things make light. Reads like an adventure story.'),
  ('humans-glow', 'en', 2, 'Glow-in-the-dark ceiling stars', 'glow in the dark stars for ceiling', 'They charge up during the day and glow softly at night. Instant starry sky for any room.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('humans-glow', 'en', 1, 'PLOS ONE: Imaging of Ultraweak Spontaneous Photon Emission from Human Body Displaying Diurnal Rhythm', 'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0006256'),
  ('humans-glow', 'en', 2, 'Wikipedia: Biophoton', 'https://en.wikipedia.org/wiki/Biophoton'),
  ('humans-glow', 'en', 3, 'NBC News: Humans glow in visible light', 'https://www.nbcnews.com/id/wbna32090918');
