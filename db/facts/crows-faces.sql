-- WTFact-Fakt „Krähen vergessen dein Gesicht nicht, auch nicht nach Jahren“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('crows-faces', '2026-09-23', 'nature', '🐦‍⬛', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'crows-faces', 'de', 'kraehen-merken-gesichter',
  'Krähen vergessen dein Gesicht nicht, auch nicht nach Jahren',
  'Ein Forschungsteam in Seattle fing Krähen mit einer Maske im Gesicht. Die Vögel trugen es der Maske jahrelang nach.',
  'Krähen erkennen menschliche Gesichter wieder, merken sich jahrelang, wer ihnen Ärger gemacht hat, und geben das an andere Krähen weiter.',
  'Du hast dich mal mit einer Krähe angelegt? Dann hoff besser, dass sie dein Gesicht nicht gesehen hat. **Krähen erkennen einzelne Menschen wieder und merken sich über Jahre, wer ihnen Ärger gemacht hat.**

## Das Masken-Experiment

Gezeigt hat das ein Team um den Forscher John Marzluff von der University of Washington in Seattle. Ab 2006 fingen die Forschenden auf dem Campus und an anderen Orten in Seattle Amerikanerkrähen mit Netzen, beringten sie und ließen sie wieder frei. Dabei trugen sie Gummimasken mit menschlichen Gesichtern.

Die „gefährliche“ Maske war eine Höhlenmenschen-Maske. Als Kontrolle diente eine zweite, neutrale Maske, mit der nie ein Vogel gefangen wurde. Das Ergebnis war eindeutig: Wer mit der Höhlenmenschen-Maske über den Campus lief, wurde von Krähen lautstark beschimpft, egal wer darunter steckte. Auf die Kontrollmaske reagierten sie kaum.

Trugen die Forschenden die Maske verkehrt herum, drehten manche Krähen ihren Kopf ebenfalls verkehrt herum, um das Gesicht richtig zu sehen.

## Ein Groll, der sich herumspricht

Fast 7 Jahre nach Beginn der Studie zeterten die Vögel die Maske immer noch an, obwohl sie sie nur zweimal im Jahr für ein paar Stunden zu sehen bekamen. Noch erstaunlicher: **Der Anteil der Krähen, die mitschimpften, hatte sich ungefähr verdoppelt.** Die meisten davon waren nie gefangen worden und hatten den Vorfall vermutlich gar nicht miterlebt. Sie hatten es offenbar von anderen Krähen gelernt, von Eltern genauso wie von Artgenossen.

> In einer weiteren Studie untersuchte das Team die Gehirne von 12 wilden Krähen. Beim Anblick der bedrohlichen Maske war eine Region aktiv, die ähnlich arbeitet wie die Amygdala bei Säugetieren.

Laut Marzluff ergibt das alles Sinn. In derselben Nachbarschaft füttert ein Mensch die Vögel vielleicht, während ein anderer sie loswerden will. Wer Freund und Feind auseinanderhalten kann, ist klar im Vorteil.

Krähen führen also eine Art schwarze Liste, und sie teilen sie mit Familie und Nachbarn. Freundlich grüßen lohnt sich.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('crows-faces', 'de', 1, 'Sachbuch über Rabenvögel', 'Rabenvögel Buch', 'Stellt Krähen, Raben, Elstern und Dohlen vor und zeigt, wie schlau diese Vögel wirklich sind.'),
  ('crows-faces', 'de', 2, 'Futterstation für Wildvögel', 'Vogelfutterstation Garten', 'Lockt Vögel auf den Balkon oder in den Garten, damit du sie in Ruhe beobachten kannst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('crows-faces', 'de', 1, 'National Wildlife Federation: Crows Can Distinguish Faces In a Crowd', 'https://www.nwf.org/Magazines/National-Wildlife/2013/DecJan/Animals/Crows-Recognizing-Faces'),
  ('crows-faces', 'de', 2, 'NPR: The Crow Paradox', 'https://www.npr.org/transcripts/106826971'),
  ('crows-faces', 'de', 3, 'University of Washington: Crows react to threats in human-like way', 'https://www.washington.edu/news/2012/09/10/crows-react-to-threats-in-human-like-way/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'crows-faces', 'en', 'crows-remember-faces',
  'Crows never forget your face, even years later',
  'A research team in Seattle caught crows while wearing a mask. The birds held a grudge against that mask for years.',
  'Crows recognize human faces, remember for years who gave them trouble, and pass that knowledge on to other crows.',
  'Ever messed with a crow? Better hope it didn''t get a good look at your face. **Crows recognize individual people and remember for years who gave them trouble.**

## The mask experiment

A team led by researcher John Marzluff at the University of Washington in Seattle showed this. Starting in 2006, the researchers netted American crows on campus and at other sites around Seattle, banded them and let them go. While doing it, they wore rubber masks of human faces.

The "dangerous" mask was a caveman mask. As a control, they used a second, neutral mask that was never worn while catching birds. The result was clear: whoever walked around campus in the caveman mask got loudly scolded by crows, no matter who was underneath. The control mask barely got a reaction.

When the researchers wore the caveman mask upside down, some crows even turned their heads upside down to get a proper look at the face.

## A grudge that spreads

Nearly 7 years after the study began, the birds were still harassing the mask, even though they only saw it twice a year for a few hours. Even more surprising: **the share of crows joining in on the scolding had roughly doubled.** Most of them had never been caught and likely never saw the original event. They apparently learned it from other crows, both from their parents and from their peers.

> In a follow-up study, the team looked at the brains of 12 wild crows. Seeing the threatening mask lit up a region that works much like the amygdala in mammals.

According to Marzluff, it all makes sense. In the same neighborhood, one person might feed the birds while another wants them gone. Knowing friend from foe is a real advantage.

So crows basically keep a blacklist, and they share it with family and neighbors. Being nice to them pays off.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('crows-faces', 'en', 1, 'Gifts of the Crow by John Marzluff and Tony Angell', 'Gifts of the Crow Marzluff Angell', 'The crow researcher himself explains how these birds think, play and hold grudges. Beautifully illustrated.'),
  ('crows-faces', 'en', 2, 'Wild bird feeding station', 'bird feeding station', 'Brings birds to your balcony or yard so you can watch them up close.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('crows-faces', 'en', 1, 'National Wildlife Federation: Crows Can Distinguish Faces In a Crowd', 'https://www.nwf.org/Magazines/National-Wildlife/2013/DecJan/Animals/Crows-Recognizing-Faces'),
  ('crows-faces', 'en', 2, 'NPR: The Crow Paradox', 'https://www.npr.org/transcripts/106826971'),
  ('crows-faces', 'en', 3, 'University of Washington: Crows react to threats in human-like way', 'https://www.washington.edu/news/2012/09/10/crows-react-to-threats-in-human-like-way/');
