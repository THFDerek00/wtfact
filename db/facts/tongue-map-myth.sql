-- WTFact-Fakt „Die Zungenkarte aus dem Biounterricht ist ein Missverständnis von 1942“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('tongue-map-myth', '2026-10-23T10:00:00+02:00', 'myths', '👅', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tongue-map-myth', 'de', 'zungenkarte-mythos',
  'Die Zungenkarte aus dem Biounterricht ist ein Missverständnis von 1942',
  'Süß vorne, bitter hinten? Deine ganze Zunge schmeckt alles. Schuld ist eine falsch gelesene Grafik.',
  'Die Zunge schmeckt alle Grundgeschmäcker fast überall. Die bekannte Karte mit Geschmackszonen entstand, weil ein Harvard-Psychologe 1942 eine deutsche Studie von 1901 überzeichnet hat.',
  'Viele haben sie im Biobuch gesehen: eine Zunge mit bunten Feldern. Süß an der Spitze, salzig und sauer an den Seiten, bitter ganz hinten. Probier es aus, und du merkst schnell, dass sie nicht stimmt.

## Eine deutsche Studie von 1901

Alles beginnt mit dem deutschen Forscher David P. Hänig. 1901 ließ er Freiwillige an verschiedenen Stellen der Zunge die vier damals bekannten Grundgeschmäcker testen und fragte, wie stark sie diese spürten. Sein Ergebnis: Manche Bereiche sind für manche Geschmäcker ein kleines bisschen empfindlicher.

Ein kleines bisschen. Nicht ausschließlich.

## Die Karte von 1942

1942 griff der Harvard-Psychologe Edwin Boring Hänigs Daten auf. Er rechnete sie in Zahlen um und zeichnete sie so, dass Bereiche mit etwas geringerer Empfindlichkeit aussahen, als würden sie gar nichts schmecken. Aus „etwas weniger“ wurde „gar nicht“, und fertig war die Zungenkarte, die Generationen von Schulkindern auswendig lernten.

1974 prüfte die Forscherin Virginia Collings das Ganze noch einmal. Die Unterschiede zwischen den Zonen waren klein und spielten praktisch keine Rolle.

Heute ist klar: Die ganze Zunge kann alle Grundgeschmäcker mehr oder weniger gleich gut wahrnehmen. Geschmacksrezeptoren sitzen sogar am Gaumensegel und am Kehldeckel.

> Bonusfakt: Auf der alten Karte fehlt ein Geschmack komplett. Umami, der herzhafte Geschmack, den man etwa von Brühe kennt, wurde weder von Hänig noch von Boring getestet.

Ein einzelner Geschmacksknospen-Typ für jede Zone wäre auch ziemlich unpraktisch. Laut „Live Science“ enthält jede Geschmacksknospe 50 bis 100 Rezeptoren für jeden Geschmack.

Die Zungenkarte war also eine Grafik, die mehr behauptet hat, als ihre Daten hergaben. Kommt in den besten Schulbüchern vor.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tongue-map-myth', 'de', 1, 'Buch über Geschmack und Sinne', 'Buch Geschmackssinn Wissenschaft', 'Erklärt, wie Zunge, Nase und Gehirn zusammen schmecken.'),
  ('tongue-map-myth', 'de', 2, 'Aroma-Set zum Verkosten', 'Aromaset Verkostung', 'Ein Set zum Erschnuppern und Erschmecken, perfekt für Spieleabende.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tongue-map-myth', 'de', 1, 'Live Science: The Tongue Map: Tasteless Myth Debunked', 'https://www.livescience.com/7113-tongue-map-tasteless-myth-debunked.html'),
  ('tongue-map-myth', 'de', 2, 'ScienceAlert: How a Mistranslation Made You Think Your Tongue Had ‘Taste Zones’', 'https://www.sciencealert.com/how-a-mistranslation-made-you-think-your-tongue-had-taste-zones');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tongue-map-myth', 'en', 'tongue-map-myth',
  'The tongue map from biology class is a misunderstanding from 1942',
  'Sweet at the tip, bitter at the back? Your whole tongue tastes everything. Blame a misread chart.',
  'The tongue can taste every basic taste almost everywhere. The famous map of taste zones exists because a Harvard psychologist exaggerated a 1901 German study in 1942.',
  'Plenty of people saw it in their biology textbook: a tongue split into colored zones. Sweet at the tip, salty and sour on the sides, bitter way at the back. Try it yourself and you’ll quickly notice it doesn’t hold up.

## A German study from 1901

It all starts with the German researcher David P. Hänig. In 1901, he had volunteers test the four basic tastes known at the time on different parts of the tongue and asked how strongly they sensed them. His finding: some areas are a tiny bit more sensitive to certain tastes.

A tiny bit. Not exclusively.

## The map from 1942

In 1942, Harvard psychologist Edwin Boring picked up Hänig’s data. He converted it into numbers and plotted it so that areas with slightly lower sensitivity looked like they couldn’t taste anything at all. "Somewhat less" turned into "not at all", and the tongue map that generations of schoolkids memorized was born.

In 1974, researcher Virginia Collings checked it all again. The differences between the zones were small and basically didn’t matter.

Today it’s clear: the whole tongue can sense every basic taste more or less equally. There are taste receptors even on the soft palate and the epiglottis.

> Bonus fact: One taste is missing from the old map entirely. Umami, the savory taste you know from broth, was tested by neither Hänig nor Boring.

One taste per zone would be pretty impractical anyway. According to Live Science, each taste bud holds 50 to 100 receptors for each taste.

So the tongue map was a chart that claimed more than its data could back up. Happens in the best textbooks.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tongue-map-myth', 'en', 1, 'Book about taste and the senses', 'book science of taste senses', 'Explains how tongue, nose and brain work together to taste.'),
  ('tongue-map-myth', 'en', 2, 'Aroma tasting kit', 'aroma tasting kit', 'A kit for sniffing and tasting your way through flavors, great for game nights.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tongue-map-myth', 'en', 1, 'Live Science: The Tongue Map: Tasteless Myth Debunked', 'https://www.livescience.com/7113-tongue-map-tasteless-myth-debunked.html'),
  ('tongue-map-myth', 'en', 2, 'ScienceAlert: How a Mistranslation Made You Think Your Tongue Had ‘Taste Zones’', 'https://www.sciencealert.com/how-a-mistranslation-made-you-think-your-tongue-had-taste-zones');
