-- WTFact-Fakt „Kleopatra lebte näher an der Mondlandung als am Bau der Cheops-Pyramide“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('cleopatra-timeline', '2026-08-21', 'history', '🏺', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cleopatra-timeline', 'de', 'kleopatra-mondlandung-pyramide',
  'Kleopatra lebte näher an der Mondlandung als am Bau der Cheops-Pyramide',
  'Für uns gehört beides ins „alte Ägypten“. Dabei lagen zwischen Pyramide und Kleopatra mehr Jahre als zwischen Kleopatra und Neil Armstrong.',
  'Zwischen dem Bau der Cheops-Pyramide und Kleopatra liegen über 2500 Jahre, zwischen Kleopatra und der Mondlandung keine 2000.',
  'Pyramiden, Pharaonen, Kleopatra: Im Kopf landet das alles in derselben Schublade namens „altes Ägypten“. Dabei ist diese Schublade riesig. **Kleopatra lebte zeitlich näher an der ersten Mondlandung als am Bau der Cheops-Pyramide.**

## Die Rechnung

Die Cheops-Pyramide in Gizeh entstand **um 2600 v. Chr.**, als Grabmal für den Pharao Cheops. Kleopatra VII. starb im Jahr **30 v. Chr.** Zwischen beiden liegen also **rund 2570 Jahre**.

Neil Armstrong betrat am 20. Juli 1969 den Mond. Von Kleopatras Tod bis dahin vergingen **knapp 2000 Jahre**. Der Abstand zur Pyramide ist also gut ein halbes Jahrtausend größer.

Für Kleopatra war die Cheops-Pyramide damit schon uralt. Sie stand bereits über 2500 Jahre, als die Königin regierte. Ungefähr so, wie für uns heute die Zeit der frühen Römer weit zurückliegt.

## Kleopatra war eigentlich keine typische Ägypterin

Noch ein Detail, das oft untergeht: Kleopatra gehörte zur Dynastie der Ptolemäer, die **makedonisch-griechischen Ursprungs** war. Die Familie stammte von Ptolemaios I. ab, einem makedonischen Feldherrn. Ihre Muttersprache war Griechisch.

Kleopatra herrschte von 51 bis 30 v. Chr. und war die letzte aktive Herrscherin dieser Dynastie. Anders als ihre Vorgänger auf dem Thron **beherrschte sie aber auch Ägyptisch**. Laut antiken Berichten beherrschte sie noch etliche weitere Sprachen.

## Warum uns das so überrascht

Das Problem ist unser Gefühl für Zeit. Alles, was mehr als ein paar hundert Jahre zurückliegt, fühlt sich gleich „alt“ an. Doch die altägyptische Geschichte erstreckt sich über Jahrtausende, länger als die gesamte Zeitspanne von Kleopatra bis heute.

> Die Cheops-Pyramide war ursprünglich rund 146 Meter hoch und blieb jahrtausendelang das höchste Bauwerk der Welt.

Die Pyramide war für Kleopatra das, was für uns heute antike Ruinen sind: ein Denkmal aus einer fernen Vergangenheit. Nur eben noch ein gutes Stück älter.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cleopatra-timeline', 'de', 1, 'Kleopatra: Ein Leben von Stacy Schiff', 'Stacy Schiff Kleopatra Biografie', 'Eine preisgekrönte Biografie, die sich liest wie ein Politthriller. Räumt mit vielen Klischees auf.'),
  ('cleopatra-timeline', 'de', 2, 'LEGO Architecture Große Pyramide von Gizeh', 'LEGO Architecture Pyramide von Gizeh', 'Ein detailreiches Bauset der Pyramide mit Blick ins Innere. Schönes Projekt für ein paar Abende.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cleopatra-timeline', 'de', 1, 'Wikipedia: Kleopatra VII.', 'https://de.wikipedia.org/wiki/Kleopatra_VII.'),
  ('cleopatra-timeline', 'de', 2, 'Wikipedia: Cheops-Pyramide', 'https://de.wikipedia.org/wiki/Cheops-Pyramide'),
  ('cleopatra-timeline', 'de', 3, 'Britannica: Cleopatra', 'https://www.britannica.com/biography/Cleopatra-queen-of-Egypt'),
  ('cleopatra-timeline', 'de', 4, 'NASA: Apollo 11', 'https://www.nasa.gov/mission/apollo-11/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cleopatra-timeline', 'en', 'cleopatra-moon-landing-pyramid',
  'Cleopatra lived closer to the Moon landing than to the building of the Great Pyramid',
  'We file both under "ancient Egypt." But more years separate the pyramid from Cleopatra than Cleopatra from Neil Armstrong.',
  'More than 2,500 years passed between the Great Pyramid and Cleopatra, but fewer than 2,000 between Cleopatra and the Moon landing.',
  'Pyramids, pharaohs, Cleopatra: in our heads, it all goes into one drawer labeled "ancient Egypt." But that drawer is huge. **Cleopatra lived closer in time to the first Moon landing than to the building of the Great Pyramid.**

## Do the math

The Great Pyramid of Giza was built **around 2600 BC** as a tomb for the pharaoh Khufu. Cleopatra VII died in **30 BC**. That''s **roughly 2,570 years** between them.

Neil Armstrong stepped onto the Moon on July 20, 1969. From Cleopatra''s death to that moment, **just under 2,000 years** passed. So the gap to the pyramid is more than half a millennium bigger.

For Cleopatra, the Great Pyramid was already ancient. It had been standing for over 2,500 years when she ruled. Kind of like how the early Romans feel impossibly far away to us.

## Cleopatra wasn''t exactly a typical Egyptian

Another detail that often gets lost: Cleopatra belonged to the Ptolemaic dynasty, which was of **Macedonian Greek origin**. The family descended from Ptolemy I, a Macedonian Greek general. Her first language was Greek.

Cleopatra ruled from 51 to 30 BC and was the last active ruler of that dynasty. But she was **the only Ptolemaic ruler known to have learned Egyptian**. According to ancient accounts, she spoke several other languages too.

## Why this surprises us

The problem is our sense of time. Anything older than a few hundred years just feels equally "old." But ancient Egyptian history stretches across millennia, longer than the entire span from Cleopatra to today.

> The Great Pyramid was originally about 146 meters, or 481 feet, tall and remained the tallest human-made structure in the world for thousands of years.

To Cleopatra, the pyramid was what ancient ruins are to us: a monument from a distant past. Just quite a bit older.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cleopatra-timeline', 'en', 1, 'Cleopatra: A Life by Stacy Schiff', 'Cleopatra A Life Stacy Schiff', 'A prize-winning biography that reads like a political thriller. Busts a lot of clichés.'),
  ('cleopatra-timeline', 'en', 2, 'LEGO Architecture Great Pyramid of Giza', 'LEGO Architecture Great Pyramid of Giza', 'A detailed building set of the pyramid with a peek inside. A great project for a few evenings.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cleopatra-timeline', 'en', 1, 'Wikipedia: Cleopatra', 'https://en.wikipedia.org/wiki/Cleopatra'),
  ('cleopatra-timeline', 'en', 2, 'Wikipedia: Great Pyramid of Giza', 'https://en.wikipedia.org/wiki/Great_Pyramid_of_Giza'),
  ('cleopatra-timeline', 'en', 3, 'Britannica: Cleopatra', 'https://www.britannica.com/biography/Cleopatra-queen-of-Egypt'),
  ('cleopatra-timeline', 'en', 4, 'NASA: Apollo 11', 'https://www.nasa.gov/mission/apollo-11/');
