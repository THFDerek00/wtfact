-- WTFact-Fakt „Tetris war 1993 das erste Videospiel im Weltall“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('tetris-in-space', '2026-10-10T20:00:00+02:00', 'popculture', '🚀', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tetris-in-space', 'de', 'tetris-erstes-videospiel-im-weltall',
  'Tetris war 1993 das erste Videospiel im Weltall',
  'Lange bevor Astronauten auf Tablets Serien schauten, flog ein Kosmonaut mit einem Game Boy zur Raumstation Mir.',
  'Laut Guinness World Records war Tetris für den Game Boy das erste Videospiel im Weltall: Kosmonaut Alexander Serebrow nahm es 1993 mit zur Raumstation Mir.',
  'Lange bevor Astronauten auf Tablets Serien streamten, packte ein Kosmonaut etwas viel Einfacheres für seinen Flug ins All ein: einen Game Boy und Tetris.

## Ein Puzzlespiel im Orbit

Laut Guinness World Records war Tetris für den Game Boy das erste Videospiel im Weltall. Der russische Kosmonaut Alexander Serebrow nahm das Modul 1993 auf seine Mission zur Raumstation Mir mit. Es startete am 1. Juli 1993 mit Sojus TM-17 und kam 196 Tage und 17 Stunden später zurück, nachdem es die Erde mehr als 3.000 Mal umrundet hatte.

Ein Museumsstück war es für Serebrow nicht. In einer signierten Notiz, die das Techmagazin BGR zitiert, schrieb er: „Während des Flugs habe ich in den seltenen Minuten Freizeit gern Game Boy gespielt.“ Stell dir vor, du stapelst fallende Blöcke, während draußen vor dem Fenster der echte Planet vorbeizieht.

## Passt irgendwie

Guinness weist darauf hin, warum die Wahl gut passt: Tetris wurde in der Sowjetunion erfunden. Laut BGR stammt sein Erfinder Alexei Paschitnow aus Moskau. Nintendo brachte die Game-Boy-Version 1989 heraus. Ein Spiel aus Moskau flog also mit einem russischen Kosmonauten ins All.

Und was ist so ein Weltraum-Game-Boy heute wert? Weniger, als du denkst. Laut Guinness wurde das Modul 2011 bei einer Auktion zur Raumfahrtgeschichte von Bonhams für 1.220 Dollar versteigert. Laut BGR gehörten Game Boy, Anleitung und Serebrows Notiz mit zum Paket.

> Bonusfakt: Guinness nennt auch die Vorgeschichte: Dasselbe Modul war schon 1996 bei Sotheby’s in New York versteigert worden.

Der erste Tetris-Highscore im All hatte die beste Aussicht der Spielegeschichte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tetris-in-space', 'de', 1, 'Tetris-Lampe aus stapelbaren Leuchtblöcken', 'Tetris Lampe', 'Die Blöcke lassen sich beliebig stapeln und leuchten in den klassischen Farben.'),
  ('tetris-in-space', 'de', 2, 'Buch über die Geschichte von Tetris', 'Tetris Geschichte Buch Graphic Novel', 'Erzählt, wie das Spiel aus Moskau um die Welt ging.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tetris-in-space', 'de', 1, 'Guinness World Records: First videogame in space', 'https://www.guinnessworldrecords.com/world-records/109302-first-videogame-in-space'),
  ('tetris-in-space', 'de', 2, 'BGR: Nintendo Holds A Guinness World Record That''s Out Of This World', 'https://www.bgr.com/2260269/nintendo-guinness-world-record-explained/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tetris-in-space', 'en', 'tetris-first-video-game-in-space',
  'Tetris became the first video game in space in 1993',
  'Long before astronauts watched shows on tablets, a cosmonaut flew to the Mir space station with a Game Boy.',
  'According to Guinness World Records, Tetris for the Game Boy was the first video game in space: cosmonaut Aleksandr Serebrov took it to the Mir space station in 1993.',
  'Long before astronauts streamed shows on tablets, one cosmonaut packed something much simpler for his trip to space: a Game Boy and Tetris.

## A puzzle game in orbit

According to Guinness World Records, Tetris for the Game Boy was the first video game in space. Russian cosmonaut Aleksandr A. Serebrov took the cartridge along on his 1993 mission to the Mir space station. It launched on July 1, 1993, aboard Soyuz TM-17 and came back 196 days and 17 hours later, after orbiting Earth more than 3,000 times.

Serebrov didn''t treat it like a museum piece. In a signed note quoted by the tech site BGR, he wrote: "During flight, in rare minutes of leisure, I enjoyed playing Game Boy." Imagine stacking falling blocks while the actual planet drifts past the window.

## Fitting, in a way

Guinness points out why the choice makes sense: Tetris was invented in the Soviet Union. According to BGR, its creator Alexey Pajitnov was born in Moscow. Nintendo released the Game Boy version in 1989. So a game from Moscow flew into space with a Russian cosmonaut.

And what is a space-flown Game Boy worth today? Less than you''d think. According to Guinness, the cartridge sold for 1,220 dollars at a Bonhams space history auction in 2011. BGR reports that the Game Boy, the manual and Serebrov''s note were part of the lot.

> Bonus fact: Guinness lists the backstory too: the same cartridge had already been auctioned at Sotheby''s in New York in 1996.

The first Tetris high score in space came with the best view in gaming history.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tetris-in-space', 'en', 1, 'Tetris lamp made of stackable light blocks', 'Tetris lamp', 'The blocks stack any way you like and glow in the classic colors.'),
  ('tetris-in-space', 'en', 2, 'Book on the history of Tetris', 'Tetris history book graphic novel', 'Tells how the game from Moscow went around the world.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tetris-in-space', 'en', 1, 'Guinness World Records: First videogame in space', 'https://www.guinnessworldrecords.com/world-records/109302-first-videogame-in-space'),
  ('tetris-in-space', 'en', 2, 'BGR: Nintendo Holds A Guinness World Record That''s Out Of This World', 'https://www.bgr.com/2260269/nintendo-guinness-world-record-explained/');
