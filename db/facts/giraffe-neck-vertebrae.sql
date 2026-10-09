-- WTFact-Fakt „Eine Giraffe hat genauso viele Halswirbel wie du: 7“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES ('giraffe-neck-vertebrae', NULL, 'animals', '🦒', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'giraffe-neck-vertebrae', 'de', 'giraffe-gleich-viele-halswirbel',
  'Eine Giraffe hat genauso viele Halswirbel wie du: 7',
  'Der längste Hals im Tierreich besteht aus derselben Anzahl Knochen wie deiner. Und wie der einer Maus.',
  'Giraffen haben nur 7 Halswirbel, genau wie Menschen und fast alle anderen Säugetiere. Jeder einzelne ist dafür riesig.',
  'Wie viele Knochen braucht man wohl für einen Hals, der über zwei Meter lang ist? Man würde auf ein paar Dutzend tippen. Die Antwort ist 7, genauso viele wie bei dir.

## Gleiche Anzahl, ganz andere Größe

Laut dem San Diego Zoo ist der Hals ausgewachsener Giraffenbullen etwa acht Fuß lang, also rund 2,4 Meter. Kein anderes lebendes Tier hat einen auch nur halb so langen Hals. Trotzdem besteht er aus nur 7 Halswirbeln.

Der Trick liegt in der Größe. Laut einem Faktenblatt von EarthDate misst jeder dieser Wirbel bei einer Giraffe etwa 25 Zentimeter. Bei dir sind es nur wenige Zentimeter. Gleiche Bauanleitung, völlig anderer Maßstab.

## Fast alle Säugetiere halten sich an die 7

Noch verrückter wird es, wenn du über Giraffen hinausschaust. Das Natural History Museum in London schreibt, dass fast alle Säugetiere 7 Halswirbel haben. Das gilt für dich, für die Giraffe und auch für die Hausmaus, deren Halswirbel winzig sind. Die Giraffe ist über fünf Meter größer als eine Maus, beim Hals zählen beide trotzdem bis 7.

Bei anderen Tiergruppen ist das ganz anders. Laut ScienceDaily schwankt die Zahl bei Vögeln, Reptilien und Amphibien stark. Schwäne haben zum Beispiel 22 bis 25 Halswirbel.

## Die seltenen Ausnahmen

Nur wenige Säugetiere brechen die Regel, vor allem Faultiere und Seekühe. Eine Forschungsgruppe um die Biologin Frietson Galis hat untersucht, warum. Laut ScienceDaily hängen abweichende Halswirbel bei Säugetieren mit einem höheren Risiko für Totgeburten, Krebs im Kindesalter und neurologische Probleme zusammen. Galis vermutet, dass Faultiere wegen ihres langsamen Lebensstils und ihres niedrigen Stoffwechsels von diesen Folgen verschont bleiben.

> Bonusfakt: Laut ScienceDaily hatte etwa die Hälfte der untersuchten Dugongs weniger Halswirbel als üblich, und alle davon zeigten auch andere Auffälligkeiten im Skelett.

Die Evolution hätte der Giraffe einfach mehr Wirbel geben können. Stattdessen hat sie die 7 vorhandenen gestreckt, bis es gereicht hat.

Der höchste Hals der Welt ist im Grunde dein Hals, nur in XXL.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('giraffe-neck-vertebrae', 'de', 1, 'Giraffen-Kuscheltier', 'Giraffe Kuscheltier Plüsch groß', 'Langer Hals, weiches Fell und ein Klassiker in jedem Kinderzimmer.'),
  ('giraffe-neck-vertebrae', 'de', 2, 'Bildband zur Anatomie der Tiere', 'Buch Anatomie Tiere Skelette', 'Zeigt Skelette von Tieren im Vergleich und macht sichtbar, was unter Fell und Haut steckt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('giraffe-neck-vertebrae', 'de', 1, 'Natural History Museum: How is a mouse like a giraffe?', 'https://www.nhm.ac.uk/discover/how-is-a-mouse-like-a-giraffe.html'),
  ('giraffe-neck-vertebrae', 'de', 2, 'ZooNooz (San Diego Zoo Wildlife Alliance): When Longer is Better', 'https://zoonooz.sandiegozoo.org/zoonooz/when-longer-is-better/'),
  ('giraffe-neck-vertebrae', 'de', 3, 'ScienceDaily: Sticking their necks out for evolution: Why sloths and manatees have unusually long (or short) necks', 'https://www.sciencedaily.com/releases/2011/05/110505212314.htm'),
  ('giraffe-neck-vertebrae', 'de', 4, 'EarthDate: Giraffes Have High Blood Pressure', 'https://www.earthdate.org/files/000/003/245/EarthDate_321_BW.pdf');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'giraffe-neck-vertebrae', 'en', 'giraffe-same-neck-bones-as-you',
  'A giraffe has exactly as many neck vertebrae as you: 7',
  'The longest neck in the animal kingdom is made of the same number of bones as yours. And as a mouse''s.',
  'Giraffes have just 7 neck vertebrae, the same as humans and almost every other mammal. Each one is simply huge.',
  'How many bones would you need for a neck that''s more than two meters long? You''d probably guess a few dozen. The answer is 7, exactly as many as you have.

## Same number, very different size

According to the San Diego Zoo, the neck of an adult male giraffe is about eight feet long, roughly 2.4 meters. No other living animal has a neck even half that long. Still, it is made of just 7 neck vertebrae.

The trick is size. According to an EarthDate fact sheet, each of these vertebrae is about 25 centimeters long in a giraffe. Yours are only a few centimeters. Same blueprint, completely different scale.

## Almost all mammals stick to 7

It gets stranger when you look beyond giraffes. The Natural History Museum in London says that almost all mammals have 7 neck vertebrae. That goes for you, for the giraffe and for the house mouse, whose neck bones are tiny. A giraffe towers more than five meters over a mouse, yet when it comes to necks, both count to 7.

Other animal groups are very different. According to ScienceDaily, the number varies a lot in birds, reptiles and amphibians. Swans, for example, have 22 to 25 neck vertebrae.

## The rare exceptions

Only a few mammals break the rule, mainly sloths and manatees. A research group led by biologist Frietson Galis looked into why. According to ScienceDaily, unusual neck vertebrae in mammals are linked to higher risks of stillbirth, childhood cancer and neurological problems. Galis suggests that sloths are spared these effects thanks to their slow lifestyle and low metabolism.

> Bonus fact: According to ScienceDaily, about half of the dugongs studied had fewer neck vertebrae than usual, and all of those also showed other skeletal abnormalities.

Evolution could have simply given the giraffe more vertebrae. Instead, it stretched the 7 it already had until they were long enough.

The tallest neck in the world is basically your neck, just in XXL.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('giraffe-neck-vertebrae', 'en', 1, 'Giraffe plush toy', 'giraffe plush stuffed animal large', 'Long neck, soft fur and a classic in any kid''s room.'),
  ('giraffe-neck-vertebrae', 'en', 2, 'Illustrated book on animal anatomy', 'animal anatomy skeletons book', 'Compares animal skeletons side by side and shows what''s under the fur and skin.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('giraffe-neck-vertebrae', 'en', 1, 'Natural History Museum: How is a mouse like a giraffe?', 'https://www.nhm.ac.uk/discover/how-is-a-mouse-like-a-giraffe.html'),
  ('giraffe-neck-vertebrae', 'en', 2, 'ZooNooz (San Diego Zoo Wildlife Alliance): When Longer is Better', 'https://zoonooz.sandiegozoo.org/zoonooz/when-longer-is-better/'),
  ('giraffe-neck-vertebrae', 'en', 3, 'ScienceDaily: Sticking their necks out for evolution: Why sloths and manatees have unusually long (or short) necks', 'https://www.sciencedaily.com/releases/2011/05/110505212314.htm'),
  ('giraffe-neck-vertebrae', 'en', 4, 'EarthDate: Giraffes Have High Blood Pressure', 'https://www.earthdate.org/files/000/003/245/EarthDate_321_BW.pdf');
