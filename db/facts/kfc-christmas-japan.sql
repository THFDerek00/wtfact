-- WTFact-Fakt „In Japan isst man zu Weihnachten Fried Chicken von KFC, wegen einer Werbung von 1974“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('kfc-christmas-japan', '2026-12-08T00:00:00+01:00', 'food', '🍗', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kfc-christmas-japan', 'de', 'japan-weihnachten-kfc',
  'In Japan isst man zu Weihnachten Fried Chicken von KFC, wegen einer Werbung von 1974',
  'Kein Gänsebraten, kein Truthahn. In Japan steht an Weihnachten ein Eimer Hähnchen auf dem Tisch.',
  'In Japan gehört Fried Chicken von KFC für viele Familien zu Weihnachten, seit die Kette 1974 landesweit mit „Kentucky ist Weihnachten!“ warb.',
  'Gans, Raclette oder Würstchen mit Kartoffelsalat: Bei uns streiten Familien jedes Jahr ums Weihnachtsessen. In Japan ist die Sache für viele längst geklärt. Es gibt Hähnchen aus dem Eimer.

## Ein Manager und ein Traum

Weihnachten ist in Japan kein religiöses Fest, sondern eher ein Abend für Paare und Familien. Lange gab es dafür kein typisches Essen. Genau diese Lücke hat KFC gefüllt.

Im November 1970 eröffnete in Nagoya die erste KFC-Filiale Japans. Ihr Manager Takeshi Okawara soll laut Time Out die Idee für einen Party-Eimer gehabt haben, nachdem er Ausländer darüber reden hörte, wie sehr ihnen an Weihnachten der Truthahn fehlt. Hähnchen statt Truthahn, das schien ihm nah genug. Er testete die Aktion zuerst in einer einzigen Filiale.

## Kentucky ist Weihnachten

Es funktionierte. 1974 ging der Weihnachts-Eimer landesweit an den Start, mit dem Slogan „Kentucky ist Weihnachten!“. Laut Toyo Keizai wurde daraus eine Tradition, die bis heute hält. Familien treffen sich rund um den 25. Dezember um einen Eimer Fried Chicken.

Die Nachfrage ist so groß, dass man am besten vorbestellt. Die Bestellungen öffnen schon Anfang November. Wer nicht reserviert hat, steht laut Time Out am Weihnachtstag auch mal in einer langen Schlange. Ein typisches Party-Paket enthält acht Stücke Hähnchen, dazu Salat und einen Schokoladenkuchen.

> Bonusfakt: Billig ist das Festessen nicht. Laut Toyo Keizai kostet das Standard-Paket mit Vorbestellung rund 4000 Yen, laut Time Out inzwischen 4990 Yen.

Eine Werbekampagne hat also geschafft, was sonst Jahrhunderte dauert: ein Festessen zu erfinden, das ein ganzes Land für selbstverständlich hält.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kfc-christmas-japan', 'de', 1, 'Japanisches Kochbuch für zu Hause', 'Japanisches Kochbuch einfach', 'Rezepte von Ramen bis Karaage für die eigene Küche.'),
  ('kfc-christmas-japan', 'de', 2, 'Bento-Box im japanischen Stil', 'Bento Box japanisch Lunchbox', 'Praktische Lunchbox mit mehreren Fächern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kfc-christmas-japan', 'de', 1, 'Time Out Tokyo: What''s the deal with... KFC and Christmas in Japan?', 'https://www.timeout.com/tokyo/things-to-do/whats-the-deal-with-kfc-and-christmas-in-japan'),
  ('kfc-christmas-japan', 'de', 2, 'Toyo Keizai: What''s The Deal With... KFC and Christmas in Japan?', 'https://toyokeizai.net/articles/-/201180');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'kfc-christmas-japan', 'en', 'japan-christmas-kfc',
  'In Japan, Christmas means KFC fried chicken, thanks to an ad from 1974',
  'No roast goose, no turkey. In Japan, Christmas dinner comes in a bucket.',
  'In Japan, KFC fried chicken is part of Christmas for many families, ever since the chain ran its nationwide "Kentucky is Christmas!" campaign in 1974.',
  'Turkey, ham or roast goose: families argue about Christmas dinner every year. In Japan, many settled the question long ago. It''s chicken from a bucket.

## A manager and a dream

Christmas in Japan isn''t a religious holiday. It''s more of an evening for couples and families. For a long time there was no typical meal for it. KFC filled exactly that gap.

In November 1970, Japan''s first KFC opened in Nagoya. According to Time Out, its manager Takeshi Okawara came up with the idea of a party bucket after hearing foreigners say how much they missed turkey at Christmas. Chicken instead of turkey seemed close enough to him. He tested the campaign at a single store first.

## Kentucky is Christmas

It worked. In 1974, the Christmas bucket went national with the slogan "Kentucky is Christmas!". According to Toyo Keizai, it became a tradition that still holds today. Families gather around a bucket of fried chicken around 25 December.

Demand is so high that ordering ahead is the smart move. Orders open in early November. Those who didn''t reserve may find themselves in a long line on Christmas Day, Time Out says. A typical party box has eight pieces of chicken, plus salad and a chocolate cake.

> Bonus fact: The feast isn''t cheap. According to Toyo Keizai, the standard box costs about 4000 yen when ordered ahead, and Time Out puts it at 4990 yen these days.

An ad campaign pulled off what usually takes centuries: inventing a holiday meal that a whole country now takes for granted.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('kfc-christmas-japan', 'en', 1, 'Japanese home cooking cookbook', 'japanese home cooking cookbook', 'Recipes from ramen to karaage for your own kitchen.'),
  ('kfc-christmas-japan', 'en', 2, 'Japanese-style bento box', 'japanese bento box lunch box', 'A practical lunch box with several compartments.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('kfc-christmas-japan', 'en', 1, 'Time Out Tokyo: What''s the deal with... KFC and Christmas in Japan?', 'https://www.timeout.com/tokyo/things-to-do/whats-the-deal-with-kfc-and-christmas-in-japan'),
  ('kfc-christmas-japan', 'en', 2, 'Toyo Keizai: What''s The Deal With... KFC and Christmas in Japan?', 'https://toyokeizai.net/articles/-/201180');
