-- WTFact-Fakt „Chamäleons wechseln die Farbe vor allem, um zu reden, nicht um sich zu tarnen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('chameleon-colors-not-camouflage', '2026-10-22T10:00:00+02:00', 'myths', '🦎', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'chameleon-colors-not-camouflage', 'de', 'chamaeleon-farbe-keine-tarnung',
  'Chamäleons wechseln die Farbe vor allem, um zu reden, nicht um sich zu tarnen',
  'Das Tarn-Klischee hält sich hartnäckig. Dabei ist die Farbe eher eine Art Stimmungsanzeige.',
  'Chamäleons nutzen ihren Farbwechsel vor allem, um anderen Chamäleons etwas mitzuteilen und auf Temperatur zu reagieren. Möglich machen es winzige Kristalle unter der Haut.',
  'Chamäleon auf rotem Pulli, Chamäleon wird rot. So stellen sich viele den Trick vor. Die echten Tiere funktionieren anders, und zwar deutlich spannender.

## Farbe als Nachricht

Laut einer Studie aus dem Jahr 2015 wechseln Chamäleons ihre Farbe nicht in erster Linie zur Tarnung. Sie nutzen sie, um mit anderen Echsen zu kommunizieren und auf Temperatur oder Stimmung zu reagieren.

Besonders deutlich wird das bei Männchen. Sieht ein Männchen einen Rivalen, wechselt es typischerweise von Grün zu Gelb, Orange oder Rot. Das klappt sogar, wenn es nur sein eigenes Spiegelbild sieht. Verliert ein Männchen den Machtkampf, wird es dunkler, laut einer Studie ein Signal für „lass mich in Ruhe“. Weibchen zeigen mit ihrer Färbung, ob sie paarungsbereit sind.

## Kristalle statt Farbtöpfe

Lange dachten Forscher, Chamäleons würden Farbstoffe in Hautzellen hin- und herschieben. 2015 zeigte ein Team um Michel Milinkovitch von der Universität Genf in der Fachzeitschrift „Nature Communications“, dass es anders läuft.

Unter der Haut liegt ein Gitter aus winzigen Nanokristallen. Milinkovitch beschreibt es als „selektiven Spiegel“. Ist das Tier entspannt, liegen die Kristalle dicht beieinander und werfen blaues und grünes Licht zurück. Regt es sich auf, spannt es die Haut, die Abstände wachsen, und es spiegelt längere Wellen wie Rot und Orange.

> Bonusfakt: Eine tiefere Zellschicht spiegelt Nahinfrarot. Das hilft dem Chamäleon vermutlich, in der Sonne nicht zu überhitzen.

Untersucht wurden dafür Pantherchamäleons aus Madagaskar, die besonders auffällig die Farbe wechseln.

Das Chamäleon versteckt sich also nicht hinter seiner Farbe. Es trägt seine Laune ziemlich offen spazieren.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('chameleon-colors-not-camouflage', 'de', 1, 'Bildband über Reptilien', 'Bildband Reptilien Echsen', 'Große Fotos von Chamäleons, Geckos und anderen Echsen aus aller Welt.'),
  ('chameleon-colors-not-camouflage', 'de', 2, 'Chamäleon-Kuscheltier', 'Chamäleon Kuscheltier', 'Ein buntes Chamäleon zum Knuddeln, das seine Farbe immer behält.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('chameleon-colors-not-camouflage', 'de', 1, 'Smithsonian Magazine: We Finally Know How Chameleons Change Their Color', 'https://www.smithsonianmag.com/smart-news/we-finally-know-how-chameleons-change-their-color-180954527/'),
  ('chameleon-colors-not-camouflage', 'de', 2, 'National Geographic: Here’s What Happens When a Chameleon Looks in a Mirror', 'https://www.nationalgeographic.com/animals/article/animals-chameleons-reptiles-science-colors');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'chameleon-colors-not-camouflage', 'en', 'chameleon-colors-not-camouflage',
  'Chameleons change color mainly to talk, not to hide',
  'The camouflage cliché refuses to die. In reality, the color works more like a mood display.',
  'Chameleons mostly use their color changes to send messages to other chameleons and to respond to temperature. Tiny crystals under the skin make it possible.',
  'Chameleon on a red sweater, chameleon turns red. That’s how a lot of people picture the trick. Real chameleons work differently, and in a much more interesting way.

## Color as a message

According to a 2015 study, chameleons don’t change color mainly for camouflage. They use it to communicate with other lizards and to respond to temperature or mood.

It’s especially obvious in males. When a male spots a rival, he typically shifts from green to yellow, orange or red. He even does it when all he sees is his own reflection. A male who loses the showdown turns darker, which one study describes as a "leave me alone" signal. Females use their coloring to show whether they’re ready to mate.

## Crystals, not paint pots

For a long time, researchers thought chameleons shuffled pigments around in their skin cells. In 2015, a team led by Michel Milinkovitch at the University of Geneva showed in the journal Nature Communications that it works differently.

Under the skin sits a lattice of tiny nanocrystals. Milinkovitch describes it as "a selective mirror". When the animal is calm, the crystals sit close together and reflect blue and green light. When it gets excited, it tenses its skin, the spacing grows, and it reflects longer wavelengths such as red and orange.

> Bonus fact: A deeper layer of cells reflects near-infrared light. That probably helps the chameleon avoid overheating in the sun.

The researchers studied panther chameleons from Madagascar, which are famous for their dramatic color shifts.

So the chameleon isn’t hiding behind its color. It’s wearing its mood out in the open.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('chameleon-colors-not-camouflage', 'en', 1, 'Reptile photo book', 'reptile photo book lizards', 'Big photos of chameleons, geckos and other lizards from around the world.'),
  ('chameleon-colors-not-camouflage', 'en', 2, 'Chameleon plush toy', 'chameleon plush toy', 'A colorful chameleon to cuddle that always keeps its color.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('chameleon-colors-not-camouflage', 'en', 1, 'Smithsonian Magazine: We Finally Know How Chameleons Change Their Color', 'https://www.smithsonianmag.com/smart-news/we-finally-know-how-chameleons-change-their-color-180954527/'),
  ('chameleon-colors-not-camouflage', 'en', 2, 'National Geographic: Here’s What Happens When a Chameleon Looks in a Mirror', 'https://www.nationalgeographic.com/animals/article/animals-chameleons-reptiles-science-colors');
