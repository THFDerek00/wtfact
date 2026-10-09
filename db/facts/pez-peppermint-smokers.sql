-- WTFact-Fakt „PEZ war 1927 ein Pfefferminz für Erwachsene, die weniger rauchen sollten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('pez-peppermint-smokers', NULL, 'brands', '🍬', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pez-peppermint-smokers', 'de', 'pez-pfefferminz-fuer-raucher',
  'PEZ war 1927 ein Pfefferminz für Erwachsene, die weniger rauchen sollten',
  'Die Bonbons mit den Comicköpfen waren ursprünglich gar nicht für Kinder gedacht. Der erste Spender sah aus wie ein Feuerzeug.',
  'Der Österreicher Eduard Haas erfand PEZ 1927 als Pfefferminzbonbon und vermarktete es als Alternative zur Zigarette, der erste Spender sah aus wie ein Feuerzeug.',
  'Bei PEZ denkst du wahrscheinlich an kleine Plastikspender mit Micky-Maus-Kopf und an Fruchtbonbons. Angefangen hat die Marke aber ganz anders: als Pfefferminz für Erwachsene.

## Ein Name aus drei Buchstaben

Laut PEZ entwickelte der Österreicher Eduard Haas III. das erste Pfefferminzbonbon der Marke 1927. Der Name ist eine Abkürzung, die sich direkt aus dem Produkt ergibt: der erste, ein mittlerer und der letzte Buchstabe von PfeffErminZ. Fruchtgeschmack gab es am Anfang nicht.

Haas war laut der Erfinderdatenbank des MIT ein Gegner des Rauchens. Seine Idee: Wer Lust auf eine Zigarette hat, lutscht stattdessen ein Pfefferminz. PEZ selbst schreibt, die Bonbons seien als gesündere Alternative zur Zigarette erfunden worden. Der Werbespruch dazu lautete auf Englisch „Smoking prohibited – PEZing allowed“, also sinngemäß: Rauchen verboten, PEZen erlaubt.

## Ein Spender im Feuerzeug-Look

Dann kam der Spender. Ende der 1940er entwarf Oskar Uxa für PEZ einen Plastikspender, der aussah wie ein Feuerzeug. Laut MIT wurde er 1948 auf der Wiener Messe vorgestellt und 1949 patentiert. Die Zielgruppe war klar: Leute, die sonst ein echtes Feuerzeug in der Hand hätten.

## Von Rauchern zu Kindern

Anfang der 1950er versuchte Haas, PEZ in den USA zu verkaufen. Das lief zunächst schleppend, also drehte er das Konzept komplett um. Statt Rauchern sollten Kinder die Bonbons kaufen. Bis 1955 bekamen die Spender laut MIT Comicköpfe, und es kamen Fruchtsorten dazu. Zu den ersten Köpfen sollen der Weihnachtsmann, Popeye und ein Weltraumsoldat gehört haben.

1962 schloss Haas einen Lizenzvertrag mit Walt Disney, und Micky Maus und Donald Duck landeten auf den Spendern. Aus dem Raucher-Ersatz war endgültig ein Spielzeug geworden.

> Bonusfakt: 1973 baute PEZ eine eigene Fabrik in Orange im US-Bundesstaat Connecticut.

Der Feuerzeug-Spender ist heute ein Sammlerstück. Der Kopf obendrauf hat ihn überlebt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pez-peppermint-smokers', 'de', 1, 'PEZ-Spender Sammelset', 'PEZ Spender Set', 'Ein paar Figurenköpfe zum Aufstellen, mit Bonbons zum Nachfüllen.'),
  ('pez-peppermint-smokers', 'de', 2, 'Buch über Kult-Süßigkeiten', 'Buch Geschichte Süßigkeiten Marken', 'Erzählt, wie bekannte Naschereien entstanden sind, mit vielen alten Verpackungen und Werbebildern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pez-peppermint-smokers', 'de', 1, 'PEZ: The cult brand PEZ', 'https://www.pez-candy.com/en/blogs/press/cult-brand-pez'),
  ('pez-peppermint-smokers', 'de', 2, 'Lemelson-MIT: Eduard Haas', 'https://lemelson.mit.edu/resources/eduard-haas');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pez-peppermint-smokers', 'en', 'pez-peppermint-for-smokers',
  'PEZ started in 1927 as a peppermint for adults trying to smoke less',
  'Those candies with cartoon heads were never meant for kids at first. The first dispenser looked like a lighter.',
  'Austrian Eduard Haas invented PEZ in 1927 as a peppermint and marketed it as an alternative to cigarettes, and the first dispenser looked like a lighter.',
  'When you think of PEZ, you probably picture little plastic dispensers with a Mickey Mouse head and fruity candies. But the brand started out very differently: as a peppermint for adults.

## A name built from one word

According to PEZ, Austrian Eduard Haas III created the brand''s first peppermint candy in 1927. The name is an abbreviation that comes straight from the product: the first, a middle and the last letter of the German word for peppermint, PfeffErminZ. There were no fruit flavors at the start.

According to MIT''s inventor database, Haas was an anti-smoking advocate. His idea: if you feel like having a cigarette, suck on a peppermint instead. PEZ itself says the candy was invented as a healthier alternative to cigarettes. The slogan that went with it was "Smoking prohibited – PEZing allowed".

## A dispenser dressed as a lighter

Then came the dispenser. In the late 1940s, Oskar Uxa designed a plastic dispenser for PEZ that looked like a lighter. According to MIT, it was shown at the Vienna Trade Fair in 1948 and patented in 1949. The target group was obvious: people who would otherwise be holding a real lighter.

## From smokers to kids

In the early 1950s, Haas tried to sell PEZ in the United States. Sales were slow at first, so he flipped the whole concept. Instead of smokers, kids were going to buy the candy. According to MIT, by 1955 the dispensers had cartoon heads and fruit flavors had been added. The first heads reportedly included Santa Claus, Popeye and a space trooper.

In 1962, Haas signed a licensing deal with Walt Disney, and Mickey Mouse and Donald Duck ended up on the dispensers. The smoking substitute had officially become a toy.

> Bonus fact: In 1973, PEZ built its own factory in Orange, Connecticut.

The lighter dispenser is a collector''s item today. The head on top outlived it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pez-peppermint-smokers', 'en', 1, 'PEZ dispenser collector set', 'PEZ dispenser set', 'A few character heads to line up on a shelf, with candy refills included.'),
  ('pez-peppermint-smokers', 'en', 2, 'Book on the history of iconic candy', 'candy history book brands', 'Tells how famous sweets came to be, with lots of old packaging and vintage ads.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pez-peppermint-smokers', 'en', 1, 'PEZ: The cult brand PEZ', 'https://www.pez-candy.com/en/blogs/press/cult-brand-pez'),
  ('pez-peppermint-smokers', 'en', 2, 'Lemelson-MIT: Eduard Haas', 'https://lemelson.mit.edu/resources/eduard-haas');
