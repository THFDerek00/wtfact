-- WTFact-Fakt „Die erste Webcam der Welt filmte eine Kaffeemaschine“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('coffee-pot-webcam', '2026-08-28', 'tech', '☕', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'coffee-pot-webcam', 'de', 'kaffeemaschine-erste-webcam',
  'Die erste Webcam der Welt filmte eine Kaffeemaschine',
  'Forscher in Cambridge hatten keine Lust mehr, umsonst zur leeren Kanne zu laufen. Ihre Lösung schrieb Internetgeschichte.',
  'Die erste Webcam der Welt hatte nur eine Aufgabe: zu zeigen, ob in der Kaffeekanne der Uni Cambridge noch Kaffee war.',
  'Es gibt Erfindungen, die aus großen Visionen entstehen. Und es gibt Erfindungen, die aus Faulheit entstehen. **Die erste Webcam der Welt gehört zur zweiten Sorte.** Sie hatte genau eine Aufgabe: zu zeigen, ob noch Kaffee da ist.

## Das Problem mit der leeren Kanne

Anfang der 1990er im Computer Laboratory der Universität Cambridge: Im sogenannten Trojan Room stand eine Kaffeemaschine, die sich ein ganzer „Coffee Club“ teilte. Einige Mitglieder arbeiteten aber in anderen Teilen des Gebäudes. Sie mussten mehrere Treppen laufen, nur um dann oft vor einer **leeren Kanne** zu stehen. Die Leute im Trojan Room waren einfach schneller gewesen.

1991 hatten Quentin Stafford-Fraser und Paul Jardetzky die Lösung. Sie richteten eine Kamera auf die Kaffeemaschine und schlossen sie über eine sogenannte Framegrabber-Karte an einen Computer an. Jardetzky schrieb das Programm, das die Bilder aufnahm, Stafford-Fraser das Programm, das sie anzeigte. Der Name: **XCoffee**.

## Kaffee in 128 × 128 Pixeln

High-Tech war das nicht. Das Bild war **128 × 128 Pixel groß und schwarz-weiß** und wurde etwa dreimal pro Minute aktualisiert. Für die entscheidende Frage reichte das völlig: Kanne voll oder Kanne leer?

Zuerst funktionierte das nur im lokalen Netzwerk der Uni. Im November 1993 brachten Daniel Gordon und Martyn Johnson die Kamera dann **ins World Wide Web**. Plötzlich konnte jeder mit Internetzugang einer Kaffeekanne in Cambridge zuschauen.

## Ein Museumsstück

Am 22. August 2001 um 09:54 Uhr UTC wurde die Kamera abgeschaltet. Die Krups-Kaffeemaschine kam anschließend bei eBay unter den Hammer und wurde für **3350 Pfund** versteigert.

> Seit Sommer 2016 steht die Kaffeemaschine als Dauerleihgabe im Heinz Nixdorf MuseumsForum in Paderborn.

Heute hängen Webcams an Laptops, Türen und Vogelhäuschen. Die allererste wollte nur wissen, ob sich der Weg zur Kanne lohnt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('coffee-pot-webcam', 'de', 1, 'Filterkaffeemaschine im Retro-Design', 'Filterkaffeemaschine Retro', 'Klassischer Filterkaffee mit Glaskanne. Bringt Büroküchen-Charme in deine eigene Küche.'),
  ('coffee-pot-webcam', 'de', 2, 'Full-HD-Webcam', 'Webcam Full HD Mikrofon', 'Scharfes Bild für Videocalls und Streams. Deutlich mehr als 128 × 128 Pixel in Graustufen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('coffee-pot-webcam', 'de', 1, 'Wikipedia: Trojan-Room-Kaffeemaschine', 'https://de.wikipedia.org/wiki/Trojan_Room_Coffee_Pot'),
  ('coffee-pot-webcam', 'de', 2, 'University of Cambridge Computer Laboratory: The Trojan Room Coffee Pot: A (non-technical) biography', 'https://www.cl.cam.ac.uk/coffee/qsf/coffee.html'),
  ('coffee-pot-webcam', 'de', 3, 'HistoryofInformation.com: The First Webcam Points at the Trojan Room Coffee Pot', 'https://www.historyofinformation.com/detail.php?id=1507');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'coffee-pot-webcam', 'en', 'coffee-pot-first-webcam',
  'The world''s first webcam was pointed at a coffee pot',
  'Researchers at Cambridge got tired of walking to an empty coffee pot. Their fix made internet history.',
  'The world''s first webcam had one job: showing whether there was still coffee in a pot at the University of Cambridge.',
  'Some inventions come from grand visions. Others come from laziness. **The world''s first webcam belongs in the second group.** It had exactly one job: showing whether there was any coffee left.

## The empty pot problem

Early 1990s, the Computer Laboratory at the University of Cambridge: in a spot called the Trojan Room stood a coffee machine shared by a whole "coffee club." But some members worked in other parts of the building. They had to climb several flights of stairs, only to find an **empty pot** far too often. The people in the Trojan Room had simply gotten there first.

In 1991, Quentin Stafford-Fraser and Paul Jardetzky came up with a fix. They pointed a camera at the coffee machine and hooked it up to a computer through a video frame grabber. Jardetzky wrote the program that captured the images, Stafford-Fraser the one that displayed them. The name: **XCoffee**.

## Coffee in 128 by 128 pixels

This wasn''t exactly high tech. The image was **128 by 128 pixels and grayscale**, updated about three times a minute. For the crucial question, that was plenty: pot full or pot empty?

At first, it only worked on the university''s local network. In November 1993, Daniel Gordon and Martyn Johnson put the camera **on the World Wide Web**. Suddenly, anyone with an internet connection could watch a coffee pot in Cambridge.

## A museum piece

On August 22, 2001, at 09:54 UTC, the camera was switched off. The Krups coffee machine was later auctioned on eBay, where it sold for **3350 pounds**.

> Since the summer of 2016, the coffee maker has been on permanent loan to the Heinz Nixdorf MuseumsForum in Paderborn, Germany.

Today, webcams sit on laptops, doorbells and birdhouses. The very first one just wanted to know if the walk to the pot was worth it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('coffee-pot-webcam', 'en', 1, 'Retro drip coffee maker', 'retro drip coffee maker', 'Classic filter coffee with a glass carafe. Brings that office-kitchen charm to your own counter.'),
  ('coffee-pot-webcam', 'en', 2, 'Full HD webcam', '1080p webcam with microphone', 'A sharp picture for video calls and streams. Way more than 128 by 128 pixels in grayscale.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('coffee-pot-webcam', 'en', 1, 'Wikipedia: Trojan Room coffee pot', 'https://en.wikipedia.org/wiki/Trojan_Room_coffee_pot'),
  ('coffee-pot-webcam', 'en', 2, 'University of Cambridge Computer Laboratory: The Trojan Room Coffee Pot: A (non-technical) biography', 'https://www.cl.cam.ac.uk/coffee/qsf/coffee.html'),
  ('coffee-pot-webcam', 'en', 3, 'HistoryofInformation.com: The First Webcam Points at the Trojan Room Coffee Pot', 'https://www.historyofinformation.com/detail.php?id=1507');
