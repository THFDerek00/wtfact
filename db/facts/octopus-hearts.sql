-- WTFact-Fakt „Drei Herzen, blaues Blut und ein Gehirn in den Armen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('octopus-hearts', '2026-09-29', 'nature', '🐙', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'octopus-hearts', 'de', 'oktopus-drei-herzen',
  'Drei Herzen, blaues Blut und ein Gehirn in den Armen',
  'Der Oktopus sieht nicht nur aus wie ein Alien. Sein Körper funktioniert auch so.',
  'Ein Oktopus hat drei Herzen, und eines davon hört auf zu schlagen, wenn er schwimmt.',
  'Wenn Außerirdische auf der Erde leben, dann vermutlich im Meer und mit acht Armen. Der Oktopus bricht so ziemlich jede Regel, die wir von Tieren kennen. Er gehört zu den Kopffüßern, einer Gruppe von Weichtieren. Seine nächsten Verwandten sind also eher Schnecken und Muscheln als Fische.

## Drei Herzen statt einem

Zwei kleine Herzen pumpen Blut durch die Kiemen, ein großes versorgt den Rest des Körpers. Das Kuriose: **Das große Herz hört auf zu schlagen, wenn der Oktopus schwimmt.** Schwimmen ist für ihn deshalb ziemlich anstrengend. Kein Wunder, dass er lieber über den Meeresboden krabbelt.

## Blaues Blut, wirklich

Unser Blut ist rot, weil es Eisen enthält. Oktopus-Blut transportiert Sauerstoff mit einem Molekül namens Hämocyanin, und das enthält **Kupfer**. Ergebnis: Das Blut ist blau. In kaltem, sauerstoffarmem Wasser funktioniert das sogar besser als unser System.

## Die Arme denken mit

Ein Oktopus hat rund 500 Millionen Nervenzellen, ungefähr so viele wie ein Hund. Aber **etwa zwei Drittel davon sitzen in den Armen**, nicht im Kopf. Jeder Arm kann tasten, schmecken und teilweise selbstständig entscheiden, was er greift. Man kann sich das vorstellen wie acht Mitbewohner, die sich nur grob absprechen.

> Ein Oktopus-Arm, der abgetrennt wurde, kann noch eine Zeit lang auf Berührungen reagieren und nach Futter greifen.

Als wäre das nicht genug: Oktopusse können ihre Farbe und sogar die Struktur ihrer Haut in Sekundenbruchteilen ändern, obwohl sie vermutlich farbenblind sind. Wie sie das genau schaffen, ist bis heute nicht vollständig geklärt.

Calamari sind übrigens Kalmare, keine Oktopusse. Schräge Tiere sind sie trotzdem.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('octopus-hearts', 'de', 1, 'Wende-Oktopus (Stimmungs-Kuscheltier)', 'Wende Oktopus Kuscheltier', 'Eine Seite fröhlich, eine Seite grimmig. Zeigt allen ohne Worte, wie deine Laune ist.'),
  ('octopus-hearts', 'de', 2, 'Der Krake, das Meer und die tiefen Ursprünge des Bewusstseins', 'Der Krake das Meer und die tiefen Ursprünge des Bewusstseins', 'Ein Philosoph taucht mit Oktopussen und fragt sich, wie es ist, einer zu sein. Faszinierend.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('octopus-hearts', 'de', 1, 'Wikipedia: Kraken', 'https://de.wikipedia.org/wiki/Kraken'),
  ('octopus-hearts', 'de', 2, 'Smithsonian Magazine: Ten Wild Facts About Octopuses: They Have Three Hearts, Big Brains and Blue Blood', 'https://www.smithsonianmag.com/science-nature/ten-wild-facts-about-octopuses-they-have-three-hearts-big-brains-and-blue-blood-7625828/'),
  ('octopus-hearts', 'de', 3, 'Shedd Aquarium: Eight Strange and Wonderful Facts About Octopuses', 'https://www.sheddaquarium.org/stories/eight-strange-and-wonderful-facts-about-octopuses');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'octopus-hearts', 'en', 'octopus-three-hearts',
  'Three hearts, blue blood and a brain in its arms',
  'The octopus doesn''t just look like an alien. Its body works like one too.',
  'An octopus has three hearts, and one of them stops beating when it swims.',
  'If aliens live on Earth, they''re probably in the ocean and have eight arms. The octopus breaks pretty much every rule we know about animals. It is a cephalopod, a kind of mollusk, so its closest relatives are snails and clams rather than fish.

## Three hearts instead of one

Two small hearts pump blood through the gills, and one big heart supplies the rest of the body. The weird part: **the big heart stops beating when the octopus swims.** That makes swimming exhausting, which is why octopuses prefer crawling along the sea floor.

## Blue blood, for real

Our blood is red because it contains iron. Octopus blood carries oxygen with a molecule called hemocyanin, which contains **copper**. The result: blue blood. In cold, low-oxygen water, it actually works better than our system.

## The arms think for themselves

An octopus has around 500 million neurons, roughly as many as a dog. But **about two thirds of them are in the arms**, not the head. Each arm can touch, taste and partly decide on its own what to grab. Think of it as eight roommates who only loosely coordinate.

> A severed octopus arm can keep reacting to touch and reaching for food for a while.

As if that weren''t enough: octopuses can change their color and even the texture of their skin in a split second, even though they''re probably colorblind. How exactly they pull that off still isn''t fully understood.

By the way, calamari is squid, not octopus. Squid are strange animals too.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('octopus-hearts', 'en', 1, 'Reversible mood octopus plush', 'reversible octopus plush', 'Happy on one side, grumpy on the other. Tells everyone your mood without a word.'),
  ('octopus-hearts', 'en', 2, 'Other Minds by Peter Godfrey-Smith', 'Other Minds Peter Godfrey-Smith', 'A philosopher dives with octopuses and wonders what it''s like to be one. Fascinating read.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('octopus-hearts', 'en', 1, 'Wikipedia: Octopus', 'https://en.wikipedia.org/wiki/Octopus'),
  ('octopus-hearts', 'en', 2, 'Smithsonian Magazine: Ten Wild Facts About Octopuses: They Have Three Hearts, Big Brains and Blue Blood', 'https://www.smithsonianmag.com/science-nature/ten-wild-facts-about-octopuses-they-have-three-hearts-big-brains-and-blue-blood-7625828/'),
  ('octopus-hearts', 'en', 3, 'Shedd Aquarium: Eight Strange and Wonderful Facts About Octopuses', 'https://www.sheddaquarium.org/stories/eight-strange-and-wonderful-facts-about-octopuses');
