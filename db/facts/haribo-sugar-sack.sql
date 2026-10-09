-- WTFact-Fakt „Haribo begann 1920 mit einem Sack Zucker, einem Kupferkessel und einem Fahrrad“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('haribo-sugar-sack', NULL, 'brands', '🐻', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'haribo-sugar-sack', 'de', 'haribo-sack-zucker-fahrrad',
  'Haribo begann 1920 mit einem Sack Zucker, einem Kupferkessel und einem Fahrrad',
  'Bevor es Goldbären gab, gab es eine kleine Küche, eine Marmorplatte und eine Frau, die die Ware mit dem Rad ausfuhr.',
  'Hans Riegel gründete Haribo 1920 mit einem Sack Zucker, einer Marmorplatte, einem Kupferkessel und einem Nudelholz, und seine Frau Gertrud lieferte die Tagesproduktion mit dem Fahrrad aus.',
  'Heute verlassen laut Smithsonian Magazine jeden Tag rund 160 Millionen Goldbären die Haribo-Fabriken weltweit. Angefangen hat das Ganze mit einer Ausstattung, die in jede WG-Küche passen würde.

## Eine Küche, ein Sack, ein Nudelholz

Hans Riegel, gelernter Bonbonkocher aus der Gegend von Bonn, gründete laut Haribo am 13. Dezember 1920 seine eigene Firma. Der Name ist eine Abkürzung, die du vielleicht schon kennst: HAns RIegel BOnn.

Spannender ist die Einkaufsliste. Laut Haribo bestand die Produktion am Anfang aus einem Sack Zucker, einer Marmorplatte, einem Hocker, einem Herd, einem Kupferkessel und einem Nudelholz. Das war es. Keine Maschinen, kein Fließband, eine kleine Küche.

## Die erste Mitarbeiterin fuhr Rad

1921 bekam die Firma ihre erste Angestellte: Riegels Frau Gertrud. Sie lieferte laut Haribo die tägliche Produktion mit dem Fahrrad aus, bis das Unternehmen 1923 sein erstes Auto bekam. Bei einem Produkt, das du heute in fast jedem Supermarkt findest, ist das ein ziemlich überschaubarer Fuhrpark.

## Erst Tanzbär, dann Goldbär

1922 erfand Riegel den Tanzbären, ein Fruchtgummi in Bärenform. Laut Smithsonian Magazine war er größer und schlanker als die heutigen Gummibärchen, und die Form soll von Tanzbären inspiriert gewesen sein, die damals auf Festen auftraten. Zur Zeit der Inflation kosteten laut Haribo zwei Tanzbären einen Pfennig.

Der Slogan „Haribo macht Kinder froh“ stammt von 1930, das „und Erwachsene ebenso“ kam erst Mitte der 1960er dazu. 1960 kamen die Goldbären in der heutigen Form auf den Markt, 1967 ließ das Deutsche Patentamt sie als Marke eintragen.

> Bonusfakt: In den 1930er-Jahren hatte Haribo schon rund 400 Beschäftigte, 1950 waren es etwa 1.000.

Ein Weltkonzern, gestartet mit einem Nudelholz. Das Fahrrad hat sich auch gelohnt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('haribo-sugar-sack', 'de', 1, 'Silikon-Backform für Gummibärchen', 'Gummibärchen Silikonform', 'Damit gießt du eigene Fruchtgummi-Bärchen aus Saft und Gelatine oder Agar-Agar.'),
  ('haribo-sugar-sack', 'de', 2, 'Gummibär-Nachtlicht', 'Gummibär Nachtlicht LED', 'Ein leuchtender Bär im Fruchtgummi-Look, der als Deko auf dem Regal gut aussieht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('haribo-sugar-sack', 'de', 1, 'HARIBO: HARIBO History – Making sweets since 1920', 'https://www.haribo.com/en-au/about-us/history'),
  ('haribo-sugar-sack', 'de', 2, 'Smithsonian Magazine: The Colorful History of Haribo Goldbears, the World''s First Gummy Bears', 'https://www.smithsonianmag.com/history/the-colorful-history-of-haribo-goldbears-the-worlds-first-gummy-bears-180980094/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'haribo-sugar-sack', 'en', 'haribo-sugar-sack-bicycle',
  'Haribo started in 1920 with a sack of sugar, a copper pot and a bicycle',
  'Before there were Goldbears, there was a small kitchen, a marble slab and a woman delivering the goods by bike.',
  'Hans Riegel founded Haribo in 1920 with a sack of sugar, a marble slab, a copper pot and a rolling pin, and his wife Gertrud delivered each day''s production by bicycle.',
  'According to Smithsonian Magazine, about 160 million Goldbears leave Haribo factories around the world every day. The whole thing started with equipment that would fit in a student kitchen.

## A kitchen, a sack, a rolling pin

Hans Riegel, a trained confectioner from the Bonn area in Germany, founded his own company on 13 December 1920, according to Haribo. The name is an abbreviation you might already know: HAns RIegel BOnn.

The shopping list is the fun part. According to Haribo, the original production setup was a sack of sugar, a marble slab, a stool, a stove, a copper pot and a rolling pin. That''s it. No machines, no assembly line, just a small kitchen.

## The first employee rode a bike

In 1921, the company got its first employee: Riegel''s wife, Gertrud. According to Haribo, she delivered the daily production by bicycle until the company got its first car in 1923. For a product you can now find in almost any supermarket, that''s a pretty modest fleet.

## First the Dancing Bear, then the Goldbear

In 1922, Riegel invented the Dancing Bear, a bear-shaped fruit gum. According to Smithsonian Magazine, it was larger and slimmer than today''s gummy bears, and its shape was reportedly inspired by the dancing bears that performed at festivals back then. During Germany''s inflation years, Haribo says two Dancing Bears cost one pfennig.

The slogan "Haribo macht Kinder froh" ("Haribo makes kids happy") dates from 1930, and "und Erwachsene ebenso" ("and grown-ups too") was only added in the mid-1960s. Goldbears in their current form came out in 1960, and in 1967 the German Patent Office registered them as a trademark.

> Bonus fact: In the 1930s, Haribo already had about 400 employees, and by 1950 it had about 1,000.

A global company, launched with a rolling pin. The bike paid off too.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('haribo-sugar-sack', 'en', 1, 'Silicone gummy bear mold', 'gummy bear silicone mold', 'Lets you make your own fruit gummy bears from juice and gelatin or agar.'),
  ('haribo-sugar-sack', 'en', 2, 'Gummy bear night light', 'gummy bear night light LED', 'A glowing bear in gummy candy style that looks great as shelf decor.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('haribo-sugar-sack', 'en', 1, 'HARIBO: HARIBO History – Making sweets since 1920', 'https://www.haribo.com/en-au/about-us/history'),
  ('haribo-sugar-sack', 'en', 2, 'Smithsonian Magazine: The Colorful History of Haribo Goldbears, the World''s First Gummy Bears', 'https://www.smithsonianmag.com/history/the-colorful-history-of-haribo-goldbears-the-worlds-first-gummy-bears-180980094/');
