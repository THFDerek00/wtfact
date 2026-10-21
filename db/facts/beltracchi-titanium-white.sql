-- WTFact-Fakt „Ein Kunstfälscher flog wegen einer Tube Farbe auf, die es 1914 noch nicht gab“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('beltracchi-titanium-white', '2026-10-23T10:00:00+02:00', 'art', '🎨', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'beltracchi-titanium-white', 'de', 'beltracchi-titanweiss',
  'Ein Kunstfälscher flog wegen einer Tube Farbe auf, die es 1914 noch nicht gab',
  'Wolfgang Beltracchi täuschte jahrzehntelang den Kunstmarkt. Dann verriet ihn ein einziges Weiß.',
  'Der deutsche Fälscher Wolfgang Beltracchi malte ein angebliches Campendonk-Bild von 1914 mit Titanweiß. Diese Farbe war damals aber noch nicht im Handel, und so flog er auf.',
  'Ein Fälscher muss an alles denken: die Leinwand, den Rahmen, den Stil, die Geschichte des Bildes. Wolfgang Beltracchi dachte an fast alles. Ein kleines Detail wurde ihm trotzdem zum Verhängnis.

## Ein Ehepaar täuscht die Kunstwelt

Wolfgang Beltracchi und seine Frau Helene fälschten jahrzehntelang Gemälde berühmter Künstler. Laut einem Bericht des US-Senders CNN behauptete Beltracchi später, rund 300 Fälschungen im Stil von etwa 50 Künstlern gemalt zu haben.

Er kopierte dabei keine bekannten Bilder. Stattdessen erfand er neue Werke, die so aussahen, als hätte der Künstler sie wirklich gemalt. Laut CNN gaben die beiden die Bilder als Teil der Sammlung von Helenes Großvater aus.

## Verraten von einer Farbe

Eines dieser Bilder war das „Rote Bild mit Pferden“, angeblich von dem Maler Heinrich Campendonk und von 1914. Laut CNN wurde es für 2,8 Millionen Euro verkauft.

Doch bei einer Untersuchung fanden Fachleute darin Titanweiß. Diese weiße Farbe gab es 1914 noch nicht zu kaufen. Das Bild konnte also gar nicht aus dieser Zeit stammen.

Laut dem Wirtschaftsmagazin MoneyWeek fand man das Pigment auch in einem angeblichen Max Ernst. Dessen Besitzer, der französische Verleger Daniel Filipacchi, hatte dafür 7 Millionen US-Dollar bezahlt.

> Bonusfakt: Laut CNN war Beltracchi das Zinkweiß ausgegangen. Er kaufte ein niederländisches Pigment, auf dem nicht stand, dass es Titan enthielt. Ein einziger Farbeinkauf beendete eine jahrzehntelange Karriere.

2011 wurden die Beltracchis verurteilt. Laut CNN bekam Wolfgang Beltracchi sechs Jahre Haft, seine Frau vier Jahre. Verurteilt wurden sie wegen 14 Fälschungen, obwohl es vermutlich viel mehr waren.

Bis heute hängen vielleicht noch Beltracchis in Museen oder Sammlungen, ohne dass es jemand weiß. Ein ziemlich unheimlicher Gedanke für alle, die viel Geld für Kunst bezahlt haben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('beltracchi-titanium-white', 'de', 1, 'Buch über Kunstfälschungen', 'Buch Kunstfälschung Beltracchi', 'Wie Fälscher arbeiten und wie Fachleute ihnen auf die Schliche kommen.'),
  ('beltracchi-titanium-white', 'de', 2, 'Acrylfarben-Set mit Titanweiß', 'Acrylfarben Set Künstler', 'Für eigene Kunst, garantiert ohne Fälschungsabsicht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('beltracchi-titanium-white', 'de', 1, 'ABC17 News / CNN: The husband-and-wife forgers who fooled the art market — and made millions', 'https://abc17news.com/entertainment/cnn-style/2023/02/07/the-husband-and-wife-forgers-who-fooled-the-art-market-and-made-millions/'),
  ('beltracchi-titanium-white', 'de', 2, 'MoneyWeek: How Wolfgang Beltracchi fooled the art world', 'https://moneyweek.com/30732/profile-of-wolfgang-beltracchi-61238');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'beltracchi-titanium-white', 'en', 'beltracchi-titanium-white',
  'An art forger was caught by a paint that didn’t exist yet in 1914',
  'Wolfgang Beltracchi fooled the art market for decades. Then a single white gave him away.',
  'German forger Wolfgang Beltracchi painted a supposed 1914 Campendonk picture using titanium white. But that paint wasn’t on the market yet back then, and so he was caught.',
  'A forger has to think of everything: the canvas, the frame, the style, the picture’s history. Wolfgang Beltracchi thought of almost everything. One tiny detail still brought him down.

## A couple fools the art world

For decades, Wolfgang Beltracchi and his wife Helene forged paintings by famous artists. According to a CNN report, Beltracchi later claimed to have painted around 300 forgeries in the style of about 50 artists.

He didn’t copy known paintings. Instead, he invented new works that looked as if the artist had really painted them. According to CNN, the couple claimed the paintings came from the collection of Helene’s grandfather.

## Betrayed by a paint

One of these pictures was "Red Picture with Horses", supposedly by the painter Heinrich Campendonk from 1914. According to CNN, it sold for 2.8 million euros.

But during an examination, experts found titanium white in it. That white paint wasn’t available to buy in 1914. So the painting couldn’t possibly date from that time.

According to the finance magazine MoneyWeek, the pigment also turned up in a supposed Max Ernst. Its owner, French publisher Daniel Filipacchi, had paid 7 million US dollars for it.

> Bonus fact: According to CNN, Beltracchi had run out of zinc white. He bought a Dutch pigment that didn’t say it contained titanium. A single paint purchase ended a decades-long career.

In 2011, the Beltracchis were convicted. According to CNN, Wolfgang Beltracchi got six years in prison, his wife four. They were convicted for 14 forgeries, even though there were probably many more.

To this day, there may still be Beltracchis hanging in museums or collections without anyone knowing. A pretty unsettling thought for anyone who paid a lot of money for art.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('beltracchi-titanium-white', 'en', 1, 'Book about art forgery', 'book art forgery Beltracchi', 'How forgers work and how experts catch them.'),
  ('beltracchi-titanium-white', 'en', 2, 'Acrylic paint set with titanium white', 'acrylic paint set artist', 'For your own art, guaranteed with no intent to forge.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('beltracchi-titanium-white', 'en', 1, 'ABC17 News / CNN: The husband-and-wife forgers who fooled the art market — and made millions', 'https://abc17news.com/entertainment/cnn-style/2023/02/07/the-husband-and-wife-forgers-who-fooled-the-art-market-and-made-millions/'),
  ('beltracchi-titanium-white', 'en', 2, 'MoneyWeek: How Wolfgang Beltracchi fooled the art world', 'https://moneyweek.com/30732/profile-of-wolfgang-beltracchi-61238');
