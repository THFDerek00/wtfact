-- WTFact-Fakt „Ein Fluss hat den Mount Everest bis zu 50 Meter höher gemacht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('everest-river-piracy', '2026-10-16T08:00:00+02:00', 'science', '🏔️', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'everest-river-piracy', 'de', 'fluss-macht-everest-hoeher',
  'Ein Fluss hat den Mount Everest bis zu 50 Meter höher gemacht',
  'Der höchste Berg der Welt verdankt einen Teil seiner Höhe einem Fluss, der einem anderen Fluss das Wasser geklaut hat.',
  'Vor etwa 89.000 Jahren hat sich der Fluss Arun mit dem Flusssystem des Kosi vereinigt, und die Erosion danach hat den Mount Everest um schätzungsweise 15 bis 50 Meter angehoben.',
  'Der Mount Everest ist 8.849 Meter hoch und fällt aus der Reihe. Laut UCL ragt er etwa 250 Meter über den nächsthöchsten Gipfel im Himalaya hinaus, während sich K2, Kangchendzönga und Lhotse nur um etwa 120 Meter unterscheiden. Warum also ist ausgerechnet der Everest der Ausreißer? Ein Teil der Antwort ist ein Fluss.

## Flussraub im Gebirge

2024 hat ein Team vom University College London und der China University of Geosciences eine Studie in Nature Geoscience veröffentlicht. Die Idee: Vor etwa 89.000 Jahren hat sich der Fluss Arun mit dem Flusssystem des Kosi vereinigt. Geologen nennen so etwas „Flusspiraterie“, weil ein Flusssystem ein anderes quasi kapert.

Die Folge: Durch den Kosi floss mehr Wasser, und er bekam deutlich mehr Kraft zum Abtragen. Das Flusssystem fräste eine tiefe Schlucht und schaffte riesige Mengen Gestein und Erde weg. Scientific American weist darauf hin, dass die Schlucht des Arun im Vergleich zu benachbarten Flüssen fast senkrechte Wände hat, ein Hinweis darauf, dass sie relativ jung ist.

## Abnehmen, um zu wachsen

Jetzt kommt der Clou. Verliert die Erdkruste Masse, wird sie leichter, und der Erdmantel darunter drückt sie wieder nach oben. Das nennt man isostatische Hebung. Das abtragende Flusssystem liegt etwa 75 Kilometer vom Everest entfernt, trotzdem reicht der Effekt bis zum Gipfel. Das Team schätzt, dass der Everest dadurch 15 bis 50 Meter höher geworden ist.

Und das geht weiter. UCL-Forscher Matthew Fox sagt, dass GPS-Messgeräte zeigen, wie der Everest und seine Nachbarn um etwa zwei Millimeter pro Jahr wachsen. Lhotse und Makalu, der viert- und fünfthöchste Berg der Erde, bekommen einen ähnlichen Schub, und der Makalu, der dem Arun am nächsten liegt, steigt womöglich etwas schneller.

> Bonusfakt: Nicht alle Geologen sind beim Zeitpunkt überzeugt. Peter van der Beek von der Universität Potsdam sagte Scientific American, dass das Datum der Flussanzapfung unsicher ist, weil das Modell einfach gehalten ist.

Der höchste Punkt der Erde ist also zum Teil ein Nebeneffekt davon, dass ein Fluss die Landschaft um ihn herum wegfrisst. Der Everest wurde nicht nur von kollidierenden Kontinenten hochgedrückt. Er hat auch Auftrieb von dem bekommen, was das Wasser mitgenommen hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('everest-river-piracy', 'de', 1, '3D-Reliefkarte Mount Everest', 'Mount Everest 3D Reliefkarte', 'Zeigt die Gipfel und Täler des Himalaya plastisch an deiner Wand.'),
  ('everest-river-piracy', 'de', 2, 'Illustriertes Buch über Gebirge und Plattentektonik', 'Plattentektonik Gebirge Buch illustriert', 'Erklärt, wie Gebirge entstehen, wachsen und abgetragen werden.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('everest-river-piracy', 'de', 1, 'UCL News: A river is pushing up Mount Everest''s peak', 'https://www.ucl.ac.uk/news/2024/sep/river-pushing-mount-everests-peak'),
  ('everest-river-piracy', 'de', 2, 'Scientific American: How ''River Piracy'' Helped Give Mount Everest a Growth Spurt', 'https://www.scientificamerican.com/article/why-mount-everest-is-the-worlds-tallest-mountain/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'everest-river-piracy', 'en', 'river-made-everest-taller',
  'A river made Mount Everest up to 50 meters taller',
  'The world''s highest mountain owes part of its height to a river that stole another river''s water.',
  'About 89,000 years ago, the Arun river merged with the Kosi river network, and the erosion that followed has lifted Mount Everest an estimated 15 to 50 meters higher than it would otherwise be.',
  'Mount Everest is 8,849 meters tall, and it sticks out. According to UCL, it rises about 250 meters above the next tallest peak in the Himalayas, while K2, Kangchenjunga and Lhotse differ from each other by only about 120 meters. So why is Everest the odd one out? Part of the answer is a river.

## A river heist in the mountains

In 2024, a team from University College London and the China University of Geosciences published a study in Nature Geoscience. Their idea: about 89,000 years ago, the Arun river merged with the Kosi river network. Geologists call this "drainage piracy", because one river system effectively captures another.

The result was more water flowing through the Kosi and a lot more erosive power. The river network carved a deep gorge and carried away huge amounts of rock and soil. Scientific American points out that the Arun''s gorge has near-vertical walls compared with neighboring rivers, a hint that it is relatively young.

## Lose weight, get taller

Here''s the twist. When the crust loses mass, it gets lighter, and the mantle below pushes it back up. This is called isostatic rebound. The eroding river network is about 75 kilometers from Everest, yet the effect reaches the summit. The team estimates that it has added 15 to 50 meters to Everest''s height.

And it''s not over. UCL researcher Matthew Fox says GPS instruments show Everest and its neighbors growing by about two millimeters a year. Lhotse and Makalu, the fourth and fifth highest peaks on Earth, get a similar boost, and Makalu, closest to the Arun, may rise slightly faster.

> Bonus fact: Not every geologist is convinced by the timing. Peter van der Beek of the University of Potsdam told Scientific American that the date of the river capture is uncertain because the model is simple.

The highest point on Earth is partly a side effect of a river eating the landscape around it. Everest didn''t just get pushed up by colliding continents. It also got a lift from what the water took away.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('everest-river-piracy', 'en', 1, 'Mount Everest 3D relief map', 'Mount Everest 3D relief map', 'Shows the Himalayan peaks and valleys in raised detail on your wall.'),
  ('everest-river-piracy', 'en', 2, 'Illustrated book on mountains and plate tectonics', 'mountains plate tectonics illustrated book', 'Explains how mountain ranges form, rise and wear down.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('everest-river-piracy', 'en', 1, 'UCL News: A river is pushing up Mount Everest''s peak', 'https://www.ucl.ac.uk/news/2024/sep/river-pushing-mount-everests-peak'),
  ('everest-river-piracy', 'en', 2, 'Scientific American: How ''River Piracy'' Helped Give Mount Everest a Growth Spurt', 'https://www.scientificamerican.com/article/why-mount-everest-is-the-worlds-tallest-mountain/');
