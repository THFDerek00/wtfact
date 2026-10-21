-- WTFact-Fakt „Dieses Buch ist rund 600 Jahre alt und niemand kann es lesen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('voynich-manuscript-unread', '2026-10-23T19:00:00+02:00', 'crime', '📜', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'voynich-manuscript-unread', 'de', 'voynich-manuskript-unlesbar',
  'Dieses Buch ist rund 600 Jahre alt und niemand kann es lesen',
  'Unbekannte Schrift, Pflanzen, die es nicht gibt, badende Frauen. Das Voynich-Manuskript ist das Rätsel schlechthin.',
  'Das Voynich-Manuskript wurde laut Radiokarbon-Datierung zwischen 1404 und 1438 hergestellt. Seine Schrift und Sprache hat bis heute niemand entschlüsselt.',
  'Es gibt Bücher, die schwer zu lesen sind. Und es gibt das Voynich-Manuskript. Das kann seit Jahrhunderten niemand lesen, nicht einmal Profis.

## Ein Buch voller Fragen

Das Manuskript liegt heute an der Yale University in den USA und hat rund 240 Seiten. Geschrieben ist es in einer Schrift, die sonst nirgends vorkommt, in einer Sprache, die niemand kennt.

Dazu kommen Bilder, die das Rätsel noch größer machen. Zu sehen sind Gewächse, die wie Pflanzen aussehen, aber keiner bekannten Art eindeutig zuzuordnen sind. Dazu Zeichnungen, die an Laborgeräte erinnern, kosmische Symbole und Frauen in Badebecken. Ob es ein Kräuterbuch ist, ein Geheimcode oder ein raffinierter Scherz, weiß bis heute niemand.

## Der Blick ins Labor

Wenigstens beim Alter gibt es inzwischen eine Antwort. 2009 nahm ein Team der University of Arizona um Greg Hodgins vier hauchdünne Streifen Pergament von Seiten, die wahrscheinlich nie neu gebunden worden waren. Mit einem Beschleuniger-Massenspektrometer bestimmten die Forscher das Alter des Materials.

Ergebnis: Das Pergament stammt aus der Zeit zwischen 1404 und 1438. Das Manuskript ist damit rund 100 Jahre älter, als viele vorher angenommen hatten. Das Buch ist also eine echte Handschrift aus dem frühen 15. Jahrhundert und keine spätere Fälschung auf neuem Material.

> Bonusfakt: Für die Datierung reichten Streifen von nur etwa einem Zoll Länge, also rund zweieinhalb Zentimetern. Das Buch blieb dabei praktisch unversehrt.

Was drinsteht, beantwortet das Alter allerdings nicht. Kryptografen, Sprachforscher und Hobbydetektive haben sich daran versucht. Laut „Medievalists.net“ hat es bislang niemand geknackt.

Ein Buch, das 600 Jahre durchgehalten hat, ohne ein einziges Geheimnis preiszugeben. Respekt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('voynich-manuscript-unread', 'de', 1, 'Faksimile des Voynich-Manuskripts', 'Voynich Manuskript Buch Faksimile', 'Alle rätselhaften Seiten zum Selberblättern und Mitraten.'),
  ('voynich-manuscript-unread', 'de', 2, 'Buch über Geheimschriften und Codes', 'Buch Geheimschriften Codes knacken', 'Erklärt, wie berühmte Codes entstanden und geknackt wurden.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('voynich-manuscript-unread', 'de', 1, 'Live Science: Mystery Book Gives Up a Secret', 'https://www.livescience.com/12838-mystery-book-secret-110211-html.html'),
  ('voynich-manuscript-unread', 'de', 2, 'Medievalists.net: Mysterious Voynich manuscript dates back to the 15th century', 'https://www.medievalists.net/2011/02/mysterious-voynich-manuscript-dates-back-to-the-15th-century/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'voynich-manuscript-unread', 'en', 'voynich-manuscript-unread',
  'This book is about 600 years old and nobody can read it',
  'Unknown script, plants that don’t exist, bathing women. The Voynich manuscript is the ultimate mystery.',
  'According to radiocarbon dating, the Voynich manuscript was made between 1404 and 1438. Nobody has ever deciphered its script or its language.',
  'Some books are hard to read. And then there’s the Voynich manuscript. Nobody has been able to read it for centuries, not even the experts.

## A book full of questions

The manuscript is kept at Yale University in the US and runs to about 240 pages. It’s written in a script that doesn’t appear anywhere else, in a language nobody knows.

Then there are the pictures, which only deepen the mystery. They show growths that look like plants but can’t be clearly matched to any known species. There are drawings that resemble lab equipment, cosmic symbols and women in bathing pools. Whether it’s an herbal, a secret code or an elaborate joke, nobody knows.

## A look in the lab

At least the age now has an answer. In 2009, a team at the University of Arizona led by Greg Hodgins took four very thin strips of vellum from pages that had probably never been rebound. Using an accelerator mass spectrometer, the researchers dated the material.

The result: the vellum dates from between 1404 and 1438. That makes the manuscript about 100 years older than many had assumed. So it’s a genuine early 15th-century manuscript, not a later fake on new material.

> Bonus fact: The dating needed only strips about an inch long. The book itself was left practically untouched.

Its age doesn’t tell us what’s inside, though. Cryptographers, linguists and amateur sleuths have all tried. According to Medievalists.net, nobody has cracked it so far.

A book that has lasted 600 years without giving away a single secret. Respect.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('voynich-manuscript-unread', 'en', 1, 'Voynich manuscript facsimile', 'Voynich manuscript book facsimile', 'Every mysterious page to leaf through and puzzle over.'),
  ('voynich-manuscript-unread', 'en', 2, 'Book about secret codes and ciphers', 'book codes ciphers history', 'Explains how famous codes were created and cracked.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('voynich-manuscript-unread', 'en', 1, 'Live Science: Mystery Book Gives Up a Secret', 'https://www.livescience.com/12838-mystery-book-secret-110211-html.html'),
  ('voynich-manuscript-unread', 'en', 2, 'Medievalists.net: Mysterious Voynich manuscript dates back to the 15th century', 'https://www.medievalists.net/2011/02/mysterious-voynich-manuscript-dates-back-to-the-15th-century/');
