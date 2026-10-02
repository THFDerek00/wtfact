-- WTFact-Fakt „Conan, das Bakterium: Es steckt 28.000-mal mehr Strahlung weg als ein Mensch“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('conan-bacterium', '2026-09-18', 'survival', '🦠', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'conan-bacterium', 'de', 'conan-bakterium-strahlung',
  'Conan, das Bakterium: Es steckt 28.000-mal mehr Strahlung weg als ein Mensch',
  'Entdeckt in einer Fleischdose, die eigentlich keimfrei sein sollte. Seitdem bricht es Rekorde.',
  'Das Bakterium Deinococcus radiodurans übersteht getrocknet und gefroren eine Strahlendosis, die rund 28.000-mal höher ist als die für Menschen tödliche.',
  'Manche Lebewesen überstehen Hitze, andere Kälte. Und dann gibt es Deinococcus radiodurans, ein Bakterium, das sich von Strahlung so wenig beeindrucken lässt, dass es einen Spitznamen nach einem Fantasy-Barbaren bekommen hat: **Conan, das Bakterium**.

## Gefunden in der Fleischdose

Die Geschichte beginnt in den 1950er-Jahren. Forschende bestrahlten Fleischkonserven, um alle Keime darin abzutöten. Eigentlich hätte danach nichts mehr leben dürfen. Ein Bakterium hatte davon aber offenbar nichts mitbekommen und überlebte einfach.

Seitdem ist Conan ein Liebling der Forschung. Strahlung misst man in der Einheit Gray. Frühere Studien zeigten, dass das Bakterium 25.000 Gray überleben kann. Inzwischen ist klar: **Getrocknet und gefroren übersteht es sogar 140.000 Gray.** Das ist rund 28.000-mal so viel wie die Dosis, die für einen Menschen tödlich wäre.

## Das Geheimnis: ein Dreier-Team

Warum hält Conan so viel aus? Strahlung erzeugt in Zellen aggressive Moleküle, die alles Mögliche zerlegen. Das Bakterium hat dagegen ein eingebautes Schutzschild.

Ein Team um den Chemiker Brian Hoffman von der Northwestern University und Michael Daly von der Uniformed Services University hat es 2024 im Fachjournal PNAS beschrieben. Der Trick ist ein Antioxidans namens MDP, das aus drei Zutaten besteht:

- Manganionen
- Phosphat
- ein kleines Peptid, also eine kurze Kette aus Aminosäuren

Jeder Baustein hilft für sich ein bisschen. **Erst zusammen bilden sie einen Komplex, der deutlich stärker wirkt.** Hoffman beschreibt es so: Wenn man die Teile zusammenbringt, entsteht etwas Neues, das besser ist als jedes für sich.

> Die Forschenden hoffen, dass man solche maßgeschneiderten Antioxidantien eines Tages nutzen kann, etwa um Astronautinnen und Astronauten auf langen Reisen ins All besser vor Strahlung zu schützen.

## Ein Überlebenskünstler mit Stil

Spannend ist auch, was das für die Suche nach Leben im All bedeutet. Wenn ein irdisches Bakterium solche Dosen aushält, zeigt das, wie weit die Grenzen dessen reichen können, was Leben aushält.

Conan selbst ist das alles egal. Es sitzt einfach da und überlebt, was andere längst umgehauen hätte. Der Barbar wäre stolz.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('conan-bacterium', 'de', 1, 'Winzige Gefährten von Ed Yong', 'Winzige Gefährten Ed Yong', 'Ein Wissenschaftsjournalist erzählt witzig und spannend, wie Mikroben die Welt prägen. Echtes Augenöffner-Buch.'),
  ('conan-bacterium', 'de', 2, 'Mikroben-Plüschtier im Riesenformat', 'Mikroben Plüschtier Giant Microbes', 'Bakterien und Viren als knuffige Kuscheltiere, millionenfach vergrößert. Mit Infokärtchen zur jeweiligen Mikrobe.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('conan-bacterium', 'de', 1, 'Northwestern Now: How ''Conan the Bacterium'' withstands extreme radiation', 'https://news.northwestern.edu/stories/2024/12/how-conan-the-bacterium-withstands-extreme-radiation'),
  ('conan-bacterium', 'de', 2, 'NPR: ''Conan the Bacterium'' can survive extreme radiation, and scientists finally know why', 'https://www.npr.org/2024/12/13/1219032799/bacteria-radiation-resistant-conan-bacterium');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'conan-bacterium', 'en', 'conan-the-bacterium-radiation',
  'Conan the Bacterium shrugs off 28,000 times more radiation than a human',
  'Discovered in a can of meat that was supposed to be sterile. It''s been breaking records ever since.',
  'Dried and frozen, the bacterium Deinococcus radiodurans survives a radiation dose about 28,000 times higher than what would kill a human.',
  'Some living things handle heat, others handle cold. And then there''s Deinococcus radiodurans, a bacterium so unbothered by radiation that it got a nickname after a fantasy barbarian: **Conan the Bacterium**.

## Found in a can of meat

The story starts in the 1950s. Researchers were blasting canned meat with radiation to kill every germ inside. Nothing should have survived. One bacterium apparently didn''t get the memo and simply survived.

Ever since, Conan has been a research favorite. Radiation dose is measured in a unit called the gray. Earlier studies showed the bacterium could survive 25,000 grays. Now we know: **dried and frozen, it can take 140,000 grays.** That''s about 28,000 times the dose that would be lethal to a human.

## The secret: a three-part team

So why can Conan take so much? Radiation creates aggressive molecules inside cells that tear things apart. The bacterium has a built-in shield against them.

A team led by chemist Brian Hoffman of Northwestern University and Michael Daly of the Uniformed Services University described it in 2024 in the journal PNAS. The trick is an antioxidant called MDP, made of three ingredients:

- manganese ions
- phosphate
- a small peptide, which is a short chain of amino acids

Each piece helps a little on its own. **Together they form a complex that works way better.** As Hoffman puts it, something new forms when you put the pieces together, and it beats each one alone.

> The researchers hope tailor-made antioxidants like this could one day help shield astronauts from radiation on long trips into deep space.

## A survivor with style

It also matters for the search for life beyond Earth. If a bacterium from our planet can handle doses like these, it shows just how far the limits of what life can endure can stretch.

Conan, of course, doesn''t care about any of this. It just sits there and survives what would have flattened anything else. The barbarian would be proud.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('conan-bacterium', 'en', 1, 'I Contain Multitudes by Ed Yong', 'I Contain Multitudes Ed Yong', 'A science journalist explains, with humor and great storytelling, how microbes shape the world. A real eye-opener.'),
  ('conan-bacterium', 'en', 2, 'Giant microbe plush toy', 'Giant Microbes plush', 'Bacteria and viruses as cuddly plushies, blown up a million times. Each comes with a little fact card.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('conan-bacterium', 'en', 1, 'Northwestern Now: How ''Conan the Bacterium'' withstands extreme radiation', 'https://news.northwestern.edu/stories/2024/12/how-conan-the-bacterium-withstands-extreme-radiation'),
  ('conan-bacterium', 'en', 2, 'NPR: ''Conan the Bacterium'' can survive extreme radiation, and scientists finally know why', 'https://www.npr.org/2024/12/13/1219032799/bacteria-radiation-resistant-conan-bacterium');
