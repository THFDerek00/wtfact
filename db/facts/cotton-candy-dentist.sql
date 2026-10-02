-- WTFact-Fakt „Die Zuckerwatte-Maschine wurde von einem Zahnarzt miterfunden“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('cotton-candy-dentist', '2026-09-27', 'food', '🍭', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cotton-candy-dentist', 'de', 'zuckerwatte-zahnarzt',
  'Die Zuckerwatte-Maschine wurde von einem Zahnarzt miterfunden',
  '1897 bauten ein Zahnarzt und ein Süßwarenhersteller in Nashville eine Maschine für gesponnenen Zucker. Ausgerechnet.',
  'Die Maschine für Zuckerwatte erfanden 1897 der Zahnarzt William Morrison und der Süßwarenhersteller John C. Wharton.',
  'Zuckerwatte ist im Grunde nur Zucker und Luft, und für Zähne nicht gerade ein Geschenk. Umso schräger, wer die Maschine dafür miterfunden hat. **Einer der beiden Erfinder war Zahnarzt.**

## Ein Zahnarzt und ein Konditor

Im Jahr 1897 taten sich in Nashville, Tennessee, zwei Männer zusammen: William J. Morrison, ein Zahnarzt, und John C. Wharton, ein Süßwarenhersteller. Gemeinsam bauten sie eine Maschine, die Zucker schmilzt und daraus hauchdünne Fäden spinnt. Laut History Hit hatte Morrison seinen Abschluss als Zahnarzt 1890 in Tennessee gemacht. Statt Zucker zu meiden, suchte er nach einer Möglichkeit, gesponnenen Zucker in großen Mengen herzustellen. Kurz darauf ließen die beiden ihre Erfindung patentieren.

Das Prinzip ist bis heute gleich. Der Zucker wird in der Mitte der Maschine erhitzt und geschmolzen, dann schleudert die Drehung ihn durch winzige Löcher nach außen. An der Luft kühlt er sofort ab und wird zu feinen Fäden, die man mit einem Stab aufwickelt.

## Der große Auftritt 1904

Richtig berühmt wurde die Süßigkeit auf der Weltausstellung 1904 in St. Louis. Damals hieß sie noch „Fairy Floss“, also Feenfaden. **Laut Britannica wurden dort fast 70.000 Schachteln verkauft**, History Hit spricht von mehr als 60.000 Portionen. Eine Schachtel kostete 25 Cent, laut Britannica die Hälfte des Eintrittspreises der Ausstellung.

Der Name „Cotton Candy“, also Baumwoll-Süßigkeit, kam erst später. Laut Britannica prägte ihn in den 1920ern Josef Lascaux, und auch er war Zahnarzt, diesmal aus Louisiana.

> Laut Britannica gewann die Maschine auf der Weltausstellung 1904 sogar einen Preis für die Neuartigkeit der Erfindung.

## Zahnärzte mit Naschkatzen-Herz

Zwei Zahnärzte, die die Geschichte der Zuckerwatte prägen: Das klingt wie ein Widerspruch, ist aber gut belegt. Ausgedacht hätte sich diese Pointe vermutlich niemand.

Zucker, Luft und ein bisschen Ironie, mehr braucht es für einen Jahrmarktklassiker nicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cotton-candy-dentist', 'de', 1, 'Zuckerwatte-Maschine für zu Hause', 'Zuckerwattemaschine für zu Hause', 'Kleine Maschine für Partys und Kindergeburtstage, funktioniert mit normalem Zucker.'),
  ('cotton-candy-dentist', 'de', 2, 'Bunte Zuckerwatte-Stäbe', 'Zuckerwatte Stäbe bunt', 'Wiederverwendbare oder Papier-Stäbe, damit die Wolke auch hält.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cotton-candy-dentist', 'de', 1, 'Britannica: How Was Cotton Candy Invented?', 'https://www.britannica.com/topic/How-Was-Cotton-Candy-Invented'),
  ('cotton-candy-dentist', 'de', 2, 'History Hit: The Unlikely Story of the Dentist Who Invented Cotton Candy', 'https://www.historyhit.com/the-unlikely-story-of-the-dentist-who-invented-cotton-candy/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cotton-candy-dentist', 'en', 'cotton-candy-dentist',
  'The cotton candy machine was co-invented by a dentist',
  'In 1897, a dentist and a confectioner in Nashville built a machine for spun sugar. Of all people.',
  'The cotton candy machine was invented in 1897 by dentist William Morrison and confectioner John C. Wharton.',
  'Cotton candy is basically sugar and air, and not exactly a gift to your teeth. Which makes it even stranger who helped invent the machine for it. **One of the two inventors was a dentist.**

## A dentist and a confectioner

In 1897, two men in Nashville, Tennessee, teamed up: William J. Morrison, a dentist, and John C. Wharton, a confectioner. Together they built a machine that melts sugar and spins it into ultra-thin threads. According to History Hit, Morrison had graduated as a dentist in Tennessee in 1890. Instead of steering clear of sugar, he looked for a way to mass-produce spun sugar. Shortly after, the pair patented their invention.

The principle hasn''t changed. The sugar is heated and melted in the center of the machine, then the spinning flings it outward through tiny holes. In the air it cools instantly into fine threads, which get wound up on a stick.

## The big debut in 1904

The treat really took off at the 1904 World''s Fair in St. Louis. Back then it was called "fairy floss". **According to Britannica, nearly 70,000 boxes were sold there**, while History Hit puts it at more than 60,000 portions. A box cost 25 cents, which according to Britannica was half the price of admission to the fair.

The name "cotton candy" came later. According to Britannica, it was coined in the 1920s by Josef Lascaux, who was also a dentist, this time from Louisiana.

> According to Britannica, the machine even won a prize at the 1904 fair for novelty of invention.

## Dentists with a sweet tooth

Two dentists shaping the history of cotton candy sounds like a contradiction, but it''s well documented. Nobody would have dared to make up that punchline.

Sugar, air and a dash of irony: that''s all it takes to make a fairground classic.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cotton-candy-dentist', 'en', 1, 'Home cotton candy machine', 'cotton candy machine for home', 'A small machine for parties and birthdays that works with regular sugar.'),
  ('cotton-candy-dentist', 'en', 2, 'Cotton candy cones', 'cotton candy paper cones sticks', 'Paper cones or sticks so your sugar cloud actually holds together.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cotton-candy-dentist', 'en', 1, 'Britannica: How Was Cotton Candy Invented?', 'https://www.britannica.com/topic/How-Was-Cotton-Candy-Invented'),
  ('cotton-candy-dentist', 'en', 2, 'History Hit: The Unlikely Story of the Dentist Who Invented Cotton Candy', 'https://www.historyhit.com/the-unlikely-story-of-the-dentist-who-invented-cotton-candy/');
