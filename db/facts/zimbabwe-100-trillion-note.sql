-- WTFact-Fakt „Simbabwe druckte einen Geldschein über 100 Billionen Dollar“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('zimbabwe-100-trillion-note', '2026-10-21T21:00:00+02:00', 'money', '💵', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zimbabwe-100-trillion-note', 'de', 'simbabwe-100-billionen-schein',
  'Simbabwe druckte einen Geldschein über 100 Billionen Dollar',
  'Eine 1 mit 14 Nullen. Und trotzdem war der Schein schon bald nichts mehr wert.',
  'Im Januar 2009 brachte Simbabwe einen Schein über 100 Billionen Simbabwe-Dollar in Umlauf. Die Preise verdoppelten sich zeitweise ungefähr jeden Tag.',
  'Auf dem Schein steht eine 1 mit 14 Nullen. Wer ihn in der Hand hält, ist trotzdem nicht reich. Der 100-Billionen-Dollar-Schein aus Simbabwe ist das berühmteste Andenken an eine Wirtschaftskrise.

## Inflation außer Kontrolle

Ab 2007 verlor der Simbabwe-Dollar rasend schnell an Wert. Die Notenbank druckte immer mehr Geld, die Preise stiegen immer schneller. Laut dem Ökonomen Steve Hanke vom Cato Institute erreichte die Inflation Mitte November 2008 rund 79,6 Milliarden Prozent im Monat. Zu dieser Zeit verdoppelten sich die Preise ungefähr jeden Tag.

Wer morgens einkaufen ging, zahlte also deutlich weniger als jemand, der abends in denselben Laden kam. Bargeld zu sparen ergab überhaupt keinen Sinn mehr.

## Die Billionen-Serie

Die Notenbank reagierte mit immer größeren Scheinen. Im Januar 2009 kündigte sie neue Noten über 10, 20, 50 und schließlich 100 Billionen Dollar an, laut eigener Mitteilung „zur Bequemlichkeit der Öffentlichkeit“. Der „Washington Examiner“ meldete damals eine Inflationsrate von 231 Millionen Prozent.

Es waren die letzten Banknoten dieser Währung. Schon im April 2009 stieg Simbabwe auf ein System mit fremden Währungen um, vor allem US-Dollar und südafrikanischen Rand. Der 100-Billionen-Schein wurde aus dem Verkehr gezogen.

> Bonusfakt: Endgültig für ungültig erklärt wurde der Simbabwe-Dollar erst 2015. Da hatte ihn im Alltag schon lange niemand mehr benutzt.

Heute ist der Schein ein beliebtes Sammlerstück. Händler verkaufen ihn an Leute, die einmal eine Billion in der Hand halten wollen, oder hundert davon.

Der Schein mit den meisten Nullen hat am Ende nur eine Sache geschafft: Er ist heute als Kuriosität mehr wert, als er es als Geld jemals war.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zimbabwe-100-trillion-note', 'de', 1, 'Sachbuch über die Geschichte des Geldes', 'Buch Geschichte des Geldes', 'Von Muscheln bis Bitcoin: wie Geld entsteht und warum es manchmal kaputtgeht.'),
  ('zimbabwe-100-trillion-note', 'de', 2, 'Album für Banknoten-Sammlung', 'Banknotenalbum Sammler', 'Hält Geldscheine aus aller Welt sicher und übersichtlich.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zimbabwe-100-trillion-note', 'de', 1, 'Washington Examiner: Introducing the 100 Trillion Dollar Note', 'https://www.washingtonexaminer.com/news/823633/introducing-the-100-trillion-dollar-note/'),
  ('zimbabwe-100-trillion-note', 'de', 2, 'Planet Banknote: Zimbabwe Hyperinflation: The 100 Trillion Note (2007-2009)', 'https://learn.planetbanknote.com/hyperinflation-zimbabwe/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zimbabwe-100-trillion-note', 'en', 'zimbabwe-100-trillion-note',
  'Zimbabwe printed a 100 trillion dollar bill',
  'A 1 with 14 zeros. And yet the bill was soon worth next to nothing.',
  'In January 2009, Zimbabwe put a 100 trillion Zimbabwe dollar note into circulation. At times, prices were roughly doubling every day.',
  'The bill shows a 1 followed by 14 zeros. Holding it still doesn’t make you rich. Zimbabwe’s 100 trillion dollar note is the most famous souvenir of an economic crisis.

## Inflation out of control

From 2007 on, the Zimbabwe dollar lost value at breakneck speed. The central bank printed more and more money, and prices rose faster and faster. According to economist Steve Hanke of the Cato Institute, inflation hit about 79.6 billion percent per month in mid-November 2008. At that point, prices were roughly doubling every day.

Someone who went shopping in the morning paid noticeably less than someone who walked into the same store in the evening. Saving cash made no sense at all anymore.

## The trillion series

The central bank responded with bigger and bigger bills. In January 2009, it announced new notes worth 10, 20, 50 and finally 100 trillion dollars, released, in its own words, for the "convenience of the public". The Washington Examiner reported an inflation rate of 231 million percent at the time.

They were the last banknotes of that currency. By April 2009, Zimbabwe had switched to a system using foreign currencies, mainly the US dollar and the South African rand. The 100 trillion note was withdrawn.

> Bonus fact: The Zimbabwe dollar wasn’t formally declared invalid until 2015. By then, nobody had used it in everyday life for years.

Today the bill is a popular collector’s item. Dealers sell it to people who want to hold a trillion in their hands, or a hundred of them.

The bill with the most zeros ended up achieving just one thing: it’s worth more today as a curiosity than it ever was as money.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zimbabwe-100-trillion-note', 'en', 1, 'Book about the history of money', 'book history of money', 'From shells to bitcoin: how money is created and why it sometimes breaks.'),
  ('zimbabwe-100-trillion-note', 'en', 2, 'Banknote collection album', 'banknote album collector', 'Keeps bills from around the world safe and organized.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zimbabwe-100-trillion-note', 'en', 1, 'Washington Examiner: Introducing the 100 Trillion Dollar Note', 'https://www.washingtonexaminer.com/news/823633/introducing-the-100-trillion-dollar-note/'),
  ('zimbabwe-100-trillion-note', 'en', 2, 'Planet Banknote: Zimbabwe Hyperinflation: The 100 Trillion Note (2007-2009)', 'https://learn.planetbanknote.com/hyperinflation-zimbabwe/');
