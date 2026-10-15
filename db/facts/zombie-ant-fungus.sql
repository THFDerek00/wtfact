-- WTFact-Fakt „Ein Pilz macht Ameisen zu Zombies, seit mindestens 48 Millionen Jahren“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('zombie-ant-fungus', '2026-10-15T22:07:02+02:00', 'horror', '🐜', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zombie-ant-fungus', 'de', 'zombie-ameisen-pilz',
  'Ein Pilz macht Ameisen zu Zombies, seit mindestens 48 Millionen Jahren',
  'Er lenkt seine Opfer an den perfekten Platz, lässt sie zubeißen und wächst dann aus ihrem Kopf. Und ein Fossil aus Hessen zeigt: Der Trick ist uralt.',
  'Der Pilz Ophiocordyceps unilateralis bringt Rossameisen dazu, sich in einem Blatt festzubeißen, und wächst dann aus ihrem Kopf; Bissspuren auf einem 48 Millionen Jahre alten Fossil zeigen, wie alt dieser Trick ist.',
  'Zombies gibt es wirklich. Sie sind nur ziemlich klein, haben sechs Beine und leben im Regenwald. **Der Pilz Ophiocordyceps unilateralis befällt Rossameisen und übernimmt die Kontrolle über ihr Verhalten.**

## Ein Biss mit Ansage

Eine infizierte Ameise verlässt ihre Kolonie und ihre gewohnten Wege. Sie klettert an einer Pflanze hoch und beißt sich an der Hauptader auf der Unterseite eines Blattes fest. Forschende nennen das den **„Todesbiss“**.

Dabei ist nichts dem Zufall überlassen. In einer Studie aus einem Regenwald in Thailand hingen die toten Ameisen rund 25 Zentimeter über dem Boden. Den letzten Biss setzten sie meist um die Mittagszeit, bis zum Sonnenuntergang waren sie tot. Der Platz scheint ideal für den Pilz zu sein: schattig und feucht genug, damit er wachsen kann.

Dann kommt der gruseligste Teil. Aus dem Kopf der Ameise wächst ein Stiel, an dessen Spitze Sporen reifen. Die rieseln auf den Waldboden, wo die nächsten Ameisen unterwegs sind. Der Kreislauf beginnt von vorn.

## Ein Fossil aus Hessen

Wie lange gibt es diesen Trick schon? Die Antwort fand ein Team um den Biologen David Hughes in der Grube Messel in Hessen. Dort entdeckten sie ein fossiles Blatt mit genau den typischen Narben, die der Todesbiss an der Blattader hinterlässt.

**Das Blatt ist 48 Millionen Jahre alt.** Damit ist es nach Angaben der Forschenden der älteste bekannte Beleg dafür, dass ein Parasit das Verhalten seines Wirts steuert. Die Studie erschien 2010 im Fachjournal Biology Letters.

> Der Zombiepilz hat sogar ein Videospiel inspiriert. Neil Druckmann, kreativer Kopf hinter „The Last of Us“, fand die Idee laut NPR in der BBC-Doku „Planet Earth“, die zeigt, wie ein Cordyceps-Pilz Insekten befällt.

Keine Sorge, Menschen stehen nicht auf dem Speiseplan. Der Pilz ist auf seine Ameisen spezialisiert und hat für sie offenbar seit Jahrmillionen einen festen Fahrplan.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zombie-ant-fungus', 'de', 1, 'Verwobenes Leben von Merlin Sheldrake', 'Verwobenes Leben Merlin Sheldrake', 'Ein Bestseller über die verborgene Welt der Pilze, spannend und verständlich geschrieben.'),
  ('zombie-ant-fungus', 'de', 2, 'Ameisenfarm mit Gel zum Beobachten', 'Ameisenfarm Gel', 'Damit kannst du Ameisen beim Tunnelbauen zuschauen, ganz ohne Zombies.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zombie-ant-fungus', 'de', 1, 'University of Exeter: Fossil reveals 48 million year history of zombie-ants', 'https://news-archive.exeter.ac.uk/2010/august/title_96180_en.html'),
  ('zombie-ant-fungus', 'de', 2, 'Live Science: How Zombie Ants Lose Their Minds', 'https://www.livescience.com/14064-zombie-ant-fungus-parasite.html'),
  ('zombie-ant-fungus', 'de', 3, 'KUNC (NPR): A Zombie Horror Game, Inspired By ... A Nature Documentary?', 'https://www.kunc.org/2013-07-09/a-zombie-horror-game-inspired-by-a-nature-documentary');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'zombie-ant-fungus', 'en', 'zombie-ant-fungus',
  'A fungus has been turning ants into zombies for at least 48 million years',
  'It steers its victims to the perfect spot, makes them bite down and then grows out of their heads. And a fossil from Germany shows the trick is ancient.',
  'The fungus Ophiocordyceps unilateralis makes carpenter ants clamp onto a leaf and then grows out of their heads; bite scars on a 48-million-year-old fossil show how old this trick is.',
  'Zombies are real. They''re just very small, have six legs and live in the rainforest. **The fungus Ophiocordyceps unilateralis infects carpenter ants and takes control of their behavior.**

## A bite on schedule

An infected ant leaves its colony and its usual trails. It climbs up a plant and clamps its jaws onto the main vein on the underside of a leaf. Researchers call this the **"death grip."**

Nothing about it is random. In a study in a Thai rainforest, the dead ants hung about 25 centimeters above the ground. They usually made their final bite around noon and were dead by sunset. The spot seems ideal for the fungus: shady and humid enough for it to grow.

Then comes the creepiest part. A stalk grows out of the ant''s head, with spores ripening at its tip. They rain down onto the forest floor, where the next ants are on the move. And the cycle starts over.

## A fossil from Germany

So how long has this been going on? A team led by biologist David Hughes found the answer in the Messel Pit in Hesse, Germany. There they discovered a fossil leaf with exactly the kind of scars the death grip leaves on a leaf vein.

**The leaf is 48 million years old.** According to the researchers, that makes it the oldest known evidence of a parasite controlling its host''s behavior. The study was published in 2010 in the journal Biology Letters.

> The zombie fungus even inspired a video game. According to NPR, Neil Druckmann, the creative mind behind "The Last of Us," got the idea from the BBC documentary "Planet Earth," which shows a Cordyceps fungus taking over insects.

Don''t worry, humans aren''t on the menu. This fungus specializes in its ants and has apparently been running the same schedule for millions of years.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('zombie-ant-fungus', 'en', 1, 'Entangled Life by Merlin Sheldrake', 'Entangled Life Merlin Sheldrake', 'A bestseller about the hidden world of fungi, gripping and easy to read.'),
  ('zombie-ant-fungus', 'en', 2, 'Gel ant farm', 'gel ant farm', 'Lets you watch ants dig their tunnels, zombie-free.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('zombie-ant-fungus', 'en', 1, 'University of Exeter: Fossil reveals 48 million year history of zombie-ants', 'https://news-archive.exeter.ac.uk/2010/august/title_96180_en.html'),
  ('zombie-ant-fungus', 'en', 2, 'Live Science: How Zombie Ants Lose Their Minds', 'https://www.livescience.com/14064-zombie-ant-fungus-parasite.html'),
  ('zombie-ant-fungus', 'en', 3, 'KUNC (NPR): A Zombie Horror Game, Inspired By ... A Nature Documentary?', 'https://www.kunc.org/2013-07-09/a-zombie-horror-game-inspired-by-a-nature-documentary');
