-- WTFact-Fakt „Ein Teelöffel Neutronenstern würde rund 1 Milliarde Tonnen wiegen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('neutron-star-spoon', '2026-08-26', 'science', '⭐', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'neutron-star-spoon', 'de', 'neutronenstern-teeloeffel',
  'Ein Teelöffel Neutronenstern würde rund 1 Milliarde Tonnen wiegen',
  'Mehr Masse als die Sonne, zusammengequetscht auf die Größe einer Stadt. Neutronensterne sind das Dichteste, was das Universum zu bieten hat, bevor es ein Schwarzes Loch wird.',
  'Ein einziger Teelöffel Neutronenstern-Materie würde auf der Erde etwa 1 Milliarde Tonnen wiegen.',
  'Nimm einen Teelöffel, füll ihn mit Material aus einem Neutronenstern und stell ihn auf eine Waage. Die Waage würde das nicht überleben. Laut NASA würde **ein einziger Teelöffel davon auf der Erde etwa 1 Milliarde Tonnen wiegen**.

## Was ist ein Neutronenstern?

Ein Neutronenstern ist der Überrest eines massereichen Sterns, der am Ende seines Lebens als Supernova explodiert ist. Der Kern fällt dabei unter seiner eigenen Schwerkraft in sich zusammen. Übrig bleibt eine Kugel, die **bis zu doppelt so viel Masse wie unsere Sonne** haben kann, aber nur etwa **20 Kilometer Durchmesser**. Das ist ungefähr die Größe einer Stadt.

Die Materie ist dabei so stark zusammengepresst, dass die Teilchen im Inneren überwiegend aus Neutronen bestehen. Daher der Name.

## Mount Everest im Zuckerwürfel

Um diese Dichte greifbar zu machen, hat die NASA einen anschaulichen Vergleich: Stell dir vor, du quetschst den **gesamten Mount Everest in einen Zuckerwürfel**. Ungefähr so dicht ist Neutronenstern-Materie.

## Kreiselnde Extremisten

Als wäre das nicht genug, drehen sich viele Neutronensterne irre schnell. Manche rotieren **hunderte Male pro Sekunde**, schneller als die Messer eines Standmixers. Der schnellste bekannte, PSR J1748-2446ad, schafft 716 Umdrehungen pro Sekunde.

Dazu kommen Magnetfelder, die laut NASA **Billionen Mal stärker sind als das der Erde**. Neutronensterne sind damit echte Naturlabore für Bedingungen, die man auf der Erde niemals nachbauen könnte.

> Um diese extreme Materie besser zu verstehen, schickte die NASA 2017 das Messinstrument NICER zur Internationalen Raumstation. Es beobachtet von dort aus Neutronensterne.

Ein Löffel, der mehr wiegt als ein Gebirge: Physik kann ganz schön absurd sein.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('neutron-star-spoon', 'de', 1, 'Astrophysik für Eilige von Neil deGrasse Tyson', 'Astrophysik für Eilige Neil deGrasse Tyson', 'Das Universum in kurzen, witzigen Kapiteln. Perfekt für die Bahnfahrt.'),
  ('neutron-star-spoon', 'de', 2, 'Drehbare Sternkarte', 'drehbare Sternkarte', 'Einfach Datum und Uhrzeit einstellen und du siehst, welche Sternbilder gerade über dir stehen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('neutron-star-spoon', 'de', 1, 'Wikipedia: Neutronenstern', 'https://de.wikipedia.org/wiki/Neutronenstern'),
  ('neutron-star-spoon', 'de', 2, 'NASA: New NASA Mission to Study Mysterious Neutron Stars, Aid in Deep Space Navigation', 'https://www.nasa.gov/centers-and-facilities/goddard/new-nasa-mission-to-study-mysterious-neutron-stars-aid-in-deep-space-navigation/'),
  ('neutron-star-spoon', 'de', 3, 'Chandra X-ray Observatory: Cosmic X-rays Reveal Evidence For New Form Of Matter', 'https://chandra.si.edu/press/02_releases/press_041002.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'neutron-star-spoon', 'en', 'neutron-star-teaspoon',
  'A teaspoon of neutron star would weigh about a billion tons',
  'More mass than the Sun, squeezed down to the size of a city. Neutron stars are about as dense as things get before turning into a black hole.',
  'A single teaspoon of neutron star matter would weigh about a billion tons on Earth.',
  'Take a teaspoon, fill it with material from a neutron star and put it on a scale. The scale would not survive. According to NASA, **a single teaspoon of the stuff would weigh about a billion tons on Earth**.

## What is a neutron star?

A neutron star is what''s left of a massive star that exploded as a supernova at the end of its life. Its core collapses under its own gravity. What remains is a ball that can hold **up to twice the mass of our Sun** but measures only about **12 miles, or 20 kilometers, across**. That''s roughly the size of a city.

The matter is squeezed so tightly that it''s made mostly of neutrons. Hence the name.

## Mount Everest in a sugar cube

To make that density easier to picture, NASA offers a handy comparison: imagine squeezing **all of Mount Everest into a sugar cube**. That''s roughly how dense neutron star matter is.

## Spinning extremists

As if that weren''t enough, many neutron stars spin ridiculously fast. Some rotate **hundreds of times per second**, faster than the blades of a household blender. The fastest one known, PSR J1748-2446ad, manages 716 rotations per second.

On top of that, NASA says their magnetic fields are **trillions of times stronger than Earth''s**. That makes neutron stars natural laboratories for conditions nobody could ever recreate on Earth.

> To better understand this extreme matter, NASA sent an instrument called NICER to the International Space Station in 2017. It watches neutron stars from up there.

A spoonful that outweighs a mountain range: physics can be pretty absurd.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('neutron-star-spoon', 'en', 1, 'Astrophysics for People in a Hurry by Neil deGrasse Tyson', 'Astrophysics for People in a Hurry', 'The universe explained in short, witty chapters. Perfect for a commute.'),
  ('neutron-star-spoon', 'en', 2, 'Planisphere star finder', 'planisphere star chart', 'Set the date and time, and it shows you which constellations are above you right now.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('neutron-star-spoon', 'en', 1, 'Wikipedia: Neutron star', 'https://en.wikipedia.org/wiki/Neutron_star'),
  ('neutron-star-spoon', 'en', 2, 'NASA: New NASA Mission to Study Mysterious Neutron Stars, Aid in Deep Space Navigation', 'https://www.nasa.gov/centers-and-facilities/goddard/new-nasa-mission-to-study-mysterious-neutron-stars-aid-in-deep-space-navigation/'),
  ('neutron-star-spoon', 'en', 3, 'Chandra X-ray Observatory: Cosmic X-rays Reveal Evidence For New Form Of Matter', 'https://chandra.si.edu/press/02_releases/press_041002.html');
