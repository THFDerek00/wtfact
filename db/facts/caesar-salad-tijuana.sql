-- WTFact-Fakt „Der Caesar Salad wurde 1924 in Mexiko erfunden, nicht im alten Rom“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('caesar-salad-tijuana', '2026-08-23', 'food', '🥗', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'caesar-salad-tijuana', 'de', 'caesar-salad-mexiko',
  'Der Caesar Salad wurde 1924 in Mexiko erfunden, nicht im alten Rom',
  'Mit Julius Caesar hat er nichts zu tun. Erfunden hat ihn ein italienischer Einwanderer in Tijuana, an einem stressigen Feiertag.',
  'Der Caesar Salad entstand 1924 im mexikanischen Tijuana und ist nach dem Restaurantbesitzer Caesar Cardini benannt.',
  'Caesar Salad klingt nach Antike, nach Toga und Kolosseum. Aber Julius Caesar hat diesen Salat nie gegessen. **Erfunden wurde er 1924 in Tijuana in Mexiko**, und sein Name kommt vom Restaurantbesitzer, nicht vom römischen Feldherrn.

## Ein Italiener in Mexiko

Caesar Cardini, gebürtig Cesare, war ein italienischer Einwanderer und betrieb ein Restaurant in Tijuana, direkt hinter der Grenze zu den USA. Das war damals ein ziemlich guter Standort. In den USA galt die Prohibition, Alkohol war verboten. Also fuhren viele Amerikanerinnen und Amerikaner über die Grenze, um dort legal zu feiern und Cocktails zu trinken.

Laut KPBS entstand der Salat am 4. Juli 1924, dem US-Unabhängigkeitstag. Das Restaurant war voll mit amerikanischen Gästen, und die Küche lief leer. Übrig waren nur noch ein paar Grundzutaten: **Olivenöl, Parmesan, Ei, Worcestershiresauce und Salat.** Ob Cardini selbst oder sein Bruder sie dann in einer Holzschüssel zusammenwarf, ist nicht ganz klar. Der Salat war jedenfalls sofort ein Hit.

## Show am Tisch

Laut Britannica wurde der Salat direkt am Tisch der Gäste angemacht, für den dramatischen Effekt. Die klassische Version bestand aus Römersalat, Croutons, Knoblauch-Olivenöl, kurz gegartem Ei, Zitronensaft, Worcestershiresauce, Parmesan, Salz und Pfeffer.

Spannend: Sardellen, die heute für viele zum Caesar-Dressing gehören, waren laut KPBS nicht immer Teil des Rezepts. Britannica nennt sie im Originalrezept gar nicht.

> Laut KPBS gibt es das ursprüngliche Restaurant in Tijuana immer noch, und dort wird weiterhin der klassische Caesar Salad serviert.

## 100 Jahre Improvisation

Im Juli 2024 feierte der Salat seinen 100. Geburtstag. Heute gibt es ihn laut KPBS mit Speck, Tandoori-Garnelen, Grünkohl-Chips oder vegan. Das passt eigentlich ganz gut zu einem Gericht, das aus Resten entstanden ist.

Der berühmteste Caesar der Küche war also kein Kaiser, sondern ein Gastronom mit leerem Kühlschrank.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('caesar-salad-tijuana', 'de', 1, 'Große Salatschüssel aus Holz', 'Salatschüssel Holz groß mit Besteck', 'Große Holzschüssel mit Salatbesteck, ideal zum Anmachen direkt am Tisch.'),
  ('caesar-salad-tijuana', 'de', 2, 'Salat-Kochbuch', 'Salat Kochbuch', 'Salate, die satt machen, mit Dressings, die du nicht kaufen musst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('caesar-salad-tijuana', 'de', 1, 'Britannica: Caesar salad', 'https://www.britannica.com/topic/Caesar-salad'),
  ('caesar-salad-tijuana', 'de', 2, 'KPBS: Hail Caesar salad! Born 100 years ago in Tijuana', 'https://www.kpbs.org/news/2024/07/03/hail-caesar-salad-born-100-years-ago-in-tijuana');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'caesar-salad-tijuana', 'en', 'caesar-salad-mexico',
  'Caesar salad was invented in Mexico in 1924, not in ancient Rome',
  'It has nothing to do with Julius Caesar. An Italian immigrant came up with it in Tijuana on a hectic holiday.',
  'Caesar salad was created in Tijuana, Mexico, in 1924 and is named after restaurant owner Caesar Cardini.',
  'Caesar salad sounds ancient, all togas and Colosseum. But Julius Caesar never ate it. **It was invented in 1924 in Tijuana, Mexico**, and it''s named after a restaurant owner, not the Roman general.

## An Italian in Mexico

Caesar Cardini, born Cesare, was an Italian immigrant who ran a restaurant in Tijuana, just across the border from the US. Back then, that was a great location. Prohibition was in force in the US, and alcohol was banned. So plenty of Americans crossed the border to party and drink cocktails legally.

According to KPBS, the salad was born on July 4, 1924, US Independence Day. The restaurant was packed with American guests, and the kitchen was running out of food. All that was left were a few basics: **olive oil, Parmesan, egg, Worcestershire sauce and lettuce.** Whether Cardini or his brother then tossed them together in a wooden bowl isn''t entirely clear. Either way, the salad was an instant hit.

## A show at the table

According to Britannica, the salad was prepared right at the guests'' table for dramatic effect. The classic version featured romaine lettuce, croutons, garlic-infused olive oil, coddled egg, lemon juice, Worcestershire sauce, Parmesan, salt and pepper.

Fun detail: anchovies, which many people now consider essential to Caesar dressing, weren''t always part of the recipe, according to KPBS. Britannica doesn''t list them in the original at all.

> According to KPBS, the original restaurant in Tijuana is still open and still serves the classic Caesar salad.

## 100 years of improvising

In July 2024, the salad turned 100. According to KPBS, today you''ll find it with bacon, tandoori prawns, kale chips or as a vegan version. Which fits pretty well for a dish that started out as leftovers.

The most famous Caesar in the kitchen wasn''t an emperor. He was a restaurateur with an empty fridge.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('caesar-salad-tijuana', 'en', 1, 'Large wooden salad bowl', 'large wooden salad bowl with servers', 'A big wooden bowl with servers, perfect for tossing a salad right at the table.'),
  ('caesar-salad-tijuana', 'en', 2, 'Salad cookbook', 'salad cookbook', 'Salads that actually fill you up, with dressings you never need to buy.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('caesar-salad-tijuana', 'en', 1, 'Britannica: Caesar salad', 'https://www.britannica.com/topic/Caesar-salad'),
  ('caesar-salad-tijuana', 'en', 2, 'KPBS: Hail Caesar salad! Born 100 years ago in Tijuana', 'https://www.kpbs.org/news/2024/07/03/hail-caesar-salad-born-100-years-ago-in-tijuana');
