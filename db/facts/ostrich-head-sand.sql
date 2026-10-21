-- WTFact-Fakt „Strauße stecken den Kopf nicht in den Sand, sie drehen ihre Eier“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ostrich-head-sand', '2026-10-23T19:00:00+02:00', 'myths', '🪶', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ostrich-head-sand', 'de', 'strauss-kopf-in-den-sand',
  'Strauße stecken den Kopf nicht in den Sand, sie drehen ihre Eier',
  'Das bekannteste Bild für Feigheit ist ein Missverständnis. Strauße sind eher das Gegenteil von feige.',
  'Strauße vergraben ihren Kopf nie im Sand. Sie legen ihre Eier in Mulden im Boden und wenden sie mit dem Schnabel, was von Weitem so aussieht.',
  '„Den Kopf in den Sand stecken“ heißt: Probleme ignorieren und hoffen, dass sie weggehen. Das Vorbild ist der Strauß. Nur macht der Strauß das gar nicht.

## Was wirklich im Sand passiert

Strauße bauen keine Nester. Stattdessen graben sie Mulden in den Sand und legen ihre Eier hinein. Beide Eltern kümmern sich ums Brüten und wenden die Eier dabei regelmäßig mit dem Schnabel. Dafür muss der Kopf tief nach unten, in die Mulde hinein.

Von Weitem sieht das genau so aus, als würde der Vogel seinen Kopf im Boden versenken. Dazu kommt: Der Kopf eines Straußes ist im Vergleich zum riesigen Körper winzig. Senkt er ihn zum Grasen, scheint er einfach zu verschwinden.

## Ducken statt verstecken

Wird ein Strauß bedroht, legt er sich manchmal flach hin und drückt Kopf und Hals auf den Boden. So verschmilzt er besser mit der Umgebung und ist schwerer zu erwischen. Das ist eine clevere Tarnung, aber kein Kopf im Sand.

Meistens wählt er ohnehin eine andere Strategie: wegrennen. Laut „Science World“ sprinten Strauße bis zu 70 Kilometer pro Stunde und halten ihr Spitzentempo bis zu einer halben Stunde.

> Bonusfakt: Strauße legen die größten Eier aller Vögel und haben die größten Augen aller Landtiere.

Woher der Mythos stammt, ist nicht ganz klar. Laut der McGill University reicht er zurück bis ins alte Rom. Seitdem hat das Bild den Vogel nicht mehr losgelassen.

Der Strauß ist also kein Feigling, sondern ein Elternteil bei der Arbeit. Mit Sand im Schnabel und 70 Sachen in den Beinen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ostrich-head-sand', 'de', 1, 'Bildband über Vögel der Welt', 'Bildband Vögel der Welt', 'Von winzigen Kolibris bis zu riesigen Laufvögeln, mit großen Fotos.'),
  ('ostrich-head-sand', 'de', 2, 'Strauß-Kuscheltier', 'Strauß Kuscheltier', 'Ein langbeiniger Strauß zum Knuddeln, Kopf garantiert sandfrei.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ostrich-head-sand', 'de', 1, 'McGill Office for Science and Society: Ostriches Do Not Really Stick Their Heads in the Sand', 'https://www.mcgill.ca/oss/article/did-you-know/ostriches-their-heads-sand'),
  ('ostrich-head-sand', 'de', 2, 'Science World: Do ostriches really bury their heads in the sand?', 'https://www.scienceworld.ca/stories/do-ostriches-really-bury-their-heads-sand/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ostrich-head-sand', 'en', 'ostrich-head-sand',
  'Ostriches don’t bury their heads in the sand, they turn their eggs',
  'The most famous image of cowardice is a misunderstanding. Ostriches are anything but cowards.',
  'Ostriches never bury their heads in the sand. They lay their eggs in holes in the ground and turn them with their beaks, which looks like head-burying from afar.',
  '"Burying your head in the sand" means ignoring a problem and hoping it goes away. The role model is the ostrich. Except the ostrich doesn’t actually do that.

## What really happens in the sand

Ostriches don’t build nests. Instead, they dig holes in the sand and lay their eggs in them. Both parents share the incubation and regularly turn the eggs with their beaks. To do that, the head has to go way down into the hole.

From a distance, it looks exactly as if the bird were sinking its head into the ground. On top of that, an ostrich’s head is tiny compared to its huge body. When it lowers it to graze, it seems to simply vanish.

## Duck, don’t hide

When an ostrich feels threatened, it sometimes lies flat and presses its head and neck to the ground. That helps it blend in with its surroundings and makes it a harder target. Clever camouflage, but no head in the sand.

Most of the time, it picks a different strategy anyway: running. According to Science World, ostriches can sprint at up to 70 kilometers per hour and hold their top speed for up to half an hour.

> Bonus fact: Ostriches lay the largest eggs of any bird and have the largest eyes of any land animal.

Where the myth comes from isn’t entirely clear. According to McGill University, it goes back to ancient Rome. The image has stuck to the bird ever since.

So the ostrich isn’t a coward, it’s a parent at work. With sand on its beak and 70 km/h in its legs.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ostrich-head-sand', 'en', 1, 'Birds of the world photo book', 'birds of the world photo book', 'From tiny hummingbirds to giant flightless birds, with big photos.'),
  ('ostrich-head-sand', 'en', 2, 'Ostrich plush toy', 'ostrich plush toy', 'A long-legged ostrich to cuddle, head guaranteed sand-free.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ostrich-head-sand', 'en', 1, 'McGill Office for Science and Society: Ostriches Do Not Really Stick Their Heads in the Sand', 'https://www.mcgill.ca/oss/article/did-you-know/ostriches-their-heads-sand'),
  ('ostrich-head-sand', 'en', 2, 'Science World: Do ostriches really bury their heads in the sand?', 'https://www.scienceworld.ca/stories/do-ostriches-really-bury-their-heads-sand/');
