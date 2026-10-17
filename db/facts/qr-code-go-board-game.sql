-- WTFact-Fakt „Der QR-Code begann mit einer Partie Go in der Mittagspause“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('qr-code-go-board-game', '2026-10-20T12:00:00+02:00', 'tech', '🔳', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'qr-code-go-board-game', 'de', 'qr-code-inspiriert-von-go',
  'Der QR-Code begann mit einer Partie Go in der Mittagspause',
  'Schwarze und weiße Steine auf einem Gitter brachten einen Ingenieur aus der Autoteile-Branche auf die Idee für die Quadrate, die du jeden Tag scannst.',
  'Denso-Ingenieur Masahiro Hara, der in seinen Mittagspausen das Brettspiel Go spielte, holte sich die Idee für den QR-Code von dessen schwarzen und weißen Steinen auf einem Gitter.',
  'Jedes Mal, wenn du eine Speisekarte oder ein Konzertticket scannst, nutzt du eine Idee, die an einem Go-Brett in der Mittagspause entstanden ist.

## Ein Barcode-Problem in der Autofabrik

Anfang der 1990er verfolgten japanische Autohersteller ihre Bauteile mit klassischen Strichcodes. Laut ANZ passten darauf nur etwa 20 alphanumerische Zeichen, ein einziges Bauteil brauchte deshalb teils bis zu 10 Stück davon. 1992 machte sich Masahiro Hara, Ingenieur bei Denso, einem Unternehmen der Toyota-Gruppe, auf die Suche nach etwas Besserem.

## Schwarze und weiße Steine

Die Inspiration lag quasi auf dem Mittagstisch. „Ich habe in meiner Mittagspause immer Go gespielt“, erzählte Hara ANZ. Go spielt man mit schwarzen und weißen Steinen auf einem Gitter aus 19 mal 19 Linien, und Hara erkannte, dass so ein Muster Informationen tragen kann.

IEEE Spectrum beschreibt noch eine zweite Lektion aus dem Spiel: Man erkennt die Position eines Steins auch dann, wenn er etwas neben dem Kreuzungspunkt liegt. Diese Toleranz baute Hara mit doppelt abgelegten Daten in den Code ein. Deshalb lässt sich ein QR-Code noch lesen, wenn 30 Prozent davon verschmutzt oder beschädigt sind.

## Ein Hochhaus in jeder Ecke

Der Code musste sich außerdem vom Text drumherum abheben. Bei einer Zugfahrt fiel Hara ein hohes Gebäude auf, das aus seiner Umgebung herausstach. Daraus wurden die quadratischen Kästchen in den Ecken des Codes. Das richtige Verhältnis von Schwarz und Weiß dafür zu finden, kostete drei Monate Tests. Gewonnen hat 1:1:3:1:1.

1994 stellte Denso den QR-Code vor. Laut Hara fasst er bis zu 7.087 Ziffern. Denso behielt seine Patente, setzte sie aber nicht durch, berichtet ANZ, und so konnten andere Firmen den Code frei nutzen. So schaffte er es weit über die Fabrikhalle hinaus.

> Bonusfakt: QR steht für „Quick Response“, also schnelle Antwort, weil der Code schnell lesbar sein sollte.

Die Quadrate auf deinem Zugticket verdanken also einiges einem jahrtausendealten Brettspiel und einer gut genutzten Mittagspause.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('qr-code-go-board-game', 'de', 1, 'Go-Spielset', 'Go Spiel Set 19x19 Steine', 'Ein komplettes Brett mit 19 mal 19 Linien und schwarzen und weißen Steinen.'),
  ('qr-code-go-board-game', 'de', 2, 'Go-Buch für Einsteiger', 'Go Spiel Buch Anfänger', 'Erklärt Regeln und erste Strategien Schritt für Schritt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('qr-code-go-board-game', 'de', 1, 'IEEE Spectrum: How a Board Game and Skyscrapers Inspired the Development of the QR Code', 'https://spectrum.ieee.org/how-a-board-game-and-skyscrapers-inspired-the-development-of-the-qr-code'),
  ('qr-code-go-board-game', 'de', 2, 'ANZ: Have you checked in? Scanning the history of QR codes', 'https://www.anz.com.au/bluenotes/2021/10/history-qr-codes-digital-technology-business-government/'),
  ('qr-code-go-board-game', 'de', 3, 'BGR: The Idea For QR Codes Came From A Popular Board Game', 'https://www.bgr.com/2155648/qr-code-idea-came-from-popular-board-game/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'qr-code-go-board-game', 'en', 'qr-code-inspired-by-go',
  'The QR code started with a game of Go on a lunch break',
  'Black and white stones on a grid gave a car parts engineer the idea for the squares you scan every day.',
  'Denso engineer Masahiro Hara, who played the board game Go on his lunch breaks, took the idea for the QR code from its black and white stones on a grid.',
  'Every time you scan a menu or a concert ticket, you''re using an idea that started at a Go board during a lunch break.

## A barcode problem in car factories

In the early 1990s, Japanese car makers tracked components with linear barcodes. According to ANZ, those held only about 20 alphanumeric characters, so a single component could need up to 10 of them. In 1992, Masahiro Hara, an engineer at Denso, a company in the Toyota group, set out to find something better.

## Black and white stones

His inspiration was sitting on the lunch table. “I used to play GO on my lunch break,” Hara told ANZ. Go is played with black and white stones on a grid of 19 by 19 lines, and Hara realized that a pattern like that could carry information.

IEEE Spectrum describes a second lesson from the game: you can still tell where a piece is, even when it sits slightly off an intersection. Hara built that kind of tolerance into the code with redundant data. That''s why a QR code can still be read when 30 percent of it is dirty or damaged.

## A skyscraper in every corner

The code also had to stand out from the text printed around it. While riding a train, Hara noticed a tall building that stood out from everything nearby. That gave him the idea for the square boxes in the corners of the code. Finding the right mix of black and white for them took three months of testing. The winner was a ratio of 1:1:3:1:1.

Denso introduced the QR code in 1994. According to Hara, it can handle up to 7,087 digits. Denso kept its patents but chose not to enforce them, ANZ reports, so other companies could use the code freely, and it spread far beyond the factory floor.

> Bonus fact: QR stands for Quick Response, a name chosen because the code was built to be read fast.

So the squares on your train ticket owe a lot to a board game that is thousands of years old and a lunch break well spent.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('qr-code-go-board-game', 'en', 1, 'Go board game set', 'Go board game set 19x19 stones', 'A full 19 by 19 board with black and white stones to learn the game Hara played.'),
  ('qr-code-go-board-game', 'en', 2, 'Beginner''s book on Go', 'Go game beginners book', 'Explains the rules and first strategies step by step.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('qr-code-go-board-game', 'en', 1, 'IEEE Spectrum: How a Board Game and Skyscrapers Inspired the Development of the QR Code', 'https://spectrum.ieee.org/how-a-board-game-and-skyscrapers-inspired-the-development-of-the-qr-code'),
  ('qr-code-go-board-game', 'en', 2, 'ANZ: Have you checked in? Scanning the history of QR codes', 'https://www.anz.com.au/bluenotes/2021/10/history-qr-codes-digital-technology-business-government/'),
  ('qr-code-go-board-game', 'en', 3, 'BGR: The Idea For QR Codes Came From A Popular Board Game', 'https://www.bgr.com/2155648/qr-code-idea-came-from-popular-board-game/');
