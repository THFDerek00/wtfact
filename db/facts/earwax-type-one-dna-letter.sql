-- WTFact-Fakt „Ob dein Ohrenschmalz feucht oder trocken ist, entscheidet ein einziger Buchstabe in deiner DNA“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('earwax-type-one-dna-letter', '2026-11-03T16:00:00+01:00', 'body', '👂', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'earwax-type-one-dna-letter', 'de', 'ohrenschmalz-ein-buchstabe-dna',
  'Ob dein Ohrenschmalz feucht oder trocken ist, entscheidet ein einziger Buchstabe in deiner DNA',
  'Eine einzige Stelle in einem Gen teilt Menschen in zwei Ohrenschmalz-Typen ein, und dasselbe Gen hängt mit Achselgeruch zusammen.',
  'Ob du feuchtes oder trockenes Ohrenschmalz hast, bestimmt eine einzige DNA-Buchstaben-Variante namens rs17822931 im Gen ABCC11.',
  'Ohrenschmalz ist nicht gleich Ohrenschmalz. Manche haben die feuchte Sorte, manche die trockene. Und welche Sorte du hast, hängt an einem einzigen Buchstaben in deinem Erbgut.

## Ein Buchstabe, zwei Sorten

Das Gen heißt ABCC11. Eine genetische Studie, gelistet bei PubMed, beschreibt darin eine Variante namens rs17822931: An einer einzigen Stelle steht ein A statt eines G. Laut der Studie bestimmt genau diese Änderung, welchen Ohrenschmalz-Typ jemand hat: feucht oder trocken.

Verteilt ist die Variante alles andere als gleichmäßig. Die Studie zählt sie zu den Varianten ihrer Art, die sich zwischen ostasiatischen und afrikanischen Bevölkerungen am stärksten unterscheiden. Scientific American berichtet, dass den meisten Menschen in Ostasien und fast allen Koreanern die mit Geruch verbundene Version des Gens fehlt, in Europa dagegen nur 2 Prozent.

## Die Achsel-Verbindung

Jetzt wird es schräg. Laut Scientific American fehlt Menschen mit trockenem Ohrenschmalz auch ein Stoff in den Achseln, von dem sich die Bakterien ernähren, die Achselgeruch verursachen. Der genetische Epidemiologe Ian Day von der University of Bristol nannte das Gen „im Grunde den einzigen Faktor“ dafür, ob man Achselgeruch hat oder nicht.

Die Studie, an der er mitgearbeitet hat, erschien im Journal of Investigative Dermatology und untersuchte 6.495 Frauen in Großbritannien. Etwa 98 Prozent hatten die Version, die mit Geruch verbunden ist. Von den 117 Frauen ohne sie benutzten trotzdem mehr als drei Viertel täglich Deo.

## Warum gerade Ostasien?

Die PubMed-Studie ging der Frage nach, warum die trockene Version in manchen Regionen so häufig wurde. Die Autoren schätzen, dass die Mutation vor etwa 2.006 Generationen entstand, mit einer großen Unsicherheitsspanne von 1.023 bis 3.901 Generationen. Außerdem fanden sie, dass die Häufigkeit der trockenen Variante in asiatischen, indigenen amerikanischen und europäischen Bevölkerungen mit dem Breitengrad zusammenhängt. Sie deuten das als Anpassung an kaltes Klima.

> Bonusfakt: Laut derselben Studie hatte eine genomweite Analyse bei Ostasiaten schon in der Region um ABCC11 Spuren eines „Selective Sweep“ entdeckt. Gemeint ist: Die natürliche Auslese hat diese Erbgut-Region dort begünstigt.

Ein winziger Schreibunterschied in einem Gen entscheidet also, was in deinen Ohren steckt und wie deine Achseln riechen. Dein Körper hat seltsamere Verbindungen, als du denkst.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('earwax-type-one-dna-letter', 'de', 1, 'Anatomisches Ohrmodell', 'Ohr Anatomie Modell', 'Zeigt Außen-, Mittel- und Innenohr im Detail, gut für Schreibtisch oder Unterricht.'),
  ('earwax-type-one-dna-letter', 'de', 2, 'Populärwissenschaftliches Buch über Genetik', 'Sachbuch Genetik DNA verständlich', 'Erklärt Gene und Vererbung in Alltagssprache, ganz ohne Biologiestudium.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('earwax-type-one-dna-letter', 'de', 1, 'PubMed: The impact of natural selection on an ABCC11 SNP determining earwax type', 'https://pubmed.ncbi.nlm.nih.gov/20937735/'),
  ('earwax-type-one-dna-letter', 'de', 2, 'Scientific American: People without Gene for Underarm Odor Still Wear Deodorant', 'https://www.scientificamerican.com/article/people-without-underarm-protection/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'earwax-type-one-dna-letter', 'en', 'earwax-type-one-dna-letter',
  'Whether your earwax is wet or dry comes down to one letter in your DNA',
  'A single spot in one gene sorts people into two earwax types, and the same gene is tied to underarm odor.',
  'Whether you have wet or dry earwax is determined by a single DNA letter variant, called rs17822931, in a gene named ABCC11.',
  'Earwax is not all the same. Some people have the wet kind, some have the dry kind. And which kind you have comes down to one single letter in your genetic code.

## One letter, two types

The gene is called ABCC11. A genetics study listed on PubMed describes a variant in it called rs17822931, where a G is swapped for an A at one position. According to the study, this one change determines a person''s earwax type: wet or dry.

The variant is not spread evenly around the world. The study calls it one of the most strongly differentiated variants of its kind between East Asian and African populations. Scientific American reports that most East Asians and almost all Koreans lack the odor-linked version of the gene, while only 2 percent of Europeans do.

## The armpit connection

Here''s where it gets strange. According to Scientific American, people with dry earwax also lack a chemical in their armpits that bacteria feed on to cause underarm odor. Genetic epidemiologist Ian Day from the University of Bristol called the gene "basically the single determinant" of whether you produce underarm odor or not.

The study he co-authored, published in the Journal of Investigative Dermatology, looked at 6,495 women in Britain. About 98 percent had the version linked to odor. Of the 117 women without it, over three-quarters still used deodorant daily.

## Why East Asia?

The PubMed study looked at why the dry version became so common in some regions. The authors estimate that the mutation arose about 2,006 generations ago, with a wide uncertainty range of 1,023 to 3,901 generations. They also found that how common the dry variant is in Asian, Native American and European populations is linked to latitude, and they interpret that as an adaptation to cold climates.

> Bonus fact: According to the same study, a genome-wide scan had already spotted signs of a "selective sweep" in East Asians in the region around ABCC11, a sign that natural selection favored this stretch of DNA there.

So a tiny spelling difference in one gene decides what''s in your ears and how your armpits smell. Your body has stranger links than you''d guess.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('earwax-type-one-dna-letter', 'en', 1, 'Anatomical model of the human ear', 'human ear anatomy model', 'Shows the outer, middle and inner ear in detail, great for a desk or classroom.'),
  ('earwax-type-one-dna-letter', 'en', 2, 'Popular science book about genetics', 'popular science book genetics DNA', 'Explains genes and heredity in plain language without a biology degree.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('earwax-type-one-dna-letter', 'en', 1, 'PubMed: The impact of natural selection on an ABCC11 SNP determining earwax type', 'https://pubmed.ncbi.nlm.nih.gov/20937735/'),
  ('earwax-type-one-dna-letter', 'en', 2, 'Scientific American: People without Gene for Underarm Odor Still Wear Deodorant', 'https://www.scientificamerican.com/article/people-without-underarm-protection/');
