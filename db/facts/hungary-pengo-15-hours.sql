-- WTFact-Fakt „In Ungarn verdoppelten sich 1946 die Preise alle 15 Stunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('hungary-pengo-15-hours', '2026-10-23T19:00:00+02:00', 'money', '📈', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hungary-pengo-15-hours', 'de', 'ungarn-pengoe-15-stunden',
  'In Ungarn verdoppelten sich 1946 die Preise alle 15 Stunden',
  'Die schlimmste Inflation der Geschichte brachte einen Geldschein mit 20 Nullen hervor.',
  'Im Juli 1946 verdoppelten sich in Ungarn die Preise etwa alle 15 Stunden. Es ist die schlimmste Hyperinflation, die je gemessen wurde.',
  'Simbabwe hatte eine heftige Inflation. Weimar auch. Aber den Rekord hält ein anderes Land: Ungarn, im Sommer 1946.

## Teurer im Stundentakt

Nach dem Zweiten Weltkrieg war Ungarns Wirtschaft am Boden. Die Regierung druckte Geld, um ihre Ausgaben zu decken, und die Währung Pengő verlor ihren Wert schneller als jede Währung davor oder danach.

Im Juli 1946 erreichte die Inflation laut Planet Banknote geschätzte 41,9 Billiarden Prozent im Monat. Die Preise verdoppelten sich ungefähr alle 15 Stunden. Wer morgens etwas kaufen wollte und bis zum Abend zögerte, zahlte fast das Doppelte. Über Nacht wurde es noch schlimmer.

## Ein Schein mit 20 Nullen

Um überhaupt noch bezahlen zu können, druckte Ungarn absurde Scheine. Den Pengő gab es zusätzlich als „Billió-Pengő“, wobei ein B.-Pengő eine Billion Pengő war. Der größte Schein, der tatsächlich in Umlauf kam, lautete auf 100 Millionen B.-Pengő. Das ist eine 1 mit 20 Nullen. Laut „Amusing Planet“ war er etwa 20 US-Cent wert.

Es wurde sogar noch ein größerer Schein gedruckt, über eine Milliarde B.-Pengő. Der wurde aber nie ausgegeben.

> Bonusfakt: Am 1. August 1946 führte Ungarn den Forint ein. Ein Forint ersetzte laut Planet Banknote 400 Quadrilliarden Pengő, das ist eine 4 mit 29 Nullen.

Der Forint ist bis heute die Währung Ungarns. Das Land hat also geschafft, was nach so einem Absturz gar nicht selbstverständlich ist: einen Neuanfang, der gehalten hat.

Zum Vergleich: Bei einer Inflation von zwei Prozent im Jahr dauert es rund 35 Jahre, bis sich die Preise verdoppeln. In Ungarn reichten 1946 nicht einmal 15 Stunden.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hungary-pengo-15-hours', 'de', 1, 'Sachbuch über Inflation einfach erklärt', 'Buch Inflation einfach erklärt', 'Zeigt, wie Inflation entsteht, ohne Fachchinesisch.'),
  ('hungary-pengo-15-hours', 'de', 2, 'Banknoten-Sammelset aus aller Welt', 'Banknoten Sammlung Set Welt', 'Echte Geldscheine aus vielen Ländern für die eigene Sammlung.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hungary-pengo-15-hours', 'de', 1, 'Planet Banknote: Hungary 1946: The Worst Hyperinflation Ever', 'https://planetbanknote.com/banknote-blog/hungary-1946-the-worst-hyperinflation-ever/'),
  ('hungary-pengo-15-hours', 'de', 2, 'Amusing Planet: Hungary’s Hyperinflation: The Worst Case of Inflation in History', 'https://www.amusingplanet.com/2018/08/hungarys-hyperinflation-worst-case-of.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hungary-pengo-15-hours', 'en', 'hungary-pengo-15-hours',
  'In 1946, prices in Hungary doubled every 15 hours',
  'The worst inflation in history produced a banknote with 20 zeros.',
  'In July 1946, prices in Hungary doubled roughly every 15 hours. It’s the worst hyperinflation ever recorded.',
  'Zimbabwe had brutal inflation. So did Weimar Germany. But the record belongs to another country: Hungary, in the summer of 1946.

## Prices rising by the hour

After World War II, Hungary’s economy was in ruins. The government printed money to cover its spending, and the currency, the pengő, lost value faster than any currency before or since.

In July 1946, according to Planet Banknote, inflation hit an estimated 41.9 quadrillion percent per month. Prices roughly doubled every 15 hours. If you wanted to buy something in the morning and waited until evening, you paid almost twice as much. Overnight it got even worse.

## A bill with 20 zeros

Just to be able to pay at all, Hungary printed absurd bills. On top of the regular pengő there was the "b.-pengő", where one b.-pengő equaled a trillion pengő. The largest bill that actually circulated was 100 million b.-pengő. That’s a 1 with 20 zeros. According to Amusing Planet, it was worth about 20 US cents.

An even bigger bill was printed, for one billion b.-pengő. It was never issued.

> Bonus fact: On August 1, 1946, Hungary introduced the forint. According to Planet Banknote, one forint replaced 400 octillion pengő, a 4 followed by 29 zeros.

The forint is still Hungary’s currency today. So the country managed something that’s far from guaranteed after a crash like that: a fresh start that lasted.

For comparison: with inflation at two percent a year, it takes about 35 years for prices to double. In Hungary in 1946, it took less than 15 hours.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hungary-pengo-15-hours', 'en', 1, 'Book explaining inflation simply', 'book inflation explained simply', 'Shows how inflation happens, without the jargon.'),
  ('hungary-pengo-15-hours', 'en', 2, 'World banknote collection set', 'world banknote collection set', 'Real bills from many countries to start your own collection.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hungary-pengo-15-hours', 'en', 1, 'Planet Banknote: Hungary 1946: The Worst Hyperinflation Ever', 'https://planetbanknote.com/banknote-blog/hungary-1946-the-worst-hyperinflation-ever/'),
  ('hungary-pengo-15-hours', 'en', 2, 'Amusing Planet: Hungary’s Hyperinflation: The Worst Case of Inflation in History', 'https://www.amusingplanet.com/2018/08/hungarys-hyperinflation-worst-case-of.html');
