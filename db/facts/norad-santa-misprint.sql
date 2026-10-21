-- WTFact-Fakt „Der Weihnachtsmann-Tracker des US-Militärs begann 1955 mit einer falschen Telefonnummer“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('norad-santa-misprint', '2026-12-23T00:00:00+01:00', 'history', '📞', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'norad-santa-misprint', 'de', 'norad-weihnachtsmann-falsche-nummer',
  'Der Weihnachtsmann-Tracker des US-Militärs begann 1955 mit einer falschen Telefonnummer',
  'Ein Kind wollte den Weihnachtsmann anrufen und landete bei der Luftverteidigung. Der Oberst spielte mit.',
  'Eine Sears-Werbung druckte 1955 eine falsche Nummer für das Weihnachtsmann-Telefon, Kinder landeten bei der US-Luftverteidigung, und Oberst Harry Shoup gab sich als Weihnachtsmann aus.',
  'Jedes Jahr an Heiligabend verfolgen Millionen Kinder auf einer Karte, wo der Weihnachtsmann gerade fliegt. Betrieben wird das vom nordamerikanischen Luftverteidigungskommando NORAD. Angefangen hat alles mit einem Druckfehler.

## Ein Anruf auf dem roten Telefon

Im Dezember 1955 schaltete die Kaufhauskette Sears laut ABC7 eine Anzeige in einer Zeitung in der Gegend von Colorado Springs. Darin stand eine Nummer, unter der Kinder den Weihnachtsmann anrufen konnten. Nur war die Nummer falsch gedruckt.

Sie klingelte laut ABC7 auf dem Schreibtisch von Oberst Harry Shoup, dem Einsatzleiter des Continental Air Defense Command, kurz CONAD, dem Vorläufer von NORAD. Laut High Plains Public Radio war es ein rotes Telefon, dessen Nummer außer Shoup nur ein Vier-Sterne-General im Pentagon kannte. Wenn es klingelte, rechnete man mit dem Ernstfall.

## Der Oberst spielt mit

Am Apparat war aber ein kleines Kind, das fragte, ob er der Weihnachtsmann sei. Shoup hielt das zuerst für einen Scherz. Als das Kind zu weinen begann, spielte er mit. Laut High Plains Public Radio riefen danach immer mehr Kinder an, und Shoup ließ Soldaten die Telefone übernehmen und den Weihnachtsmann spielen.

An Heiligabend legte er noch nach. Er rief einen Radiosender an und meldete ein unbekanntes Flugobjekt, das wie ein Schlitten aussah. Ab da wollten alle wissen, wo der Weihnachtsmann gerade ist.

> Bonusfakt: Bis heute melden sich laut ABC7 jedes Jahr Mitarbeitende von NORAD samt Familie und Freunden freiwillig, um an Heiligabend Anrufe, Briefe und E-Mails von Kindern zu beantworten.

Aus einem Druckfehler wurde so eine der schönsten Weihnachtstraditionen, und das ausgerechnet beim Militär.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('norad-santa-misprint', 'de', 1, 'Retro-Telefon mit Wählscheibe', 'Retro Telefon Wählscheibe rot', 'Ein rotes Telefon wie auf Shoups Schreibtisch, nur ohne Ernstfall.'),
  ('norad-santa-misprint', 'de', 2, 'Kinderbuch über den Weihnachtsmann', 'Kinderbuch Weihnachtsmann Bilderbuch', 'Zum Vorlesen an den Abenden vor Heiligabend.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('norad-santa-misprint', 'de', 1, 'High Plains Public Radio: NORAD''s Santa Tracker began with a typo and a good sport', 'https://www.hppr.org/2014-12-19/norads-santa-tracker-began-with-a-typo-and-a-good-sport'),
  ('norad-santa-misprint', 'de', 2, 'ABC7 News: Oops, wrong number! The real story behind NORAD''s Santa tracker', 'https://abc7news.com/how-newspaper-misprint-turned-norads-santa-tracker/448262/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'norad-santa-misprint', 'en', 'norad-santa-tracker-wrong-number',
  'The US military''s Santa tracker began in 1955 with a wrong phone number',
  'A child tried to call Santa and reached air defense instead. The colonel played along.',
  'In 1955 a Sears ad printed the wrong number for its Santa hotline, kids reached US air defense, and Colonel Harry Shoup pretended to be Santa.',
  'Every Christmas Eve, millions of children follow Santa''s flight on a map. It''s run by NORAD, the North American air defense command. It all started with a misprint.

## A call on the red phone

In December 1955, according to ABC7, the department store chain Sears ran an ad in a newspaper in the Colorado Springs area. It listed a number children could call to talk to Santa. Only the number was printed wrong.

According to ABC7, it rang on the desk of Colonel Harry Shoup, director of operations at the Continental Air Defense Command, or CONAD, the forerunner of NORAD. High Plains Public Radio says it was a red phone whose number only Shoup and a four-star general at the Pentagon knew. If it rang, people expected an emergency.

## The colonel plays along

But on the line was a small child asking if he was Santa Claus. Shoup thought it was a joke at first. When the child started crying, he played along. According to High Plains Public Radio, more and more children called after that, and Shoup had airmen take over the phones and play Santa.

On Christmas Eve he went one step further. He called a radio station and reported an unidentified flying object that looked like a sleigh. From then on, everyone wanted to know where Santa was.

> Bonus fact: According to ABC7, NORAD staff, along with family and friends, still volunteer every Christmas to answer children''s calls, letters and emails.

A misprint turned into one of the loveliest Christmas traditions, and at a military command of all places.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('norad-santa-misprint', 'en', 1, 'Retro rotary phone', 'retro rotary phone red', 'A red phone like the one on Shoup''s desk, minus the emergencies.'),
  ('norad-santa-misprint', 'en', 2, 'Santa picture book for kids', 'Santa Claus picture book kids', 'For reading aloud in the evenings before Christmas Eve.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('norad-santa-misprint', 'en', 1, 'High Plains Public Radio: NORAD''s Santa Tracker began with a typo and a good sport', 'https://www.hppr.org/2014-12-19/norads-santa-tracker-began-with-a-typo-and-a-good-sport'),
  ('norad-santa-misprint', 'en', 2, 'ABC7 News: Oops, wrong number! The real story behind NORAD''s Santa tracker', 'https://abc7news.com/how-newspaper-misprint-turned-norads-santa-tracker/448262/');
