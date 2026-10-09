-- WTFact-Fakt „Bluetooth ist nach einem Wikingerkönig benannt und war nur als Platzhalter gedacht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES ('bluetooth-viking-king', NULL, 'brands', '🦷', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bluetooth-viking-king', 'de', 'bluetooth-wikingerkoenig-platzhalter',
  'Bluetooth ist nach einem Wikingerkönig benannt und war nur als Platzhalter gedacht',
  'Deine kabellosen Kopfhörer tragen den Spitznamen eines dänischen Königs aus dem 10. Jahrhundert. Und das Logo zeigt seine Initialen in Runen.',
  'Bluetooth ist nach dem dänischen König Harald „Blauzahn“ Gormsson benannt, der Name war nur als vorläufiger Codename gedacht, und das Logo besteht aus seinen Initialen in Runen.',
  'Jedes Mal, wenn du Kopfhörer koppelst, sagst du den Spitznamen eines Wikingerkönigs. Klingt nach Erfindung, ist aber offiziell so.

## Ein König mit blauem Zahn

Harald Gormsson war im 10. Jahrhundert König von Dänemark. Laut der Bluetooth Special Interest Group (SIG), die den Standard verwaltet, vereinte er Dänemark und Norwegen. Seinen Beinamen „Blauzahn“, englisch „Bluetooth“, bekam er wahrscheinlich wegen eines abgestorbenen Zahns, der dunkel blaugrau aussah. Laut Gizmodo glauben das viele Fachleute, ganz sicher ist es aber nicht.

## Wie ein Wikingerbuch zum Funkstandard wurde

Mitte der 1990er arbeiteten Intel, Ericsson und Nokia an einem gemeinsamen Funkstandard für kurze Strecken. Dafür brauchte das Projekt einen Codenamen. Laut Gizmodo hatte der Ericsson-Ingenieur Sven Mattisson einen Roman über Wikinger gelesen, „Die Abenteuer des Röde Orm“ von Frans G. Bengtsson, und erzählte dem Intel-Ingenieur Jim Kardach davon.

Kardach schlug daraufhin „Bluetooth“ vor. Laut Bluetooth SIG begründete er das so: Harald sei berühmt dafür, Skandinavien vereint zu haben, so wie man die PC- und die Mobilfunkbranche vereinen wollte.

## Der Platzhalter, der blieb

Der Name war laut Bluetooth SIG nur als Platzhalter gedacht, bis das Marketing etwas Besseres findet. Im Rennen waren „RadioWire“ und „PAN“ für Personal Area Networking. PAN war der Favorit, hatte im Internet aber schon Zehntausende Treffer. Für RadioWire wurde die Markenprüfung nicht rechtzeitig fertig. Also blieb es bei Bluetooth.

> Bonusfakt: Das Bluetooth-Logo ist eine sogenannte Binderune aus den Runen Hagall und Bjarkan, den Initialen H und B von Harald Blauzahn.

Ein König, der seit über tausend Jahren tot ist, verbindet heute deine Kopfhörer mit deinem Handy. Nicht schlecht für einen Arbeitstitel.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bluetooth-viking-king', 'de', 1, 'Roman „Die Abenteuer des Röde Orm“', 'Die Abenteuer des Röde Orm Bengtsson', 'Ein humorvoller Abenteuerroman über Wikinger, der in Skandinavien ein Klassiker ist.'),
  ('bluetooth-viking-king', 'de', 2, 'Bluetooth-Lautsprecher im Retro-Design', 'Bluetooth Lautsprecher Retro', 'Ein kleiner Lautsprecher im alten Radio-Look für Musik vom Handy.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bluetooth-viking-king', 'de', 1, 'Bluetooth SIG: Origin of the name', 'https://www.bluetooth.com/about-us/bluetooth-origin/'),
  ('bluetooth-viking-king', 'de', 2, 'Gizmodo: Bluetooth is named after a medieval king who may have had a blue tooth', 'https://gizmodo.com/bluetooth-is-named-after-a-medieval-king-who-may-have-h-1671450657');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bluetooth-viking-king', 'en', 'bluetooth-viking-king-placeholder',
  'Bluetooth is named after a Viking king and was only meant as a placeholder',
  'Your wireless earbuds carry the nickname of a 10th-century Danish king. And the logo shows his initials in runes.',
  'Bluetooth is named after the Danish king Harald "Bluetooth" Gormsson, the name was only meant as a temporary code name, and the logo is made of his initials in runes.',
  'Every time you pair your headphones, you''re saying the nickname of a Viking king. Sounds made up, but it''s the official story.

## A king with a blue tooth

Harald Gormsson was king of Denmark in the 10th century. According to the Bluetooth Special Interest Group (SIG), which manages the standard, he united Denmark and Norway. He probably got his nickname "Bluetooth" from a dead tooth that looked dark blue-grey. According to Gizmodo, many scholars believe this, but it isn''t certain.

## How a Viking novel became a wireless standard

In the mid-1990s, Intel, Ericsson and Nokia were working on a shared short-range wireless standard. The project needed a code name. According to Gizmodo, Ericsson engineer Sven Mattisson had read a novel about Vikings, "The Long Ships" by Frans G. Bengtsson, and told Intel engineer Jim Kardach about it.

Kardach then suggested "Bluetooth". According to the Bluetooth SIG, he explained it like this: Harald was famous for uniting Scandinavia, just as they intended to unite the PC and cellular industries.

## The placeholder that stayed

According to the Bluetooth SIG, the name was only meant as a placeholder until marketing came up with something better. The contenders were "RadioWire" and "PAN", short for Personal Area Networking. PAN was the favorite, but it already had tens of thousands of hits online. For RadioWire, the trademark search wasn''t finished in time. So Bluetooth it was.

> Bonus fact: The Bluetooth logo is a so-called bind rune made from the runes Hagall and Bjarkan, the initials H and B of Harald Bluetooth.

A king who has been dead for more than a thousand years now connects your headphones to your phone. Not bad for a working title.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bluetooth-viking-king', 'en', 1, 'Novel "The Long Ships" by Frans G. Bengtsson', 'The Long Ships Frans Bengtsson', 'A funny Viking adventure novel that is a classic in Scandinavia.'),
  ('bluetooth-viking-king', 'en', 2, 'Retro-style Bluetooth speaker', 'retro Bluetooth speaker', 'A small speaker with an old-radio look for music from your phone.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bluetooth-viking-king', 'en', 1, 'Bluetooth SIG: Origin of the name', 'https://www.bluetooth.com/about-us/bluetooth-origin/'),
  ('bluetooth-viking-king', 'en', 2, 'Gizmodo: Bluetooth is named after a medieval king who may have had a blue tooth', 'https://gizmodo.com/bluetooth-is-named-after-a-medieval-king-who-may-have-h-1671450657');
