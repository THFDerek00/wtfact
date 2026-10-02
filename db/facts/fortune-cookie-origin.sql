-- WTFact-Fakt „Glückskekse kommen nicht aus China, sondern ursprünglich aus Japan“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('fortune-cookie-origin', '2026-09-08', 'food', '🥠', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'fortune-cookie-origin', 'de', 'glueckskekse-aus-japan',
  'Glückskekse kommen nicht aus China, sondern ursprünglich aus Japan',
  'Der Keks mit dem Zettel drin ist eine japanisch-amerikanische Erfindung. Chinesische Restaurants kamen erst später dazu.',
  'Glückskekse gehen auf japanische Gebäcke zurück und wurden in Kalifornien bekannt, erst später übernahmen chinesische Restaurants sie.',
  'Nach dem Essen beim Chinesen kommt der Glückskeks, das gehört irgendwie dazu. Nur: **Mit China hat der Keks ursprünglich wenig zu tun.** Seine Wurzeln liegen in Japan, groß geworden ist er in Kalifornien.

## Spur nach Kyoto

Eine japanische Forscherin hat sich auf Spurensuche gemacht. Laut Smithsonian Magazine fand sie in der Nähe eines Shinto-Schreins bei Kyoto Familienbäckereien, die seit Generationen „Tsujiura Senbei“ backen, übersetzt etwa „Glückscracker“. Die sind größer und brauner als die Version, die du kennst, und schmecken nach Sesam und Miso. Der Zettel steckt nicht innen, sondern klemmt außen in der Falte.

Ein japanischer Holzschnitt von 1878 zeigt laut Smithsonian Magazine sogar schon einen Bäcker, der solche Kekse auf einem Grill von Hand herstellt.

## Von San Francisco in die Welt

Nach Amerika kam der Keks mit japanischen Einwanderern. Laut dem National Museum of American History gründete Suyeichi Okamura 1906 in San Francisco die Konditorei Benkyodo. Sie belieferte den Japanischen Teegarten im Golden Gate Park mit Glückskeksen. Gebacken wurde mit speziellen Handformen.

Dann kam der Zweite Weltkrieg. Japanischstämmige Menschen in Kalifornien wurden in Lager gebracht, viele japanische Bäckereien mussten schließen. **Chinesische Unternehmer füllten die Lücke**, backten selbst Glückskekse und verkauften sie an chinesische Restaurants. Diese Verbindung ist bis heute geblieben, und so wurde der Keks in der ganzen Welt als „chinesisch“ bekannt.

> Laut Smithsonian Magazine entschied ein Richter 1983 in einem Streit um die Herkunft, dass der moderne Glückskeks vor dem Ersten Weltkrieg in San Francisco entstanden ist.

## Ein Keks mit Identitätskrise

Wer genau den allerersten Glückskeks in Amerika gebacken hat, ist bis heute umstritten. Klar ist nur die grobe Richtung: von Japan über Kalifornien in die chinesischen Restaurants der Welt.

Der Spruch in deinem Keks hat also schon eine längere Reise hinter sich als du nach dem Essen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('fortune-cookie-origin', 'de', 1, 'Glückskekse mit Sprüchen', 'Glückskekse einzeln verpackt', 'Einzeln verpackt, mit Sprüchen drin. Nett als Tischdeko oder Mitbringsel.'),
  ('fortune-cookie-origin', 'de', 2, 'Backbuch für Kekse', 'Kekse Backbuch', 'Von Klassikern bis zu Ausgefallenem, mit Rezepten, die auch ohne Profi-Küche klappen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('fortune-cookie-origin', 'de', 1, 'Smithsonian Magazine: Cracking Open the History of Fortune Cookies', 'https://www.smithsonianmag.com/arts-culture/cracking-open-the-history-of-fortune-cookies-28538557/'),
  ('fortune-cookie-origin', 'de', 2, 'National Museum of American History: Origins of a fortune cookie', 'https://americanhistory.si.edu/explore/stories/origins-fortune-cookie');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'fortune-cookie-origin', 'en', 'fortune-cookies-japanese',
  'Fortune cookies aren''t from China. They have Japanese roots',
  'The cookie with the slip of paper inside is a Japanese American invention. Chinese restaurants only came into the picture later.',
  'Fortune cookies trace back to Japanese crackers and became popular in California. Chinese restaurants only adopted them later.',
  'After a meal at a Chinese restaurant, the fortune cookie just sort of belongs. Except: **the cookie originally has little to do with China.** Its roots are in Japan, and it grew up in California.

## A trail to Kyoto

A Japanese researcher went looking for answers. According to Smithsonian Magazine, near a Shinto shrine outside Kyoto she found family bakeries that have been making "tsujiura senbei", roughly "fortune crackers", for generations. They''re bigger and browner than the version you know, flavored with sesame and miso. The fortune isn''t tucked inside but wedged into the fold on the outside.

According to Smithsonian Magazine, a Japanese woodblock print from 1878 already shows a baker making these cookies by hand on a grill.

## From San Francisco to the world

The cookie came to America with Japanese immigrants. According to the National Museum of American History, Suyeichi Okamura founded the Benkyodo confectionery in San Francisco in 1906. It supplied fortune cookies to the Japanese Tea Garden in Golden Gate Park, baked with special hand molds.

Then came World War II. Japanese Americans in California were sent to internment camps, and many Japanese bakeries had to close. **Chinese entrepreneurs filled the gap**, made their own fortune cookies and sold them to Chinese restaurants. That connection stuck, and the cookie became known around the world as "Chinese".

> According to Smithsonian Magazine, a judge ruled in a 1983 court battle over its origins that the modern fortune cookie was born in pre-World War I San Francisco.

## A cookie with an identity crisis

Exactly who baked the very first fortune cookie in America is still disputed. Only the rough route is clear: from Japan to California to Chinese restaurants worldwide.

The fortune in your cookie has traveled a lot farther than you did to get dinner.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('fortune-cookie-origin', 'en', 1, 'Individually wrapped fortune cookies', 'fortune cookies individually wrapped', 'Wrapped one by one with fortunes inside. Fun as table decor or a small gift.'),
  ('fortune-cookie-origin', 'en', 2, 'Cookie baking book', 'cookie baking cookbook', 'From classics to unusual bakes, with recipes that work without a pro kitchen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('fortune-cookie-origin', 'en', 1, 'Smithsonian Magazine: Cracking Open the History of Fortune Cookies', 'https://www.smithsonianmag.com/arts-culture/cracking-open-the-history-of-fortune-cookies-28538557/'),
  ('fortune-cookie-origin', 'en', 2, 'National Museum of American History: Origins of a fortune cookie', 'https://americanhistory.si.edu/explore/stories/origins-fortune-cookie');
