-- WTFact-Fakt „Der Weihnachtsmann trug schon Rot, bevor Coca-Cola ihn malen ließ“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('santa-red-before-coca-cola', '2026-12-06T00:00:00+01:00', 'brands', '🎅', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'santa-red-before-coca-cola', 'de', 'weihnachtsmann-rot-vor-coca-cola',
  'Der Weihnachtsmann trug schon Rot, bevor Coca-Cola ihn malen ließ',
  'Coca-Cola hat den roten Weihnachtsmann erfunden? Das ist selbst ein Weihnachtsmärchen.',
  'Rot gekleidete Weihnachtsmänner gab es schon Jahrzehnte vor der Coca-Cola-Werbung der 1930er, etwa 1881 bei Thomas Nast und 1902 auf einem Titelbild des Magazins Puck.',
  'Es ist eine der bekanntesten Geschichten zur Weihnachtszeit: Coca-Cola hat den Weihnachtsmann rot angezogen, passend zur Markenfarbe. Klingt logisch, stimmt aber nicht.

## Rot lange vor der Limo

Coca-Cola warb ab den 1930er Jahren mit einem Weihnachtsmann, gemalt von Haddon Sundblom. Dieser gemütliche, rundliche Mann mit rotem Mantel hat das Bild weltweit geprägt. Erfunden hat Coca-Cola ihn aber nicht, auch wenn sich dieses Gerücht seit Jahrzehnten hält und jedes Jahr wieder geteilt wird.

Die Public Domain Review zeigt ältere Bilder. 1881 zeichnete der Karikaturist Thomas Nast für Harper''s Weekly „Merry Old Santa Claus“, einen dicken Mann im roten Anzug mit Pfeife. Und am 3. Dezember 1902 erschien das Magazin Puck mit einem Weihnachtsmann von Frank A. Nankivell auf dem Titel, der laut Public Domain Review aussieht wie der von heute: roter Mantel, weißer Pelz, weißer Bart.

## Noch früher: Zuckerpflaumen

Das Faktencheck-Portal The Ferret nennt ein noch älteres Beispiel: eine Werbung für „Santa Claus Sugar Plums“ der US Confection Company von 1868, mit weißem Bart und rötlichem Anzug. Ganz einheitlich war das damals nicht. Auf demselben Bild trägt der Weihnachtsmann eine grüne Mütze, und auf anderen Bildern der Zeit trug er Braun, Grün oder Blau.

Coca-Cola hat also nicht die Farbe erfunden, sondern ein Bild so oft und so gut gemalt, dass es alle anderen verdrängt hat.

> Bonusfakt: Thomas Nast zeichnete den Weihnachtsmann schon 1863 für Harper''s Weekly. Laut The Ferret hat er mit seinen Bildern viele Züge geprägt, die wir heute für selbstverständlich halten.

Der rote Mantel ist also älter als die Marke, die heute so tut, als hätte sie ihn genäht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('santa-red-before-coca-cola', 'de', 1, 'Bildband zur Geschichte des Weihnachtsmanns', 'Buch Geschichte Weihnachtsmann Nikolaus', 'Zeigt, wie sich Nikolaus und Weihnachtsmann über Jahrhunderte verändert haben.'),
  ('santa-red-before-coca-cola', 'de', 2, 'Nostalgische Weihnachtspostkarten im Set', 'nostalgische Weihnachtskarten Set vintage', 'Karten im Stil alter Illustrationen für Weihnachtsgrüße.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('santa-red-before-coca-cola', 'de', 1, 'The Public Domain Review: A Pictorial History of Santa Claus', 'https://publicdomainreview.org/collection/a-pictorial-history-of-santa-claus'),
  ('santa-red-before-coca-cola', 'de', 2, 'The Ferret: No, Santa Claus was not first dressed in red by Coca-Cola', 'https://theferret.scot/fact-check-coca-cola-red-santa-claus-christmas/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'santa-red-before-coca-cola', 'en', 'santa-wore-red-before-coca-cola',
  'Santa wore red before Coca-Cola ever painted him',
  'Coca-Cola invented the red Santa? That''s a Christmas fairy tale of its own.',
  'Red-suited Santas existed decades before Coca-Cola''s 1930s ads, for example in Thomas Nast''s 1881 drawing and on a 1902 cover of Puck magazine.',
  'It''s one of the most repeated stories of the season: Coca-Cola dressed Santa in red to match its brand. Sounds logical. It isn''t true.

## Red long before the soda

Coca-Cola started using Santa in its ads in the 1930s, painted by Haddon Sundblom. That cozy, round man in a red coat shaped the image worldwide. But Coca-Cola didn''t invent him.

The Public Domain Review shows older pictures. In 1881, cartoonist Thomas Nast drew "Merry Old Santa Claus" for Harper''s Weekly, a plump man in a red suit with a pipe. And on 3 December 1902, Puck magazine ran a Santa by Frank A. Nankivell on its cover that, according to the Public Domain Review, looks just like today''s: red coat, white fur, white beard.

## Even earlier: sugar plums

Fact-checking site The Ferret points to an even older example: an 1868 ad for "Santa Claus Sugar Plums" by the US Confection Company, with a white beard and a reddish suit. Things weren''t consistent back then. In that same picture Santa wears a green hat, and in other images of the era he wore brown, green or blue.

So Coca-Cola didn''t invent the color. It painted one version so often and so well that it pushed all the others out.

> Bonus fact: Thomas Nast was already drawing Santa for Harper''s Weekly in 1863. According to The Ferret, his pictures shaped many of the traits we now take for granted.

The red coat is older than the brand that likes to act as if it sewed it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('santa-red-before-coca-cola', 'en', 1, 'Illustrated history of Santa Claus', 'history of santa claus illustrated book', 'Shows how Saint Nicholas and Santa changed over the centuries.'),
  ('santa-red-before-coca-cola', 'en', 2, 'Vintage-style Christmas card set', 'vintage christmas cards set', 'Cards in the style of old illustrations for holiday greetings.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('santa-red-before-coca-cola', 'en', 1, 'The Public Domain Review: A Pictorial History of Santa Claus', 'https://publicdomainreview.org/collection/a-pictorial-history-of-santa-claus'),
  ('santa-red-before-coca-cola', 'en', 2, 'The Ferret: No, Santa Claus was not first dressed in red by Coca-Cola', 'https://theferret.scot/fact-check-coca-cola-red-santa-claus-christmas/');
