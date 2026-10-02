-- WTFact-Fakt „Tibeter leben auf 4000 Metern Höhe mit einem Gen von ausgestorbenen Urmenschen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('tibetan-altitude', '2026-09-26', 'survival', '🏔️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tibetan-altitude', 'de', 'tibeter-hoehengen-denisova',
  'Tibeter leben auf 4000 Metern Höhe mit einem Gen von ausgestorbenen Urmenschen',
  'Die Luft auf dem Hochland ist dünn. Geholfen hat ein Erbstück der Denisova-Menschen.',
  'Eine Variante des Gens EPAS1, die Tibetern beim Leben in großer Höhe hilft, stammt vermutlich von den Denisova-Menschen, einer ausgestorbenen Menschenform.',
  'Auf dem Hochland von Tibet ist die Luft so dünn, dass viele Besucher aus dem Flachland schnell schlappmachen. Die Menschen, die dort seit Generationen leben, kommen damit erstaunlich gut klar. Ein Teil ihres Geheimnisses stammt von Verwandten, die es längst nicht mehr gibt.

## Leben in dünner Luft

Das tibetische Hochplateau liegt auf rund 4.000 Metern Höhe. **Dort steckt in der Luft etwa 40 Prozent weniger Sauerstoff** als auf Meereshöhe. Der Körper von Flachlandmenschen reagiert darauf, indem er massenhaft rote Blutkörperchen bildet. Das Blut wird dadurch dicker, was eigene Probleme mit sich bringt.

Bei vielen Tibetern läuft das anders. Ihr Körper erhöht Hämoglobin und rote Blutkörperchen in der Höhe nur leicht und umgeht so diese Nebenwirkungen. Verantwortlich ist vor allem eine bestimmte Variante des Gens **EPAS1**.

## Ein Erbstück der Denisova-Menschen

Die Variante ist bei rund 87 Prozent der Tibeter verbreitet, aber nur bei etwa 9 Prozent der Han-Chinesen. Ein Team um den Genetiker Rasmus Nielsen von der University of California, Berkeley, schaute sich das genauer an. Dafür sequenzierte es den Abschnitt bei 40 Tibetern und 40 Han-Chinesen.

Die Überraschung, 2014 im Fachjournal Nature veröffentlicht: **Diese Genvariante stammt mit großer Sicherheit von den Denisova-Menschen**, einer ausgestorbenen Menschenform. Offenbar haben sich die Vorfahren heutiger Menschen irgendwann mit Denisovanern vermischt und dabei das Gen mitgenommen. In Tibet hat sich die Variante dann durch natürliche Selektion stark ausgebreitet.

Nielsen nannte es das erste Mal, dass eindeutig gezeigt wurde, wie ein Gen einer anderen Menschenform modernen Menschen bei der Anpassung an ihre Umwelt geholfen hat. Er gab außerdem zu, dass das Team die Idee anfangs für ziemlich weit hergeholt hielt.

> Von den Denisova-Menschen kennt man kaum Knochen: Aus der Denisova-Höhle im sibirischen Altai-Gebirge stammen nur ein Fingerknochen, ein Zehenknochen und zwei Zähne. Den Rest ihrer Geschichte verrät vor allem ihre DNA.

## Uralte Hilfe

Die Denisova-Menschen wurden erst 2008 entdeckt. Dass ausgerechnet sie heute noch dabei helfen, auf dem Dach der Welt zu leben, klingt fast nach Science-Fiction. Es zeigt aber, wie viel von unserer Vorgeschichte noch in unseren Genen steckt.

Manche Erbstücke kommen eben nicht in einer Schmuckschatulle, sondern im Erbgut.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tibetan-altitude', 'de', 1, 'Die Neandertaler und wir von Svante Pääbo', 'Die Neandertaler und wir Svante Pääbo', 'Der Nobelpreisträger erzählt, wie er alte DNA entschlüsselt hat. Krimi und Wissenschaft in einem.'),
  ('tibetan-altitude', 'de', 2, 'Himalaya-Bildband', 'Himalaya Bildband', 'Riesige Gipfel, Klöster und Hochebenen in großformatigen Fotos. Fernweh garantiert.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tibetan-altitude', 'de', 1, 'National Geographic: Extinct Humans Passed High-Altitude Gene to Tibetans', 'https://www.nationalgeographic.com/science/article/sex-with-extinct-humans-passed-high-altitude-gene-to-tibetans'),
  ('tibetan-altitude', 'de', 2, 'UC Berkeley News: Extinct human cousin gave Tibetans advantage at high elevation', 'https://news.berkeley.edu/2014/07/02/extinct-denisovans-gave-tibetans-advantage-at-high-elevation'),
  ('tibetan-altitude', 'de', 3, 'Nature: Altitude adaptation in Tibetans caused by introgression of Denisovan-like DNA', 'https://www.nature.com/articles/nature13408');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tibetan-altitude', 'en', 'tibetans-altitude-gene-denisovans',
  'Tibetans live at 4000 meters with a gene from extinct ancient humans',
  'The air on the plateau is thin. A hand-me-down from the Denisovans helps.',
  'A version of the EPAS1 gene that helps Tibetans live at high altitude most likely came from the Denisovans, an extinct group of ancient humans.',
  'On the Tibetan plateau, the air is so thin that lots of visitors from the lowlands run out of steam fast. The people who have lived there for generations handle it remarkably well. And part of their secret comes from relatives who no longer exist.

## Life in thin air

The Tibetan plateau sits at around 4,000 meters. **The air there has about 40 percent less oxygen** than at sea level. Lowlanders'' bodies respond by cranking out lots of red blood cells. That makes the blood thicker, which comes with its own problems.

In many Tibetans, things work differently. Their bodies raise hemoglobin and red blood cell levels only slightly at high altitude, avoiding those side effects. A big part of that is down to a particular version of a gene called **EPAS1**.

## A hand-me-down from the Denisovans

That version shows up in about 87 percent of Tibetans but only about 9 percent of Han Chinese. A team led by geneticist Rasmus Nielsen at the University of California, Berkeley, took a closer look. They sequenced that stretch of DNA in 40 Tibetans and 40 Han Chinese.

The surprise, published in Nature in 2014: **the gene variant almost certainly came from the Denisovans**, an extinct group of ancient humans. Apparently, ancestors of modern humans mixed with Denisovans at some point and picked up the gene. In Tibet, natural selection then made it spread widely.

Nielsen called it the first time a gene from another kind of human had been clearly shown to help modern humans adapt to their environment. He also admitted the team originally thought the idea was pretty far-fetched.

> Hardly any Denisovan bones are known: Denisova Cave in Siberia''s Altai Mountains has yielded just a finger bone, a toe bone and two teeth. Most of their story comes from their DNA.

## Ancient help

Denisovans were only discovered in 2008. The fact that they still help people live on the roof of the world sounds almost like science fiction. But it shows how much of our prehistory is still written in our genes.

Some heirlooms don''t come in a jewelry box. They come in your DNA.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tibetan-altitude', 'en', 1, 'Neanderthal Man by Svante Pääbo', 'Neanderthal Man Svante Paabo', 'The Nobel laureate tells how he cracked ancient DNA. Part detective story, part science.'),
  ('tibetan-altitude', 'en', 2, 'Himalaya photography book', 'Himalaya photography coffee table book', 'Giant peaks, monasteries and high plateaus in big, beautiful photos. Instant wanderlust.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tibetan-altitude', 'en', 1, 'National Geographic: Extinct Humans Passed High-Altitude Gene to Tibetans', 'https://www.nationalgeographic.com/science/article/sex-with-extinct-humans-passed-high-altitude-gene-to-tibetans'),
  ('tibetan-altitude', 'en', 2, 'UC Berkeley News: Extinct human cousin gave Tibetans advantage at high elevation', 'https://news.berkeley.edu/2014/07/02/extinct-denisovans-gave-tibetans-advantage-at-high-elevation'),
  ('tibetan-altitude', 'en', 3, 'Nature: Altitude adaptation in Tibetans caused by introgression of Denisovan-like DNA', 'https://www.nature.com/articles/nature13408');
