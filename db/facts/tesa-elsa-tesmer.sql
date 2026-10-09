-- WTFact-Fakt „tesa ist nach einer Sekretärin benannt und stand zuerst auf einer Zahnpastatube“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('tesa-elsa-tesmer', '2026-10-10T00:26:26+02:00', 'brands', '🪥', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tesa-elsa-tesmer', 'de', 'tesa-sekretaerin-zahnpastatube',
  'tesa ist nach einer Sekretärin benannt und stand zuerst auf einer Zahnpastatube',
  'Der Name auf deiner Klebefilmrolle hat mit Kleben ursprünglich wenig zu tun. Er steckt in einem Frauennamen.',
  'Den Namen tesa bildete 1906 die Beiersdorf-Sekretärin Elsa Tesmer aus Buchstaben ihres eigenen Namens, und das erste Produkt mit dem Namen war 1908 eine Zahnpastatube.',
  'Du sagst wahrscheinlich „Tesa“, wenn du irgendeinen durchsichtigen Klebestreifen meinst. Dabei wurde der Name gar nicht für Klebeband erfunden, und er stammt von jemandem, der nie ein Produkt entwickelt hat.

## Ein Name aus einem Namen

Elsa Tesmer arbeitete laut tesa von April 1903 bis Oktober 1908 als Sekretärin bei Beiersdorf in Hamburg. 1906 kam sie auf den Namen „tesa“, gebaut aus ihrem eigenen: die ersten zwei Buchstaben ihres Nachnamens, die letzten zwei ihres Vornamens. TEsmer plus elSA. Laut einem Bericht zum 75. Geburtstag der Marke reichte sie den Vorschlag bei einem internen Namenswettbewerb ein.

Ziemlich clever, denn der Name ist kurz, leicht auszusprechen und funktioniert in fast jeder Sprache. Nur geklebt hat damals noch nichts damit.

## Erst Zahnpasta, dann Klebefilm

Das erste Produkt, das den Namen tragen durfte, war laut Firmengeschichte 1908 eine patentierte Tube für die Zahnpasta Pebeco. Die Tube hatte einen Drehmechanismus, und der setzte sich schlicht nicht durch. Der Name verschwand damit aber nicht in der Schublade.

Fast 30 Jahre später übernahm der Industriekaufmann Hugo Kirchberg das Klebebandgeschäft von Beiersdorf. 1936 kam „tesa-Klebefilm“ auf den Markt, ein durchsichtiges Band für den Alltag. Aus dem sperrigen Namen wurde später die Kurzform „tesafilm“. Kirchberg erfand laut tesa auch gleich den passenden Abroller.

Als 1941 das Kreppband tesakrepp dazukam, wurde „tesa“ zur Dachmarke für alle selbstklebenden Produkte des Konzerns. Heute ist tesa eine eigene Firma, seit 2001 eine hundertprozentige Tochter der Beiersdorf AG.

> Bonusfakt: Beiersdorfs erstes technisches Klebeband kam schon 1896 auf den Markt: das Sportpflaster Cito, mit dem man Fahrradschläuche flicken konnte.

Elsa Tesmer verließ die Firma 1908. Ihr Name klebt bis heute an Millionen Schreibtischen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tesa-elsa-tesmer', 'de', 1, 'Tischabroller für Klebefilm', 'Klebefilm Tischabroller schwer', 'Ein schwerer Abroller bleibt beim Abreißen stehen und macht Geschenkeverpacken deutlich entspannter.'),
  ('tesa-elsa-tesmer', 'de', 2, 'Washi Tape Set', 'Washi Tape Set bunt', 'Bunte Papierklebebänder für Bullet Journal, Karten und Deko, die sich wieder ablösen lassen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tesa-elsa-tesmer', 'de', 1, 'tesa: Geschichte', 'https://www.tesa.com/de-de/ueber-uns/fakten-zahlen-menschen/geschichte'),
  ('tesa-elsa-tesmer', 'de', 2, 'Adhesives & Sealants Industry: tesa tape Celebrates 75 Years', 'https://adhesivesmag.com/articles/90113-tesa-tape-celebrates-75-years'),
  ('tesa-elsa-tesmer', 'de', 3, 'Wikipedia: Tesa SE', 'https://en.wikipedia.org/wiki/Tesa_SE');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tesa-elsa-tesmer', 'en', 'tesa-secretary-toothpaste-tube',
  'tesa is named after a secretary, and the name first went on a toothpaste tube',
  'The name on Germany''s favorite roll of tape had nothing to do with tape at first. It is hidden in a woman''s name.',
  'In 1906, Beiersdorf secretary Elsa Tesmer built the name tesa from letters of her own name, and the first product to carry it was a toothpaste tube in 1908.',
  'In Germany, people say "Tesa" for pretty much any roll of clear sticky tape, the way some people say "Scotch tape". But the name wasn''t invented for tape at all, and it came from someone who never designed a single product.

## A name made from a name

According to tesa, Elsa Tesmer worked as a secretary at Beiersdorf in Hamburg from April 1903 to October 1908. In 1906, she came up with the name "tesa" using her own: the first two letters of her surname and the last two of her first name. TEsmer plus elSA. According to a report on the brand''s 75th anniversary, she submitted it in an internal naming contest.

Pretty smart, too. It''s short, easy to say and works in almost any language. It just didn''t stick anything yet.

## Toothpaste first, tape later

According to the company history, the first product to carry the name was a patented tube for Pebeco toothpaste in 1908. The tube had a twist mechanism, and it simply didn''t catch on. The name, however, wasn''t thrown away.

Almost 30 years later, a commercial clerk named Hugo Kirchberg took over Beiersdorf''s tape business. In 1936, "tesa-Klebefilm" hit the market, a clear tape for everyday use. The clunky name was later shortened to "tesafilm". According to tesa, Kirchberg also invented the matching tape dispenser.

When the masking tape tesakrepp arrived in 1941, "tesa" became the umbrella brand for all of the group''s self-adhesive products. Today tesa is its own company, and since 2001 it has been a wholly owned subsidiary of Beiersdorf AG.

> Bonus fact: Beiersdorf''s first technical tape came out back in 1896: a sports plaster called Cito that you could use to patch bicycle tires.

Elsa Tesmer left the company in 1908. Her name is still stuck to millions of desks.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tesa-elsa-tesmer', 'en', 1, 'Desktop tape dispenser', 'heavy desktop tape dispenser', 'A weighted dispenser stays put when you tear off a strip, which makes gift wrapping a lot calmer.'),
  ('tesa-elsa-tesmer', 'en', 2, 'Washi tape set', 'washi tape set colorful', 'Colorful paper tapes for bullet journals, cards and decorating that peel off again cleanly.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tesa-elsa-tesmer', 'en', 1, 'tesa: Geschichte', 'https://www.tesa.com/de-de/ueber-uns/fakten-zahlen-menschen/geschichte'),
  ('tesa-elsa-tesmer', 'en', 2, 'Adhesives & Sealants Industry: tesa tape Celebrates 75 Years', 'https://adhesivesmag.com/articles/90113-tesa-tape-celebrates-75-years'),
  ('tesa-elsa-tesmer', 'en', 3, 'Wikipedia: Tesa SE', 'https://en.wikipedia.org/wiki/Tesa_SE');
