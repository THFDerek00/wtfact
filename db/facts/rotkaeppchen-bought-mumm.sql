-- WTFact-Fakt „Ein Sekt aus dem Osten kaufte 2002 die West-Marke Mumm“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('rotkaeppchen-bought-mumm', '2026-10-03T11:51:32+02:00', 'food', '🍾', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rotkaeppchen-bought-mumm', 'de', 'rotkaeppchen-kaufte-mumm',
  'Ein Sekt aus dem Osten kaufte 2002 die West-Marke Mumm',
  'Nach der Wende brach der Absatz ein. Ein paar Jahre später war Rotkäppchen der größte Sekthersteller Deutschlands.',
  'Rotkäppchen aus Freyburg an der Unstrut ist seit 2001 der meistverkaufte Sekt in ganz Deutschland und übernahm 2002 die westdeutschen Sektmarken Mumm, Jules Mumm und MM Extra.',
  'Bei der Einheit denkt man eher an West-Firmen, die Betriebe im Osten übernehmen. Beim Sekt lief es andersherum. **2002 übernahm Rotkäppchen aus Freyburg an der Unstrut die West-Marken „Mumm“, „Jules Mumm“ und „MM Extra“.**

## Ein Name aus einem verlorenen Prozess

Die Kellerei ist viel älter als die DDR. Laut Deutschem Patent- und Markenamt gründeten Moritz und Julius Kloss mit Carl Foerster 1856 in Freyburg eine Weinhandlung, ab 1858 machten sie Sekt. Den verkauften sie zuerst unter französisch klingenden Namen wie „Monopol“.

Dann verloren sie einen Prozess gegen das Champagnerhaus Walbaum-Heidsieck. Ein neuer Name musste her. Die Firma nahm einfach die rote Kapsel ihrer Flaschen und machte daraus „Rotkäppchen“, als Anspielung auf die Marke „Red Top“ der Konkurrenz. Angemeldet wurde der Name am 20. Februar 1895, und die Marke gilt bis heute.

## Erst der Absturz, dann der Aufstieg

In der DDR war die Kellerei ein Volkseigener Betrieb und lief gut: 1987 wurden laut DPMA 15 Millionen Flaschen verkauft. Nach 1989 brach der Absatz zusammen.

Doch die Erholung übertraf laut DPMA alle Erwartungen: 1992 waren es schon wieder 5,7 Millionen Flaschen, 1993 wurde die Firma privatisiert. Ab 2001 war Rotkäppchen erst der meistverkaufte Sekt in den neuen Bundesländern und dann in ganz Deutschland.

Spannend dabei: Laut einem Tagesspiegel-Bericht von 2001 hatte die Marke im Osten mehr als 50 Prozent Marktanteil, im Westen aber nur 2,3 Prozent. Die Lösung war, einfach bekannte West-Marken dazuzukaufen. Mumm und MM gehörten bis dahin zu Seagram Deutschland.

> Nach der Übernahme von Mumm war Rotkäppchen laut DPMA der größte Sekthersteller Deutschlands, später kamen noch Marken wie Geldermann und Eckes dazu.

Der kleine Sekt mit der roten Kappe hat sich also nicht nur gehalten, sondern gleich die Konkurrenz eingesammelt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rotkaeppchen-bought-mumm', 'de', 1, 'Sachbuch über Kultmarken aus der DDR', 'Buch Kultmarken DDR Ostprodukte', 'Erzählt die Geschichten hinter Produkten, die den Osten geprägt haben und teils noch heute im Regal stehen.'),
  ('rotkaeppchen-bought-mumm', 'de', 2, 'Kochbuch mit Rezepten aus der DDR-Küche', 'Kochbuch DDR Küche Rezepte', 'Klassiker wie Soljanka oder Jägerschnitzel zum Nachkochen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rotkaeppchen-bought-mumm', 'de', 1, 'DPMA: Rotkäppchen-Sekt', 'https://www.dpma.de/dpma/wir_ueber_uns/geschichte/30jahre_einheit/ostmarken/rotkaeppchen/index.html'),
  ('rotkaeppchen-bought-mumm', 'de', 2, 'Tagesspiegel: Sekthersteller: Rotkäppchen schluckt Mumm und MM', 'https://www.tagesspiegel.de/wirtschaft/sekthersteller-rotkappchen-schluckt-mumm-und-mm-834064.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rotkaeppchen-bought-mumm', 'en', 'rotkaeppchen-bought-mumm',
  'An East German sparkling wine bought the West German brand Mumm in 2002',
  'After the Wall fell, sales collapsed. A few years later, Rotkäppchen was the biggest sparkling wine maker in Germany.',
  'Rotkäppchen from Freyburg in eastern Germany has been the best-selling sparkling wine in all of Germany since 2001 and took over the West German brands Mumm, Jules Mumm and MM Extra in 2002.',
  'When people think of reunification, they usually picture West German companies taking over businesses in the East. With sparkling wine, it went the other way round. **In 2002, Rotkäppchen from Freyburg in eastern Germany took over the West German brands "Mumm", "Jules Mumm" and "MM Extra".**

## A name born from a lost lawsuit

The winery is much older than East Germany. According to the German Patent and Trade Mark Office, Moritz and Julius Kloss founded a wine shop in Freyburg with Carl Foerster in 1856, and from 1858 they made sparkling wine. At first they sold it under French-sounding names like "Monopol".

Then they lost a lawsuit against the champagne house Walbaum-Heidsieck. They needed a new name. The company simply took the red capsule on its bottles and turned it into "Rotkäppchen", German for Little Red Riding Hood and literally "little red cap", a nod to the rival''s brand "Red Top". The name was registered on February 20, 1895, and the trademark is still valid today.

## First the crash, then the rise

In East Germany, the winery was a state-owned company and did well: in 1987, according to the patent office, it sold 15 million bottles. After 1989, sales collapsed.

But the recovery beat all expectations, according to the patent office: by 1992 it was back to 5.7 million bottles, and in 1993 the company was privatized. From 2001, Rotkäppchen was the best-selling sparkling wine first in eastern Germany and then in the whole country.

Here''s the twist: according to a 2001 report in the Tagesspiegel, the brand had more than 50 percent market share in the East but only 2.3 percent in the West. The solution was to buy well-known western brands. Until then, Mumm and MM belonged to Seagram Deutschland.

> After taking over Mumm, Rotkäppchen was Germany''s biggest sparkling wine producer, according to the patent office, and later added brands like Geldermann and Eckes.

The little bottle with the red cap didn''t just survive, it collected its competitors.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rotkaeppchen-bought-mumm', 'en', 1, 'Book about iconic East German brands', 'East German brands design book', 'Tells the stories behind products that shaped the East, some of which are still on the shelves today.'),
  ('rotkaeppchen-bought-mumm', 'en', 2, 'Cookbook with East German recipes', 'East German cookbook', 'Classics like solyanka to cook at home.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rotkaeppchen-bought-mumm', 'en', 1, 'DPMA: Rotkäppchen-Sekt', 'https://www.dpma.de/dpma/wir_ueber_uns/geschichte/30jahre_einheit/ostmarken/rotkaeppchen/index.html'),
  ('rotkaeppchen-bought-mumm', 'en', 2, 'Tagesspiegel: Sekthersteller: Rotkäppchen schluckt Mumm und MM', 'https://www.tagesspiegel.de/wirtschaft/sekthersteller-rotkappchen-schluckt-mumm-und-mm-834064.html');
