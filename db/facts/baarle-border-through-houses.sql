-- WTFact-Fakt „In diesem Ort liegt das Wohnzimmer in den Niederlanden und die Küche in Belgien“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('baarle-border-through-houses', '2026-10-21T21:00:00+02:00', 'places', '🗺️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'baarle-border-through-houses', 'de', 'baarle-grenze-durch-haeuser',
  'In diesem Ort liegt das Wohnzimmer in den Niederlanden und die Küche in Belgien',
  'Baarle besteht aus 22 belgischen Inseln in den Niederlanden. Und in denen liegen wieder niederländische.',
  'Im Grenzort Baarle liegen 22 belgische Enklaven mitten in den Niederlanden, darin wiederum niederländische Stückchen. Die Grenze läuft durch Straßen, Cafés und sogar durch Häuser.',
  'Grenzen stellt man sich als Linie vor, die zwei Länder trennt. In Baarle ist es eher ein Flickenteppich. Wer hier vom Sofa zum Kühlschrank geht, wechselt unter Umständen das Land.

## Ein Ort, zwei Länder

Baarle liegt an der Grenze zwischen Belgien und den Niederlanden und besteht eigentlich aus zwei Gemeinden: dem belgischen Baarle-Hertog und dem niederländischen Baarle-Nassau. Das Besondere: Baarle-Hertog besteht aus 22 kleinen belgischen Enklaven, die mitten in den Niederlanden liegen. Und in manchen davon liegen wieder Stückchen der Niederlande.

Laut „The Brussels Times“ gibt es deshalb zwei Rathäuser, zwei Postämter, zwei Feuerwachen und sogar zwei Rechtssysteme. Die Grenzlinien sind mit Reihen kleiner weißer Kreuze markiert, damit man überhaupt den Überblick behält.

## Ein Haus, zwei Hausnummern

Manche Grenzen laufen mitten durch Gebäude. In der Straße Loveren steht ein Haus, dessen Wohnzimmer in den Niederlanden liegt und dessen Küche in Belgien. Es hat zwei Türklingeln und zwei Hausnummern: Loveren 2 für den belgischen Teil und Loveren 19 für den niederländischen.

An jedem Haus hängt zudem eine Flagge, die zeigt, ob es niederländisch oder belgisch ist. Laut „The Brussels Times“ sind nämlich selbst die Briefträger vor Ort verwirrt.

> Bonusfakt: Je nach Zählweise kommt man auf noch mehr Stückchen. „Dutch Genealogy“ zählt insgesamt 30 Enklaven: 22 belgische und 8 niederländische.

Wie konnte das passieren? Das Durcheinander geht auf mittelalterliche Verträge zurück, in denen Landstücke zwischen den Herren von Breda und dem Herzog von Brabant hin- und hergeschoben wurden. Endgültig festgelegt wurden die Grenzen erst im Vertrag von Maastricht 1843.

In Baarle braucht man keinen Reisepass, um ins Ausland zu kommen. Manchmal reicht der Weg zur Kaffeemaschine.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('baarle-border-through-houses', 'de', 1, 'Atlas mit kuriosen Grenzen', 'Buch kuriose Grenzen Atlas', 'Zeigt die seltsamsten Grenzverläufe der Welt auf Karten.'),
  ('baarle-border-through-houses', 'de', 2, 'Fahrradkarte Belgien und Niederlande', 'Fahrradkarte Belgien Niederlande Grenze', 'Für eine Radtour, bei der man ständig das Land wechselt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('baarle-border-through-houses', 'de', 1, 'The Brussels Times: Hidden Belgium: The town with a split identity', 'https://www.brusselstimes.com/623677/hidden-belgium-the-town-with-a-split-identity'),
  ('baarle-border-through-houses', 'de', 2, 'Dutch Genealogy: The Bizarre Borders of Baarle', 'https://dutchgenealogy.nl/the-bizarre-borders-of-baarle');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'baarle-border-through-houses', 'en', 'baarle-border-through-houses',
  'In this town, the living room is in the Netherlands and the kitchen in Belgium',
  'Baarle is made up of 22 Belgian islands inside the Netherlands. And some of those contain Dutch bits again.',
  'In the border town of Baarle, 22 Belgian enclaves sit in the middle of the Netherlands, with Dutch pieces inside some of them. The border runs through streets, cafés and even houses.',
  'We picture borders as a line separating two countries. In Baarle, it’s more like a patchwork quilt. Walking from the couch to the fridge here can mean changing countries.

## One town, two countries

Baarle sits on the border between Belgium and the Netherlands and is actually two municipalities: Belgian Baarle-Hertog and Dutch Baarle-Nassau. The twist: Baarle-Hertog is made up of 22 small Belgian enclaves in the middle of the Netherlands. And some of them contain bits of the Netherlands again.

According to The Brussels Times, that’s why there are two town halls, two post offices, two fire stations and even two legal systems. The border lines are each marked with a row of small white crosses, just so people can keep track.

## One house, two house numbers

Some borders run straight through buildings. On a street called Loveren, there’s a house whose living room is in the Netherlands and whose kitchen is in Belgium. It has two doorbells and two house numbers: Loveren 2 for the Belgian part and Loveren 19 for the Dutch part.

Each house also has a flag showing whether it’s Dutch or Belgian. According to The Brussels Times, even the local postmen get confused.

> Bonus fact: Depending on how you count, there are even more pieces. Dutch Genealogy counts 30 enclaves in total: 22 Belgian and 8 Dutch.

How did this happen? The mess goes back to medieval treaties that shuffled pieces of land between the Lords of Breda and the Duke of Brabant. The borders weren’t finally fixed until the Treaty of Maastricht in 1843.

In Baarle, you don’t need a passport to go abroad. Sometimes a trip to the coffee machine will do.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('baarle-border-through-houses', 'en', 1, 'Atlas of strange borders', 'book strange borders atlas', 'Maps out the weirdest borders in the world.'),
  ('baarle-border-through-houses', 'en', 2, 'Cycling map of Belgium and the Netherlands', 'cycling map Belgium Netherlands', 'For a bike ride where you keep switching countries.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('baarle-border-through-houses', 'en', 1, 'The Brussels Times: Hidden Belgium: The town with a split identity', 'https://www.brusselstimes.com/623677/hidden-belgium-the-town-with-a-split-identity'),
  ('baarle-border-through-houses', 'en', 2, 'Dutch Genealogy: The Bizarre Borders of Baarle', 'https://dutchgenealogy.nl/the-bizarre-borders-of-baarle');
