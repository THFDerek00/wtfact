-- WTFact-Fakt „Ein Foto auf deinem Handy ist größer als der Computer, der zum Mond flog“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('apollo-computer', '2026-09-28', 'tech', '🚀', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'apollo-computer', 'de', 'apollo-computer-handy',
  'Ein Foto auf deinem Handy ist größer als der Computer, der zum Mond flog',
  'Der Computer, der Menschen zum Mond brachte, hatte weniger Speicher als ein einziges Foto auf deinem Handy. Und er wurde von Hand gewebt.',
  'Der Apollo-Bordcomputer hatte rund 4 KB Arbeitsspeicher. Ein Handyfoto hat etwa 3.000 KB.',
  '1969 landeten Menschen auf dem Mond. Gesteuert wurde das Raumschiff vom **Apollo Guidance Computer**, und dessen technische Daten sind aus heutiger Sicht fast lächerlich.

## Die Zahlen

- **Arbeitsspeicher:** etwa 4 KB
- **Festspeicher:** etwa 72 KB
- **Takt:** rund 1 MHz

Zum Vergleich: Ein einziges Foto auf deinem Handy ist rund 3 MB groß, also etwa 3.000 KB. Ein aktuelles Smartphone hat Millionen Mal mehr Arbeitsspeicher und ist viele tausend Mal schneller.

## Software, die gewebt wurde

Jetzt wird es absurd. Das Programm des Apollo-Computers wurde nicht auf eine Festplatte geschrieben, sondern **von Hand gewebt**. Der Speicher hieß *Core Rope Memory*: Kupferdrähte wurden durch winzige Magnetringe gefädelt oder an ihnen vorbeigeführt. Durch den Ring hieß 1, daneben hieß 0.

Die Arbeit übernahmen vor allem Frauen in einer Fabrik in Massachusetts, viele vorher in der Textilindustrie tätig. Ein Programm zu „installieren" dauerte Wochen. Ein Bug bedeutete: Das Ganze musste neu gewebt werden.

> Die Software-Abteilung leitete Margaret Hamilton. Sie gilt als eine der Personen, die den Begriff „Software Engineering" geprägt haben.

## Und es hat funktioniert

Kurz vor der Mondlandung meldete der Computer mehrmals Überlastungsalarme mit den Codes 1201 und 1202. In Houston blieben den Fluglotsen nur Sekunden für die Entscheidung: abbrechen oder weiter? Sie sagten: weiter. Weil Hamiltons Team ihn so gebaut hatte, dass er unwichtige Aufgaben einfach fallen ließ, lief die Landung trotzdem weiter. Neil Armstrong setzte die Fähre sicher auf.

Dein Handy will gerade 2 GB für ein Update? Die Menschheit ist mit einem winzigen Bruchteil davon zum Mond geflogen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('apollo-computer', 'de', 1, 'LEGO NASA Apollo Saturn V', 'LEGO Saturn V Apollo', 'Über einen Meter Mondrakete zum Selberbauen. Sieht in jedem Regal absurd gut aus.'),
  ('apollo-computer', 'de', 2, 'Mondlampe 3D', 'Mondlampe 3D Druck', 'Holt dir den Mond nachts ans Bett, ganz ohne 4-KB-Computer.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('apollo-computer', 'de', 1, 'Wikipedia: Apollo Guidance Computer', 'https://de.wikipedia.org/wiki/Apollo_Guidance_Computer'),
  ('apollo-computer', 'de', 2, 'Science News: Core memory weavers and Navajo women made the Apollo missions possible', 'https://www.sciencenews.org/article/core-memory-weavers-navajo-apollo-raytheon-computer-nasa'),
  ('apollo-computer', 'de', 3, 'American Scientist: Moonshot Computing', 'https://www.americanscientist.org/article/moonshot-computing');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'apollo-computer', 'en', 'apollo-computer-phone',
  'One photo on your phone is bigger than the computer that flew to the Moon',
  'The computer that took humans to the Moon had less memory than a single photo on your phone. And it was woven by hand.',
  'The Apollo guidance computer had about 4 KB of RAM. One phone photo is about 3,000 KB.',
  'In 1969, humans landed on the Moon. The spacecraft was steered by the **Apollo Guidance Computer**, and by today''s standards its specs are almost laughable.

## The numbers

- **RAM:** about 4 KB
- **Storage:** about 72 KB
- **Clock speed:** around 1 MHz

For comparison: a single photo on your phone is about 3 MB, or roughly 3,000 KB. A current smartphone has millions of times more RAM and is many thousands of times faster.

## Software that was woven

Here''s where it gets wild. The Apollo computer''s program wasn''t written to a disk. It was **woven by hand**. The memory was called *core rope memory*: copper wires were threaded either through or around tiny magnetic rings. Through the ring meant 1, around it meant 0.

The work was done mostly by women at a factory in Massachusetts, many of whom had worked in the textile industry. "Installing" a program took weeks. A bug meant weaving it again.

> The software team was led by Margaret Hamilton, who is credited with popularizing the term "software engineering."

## And it worked

Moments before the landing, the computer threw several overload alarms with the codes 1201 and 1202. Mission Control in Houston had seconds to decide: abort or keep going? They said go. Because Hamilton''s team had built it to drop low-priority tasks, the landing carried on. Neil Armstrong set the lander down safely.

Your phone wants 2 GB for an update? Humanity flew to the Moon with a tiny fraction of that.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('apollo-computer', 'en', 1, 'LEGO NASA Apollo Saturn V', 'LEGO Saturn V Apollo', 'Over a meter of moon rocket to build yourself. Looks ridiculously good on any shelf.'),
  ('apollo-computer', 'en', 2, '3D moon lamp', '3D moon lamp', 'Brings the Moon to your bedside, no 4 KB computer required.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('apollo-computer', 'en', 1, 'Wikipedia: Apollo Guidance Computer', 'https://en.wikipedia.org/wiki/Apollo_Guidance_Computer'),
  ('apollo-computer', 'en', 2, 'Science News: Core memory weavers and Navajo women made the Apollo missions possible', 'https://www.sciencenews.org/article/core-memory-weavers-navajo-apollo-raytheon-computer-nasa'),
  ('apollo-computer', 'en', 3, 'American Scientist: Moonshot Computing', 'https://www.americanscientist.org/article/moonshot-computing');
