-- WTFact-Fakt „Sonnenlicht braucht 8 Minuten zu dir, aber Jahrtausende aus der Sonne heraus“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('sunlight-thousands-of-years', NULL, 'space', '☀️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sunlight-thousands-of-years', 'de', 'sonnenlicht-ist-tausende-jahre-alt',
  'Sonnenlicht braucht 8 Minuten zu dir, aber Jahrtausende aus der Sonne heraus',
  'Der letzte Sprint durchs All ist ein Klacks. Das eigentliche Problem ist die Sonne selbst.',
  'Licht von der Sonnenoberfläche ist in rund 8 Minuten bei uns, doch die Energie dahinter braucht Tausende bis Zehntausende Jahre, um sich aus dem Inneren der Sonne nach außen zu kämpfen.',
  'Wenn dir die Sonne ins Gesicht scheint, ist dieses Licht gerade mal ein paar Minuten unterwegs gewesen. Die Geschichte dahinter ist allerdings viel älter.

## Der schnelle Teil der Reise

Die Erde ist im Schnitt etwa 150 Millionen Kilometer von der Sonne entfernt. Licht schafft rund 300.000 Kilometer pro Sekunde. Laut BBC Sky at Night Magazine ergibt das eine Reisezeit von ungefähr 8 Minuten und 20 Sekunden. Weil die Erdbahn leicht oval ist, schwankt das zwischen etwa 8 Minuten 10 Sekunden und 8 Minuten 27 Sekunden.

Heißt auch: Wenn die Sonne plötzlich verschwinden würde, würdest du es erst gut 8 Minuten später merken.

## Der Stau im Inneren

Der lange Teil kommt vorher. Die Energie der Sonne entsteht tief in ihrem Kern durch Kernfusion. Von dort bis zur Oberfläche ist es zwar viel kürzer als bis zur Erde, aber der Weg ist komplett verstopft. Das Innere der Sonne ist so dicht, dass Licht nicht einfach hindurchsausen kann.

Laut NASA wird ein Lichtteilchen auf seinem Weg nach außen immer wieder von Atomen geschluckt und neu ausgesendet, jedes Mal in eine zufällige Richtung. Die NASA nennt das einen „betrunkenen Spaziergang“. Statt geradeaus geht es im Zickzack hin und her, vor und zurück. Am Ende dauert diese Reise laut NASA Zehntausende Jahre, die Agentur nennt etwa 40.000 Jahre. Das BBC Sky at Night Magazine spricht von Tausenden oder sogar Zehntausenden Jahren. Die genauen Schätzungen gehen also auseinander, aber es sind auf jeden Fall Jahrtausende.

Genau genommen ist es dabei nicht dasselbe Teilchen, das ankommt, sondern die Energie, die immer weitergereicht wird. Das Ergebnis bleibt trotzdem irre: Die Wärme auf deiner Haut hat sich ihren Weg aus der Sonne gebahnt, vor Tausenden von Jahren.

> Bonusfakt: Laut NASA legt das Licht nach dem Austritt aus der Sonne rund 93 Millionen Meilen bis zur Erde zurück, das sind etwa 150 Millionen Kilometer.

Acht Minuten Sprint nach Jahrtausenden im Stau. Klingt nach Berufsverkehr.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sunlight-thousands-of-years', 'de', 1, 'Sonnenfilter-Brillen für Himmelsbeobachtung', 'Sonnenfinsternis Brille zertifiziert ISO 12312-2', 'Zertifizierte Brillen, mit denen du Sonnenfinsternisse und Sonnenflecken sicher anschauen kannst.'),
  ('sunlight-thousands-of-years', 'de', 2, 'Sachbuch über die Sonne', 'Buch die Sonne unser Stern Sachbuch', 'Erklärt anschaulich, wie unser Stern funktioniert, von der Kernfusion bis zu Polarlichtern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sunlight-thousands-of-years', 'de', 1, 'NASA SVS: Origin Of Light', 'https://svs.gsfc.nasa.gov/11084'),
  ('sunlight-thousands-of-years', 'de', 2, 'BBC Sky at Night Magazine: How long it takes light from the Sun to reach Earth', 'https://skyatnightmagazine.com/space-science/how-take-light-from-sun-reach-earth');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sunlight-thousands-of-years', 'en', 'sunlight-is-thousands-of-years-old',
  'Sunlight takes 8 minutes to reach you, but millennia to get out of the Sun',
  'The final sprint through space is nothing. The real obstacle is the Sun itself.',
  'Light leaving the Sun''s surface reaches us in about 8 minutes, but the energy behind it takes thousands to tens of thousands of years to struggle out from the Sun''s interior.',
  'When the Sun shines on your face, that light has only been traveling for a few minutes. The story behind it is a lot older, though.

## The fast part of the trip

Earth is on average about 150 million kilometers from the Sun. Light covers roughly 300,000 kilometers per second. According to BBC Sky at Night Magazine, that works out to a travel time of about 8 minutes and 20 seconds. Because Earth''s orbit is slightly oval, it ranges from about 8 minutes 10 seconds to 8 minutes 27 seconds.

Which also means: if the Sun suddenly vanished, you wouldn''t notice for a good 8 minutes.

## The traffic jam inside

The long part comes before that. The Sun''s energy is produced deep in its core through nuclear fusion. The distance from there to the surface is much shorter than the distance to Earth, but the route is completely jammed. The Sun''s interior is so dense that light can''t just zip through.

According to NASA, a particle of light on its way out is absorbed by atoms and re-emitted again and again, each time in a random direction. NASA calls it a "drunken walk." Instead of a straight line, it zigzags back and forth. NASA says this journey takes tens of thousands of years and gives a figure of about 40,000 years. BBC Sky at Night Magazine speaks of thousands or even tens of thousands of years. So the exact estimates differ, but it''s millennia either way.

Strictly speaking, it isn''t the same particle that arrives, but the energy that keeps getting passed along. The result is still absurd: the warmth on your skin started working its way out of the Sun thousands of years ago.

> Bonus fact: According to NASA, once light leaves the Sun it travels about 93 million miles to Earth, which is roughly 150 million kilometers.

Eight minutes of sprinting after millennia in traffic. Sounds like rush hour.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sunlight-thousands-of-years', 'en', 1, 'Solar viewing glasses', 'solar eclipse glasses ISO 12312-2 certified', 'Certified glasses that let you safely watch solar eclipses and sunspots.'),
  ('sunlight-thousands-of-years', 'en', 2, 'Popular science book about the Sun', 'the Sun our star popular science book', 'Explains how our star works, from nuclear fusion to auroras, in plain language.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sunlight-thousands-of-years', 'en', 1, 'NASA SVS: Origin Of Light', 'https://svs.gsfc.nasa.gov/11084'),
  ('sunlight-thousands-of-years', 'en', 2, 'BBC Sky at Night Magazine: How long it takes light from the Sun to reach Earth', 'https://skyatnightmagazine.com/space-science/how-take-light-from-sun-reach-earth');
