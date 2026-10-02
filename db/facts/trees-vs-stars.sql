-- WTFact-Fakt „Auf der Erde stehen mehr Bäume als Sterne in der Milchstraße“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('trees-vs-stars', '2026-09-13', 'science', '🌳', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'trees-vs-stars', 'de', 'mehr-baeume-als-sterne',
  'Auf der Erde stehen mehr Bäume als Sterne in der Milchstraße',
  'Rund 3 Billionen Bäume gegen höchstens 400 Milliarden Sterne. Und der Vergleich ist nicht mal knapp.',
  'Auf der Erde wachsen rund 3 Billionen Bäume, in der Milchstraße leuchten nur 100 bis 400 Milliarden Sterne.',
  'Schau nachts in einen richtig dunklen Himmel und du hast das Gefühl, die Sterne nehmen kein Ende. Trotzdem gibt es etwas, das auf unserem kleinen Planeten zahlreicher ist. **Auf der Erde stehen mehr Bäume, als es Sterne in unserer Galaxie gibt.**

## Die große Baumzählung

2015 veröffentlichte ein Team um den Ökologen Thomas Crowther von der Yale University im Fachjournal Nature eine neue Schätzung. Forscher aus 15 Ländern werteten Daten von mehr als 400.000 Waldflächen aus, kombiniert mit Satellitenbildern und Supercomputern. Am Ende stand eine Zahl: **rund 3,04 Billionen Bäume**.

Das war eine echte Überraschung. Frühere Schätzungen lagen bei etwa 400 Milliarden, also nur einem Bruchteil davon. Rechnerisch kommen auf jeden Menschen rund 422 Bäume.

## Und die Sterne?

Die Milchstraße ist riesig, je nach Messung etwa 87.000 bis 100.000 Lichtjahre im Durchmesser. Trotzdem schätzt man ihre Sterne auf **100 bis 400 Milliarden**. Selbst wenn du die höchste Schätzung nimmst, gibt es also mehr als siebenmal so viele Bäume auf der Erde wie Sterne in der Milchstraße.

Kleiner Haken: Mit bloßem Auge siehst du ohnehin nur einen winzigen Teil dieser Sterne. Bäume siehst du dagegen fast überall, wo du hinschaust. Dass sie die Sterne zahlenmäßig schlagen, fühlt sich trotzdem falsch an.

## Früher waren es noch mehr

So beeindruckend die Zahl ist, sie schrumpft. Laut der Studie gehen jedes Jahr mehr als 15 Milliarden Bäume verloren. Seit Beginn der menschlichen Zivilisation hat sich die Zahl der Bäume um etwa 46 Prozent verringert.

> Crowther fasste es so zusammen: „Wir haben die Zahl der Bäume auf dem Planeten fast halbiert.“

Den Sternenhimmel zu bewundern bleibt trotzdem schön. Aber wer etwas wirklich Unzählbares sehen will, muss nicht nach oben schauen. Ein Spaziergang im Wald reicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('trees-vs-stars', 'de', 1, 'Das geheime Leben der Bäume von Peter Wohlleben', 'Das geheime Leben der Bäume Wohlleben', 'Ein Förster erzählt, wie Bäume wachsen, sich vernetzen und altern. Liest sich fast wie ein Roman.'),
  ('trees-vs-stars', 'de', 2, 'Sternenhimmel-Projektor für das Zimmer', 'Sternenhimmel Projektor Galaxie Nachtlicht', 'Wirft einen Sternenhimmel samt Nebelschleiern an die Decke. Gemütlich zum Einschlafen oder für Filmabende.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('trees-vs-stars', 'de', 1, 'YaleNews: Seeing the forest and the trees, all 3 trillion of them', 'https://news.yale.edu/2015/09/02/seeing-forest-and-trees-all-3-trillion-them'),
  ('trees-vs-stars', 'de', 2, 'Wikipedia: Milky Way', 'https://en.wikipedia.org/wiki/Milky_Way'),
  ('trees-vs-stars', 'de', 3, 'NASA Science: Our Milky Way Galaxy: How Big is Space?', 'https://science.nasa.gov/universe/exoplanets/our-milky-way-galaxy-how-big-is-space/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'trees-vs-stars', 'en', 'more-trees-than-stars',
  'There are more trees on Earth than stars in the Milky Way',
  'About 3 trillion trees versus 400 billion stars at most. And it isn''t even close.',
  'Earth has about 3 trillion trees, while the Milky Way has only 100 to 400 billion stars.',
  'Look up at a really dark night sky and it feels like the stars never end. Still, there''s something on our little planet that outnumbers them. **Earth has more trees than our galaxy has stars.**

## The great tree count

In 2015, a team led by ecologist Thomas Crowther at Yale University published a new estimate in the journal Nature. Scientists from 15 countries analyzed data from more than 400,000 forest plots, combined with satellite images and supercomputers. The final number: **about 3.04 trillion trees**.

That was a genuine surprise. Earlier estimates had put the number at around 400 billion, just a fraction of that. Do the math and it works out to roughly 422 trees for every person on Earth.

## And the stars?

The Milky Way is enormous, roughly 87,000 to 100,000 light-years across, depending on the measurement. Even so, it''s estimated to contain **100 to 400 billion stars**. Take the highest estimate and there are still more than seven times as many trees on Earth as stars in the Milky Way.

Small catch: with the naked eye you only ever see a tiny portion of those stars anyway. Trees, on the other hand, are almost everywhere you look. Knowing they outnumber the stars still feels wrong somehow.

## There used to be even more

As impressive as the number is, it''s shrinking. According to the study, more than 15 billion trees are lost every year. Since the start of human civilization, the number of trees has dropped by roughly 46 percent.

> Crowther put it bluntly: "We''ve nearly halved the number of trees on the planet."

Stargazing is still worth it. But if you want to see something truly countless, you don''t have to look up. A walk in the woods will do.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('trees-vs-stars', 'en', 1, 'The Hidden Life of Trees by Peter Wohlleben', 'The Hidden Life of Trees Wohlleben', 'A forester explains how trees grow, connect and age. Reads almost like a novel.'),
  ('trees-vs-stars', 'en', 2, 'Galaxy star projector for your room', 'galaxy star projector night light', 'Throws a starry sky with nebula clouds onto your ceiling. Cozy for falling asleep or movie nights.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('trees-vs-stars', 'en', 1, 'YaleNews: Seeing the forest and the trees, all 3 trillion of them', 'https://news.yale.edu/2015/09/02/seeing-forest-and-trees-all-3-trillion-them'),
  ('trees-vs-stars', 'en', 2, 'Wikipedia: Milky Way', 'https://en.wikipedia.org/wiki/Milky_Way'),
  ('trees-vs-stars', 'en', 3, 'NASA Science: Our Milky Way Galaxy: How Big is Space?', 'https://science.nasa.gov/universe/exoplanets/our-milky-way-galaxy-how-big-is-space/');
