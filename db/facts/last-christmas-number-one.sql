-- WTFact-Fakt „„Last Christmas“ brauchte 36 Jahre, um in Großbritannien auf Platz 1 zu kommen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('last-christmas-number-one', '2026-12-22T00:00:00+01:00', 'popculture', '🎤', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'last-christmas-number-one', 'de', 'last-christmas-36-jahre-bis-platz-1',
  '„Last Christmas“ brauchte 36 Jahre, um in Großbritannien auf Platz 1 zu kommen',
  'Einer der bekanntesten Weihnachtssongs der Welt war jahrzehntelang nur ewiger Zweiter.',
  'Wham!s „Last Christmas“ von 1984 erreichte erst Anfang 2021 Platz 1 der britischen Single-Charts, 36 Jahre nach der Veröffentlichung.',
  'Jedes Jahr im Dezember läuft „Last Christmas“ gefühlt in jedem Supermarkt. Man könnte meinen, so ein Lied war sofort ein Nummer-eins-Hit. In Großbritannien war es das lange nicht.

## Pech im Jahr 1984

Wham!, das Duo aus George Michael und Andrew Ridgeley, veröffentlichte den Song 1984. Er wurde ein riesiger Erfolg, kam in den britischen Charts aber nicht ganz nach oben. Laut Music Week wurde er damals von Band Aid von der Spitze ferngehalten, dem berühmten Wohltätigkeitsprojekt mit vielen Stars der damaligen Zeit.

Danach kam „Last Christmas“ jedes Jahr wieder in die Charts zurück. Platz 1 blieb aber aus, Jahr für Jahr, Jahrzehnt für Jahrzehnt.

## Endlich ganz oben

Dann kam der Jahreswechsel 2020 auf 2021. In den Charts, die am 1. Januar 2021 veröffentlicht wurden und die Verkäufe vom 25. bis 31. Dezember zählten, stand „Last Christmas“ endlich auf Platz 1. Greek City Times nannte es die erste Nummer eins des Jahres 2021, 36 Jahre nach der Veröffentlichung. George Michael erlebte das nicht mehr. Laut Music Week kam der Song genau am vierten Jahrestag seines Todes an die Spitze: Er war am ersten Weihnachtstag 2016 gestorben.

Knapp war es trotzdem. Laut Music Week kam der Song in dieser Woche auf 40.149 Verkäufe, gezählt mit Streams. Das waren nur 714 mehr als Mariah Careys „All I Want For Christmas Is You“. Dazu kamen 9,2 Millionen Streams in einer Woche.

> Bonusfakt: Laut Music Week hat sich „Last Christmas“ allein seit 1994 in Großbritannien mehr als 2,2 Millionen Mal verkauft.

Manchmal braucht ein Weihnachtswunsch eben ein bisschen länger, in diesem Fall 36 Jahre.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('last-christmas-number-one', 'de', 1, 'Wham! Best-of auf Vinyl', 'Wham Best of Vinyl', 'Die großen Hits des Duos auf Schallplatte.'),
  ('last-christmas-number-one', 'de', 2, 'Bluetooth-Lautsprecher', 'Bluetooth Lautsprecher klein guter Klang', 'Damit die Weihnachtsplaylist überall gut klingt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('last-christmas-number-one', 'de', 1, 'Music Week: Wham! finally reach No.1 with Last Christmas after 36 years', 'https://musicweek.com/digital/read/wham-finally-reach-no-1-with-last-christmas-after-36-years/082304'),
  ('last-christmas-number-one', 'de', 2, 'Greek City Times: George Michael''s ''Last Christmas'' reaches number one 36 years after its release', 'https://greekcitytimes.com/2021/01/03/last-christmas-number-one/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'last-christmas-number-one', 'en', 'last-christmas-36-years-to-number-one',
  '‘Last Christmas’ took 36 years to reach number 1 in the UK',
  'One of the world''s best-known Christmas songs spent decades as the eternal runner-up.',
  'Wham!''s 1984 song "Last Christmas" only reached number 1 on the UK singles chart in early 2021, 36 years after its release.',
  'Every December, "Last Christmas" seems to play in every supermarket. You''d think a song like that went straight to number one. In the UK, it didn''t, for a very long time.

## Bad luck in 1984

Wham!, the duo of George Michael and Andrew Ridgeley, released the song in 1984. It was a huge hit, but it didn''t quite reach the top of the UK chart. According to Music Week, it was kept off the top spot by Band Aid, the famous charity single featuring many of the era''s stars.

After that, "Last Christmas" came back into the charts every year. But the top spot never came, year after year, decade after decade.

## Finally at the top

Then came the turn of the year from 2020 to 2021. In the chart published on 1 January 2021, counting sales from 25 to 31 December, "Last Christmas" was finally number 1. Greek City Times called it the first number one of 2021, 36 years after its release. George Michael didn''t live to see it. According to Music Week, the song hit the top on the fourth anniversary of his death on Christmas Day 2016.

It was still close. According to Music Week, the song had 40,149 chart sales that week, streams included. That was just 714 more than Mariah Carey''s "All I Want For Christmas Is You". On top of that came 9.2 million streams in a single week.

> Bonus fact: According to Music Week, "Last Christmas" has sold more than 2.2 million copies in the UK since 1994 alone.

Sometimes a Christmas wish just takes a little longer, in this case 36 years.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('last-christmas-number-one', 'en', 1, 'Wham! greatest hits on vinyl', 'Wham greatest hits vinyl', 'The duo''s biggest hits on record.'),
  ('last-christmas-number-one', 'en', 2, 'Bluetooth speaker', 'small bluetooth speaker good sound', 'So the Christmas playlist sounds good anywhere.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('last-christmas-number-one', 'en', 1, 'Music Week: Wham! finally reach No.1 with Last Christmas after 36 years', 'https://musicweek.com/digital/read/wham-finally-reach-no-1-with-last-christmas-after-36-years/082304'),
  ('last-christmas-number-one', 'en', 2, 'Greek City Times: George Michael''s ''Last Christmas'' reaches number one 36 years after its release', 'https://greekcitytimes.com/2021/01/03/last-christmas-number-one/');
