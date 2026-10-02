-- WTFact-Fakt „Wer früher Captchas gelöst hat, hat nebenbei Bücher digitalisiert“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('recaptcha-books', '2026-09-21', 'tech', '🤖', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'recaptcha-books', 'de', 'recaptcha-buecher-digitalisiert',
  'Wer früher Captchas gelöst hat, hat nebenbei Bücher digitalisiert',
  'Diese verzerrten Wörter waren nicht nur ein Bot-Test. Sie waren Gratisarbeit für Zeitungsarchive und Bücher.',
  'Das frühe reCAPTCHA ließ Internetnutzer Wörter abtippen, die Scanner in alten Büchern und Zeitungen nicht lesen konnten.',
  'Erinnerst du dich an diese verzerrten Wörter, die du abtippen musstest, um zu beweisen, dass du kein Roboter bist? Eines davon war ein Test. **Das andere war echte Arbeit, und zwar für ein riesiges Digitalisierungsprojekt.**

## Die Idee aus der Uni

Erfunden hat reCAPTCHA ein Team an der Carnegie Mellon University in den USA, darunter der Informatiker Luis von Ahn. Er hatte schon am ursprünglichen Captcha mitgearbeitet. Dann fiel ihm auf, wie viele Milliarden Stunden Menschen weltweit mit dem Abtippen verbrachten. Seine Idee: Wenn ohnehin alle Wörter entziffern, warum nicht welche, die wirklich jemand braucht?

Beim Einscannen alter Texte scheitert die automatische Texterkennung nämlich oft an verblasster oder schräger Schrift. Bei englischen Texten aus dem 19. Jahrhundert übersah die Software laut Smithsonian 10 bis 30 Prozent. Genau solche Problemwörter landeten im Captcha.

## So hat dich das System eingespannt

Jedes reCAPTCHA zeigte zwei Wörter: ein Kontrollwort mit bekannter Lösung und ein unbekanntes aus einem Scan. Hast du das Kontrollwort richtig getippt, galt auch deine Eingabe beim anderen als glaubwürdig. **Tippten mehrere Leute dasselbe, war das Wort geknackt.**

Das Pilotprojekt war das Archiv der New York Times. Bei einem Test mit 24.000 Wörtern aus Times-Archiven bis zurück ins Jahr 1860 lag reCAPTCHA bei 99,1 Prozent Genauigkeit, normale Texterkennung nur bei 83,5 Prozent. Im ersten Jahr lösten Nutzer über 1,2 Milliarden reCAPTCHAs und entzifferten mehr als 440 Millionen Wörter. Das entspricht ungefähr 17.600 Büchern. Später kamen auch Scans von Google Books dazu.

> Google kaufte reCAPTCHA 2009. Um 2012 ersetzte der Dienst die Buchwörter durch Fotos aus Google Street View. Daher kommen die Ampeln und Zebrastreifen.

## Und dann kam Duolingo

Von Ahn blieb seinem Prinzip treu: Viele Menschen lösen gemeinsam, was Computer allein nicht schaffen. Später gründete er mit Severin Hacker die Sprachlern-App Duolingo.

Falls du also je über ein Captcha geflucht hast: Immerhin hast du dabei ein Stück Zeitungsgeschichte gerettet.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('recaptcha-books', 'de', 1, 'Die Innovatoren von Walter Isaacson', 'Die Innovatoren Walter Isaacson', 'Erzählt, wie Computer und Internet entstanden sind, von Ada Lovelace bis Google. Spannend wie eine Serie.'),
  ('recaptcha-books', 'de', 2, 'Mobiler Buch- und Dokumentenscanner', 'mobiler Buchscanner', 'Scannt Buchseiten und Dokumente ohne großen Flachbettscanner. Praktisch fürs Studium.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('recaptcha-books', 'de', 1, 'Wikipedia: ReCAPTCHA', 'https://en.wikipedia.org/wiki/ReCAPTCHA'),
  ('recaptcha-books', 'de', 2, 'National Geographic: Using our powers for good – how web security software can help to transcribe old books', 'https://www.nationalgeographic.com/science/article/using-our-powers-for-good-how-web-security-software-can-help-to-transcribe-old-books'),
  ('recaptcha-books', 'de', 3, 'Smithsonian Lemelson Center: Human Computation Pioneer Luis von Ahn', 'https://invention.si.edu/invention-stories/human-computation-pioneer-luis-von-ahn');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'recaptcha-books', 'en', 'recaptcha-digitized-books',
  'Solving old CAPTCHAs quietly turned people into book scanners',
  'Those squiggly words weren''t just a bot test. They were free labor for newspaper archives and books.',
  'Early reCAPTCHA had internet users type out words that scanners couldn''t read in old books and newspapers.',
  'Remember those warped words you had to type to prove you weren''t a robot? One of them was a test. **The other was real work for a massive digitization project.**

## An idea born on campus

reCAPTCHA was created by a team at Carnegie Mellon University that included computer scientist Luis von Ahn. He had already helped develop the original CAPTCHA. Then he realized people around the world were burning billions of hours typing those things. His idea: if everyone is deciphering words anyway, why not make them words someone actually needs?

When old texts get scanned, text recognition software often chokes on faded or smudged print. According to the Smithsonian, the software missed 10 to 30 percent of nineteenth-century English text. Those problem words were exactly what ended up in the CAPTCHA.

## How the system put you to work

Each reCAPTCHA showed two words: a control word with a known answer and an unknown one from a scan. If you got the control word right, the system trusted your answer for the other one too. **Once several people typed the same thing, the word was cracked.**

The pilot project was the New York Times archive. In a test with 24,000 words from Times archives going back to 1860, reCAPTCHA hit 99.1 percent accuracy, while standard text recognition managed only 83.5 percent. In the first year, users solved more than 1.2 billion reCAPTCHAs and deciphered over 440 million words. That''s roughly 17,600 books. Later, scans from Google Books joined the mix.

> Google bought reCAPTCHA in 2009. Around 2012, the book words were swapped for Google Street View photos. That''s where all the traffic lights and crosswalks came from.

## And then came Duolingo

Von Ahn stuck with his big idea: lots of people together can solve what computers can''t do alone. He later co-founded the language app Duolingo with Severin Hacker.

So if you ever cursed at a CAPTCHA, take comfort. You helped rescue a piece of newspaper history.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('recaptcha-books', 'en', 1, 'The Innovators by Walter Isaacson', 'The Innovators Walter Isaacson', 'Tells the story of how computers and the internet came to be, from Ada Lovelace to Google. Reads like a series.'),
  ('recaptcha-books', 'en', 2, 'Portable book and document scanner', 'portable book scanner', 'Scans book pages and documents without a bulky flatbed. Handy for school and research.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('recaptcha-books', 'en', 1, 'Wikipedia: ReCAPTCHA', 'https://en.wikipedia.org/wiki/ReCAPTCHA'),
  ('recaptcha-books', 'en', 2, 'National Geographic: Using our powers for good – how web security software can help to transcribe old books', 'https://www.nationalgeographic.com/science/article/using-our-powers-for-good-how-web-security-software-can-help-to-transcribe-old-books'),
  ('recaptcha-books', 'en', 3, 'Smithsonian Lemelson Center: Human Computation Pioneer Luis von Ahn', 'https://invention.si.edu/invention-stories/human-computation-pioneer-luis-von-ahn');
