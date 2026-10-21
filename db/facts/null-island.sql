-- WTFact-Fakt „Die meistbesuchte Insel der digitalen Welt existiert gar nicht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('null-island', '2026-10-23T10:00:00+02:00', 'places', '🛟', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'null-island', 'de', 'null-island',
  'Die meistbesuchte Insel der digitalen Welt existiert gar nicht',
  'Null Island liegt bei 0 Grad Breite und 0 Grad Länge. Dort gibt es nur Wasser und eine Boje.',
  'Am Punkt 0° Nord, 0° Ost im Golf von Guinea liegt „Null Island“. Es ist keine Insel, sondern offenes Meer, auf dem fehlerhafte Daten aus Karten-Apps landen.',
  'Auf manchen digitalen Karten taucht mitten im Atlantik ein Ort auf, an dem sich erstaunlich viel tummelt: Fotos, Adressen, Fitness-Daten. Der Ort heißt Null Island. Das Problem: Es gibt ihn nicht.

## Der Nullpunkt der Welt

Wo sich der Äquator und der Nullmeridian kreuzen, liegt der Punkt mit den Koordinaten 0° Nord, 0° Ost. Er befindet sich im Golf von Guinea vor der Küste Westafrikas. Laut Big Think ist das nächste Land, Ghana oder São Tomé, rund 650 Kilometer entfernt. Dort ist nichts als offenes Meer.

Trotzdem landen dort ständig Daten. Der Grund ist ein typischer Programmierfehler: Wenn eine Software eine Adresse nicht in Koordinaten umwandeln kann, etwa wegen eines Tippfehlers im Straßennamen oder einer Hausnummer, die es nicht gibt, kommt manchmal einfach „0,0“ heraus. Und weil 0,0 ein echter Punkt auf dem Globus ist, wird der Eintrag genau dort eingezeichnet.

## Eine Insel für Fehler

Um solche Fehler leichter zu erkennen, bekam der Punkt einen Namen. Laut Atlas Obscura nahm der freie Kartendatensatz Natural Earth „Null Island“ spätestens 2011 auf. Seitdem ist die Insel, die keine ist, ein Insider-Witz unter Kartografen und Datenanalysten.

Ganz leer ist der Ort übrigens nicht. Genau bei 0° Nord, 0° Ost schwimmt eine Messboje mit der Nummer 13010 und dem Spitznamen „Soul“. Sie misst Wetter- und Meeresdaten und gehört zu einem Messnetz namens PIRATA.

> Bonusfakt: Laut Big Think ist die Boje in etwa 5 Kilometern Wassertiefe verankert. Sie ist eine von 17 Bojen, die seit 1997 im tropischen Atlantik messen.

Null Island ist also gleichzeitig nirgendwo und einer der vollsten Orte der digitalen Welt.

Wer irgendwann ein Foto von sich mitten im Atlantik in einer App findet, weiß jetzt Bescheid: Willkommen auf Null Island.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('null-island', 'de', 1, 'Globus mit Beleuchtung', 'Globus beleuchtet', 'Zeigt, wo Äquator und Nullmeridian sich treffen, auch im Dunkeln.'),
  ('null-island', 'de', 2, 'Buch über kuriose Landkarten', 'Buch kuriose Landkarten Karten', 'Seltsame, witzige und überraschende Karten aus aller Welt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('null-island', 'de', 1, 'Atlas Obscura: Null Island Is One of the Most Visited Places on Earth. Too Bad It Doesn’t Exist', 'https://www.atlasobscura.com/articles/null-island-is-one-of-the-most-visited-places-on-earth-too-bad-it-doesnt-exist'),
  ('null-island', 'de', 2, 'Big Think: Welcome to Null Island, where lost data goes to die', 'https://bigthink.com/strange-maps/null-island/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'null-island', 'en', 'null-island',
  'The busiest island in the digital world doesn’t exist',
  'Null Island sits at 0 degrees latitude and 0 degrees longitude. There’s nothing there but water and a buoy.',
  '"Null Island" sits at 0° N, 0° E in the Gulf of Guinea. It’s not an island but open ocean, where broken data from map apps ends up.',
  'On some digital maps, a spot in the middle of the Atlantic is surprisingly busy: photos, addresses, fitness data. The spot is called Null Island. The problem: it doesn’t exist.

## The world’s zero point

Where the equator and the prime meridian cross, you’ll find the point with the coordinates 0° N, 0° E. It lies in the Gulf of Guinea off the coast of West Africa. According to Big Think, the nearest land, Ghana or São Tomé, is about 650 kilometers (400 miles) away. There’s nothing there but open ocean.

Still, data lands there all the time. The reason is a classic software glitch: when a program can’t convert an address into coordinates, say because of a typo in a street name or a house number that doesn’t exist, it sometimes just spits out "0,0". And since 0,0 is a real point on the globe, the entry gets plotted right there.

## An island for errors

To make these errors easier to spot, the point got a name. According to Atlas Obscura, the free map dataset Natural Earth added "Null Island" no later than 2011. Since then, the island that isn’t one has been an inside joke among cartographers and data analysts.

The spot isn’t completely empty, by the way. Exactly at 0° N, 0° E floats a weather buoy numbered 13010 and nicknamed "Soul". It measures weather and ocean data and is part of a measuring network called PIRATA.

> Bonus fact: According to Big Think, the buoy is moored in water about 5 kilometers deep. It’s one of 17 buoys that have been taking measurements in the tropical Atlantic since 1997.

So Null Island is both nowhere and one of the busiest places in the digital world.

If you ever find a photo of yourself in the middle of the Atlantic in some app, now you know: welcome to Null Island.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('null-island', 'en', 1, 'Illuminated globe', 'illuminated globe', 'Shows where the equator and the prime meridian meet, even in the dark.'),
  ('null-island', 'en', 2, 'Book of strange maps', 'book strange maps', 'Weird, funny and surprising maps from around the world.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('null-island', 'en', 1, 'Atlas Obscura: Null Island Is One of the Most Visited Places on Earth. Too Bad It Doesn’t Exist', 'https://www.atlasobscura.com/articles/null-island-is-one-of-the-most-visited-places-on-earth-too-bad-it-doesnt-exist'),
  ('null-island', 'en', 2, 'Big Think: Welcome to Null Island, where lost data goes to die', 'https://bigthink.com/strange-maps/null-island/');
