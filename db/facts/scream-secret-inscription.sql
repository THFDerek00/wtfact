-- WTFact-Fakt „Auf dem Bild „Der Schrei“ steht eine geheime Botschaft von Munch selbst“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('scream-secret-inscription', '2026-10-24T10:00:00+02:00', 'art', '😱', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'scream-secret-inscription', 'de', 'der-schrei-geheime-inschrift',
  'Auf dem Bild „Der Schrei“ steht eine geheime Botschaft von Munch selbst',
  'Jahrzehntelang dachte man, ein Besucher habe sie hingekritzelt. 2021 kam die Wahrheit ans Licht.',
  'In der oberen linken Ecke von Edvard Munchs „Der Schrei“ steht mit Bleistift: „Kann nur von einem Verrückten gemalt worden sein“. 2021 bestätigte das Nationalmuseum in Oslo, dass Munch das selbst geschrieben hat.',
  '„Der Schrei“ von Edvard Munch gehört zu den bekanntesten Bildern der Welt. Eine Figur mit weit aufgerissenem Mund vor einem glühend roten Himmel. Was viele nicht wissen: Auf dem Bild steht auch ein kleiner Satz.

## Ein Satz in der Ecke

In der oberen linken Ecke der Version von 1893 steht mit Bleistift eine winzige Inschrift auf Norwegisch. Übersetzt heißt sie: „Kann nur von einem Verrückten gemalt worden sein.“ Laut Apollo Magazine wurde sie spätestens 1904 bemerkt.

Lange Zeit dachten Fachleute, ein empörter Besucher habe den Satz heimlich auf das Bild geschrieben. Schließlich klingt er wie eine Beleidigung.

## Die Handschrift verrät den Täter

2021 untersuchte das Nationalmuseum von Norwegen in Oslo die Inschrift genauer. Laut Apollo nutzten die Fachleute dafür Infrarotaufnahmen, auf denen die Handschrift deutlich genug zu erkennen war.

Das Ergebnis war eindeutig: Munch hatte den Satz selbst geschrieben. Laut Art & Object stammt er vermutlich aus der Zeit nach 1895. Im Oktober 1895 wurde das Bild zum ersten Mal in Norwegen gezeigt. Bei einer Veranstaltung danach erklärte ein Medizinstudent namens Johan Scharffenberg öffentlich, Munch sei kein normaler Mensch.

> Bonusfakt: Laut Art & Object sagte die Kuratorin Mia Britt Guleng: „Die Schrift ist ohne Zweifel Munchs eigene.“ Das Museum geht davon aus, dass Munch bei Scharffenbergs Auftritt im Publikum saß.

Munch schrieb also vermutlich mit einer Mischung aus Ironie und Verletztheit genau den Vorwurf auf sein eigenes Bild. Vielleicht wollte er zeigen, dass er sich von solchen Worten nicht unterkriegen lässt.

Heute ist der kleine Bleistiftsatz ein weiteres Rätsel rund um ein ohnehin geheimnisvolles Bild. Ein Besuch in Oslo lohnt sich also doppelt: einmal für den Schrei und einmal für das Kleingedruckte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('scream-secret-inscription', 'de', 1, 'Buch über Edvard Munch', 'Buch Edvard Munch Der Schrei', 'Leben und Werk des norwegischen Malers.'),
  ('scream-secret-inscription', 'de', 2, '„Der Schrei“-Aufblasfigur', 'Der Schrei Munch Figur', 'Der berühmteste Gesichtsausdruck der Kunst als Deko.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('scream-secret-inscription', 'de', 1, 'Apollo Magazine: Experts confirm Edvard Munch wrote secret message on The Scream', 'https://apollo-magazine.com/munch-secret-message-scream/'),
  ('scream-secret-inscription', 'de', 2, 'Art & Object: Origin of Mysterious Inscription on Munch’s “The Scream” Confirmed', 'https://artandobject.com/news/origin-mysterious-inscription-munchs-scream-confirmed');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'scream-secret-inscription', 'en', 'scream-secret-inscription',
  'The painting "The Scream" contains a secret message from Munch himself',
  'For decades, people thought a visitor had scribbled it. In 2021, the truth came out.',
  'In the upper left corner of Edvard Munch’s "The Scream", a pencil line reads: "Can only have been painted by a madman". In 2021, the National Museum in Oslo confirmed that Munch wrote it himself.',
  'Edvard Munch’s "The Scream" is one of the most famous paintings in the world. A figure with a wide-open mouth in front of a fiery red sky. What many people don’t know: there’s also a little sentence on the painting.

## A sentence in the corner

In the upper left corner of the 1893 version, there’s a tiny pencil inscription in Norwegian. Translated, it reads: "Can only have been painted by a madman." According to Apollo Magazine, it was noticed no later than 1904.

For a long time, experts thought an outraged visitor had secretly written it on the painting. After all, it sounds like an insult.

## The handwriting gives it away

In 2021, the National Museum of Norway in Oslo examined the inscription more closely. According to Apollo, the experts used infrared images, which made the handwriting clear enough to analyze.

The result was clear: Munch had written the sentence himself. According to Art & Object, it probably dates from after 1895. In October 1895, the painting was shown in Norway for the first time. At an event afterwards, a medical student named Johan Scharffenberg declared publicly that Munch wasn’t a normal human being.

> Bonus fact: According to Art & Object, curator Mia Britt Guleng said: "The writing is without a doubt Munch’s own." The museum believes Munch was in the audience when Scharffenberg spoke.

So Munch probably wrote the very accusation onto his own painting with a mix of irony and hurt. Maybe he wanted to show that words like that wouldn’t get him down.

Today, the little pencil line is one more puzzle around an already mysterious painting. A visit to Oslo pays off twice: once for the scream and once for the small print.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('scream-secret-inscription', 'en', 1, 'Book about Edvard Munch', 'book Edvard Munch The Scream', 'The life and work of the Norwegian painter.'),
  ('scream-secret-inscription', 'en', 2, '"The Scream" inflatable figure', 'The Scream Munch inflatable', 'Art’s most famous facial expression as decor.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('scream-secret-inscription', 'en', 1, 'Apollo Magazine: Experts confirm Edvard Munch wrote secret message on The Scream', 'https://apollo-magazine.com/munch-secret-message-scream/'),
  ('scream-secret-inscription', 'en', 2, 'Art & Object: Origin of Mysterious Inscription on Munch’s “The Scream” Confirmed', 'https://artandobject.com/news/origin-mysterious-inscription-munchs-scream-confirmed');
