-- WTFact-Fakt „Dieses kleine Rembrandt-Porträt wurde schon 4-mal gestohlen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('takeaway-rembrandt', '2026-10-24T10:00:00+02:00', 'crime', '🎭', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'takeaway-rembrandt', 'de', 'rembrandt-zum-mitnehmen',
  'Dieses kleine Rembrandt-Porträt wurde schon 4-mal gestohlen',
  'Sein Spitzname ist „Rembrandt zum Mitnehmen“. Und er hat einen Weltrekord.',
  'Rembrandts „Bildnis des Jacob de Gheyn III“ in der Londoner Dulwich Picture Gallery wurde 4-mal gestohlen. Laut Guinness World Records ist es das Gemälde mit den meisten erfassten Diebstählen.',
  'Manche Kunstwerke sind berühmt, weil sie schön sind. Dieses hier ist berühmt, weil es ständig verschwindet.

## Der „Rembrandt zum Mitnehmen“

In der Dulwich Picture Gallery im Süden Londons hängt ein kleines Porträt von Rembrandt aus dem Jahr 1632. Es zeigt Jacob de Gheyn III, einen niederländischen Kupferstecher. Ein eher unscheinbares Bild, wäre da nicht seine Kriminalakte.

Das Gemälde wurde 4-mal gestohlen, zuletzt 1983. Viermal verschwand es also aus derselben Galerie, und viermal fand es den Weg zurück. Das hat ihm einen Spitznamen eingebracht, den Museumsleute vermutlich nicht so gern hören: „Takeaway Rembrandt“, also Rembrandt zum Mitnehmen. Laut „The Art Newspaper“ hält es einen Eintrag bei Guinness World Records für die meisten erfassten Diebstähle eines einzelnen Gemäldes. „Londonist“ nennt es das meistgestohlene Bild der Welt.

Jedes Mal tauchte es wieder auf und landete zurück an seiner Wand. Deshalb kann man es heute noch besuchen.

## Der nächste Versuch 2019

Ganz vorbei ist die Geschichte nicht. Im November 2019 brachen Unbekannte spätabends in die Galerie ein und versuchten, zwei Gemälde aus der Ausstellung „Rembrandt’s Light“ mitzunehmen. Die Sicherheitssysteme schlugen an, Wachleute griffen ein, die Polizei kam schnell.

Beide Bilder wurden noch auf dem Gelände sichergestellt. Der Täter entkam allerdings.

> Bonusfakt: Ausgerechnet der „Rembrandt zum Mitnehmen“ war 2019 nicht betroffen. Er hing nicht in der Ausstellung.

Warum ausgerechnet dieses Bild so beliebt bei Dieben war? Vermutlich, weil es klein ist und ein echter Rembrandt. Eine gefährliche Kombination: leicht unter einen Mantel zu stecken und trotzdem ein Vermögen wert. Dass es danach praktisch unverkäuflich ist, weil jeder Händler es sofort erkennt, scheint die Diebe nicht abgeschreckt zu haben.

Andere Gemälde haben einen Stammplatz. Dieses hier hat eher eine Stammkundschaft.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('takeaway-rembrandt', 'de', 1, 'Bildband über Rembrandt', 'Rembrandt Bildband', 'Die großen Werke des Meisters, von Selbstporträts bis zur Nachtwache.'),
  ('takeaway-rembrandt', 'de', 2, 'Puzzle mit Rembrandt-Motiv', 'Rembrandt Puzzle 1000 Teile', 'Ein Rembrandt, den niemand klauen will, weil er aus 1000 Teilen besteht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('takeaway-rembrandt', 'de', 1, 'The Art Newspaper: Attempted robbery of Rembrandt paintings at Dulwich Picture Gallery', 'https://theartnewspaper.com/news/attempted-robbery-of-rembrandt-paintings-at-dulwich-picture-gallery'),
  ('takeaway-rembrandt', 'de', 2, 'Londonist: Someone Tries To Steal Rembrandt Paintings From Dulwich Picture Gallery (Again)', 'https://londonist.com/london/art-and-photography/someone-tries-to-steal-rembrandt-paintings-from-dulwich-picture-gallery-again');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'takeaway-rembrandt', 'en', 'takeaway-rembrandt',
  'This small Rembrandt portrait has been stolen 4 times',
  'Its nickname is the "takeaway Rembrandt". And it holds a world record.',
  'Rembrandt’s "Portrait of Jacob de Gheyn III" at London’s Dulwich Picture Gallery has been stolen 4 times. According to Guinness World Records, no single painting has more recorded thefts.',
  'Some works of art are famous because they’re beautiful. This one is famous because it keeps disappearing.

## The "takeaway Rembrandt"

At the Dulwich Picture Gallery in south London hangs a small portrait by Rembrandt from 1632. It shows Jacob de Gheyn III, a Dutch engraver. A fairly modest picture, if it weren’t for its criminal record.

The painting has been stolen 4 times, most recently in 1983. Four times it vanished from the same gallery, and four times it found its way back. That earned it a nickname museum staff probably don’t love: the "takeaway Rembrandt". According to The Art Newspaper, it holds a Guinness World Records entry for the most recorded thefts of a single painting. Londonist calls it the world’s most stolen picture.

Each time it turned up again and went back on its wall. That’s why you can still visit it today.

## The next attempt in 2019

The story isn’t entirely over. In November 2019, intruders broke into the gallery late at night and tried to take two paintings from the exhibition "Rembrandt’s Light". The security systems went off, guards stepped in and the police arrived fast.

Both paintings were recovered on the grounds. The culprit got away, though.

> Bonus fact: The takeaway Rembrandt itself wasn’t involved in 2019. It wasn’t part of the exhibition.

Why was this particular picture so popular with thieves? Probably because it’s small and a genuine Rembrandt. A dangerous combination: easy to slip under a coat and still worth a fortune. The fact that it’s practically unsellable afterward, since any dealer would recognize it instantly, doesn’t seem to have put anyone off.

Other paintings have a permanent spot. This one has regular customers.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('takeaway-rembrandt', 'en', 1, 'Rembrandt art book', 'Rembrandt art book', 'The master’s great works, from self-portraits to The Night Watch.'),
  ('takeaway-rembrandt', 'en', 2, 'Rembrandt jigsaw puzzle', 'Rembrandt jigsaw puzzle 1000 pieces', 'A Rembrandt nobody wants to steal, because it comes in 1000 pieces.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('takeaway-rembrandt', 'en', 1, 'The Art Newspaper: Attempted robbery of Rembrandt paintings at Dulwich Picture Gallery', 'https://theartnewspaper.com/news/attempted-robbery-of-rembrandt-paintings-at-dulwich-picture-gallery'),
  ('takeaway-rembrandt', 'en', 2, 'Londonist: Someone Tries To Steal Rembrandt Paintings From Dulwich Picture Gallery (Again)', 'https://londonist.com/london/art-and-photography/someone-tries-to-steal-rembrandt-paintings-from-dulwich-picture-gallery-again');
