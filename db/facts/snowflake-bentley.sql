-- WTFact-Fakt „Ein Farmer machte das erste Foto einer Schneeflocke und danach über 5000 weitere“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('snowflake-bentley', '2026-12-10T00:00:00+01:00', 'science', '❄️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'snowflake-bentley', 'de', 'erstes-foto-schneeflocke-bauer',
  'Ein Farmer machte das erste Foto einer Schneeflocke und danach über 5000 weitere',
  'Kein Labor, keine Uni. Nur ein junger Mann aus Vermont, ein Mikroskop und sehr kalte Finger.',
  'Der Farmer Wilson Bentley fotografierte am 15. Januar 1885 als Erster eine einzelne Schneeflocke und hielt bis zu seinem Tod über 5000 Schneekristalle fest.',
  'Jede Schneeflocke ist einzigartig. Diesen Satz kennt jedes Kind. Dass wir überhaupt wissen, wie unterschiedlich sie aussehen, verdanken wir einem Farmer aus Vermont, der den Winter liebte.

## Ein Mikroskop und eine Kamera

Wilson Bentley wuchs in Jericho in Vermont auf, einem Ort mit langen, schneereichen Wintern. Laut Mental Floss gehörte das Mikroskop, mit dem er sich die Kristalle ansah, seiner Mutter. Anfangs versuchte er, die Kristalle abzuzeichnen. Das reichte ihm bald nicht mehr, die Flocken schmolzen schneller, als er zeichnen konnte. Er bat seinen Vater um eine Balgenkamera und baute beides zusammen.

Am 15. Januar 1885, während eines Schneesturms, gelang ihm das erste Foto einer einzelnen Schneeflocke. Bentley war damals knapp 20 Jahre alt.

## Arbeiten gegen die Zeit

Seine Methode war mühsam. Er fing die Flocken auf einem mit schwarzem Samt bezogenen Brett auf. Mit einem kleinen Holzstäbchen schob er einen Kristall auf einen vorgekühlten Objektträger, bevor er schmolz. Laut Mental Floss arbeitete er oft draußen in der Kälte.

Das Ergebnis: Laut Smithsonian fotografierte Bentley bis zu seinem Tod mehr als 5000 Schneekristalle. 1931 erschien sein Buch „Snow Crystals“, zusammen mit dem Physiker William J. Humphreys, mit rund 2300 seiner Aufnahmen. Bis heute nutzen Designer und Forschende diese Bilder.

> Bonusfakt: Bentley starb im Dezember 1931 an einer Lungenentzündung. Laut Mental Floss hatte er sie sich geholt, als er sechs Meilen durch einen Schneesturm nach Hause lief.

Ein Farmer ohne Studium hat also das Bild geprägt, das wir alle von Schneeflocken im Kopf haben. Heute nennen ihn alle nur „Snowflake Bentley“.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('snowflake-bentley', 'de', 1, 'Makro-Aufsteckobjektiv fürs Handy', 'Makro Objektiv Handy Clip', 'Damit lassen sich kleine Details wie Schneekristalle mit dem Smartphone fotografieren.'),
  ('snowflake-bentley', 'de', 2, 'Bildband mit Schneekristall-Fotos', 'Bildband Schneekristalle Fotografie', 'Zeigt die Formenvielfalt von Schneeflocken in großen Bildern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('snowflake-bentley', 'de', 1, 'Smithsonian Institution Archives: Wilson A. Bentley: Pioneering Photographer of Snowflakes', 'https://torch.si.edu/2015/02/wilson-a-bentley-pioneering-photographer-of-snowflakes'),
  ('snowflake-bentley', 'de', 2, 'Mental Floss: Wilson Bentley, the Man Who Photographed Snowflakes', 'https://www.mentalfloss.com/science/weather/wilson-bentley-man-who-photographed-snowflakes');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'snowflake-bentley', 'en', 'first-snowflake-photo-farmer',
  'A farmer took the first photo of a snowflake, then more than 5000 more',
  'No lab, no university. Just a young man from Vermont, a microscope and very cold fingers.',
  'Farmer Wilson Bentley took the first photo of a single snowflake on 15 January 1885 and captured more than 5000 snow crystals before he died.',
  'No two snowflakes are alike. Every kid knows that line. The reason we know how different they look at all is a farmer from Vermont who loved winter.

## A microscope and a camera

Wilson Bentley grew up in Jericho, Vermont, a place with long, snowy winters. According to Mental Floss, the microscope he used to look at the crystals belonged to his mother. Drawing them soon wasn''t enough, because the flakes melted too fast. He asked his father for a bellows camera and combined the two.

On 15 January 1885, during a snowstorm, he managed the first photo of a single snowflake. Bentley was just shy of 20 years old.

## Racing the melt

His method was painstaking. He caught flakes on a board covered with black velvet. Using a small wooden peg, he moved a crystal onto a pre-chilled glass slide before it could melt. Mental Floss says he often worked outside in the cold.

The result: according to the Smithsonian, Bentley photographed more than 5000 snow crystals before he died. In 1931, his book Snow Crystals came out, written with physicist William J. Humphreys and featuring about 2300 of his images. Designers and researchers still use these pictures today.

> Bonus fact: Bentley died of pneumonia in December 1931. According to Mental Floss, he caught it after walking six miles home through a blizzard.

A farmer with no degree shaped the picture of snowflakes we all carry in our heads. Today everyone just calls him "Snowflake Bentley".'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('snowflake-bentley', 'en', 1, 'Clip-on macro lens for phones', 'clip on macro lens phone', 'Lets you photograph tiny details like snow crystals with your phone.'),
  ('snowflake-bentley', 'en', 2, 'Snow crystal photography book', 'snow crystals photography book', 'Shows the huge variety of snowflake shapes in large photos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('snowflake-bentley', 'en', 1, 'Smithsonian Institution Archives: Wilson A. Bentley: Pioneering Photographer of Snowflakes', 'https://torch.si.edu/2015/02/wilson-a-bentley-pioneering-photographer-of-snowflakes'),
  ('snowflake-bentley', 'en', 2, 'Mental Floss: Wilson Bentley, the Man Who Photographed Snowflakes', 'https://www.mentalfloss.com/science/weather/wilson-bentley-man-who-photographed-snowflakes');
