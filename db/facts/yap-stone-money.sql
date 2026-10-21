-- WTFact-Fakt „Auf der Insel Yap zahlt man mit Steinen, die bis zu 4 Tonnen wiegen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('yap-stone-money', '2026-10-22T10:00:00+02:00', 'money', '🪨', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'yap-stone-money', 'de', 'yap-steingeld',
  'Auf der Insel Yap zahlt man mit Steinen, die bis zu 4 Tonnen wiegen',
  'Das Geld bleibt einfach liegen, wo es ist. Alle wissen trotzdem, wem es gehört.',
  'Auf der Pazifikinsel Yap gibt es Steingeld, dessen größte Scheiben rund 3,6 Meter breit und rund 4 Tonnen schwer sind. Wechselt ein Stein den Besitzer, bleibt er meist liegen, nur die Eigentümerschaft ändert sich.',
  'Wer auf Yap im westlichen Pazifik spazieren geht, kommt an großen runden Steinscheiben mit einem Loch in der Mitte vorbei. Das ist keine Deko. Das ist Geld.

## Geld zum Rollen

Die Steinscheiben heißen Rai. Die kleinsten sind nur ein paar Zentimeter breit. Die größten haben laut dem Houston Museum of Natural Science einen Durchmesser von rund 3,6 Metern, sind fast einen halben Meter dick und wiegen rund 4 Tonnen.

Der Kalkstein dafür stammt nicht einmal von Yap. Er wurde auf Palau abgebaut, das etwa 450 Kilometer entfernt liegt, und dann mit Flößen übers Meer gebracht. Der Wert eines Steins hängt deshalb nicht nur von seiner Größe ab, sondern auch davon, wie schwer er zu beschaffen war und welche Geschichte er hat.

## Bezahlen ohne Bewegung

Das Erstaunlichste ist, wie das Bezahlen funktioniert. Bekommt jemand einen großen Stein als Zahlung, wird der nicht durchs Dorf gerollt. Er bleibt, wo er ist. Nur die Eigentümerschaft wechselt, und die Leute wissen einfach, wem welcher Stein gehört.

Das Geld funktioniert also wie ein gemeinsames Gedächtnis. Im Grunde ist das gar nicht so anders als modernes Geld, das oft nur als Eintrag auf einem Konto existiert.

> Bonusfakt: Taifune haben einige Flöße mit Steinen versenkt. Taucher haben viele dieser Scheiben auf dem Meeresgrund rund um die Inseln gefunden.

In den 1930er-Jahren zählten Japaner über 13.000 Steinscheiben. Durch Taifune, Fluten und den Zweiten Weltkrieg, in dem Steine als Anker und Baumaterial dienten, ist es heute nur noch etwa die Hälfte. Im Alltag zahlt man auf Yap inzwischen mit US-Dollar. Für große Anlässe wie Mitgift oder Landkäufe kommt das Steingeld aber noch zum Einsatz.

Ein Vermögen, das niemand stehlen kann, weil man es nicht wegtragen kann. Auch ein Sicherheitskonzept.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('yap-stone-money', 'de', 1, 'Sachbuch über die Geschichte des Geldes', 'Buch Geschichte des Geldes Tauschhandel', 'Erklärt, wie Menschen vor Münzen und Scheinen bezahlt haben.'),
  ('yap-stone-money', 'de', 2, 'Bildband über Inseln im Pazifik', 'Bildband Pazifik Inseln Südsee', 'Traumhafte Fotos aus Mikronesien, Polynesien und Melanesien.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('yap-stone-money', 'de', 1, 'Houston Museum of Natural Science: Hard currency: Stone money of the Yap Islands', 'https://blog.hmns.org/2015/05/hard-currency-stone-money-of-the-yap-islands'),
  ('yap-stone-money', 'de', 2, 'NPR: The Island Of Stone Money', 'https://www.npr.org/sections/money/2011/02/15/131934618/The-island-of-stone-money');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'yap-stone-money', 'en', 'yap-stone-money',
  'On the island of Yap, people pay with stones weighing up to 4 tons',
  'The money just stays where it is. Everyone still knows who owns it.',
  'On the Pacific island of Yap, there is stone money whose largest discs are about 3.6 meters wide and weigh about 4 tons. When a stone changes hands, it usually stays put and only the ownership changes.',
  'Take a walk on Yap in the western Pacific and you’ll pass large round stone discs with a hole in the middle. They aren’t decorations. They’re money.

## Money you can roll

The stone discs are called rai. The smallest are just a few centimeters across. According to the Houston Museum of Natural Science, the biggest are about 3.6 meters (12 feet) in diameter, almost half a meter thick and weigh about 4 tons.

The limestone doesn’t even come from Yap. It was quarried on Palau, about 450 kilometers (280 miles) away, and brought across the sea on rafts. So a stone’s value depends not just on its size but also on how hard it was to get and on its history.

## Paying without moving

The most amazing part is how paying works. If someone receives a big stone as payment, nobody rolls it through the village. It stays where it is. Only the ownership changes, and people simply know who owns which stone.

So the money works like a shared memory. That’s actually not so different from modern money, which often exists only as an entry in an account.

> Bonus fact: Typhoons sank some of the rafts carrying stones. Divers have found many of these discs on the seabed around the islands.

In the 1930s, the Japanese counted over 13,000 stone discs. Typhoons, floods and World War II, when stones were used as anchors and building material, have cut that number roughly in half. For everyday purchases, people on Yap now use US dollars. For big occasions like dowries or land deals, the stone money still comes out.

A fortune nobody can steal, because nobody can carry it off. That’s one way to do security.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('yap-stone-money', 'en', 1, 'Book about the history of money', 'book history of money barter', 'Explains how people paid before coins and bills.'),
  ('yap-stone-money', 'en', 2, 'Pacific islands photo book', 'Pacific islands photo book', 'Stunning photos from Micronesia, Polynesia and Melanesia.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('yap-stone-money', 'en', 1, 'Houston Museum of Natural Science: Hard currency: Stone money of the Yap Islands', 'https://blog.hmns.org/2015/05/hard-currency-stone-money-of-the-yap-islands'),
  ('yap-stone-money', 'en', 2, 'NPR: The Island Of Stone Money', 'https://www.npr.org/sections/money/2011/02/15/131934618/The-island-of-stone-money');
