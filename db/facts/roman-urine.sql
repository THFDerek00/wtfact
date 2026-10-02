-- WTFact-Fakt „Die alten Römer wuschen ihre Kleidung mit Urin“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('roman-urine', '2026-09-20', 'history', '🏛️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'roman-urine', 'de', 'roemer-urin-waesche',
  'Die alten Römer wuschen ihre Kleidung mit Urin',
  'Und ein Kaiser machte daraus eine Steuer. Sein Spruch dazu wird bis heute zitiert.',
  'Im alten Rom wurde Urin aus öffentlichen Latrinen zum Reinigen von Stoffen verkauft, und Kaiser Vespasian kassierte dafür Steuern.',
  'Waschmittel aus der Drogerie gab es im alten Rom nicht. Wer seine Toga wieder sauber und hell haben wollte, setzte auf einen Stoff, den jeder Mensch täglich produziert: **Urin.** Klingt eklig, war aber Chemie mit System.

## Ammoniak statt Waschpulver

Urin liefert Ammoniak, und das wirkt alkalisch und reinigt. Gesammelt wurde er aus öffentlichen Latrinen und dann an Gerbereien und Wäschereien verkauft. Besonders gefragt war er bei den Walkern, auf Latein fullones. In ihren Werkstätten, den fullonicae, reinigten und bearbeiteten sie Stoffe.

Das lief so: Der Walker stand mit den Füßen in einem Becken mit Wasser und einer alkalischen Mischung, zu der manchmal auch Ammoniak aus Urin gehörte. Dann trampelte er auf dem Stoff herum, schrubbte ihn und wrang ihn aus. **Wäschewaschen war damals Fußarbeit.** Allein in Pompeji kennt man bisher 11 solcher Betriebe.

## Ein Kaiser wittert das Geschäft

Wo etwas gehandelt wird, ist der Fiskus nicht weit. Kaiser Vespasian, der von 69 bis 79 nach Christus regierte, brauchte Geld für die leeren Staatskassen. Also belegte er die öffentlichen Toiletten und den Urin daraus mit einer Abgabe.

Sein Sohn Titus fand das ziemlich daneben. Laut dem Geschichtsschreiber Sueton hielt Vespasian ihm daraufhin Geld aus den ersten Einnahmen unter die Nase und fragte, ob es rieche. Titus verneinte. Darauf der Kaiser: „Und doch ist es vom Urin.“ Daraus wurde der berühmte Spruch **„Pecunia non olet“, Geld stinkt nicht.**

> In Paris heißen öffentliche Pissoirs bis heute „Vespasiennes“, in Italien „Vespasiani“. Benannt nach dem Kaiser mit der Latrinensteuer.

## Der Spruch lebt weiter

Heute sagt man „Pecunia non olet“, wenn Geld aus einer fragwürdigen Quelle stammt und das niemanden so richtig stört. Ein Kaiser, eine Toilettenabgabe und ein Satz, der fast zwei Jahrtausende überdauert hat. Mehr Nachruhm hat kaum eine Steuer geschafft.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('roman-urine', 'de', 1, 'Replik-Set römischer Münzen', 'römische Münzen Replik', 'Nachbildungen antiker Denare und Sesterzen zum Anfassen. Schön für Sammler und Geschichtsfans.'),
  ('roman-urine', 'de', 2, 'SPQR von Mary Beard', 'SPQR Mary Beard', 'Eine Althistorikerin erzählt die Geschichte Roms lebendig, klug und ohne trockenes Schulbuchgefühl.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('roman-urine', 'de', 1, 'Wikipedia: Pecunia non olet', 'https://de.wikipedia.org/wiki/Pecunia_non_olet'),
  ('roman-urine', 'de', 2, 'Wikipedia: Fullonica', 'https://en.wikipedia.org/wiki/Fullonica'),
  ('roman-urine', 'de', 3, 'National Geographic Education Blog: Urine Trouble: Taxes in Ancient Rome', 'https://blog.education.nationalgeographic.org/2016/04/15/urine-trouble-taxes-in-ancient-rome/'),
  ('roman-urine', 'de', 4, 'Mental Floss: 6 Practical Ways Romans Used Human Urine and Feces in Daily Life', 'https://www.mentalfloss.com/article/76994/6-practical-ways-romans-used-human-urine-and-feces-daily-life');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'roman-urine', 'en', 'romans-urine-laundry',
  'Ancient Romans washed their clothes with urine',
  'Then an emperor turned it into a tax. His one-liner about it is still quoted today.',
  'In ancient Rome, urine from public latrines was sold to clean cloth, and Emperor Vespasian taxed the trade.',
  'Ancient Rome had no laundry detergent aisle. If you wanted your toga clean and bright again, you relied on something every human produces daily: **urine.** Sounds gross, but it was chemistry with a plan.

## Ammonia instead of detergent

Urine is a source of ammonia, which is alkaline and cleans. It was collected from public urinals and sold to tanners and launderers. Some of the best customers were the fullers, or fullones in Latin. In their workshops, called fullonicae, they cleaned and finished cloth.

Here''s how it worked: the fuller stood with his feet in a tub of water and an alkaline mix, which sometimes included ammonia from urine. Then he trampled the cloth, scrubbed it and wrung it out. **Doing laundry was a full-on foot workout.** In Pompeii alone, 11 of these workshops are known so far.

## An emperor smells an opportunity

Wherever there''s trade, the taxman isn''t far behind. Emperor Vespasian, who ruled from AD 69 to 79, needed to refill the empty treasury. So he put a tax on the urine collected from Rome''s public urinals.

His son Titus found that pretty disgusting. According to the historian Suetonius, Vespasian held up a gold coin from the first revenues and asked whether its smell offended him. Titus said no. The emperor''s reply: "Yet it comes from urine." That''s where the famous phrase comes from: **"Pecunia non olet," money doesn''t stink.**

> Public urinals in France are still called "vespasiennes," and in Italy "vespasiani." They''re named after the emperor with the urine tax.

## The phrase lives on

People still say "pecunia non olet" when money comes from a questionable source and nobody really minds. One emperor, one bathroom tax and a line that has survived almost two thousand years. Not many taxes get that kind of legacy.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('roman-urine', 'en', 1, 'Roman coin replica set', 'Roman coin replica set', 'Hand-held copies of ancient denarii and sestertii. A fun pick for collectors and history nerds.'),
  ('roman-urine', 'en', 2, 'SPQR by Mary Beard', 'SPQR Mary Beard', 'A leading classicist tells the story of Rome in a lively, sharp way. No dusty textbook vibes.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('roman-urine', 'en', 1, 'Wikipedia: Pecunia non olet', 'https://en.wikipedia.org/wiki/Pecunia_non_olet'),
  ('roman-urine', 'en', 2, 'Wikipedia: Fullonica', 'https://en.wikipedia.org/wiki/Fullonica'),
  ('roman-urine', 'en', 3, 'National Geographic Education Blog: Urine Trouble: Taxes in Ancient Rome', 'https://blog.education.nationalgeographic.org/2016/04/15/urine-trouble-taxes-in-ancient-rome/'),
  ('roman-urine', 'en', 4, 'Mental Floss: 6 Practical Ways Romans Used Human Urine and Feces in Daily Life', 'https://www.mentalfloss.com/article/76994/6-practical-ways-romans-used-human-urine-and-feces-daily-life');
