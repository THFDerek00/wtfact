-- WTFact-Fakt „In diesem Museum hängen seit 1990 leere Rahmen an der Wand“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('gardner-heist-empty-frames', '2026-10-21T21:00:00+02:00', 'crime', '🖼️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'gardner-heist-empty-frames', 'de', 'gardner-kunstraub-leere-rahmen',
  'In diesem Museum hängen seit 1990 leere Rahmen an der Wand',
  'Zwei falsche Polizisten, 81 Minuten, 13 Kunstwerke. Bis heute fehlt von allen jede Spur.',
  '1990 stahlen zwei Männer in Polizeiuniform 13 Kunstwerke aus dem Isabella Stewart Gardner Museum in Boston. Die Bilder sind verschwunden, die leeren Rahmen hängen noch immer.',
  'Wer heute durch das Isabella Stewart Gardner Museum in Boston geht, sieht an manchen Wänden: nichts. Nur einen goldenen Rahmen ohne Bild. Das ist kein Kunstkonzept, sondern die Erinnerung an den größten ungelösten Kunstraub der USA.

## Die Nacht nach dem St. Patrick’s Day

Kurz nach Mitternacht am 18. März 1990 klingelten zwei Männer in Uniformen der Bostoner Polizei an der Museumstür. Sie seien wegen eines Notrufs da, sagten sie. Ein Wachmann ließ sie herein. Ein Fehler, wie sich herausstellte.

Die falschen Polizisten blieben 81 Minuten im Haus. Danach fehlten 13 Kunstwerke, zusammen mehr als 500 Millionen Dollar wert. Darunter Rembrandts einziges bekanntes Seestück, „Christus im Sturm auf dem See Genezareth“ von 1633, und Vermeers „Das Konzert“, eines von nur rund 36 bekannten Gemälden des Malers. Dazu kam ein Bild von Manet.

## Zehn Millionen Dollar Belohnung

Seitdem hat niemand die Bilder wieder gesehen. 2017 verdoppelte das Museum die Belohnung für Hinweise, die zur Rückgabe führen, von fünf auf zehn Millionen Dollar. Gefunden wurde trotzdem nichts.

Und die leeren Rahmen? Die hängen noch. Isabella Stewart Gardner hatte in ihrem Testament festgelegt, dass ihre Sammlung so bleiben soll, wie sie sie eingerichtet hat. Also bleiben auch die Rahmen dort, wo die Bilder hingehören, als Platzhalter für die Rückkehr.

> Bonusfakt: Die Diebe nahmen nicht nur Gemälde mit. Laut „Hyperallergic“ gehören zu den 13 gestohlenen Objekten auch fünf Werke von Degas.

Der Fall ist eines der größten Rätsel der Kunstwelt. Es gibt Theorien und Spekulationen, aber keine Bilder.

Ein Museum, das seine Lücken ausstellt. Irgendwie das ehrlichste Exponat im ganzen Haus.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('gardner-heist-empty-frames', 'de', 1, 'Sachbuch über den Gardner-Kunstraub', 'Gardner Kunstraub Buch', 'Erzählt die ganze Geschichte der Nacht und der Ermittlungen.'),
  ('gardner-heist-empty-frames', 'de', 2, 'Puzzle mit Vermeer-Motiv', 'Vermeer Puzzle 1000 Teile', 'Holt sich einen Vermeer ins Wohnzimmer, ganz legal.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('gardner-heist-empty-frames', 'de', 1, 'Hyperallergic: Gardner Museum Doubles Reward to $10M for Return of Art Stolen in 1990', 'https://hyperallergic.com/381275/gardner-museum-doubles-reward-to-10m-for-return-of-art-stolen-in-1990/'),
  ('gardner-heist-empty-frames', 'de', 2, 'WPTV: $10 million reward deadline approaches in unsolved art heist', 'https://www.wptv.com/news/national/-10-million-reward-deadline-approaches-in-unsolved-art-heist');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'gardner-heist-empty-frames', 'en', 'gardner-heist-empty-frames',
  'This museum has had empty frames on its walls since 1990',
  'Two fake cops, 81 minutes, 13 works of art. There’s still no trace of any of them.',
  'In 1990, two men in police uniforms stole 13 works of art from the Isabella Stewart Gardner Museum in Boston. The paintings are gone, the empty frames are still on display.',
  'Walk through the Isabella Stewart Gardner Museum in Boston today and on some walls you’ll see: nothing. Just a golden frame without a picture. It isn’t a concept piece, it’s a reminder of the biggest unsolved art heist in the US.

## The night after St. Patrick’s Day

Shortly after midnight on March 18, 1990, two men in Boston police uniforms rang at the museum door. They said they were responding to a call. A guard let them in. That turned out to be a mistake.

The fake officers stayed inside for 81 minutes. Afterward, 13 works of art were missing, worth more than 500 million dollars together. Among them were Rembrandt’s only known seascape, "Christ in the Storm on the Sea of Galilee" from 1633, and Vermeer’s "The Concert", one of only about 36 known paintings by the artist. They also took a painting by Manet.

## A ten million dollar reward

Nobody has seen the paintings since. In 2017, the museum doubled its reward for information leading to their return, from five to ten million dollars. Still nothing turned up.

And the empty frames? They’re still hanging. Isabella Stewart Gardner’s will required her collection to stay the way she arranged it. So the frames stay where the paintings belong, as placeholders for their return.

> Bonus fact: The thieves didn’t just go for the big names. According to Hyperallergic, the 13 stolen objects include five works by Degas.

The case is one of the art world’s biggest mysteries. There are theories and speculation, but no paintings.

A museum that puts its gaps on display. Somehow the most honest exhibit in the whole building.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('gardner-heist-empty-frames', 'en', 1, 'Nonfiction book about the Gardner heist', 'Gardner museum heist book', 'Tells the whole story of that night and the investigation.'),
  ('gardner-heist-empty-frames', 'en', 2, 'Vermeer jigsaw puzzle', 'Vermeer jigsaw puzzle 1000 pieces', 'Brings a Vermeer into your living room, completely legally.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('gardner-heist-empty-frames', 'en', 1, 'Hyperallergic: Gardner Museum Doubles Reward to $10M for Return of Art Stolen in 1990', 'https://hyperallergic.com/381275/gardner-museum-doubles-reward-to-10m-for-return-of-art-stolen-in-1990/'),
  ('gardner-heist-empty-frames', 'en', 2, 'WPTV: $10 million reward deadline approaches in unsolved art heist', 'https://www.wptv.com/news/national/-10-million-reward-deadline-approaches-in-unsolved-art-heist');
