-- WTFact-Fakt „Im Vatikan spricht sogar der Geldautomat Latein“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('vatican-latin-atm', '2026-09-24', 'language', '🏧', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vatican-latin-atm', 'de', 'vatikan-geldautomat-latein',
  'Im Vatikan spricht sogar der Geldautomat Latein',
  'Und für Waschmaschine, Stau und Flipperautomat gibt es dort ganz offizielle lateinische Wörter.',
  'An Geldautomaten der Vatikanbank kannst du Latein als Sprache auswählen, eine Option, die es so sonst nirgends auf der Welt geben soll.',
  'Du stehst am Geldautomaten und wählst die Sprache: Deutsch, Englisch, Italienisch … oder Latein. Klingt wie ein Witz aus dem Lateinunterricht, ist im Vatikan aber Realität.

## Bitte Karte einführen, auf Latein

Die Vatikanbank, offiziell „Istituto per le Opere Religiose“, betreibt im Vatikan **Geldautomaten mit lateinischer Menüführung**. Schon 2003 berichtete das Magazin „Wanted in Rome“ darüber. Der erste Bildschirm begrüßt dich mit „Inserito scidulam quaeso ut faciundam cognoscas rationem“, sinngemäß: Bitte Karte einführen, um den Vorgang zu starten. Abheben kann dort laut Wanted in Rome allerdings nur, wer ein Konto bei der Vatikanbank hat.

Warum ausgerechnet Latein? Zum einen ist es seit Jahrhunderten die Sprache der katholischen Kirche. Zum anderen leben und arbeiten im Vatikan Menschen aus vielen verschiedenen Ländern. Latein ist eine Sprache, die viele von ihnen zumindest teilen.

## Latein für Flipper und Stau

Aber wie sagt man auf Latein Dinge, die die alten Römer nie gesehen haben? Dafür gibt es ein eigenes Wörterbuch: das **„Lexicon Recentis Latinitatis“**, ein Lexikon des neueren Lateins. Es erschien erstmals 1992, erstellt von Fachleuten im Auftrag des Vatikans, und war ursprünglich für päpstliche Texte gedacht. Es gibt sogar eine deutsche Ausgabe namens „Neues Latein-Lexikon“.

Ein paar Kostproben, die Futility Closet daraus zusammengetragen hat:

- Waschmaschine: „machina linteorum lavatoria“
- Kühlschrank: „cella frigorifera“
- Stau: „fluxus interclusio“
- Bestseller: „liber maxime divenditus“
- Flipperautomat: „sphaeriludium electricum nomismate actum“, also etwa ein „elektrisches Kugelspiel, das mit einer Münze betrieben wird“

> Selbst für „flirten“ gibt es eine Übersetzung: „lusorie amare“, ungefähr „spielerisch lieben“.

## Tot, aber quicklebendig

Latein gilt als tote Sprache, weil sie niemand mehr als Muttersprache lernt. Im Vatikan wird sie trotzdem weiter gepflegt und um neue Wörter ergänzt. Das Lexikon wurde mehrfach neu aufgelegt, die bisher jüngste Ausgabe erschien 2020.

Geld abheben wie Cicero, nur eben mit PIN.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vatican-latin-atm', 'de', 1, 'Latein-Wörterbuch', 'Latein Wörterbuch Deutsch Latein', 'Für Schule, Uni oder einfach, um Sprüche auf alten Gebäuden endlich zu verstehen.'),
  ('vatican-latin-atm', 'de', 2, 'Poster vom Petersdom in Rom', 'Poster Petersdom Rom', 'Die berühmte Kuppel als Wandbild. Holt ein bisschen Rom-Gefühl ins Zimmer.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vatican-latin-atm', 'de', 1, 'Wikipedia: Lexicon Recentis Latinitatis', 'https://en.wikipedia.org/wiki/Lexicon_Recentis_Latinitatis'),
  ('vatican-latin-atm', 'de', 2, 'Wanted in Rome: Latin-language cashpoint', 'https://www.wantedinrome.com/news/latin-language-cashpoint.html'),
  ('vatican-latin-atm', 'de', 3, 'Grunge: The Vatican Is Home To This One Of A Kind ATM', 'https://www.grunge.com/614822/the-vatican-is-home-to-this-one-of-a-kind-atm/'),
  ('vatican-latin-atm', 'de', 4, 'Futility Closet: In Other Words', 'https://www.futilitycloset.com/2025/09/03/in-other-words-8/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'vatican-latin-atm', 'en', 'vatican-latin-atm',
  'In the Vatican, even the ATM speaks Latin',
  'And there are official Latin words for washing machine, traffic jam and pinball machine.',
  'At Vatican Bank ATMs, you can pick Latin as your language, an option said to exist nowhere else in the world.',
  'You walk up to an ATM and choose your language: English, German, Italian … or Latin. Sounds like a joke from Latin class, but in the Vatican it''s real.

## Please insert your card, in Latin

The Vatican Bank, officially the "Istituto per le Opere Religiose," runs **ATMs with Latin menus** inside the Vatican. The magazine Wanted in Rome reported on it back in 2003. The first screen greets you with "Inserito scidulam quaeso ut faciundam cognoscas rationem," roughly: please insert your card to start the transaction. According to Wanted in Rome, though, only people with an account at the Vatican Bank can actually use it.

Why Latin of all languages? For one, it has been the language of the Catholic Church for centuries. For another, the people who live and work in the Vatican come from many different countries. Latin is a language many of them at least have in common.

## Latin for pinball and traffic jams

But how do you say things in Latin that the ancient Romans never saw? There''s a dictionary for that: the **"Lexicon Recentis Latinitatis,"** a lexicon of modern Latin. It first came out in 1992, compiled by scholars on behalf of the Vatican, and was originally meant for papal texts. There''s even a German edition called "Neues Latein-Lexikon."

A few samples collected by Futility Closet:

- Washing machine: "machina linteorum lavatoria"
- Refrigerator: "cella frigorifera"
- Traffic jam: "fluxus interclusio"
- Bestseller: "liber maxime divenditus"
- Pinball machine: "sphaeriludium electricum nomismate actum," roughly an "electric ball game operated by a coin"

> Even "to flirt" has a translation: "lusorie amare," which means something like "to love playfully."

## Dead, but very much alive

Latin is considered a dead language because nobody learns it as their mother tongue anymore. Yet the Vatican keeps it in shape and keeps adding new words. The lexicon has been reissued several times, with the most recent edition so far published in 2020.

Withdrawing cash like Cicero, just with a PIN.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('vatican-latin-atm', 'en', 1, 'Latin dictionary', 'Latin English dictionary', 'For school, college, or finally understanding the inscriptions on old buildings.'),
  ('vatican-latin-atm', 'en', 2, 'St. Peter''s Basilica poster', 'St Peters Basilica Rome poster', 'The famous dome as wall art. Brings a little Rome into your room.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('vatican-latin-atm', 'en', 1, 'Wikipedia: Lexicon Recentis Latinitatis', 'https://en.wikipedia.org/wiki/Lexicon_Recentis_Latinitatis'),
  ('vatican-latin-atm', 'en', 2, 'Wanted in Rome: Latin-language cashpoint', 'https://www.wantedinrome.com/news/latin-language-cashpoint.html'),
  ('vatican-latin-atm', 'en', 3, 'Grunge: The Vatican Is Home To This One Of A Kind ATM', 'https://www.grunge.com/614822/the-vatican-is-home-to-this-one-of-a-kind-atm/'),
  ('vatican-latin-atm', 'en', 4, 'Futility Closet: In Other Words', 'https://www.futilitycloset.com/2025/09/03/in-other-words-8/');
