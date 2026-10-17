-- WTFact-Fakt „Die Chili-Schärfeskala begann 1912 mit einer Wärmesalbe und menschlichen Testzungen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('scoville-scale-muscle-rub', '2026-10-20T16:00:00+02:00', 'food', '🌶️', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'scoville-scale-muscle-rub', 'de', 'scoville-skala-waermesalbe-testzungen',
  'Die Chili-Schärfeskala begann 1912 mit einer Wärmesalbe und menschlichen Testzungen',
  'Bevor Messgeräte die Schärfe bestimmten, ließ ein Apotheker Menschen scharfes Zuckerwasser kosten.',
  'Der Apotheker Wilbur Scoville entwickelte seine Chili-Schärfeskala 1912 bei der Arbeit an einer Wärmesalbe mit Chili, und gemessen wurde, indem man Chili-Extrakt so lange mit Zuckerwasser verdünnte, bis menschliche Testpersonen das Brennen kaum noch spürten.',
  'Wie misst man, wie sehr eine Chili brennt? 1912 lautete die Antwort: Man lässt Leute probieren. Und der Anlass war kein Abendessen, sondern eine Wärmesalbe.

## Ein Apotheker mit brennendem Problem

Wilbur Scoville war Apotheker, geboren 1865 in Bridgeport, Connecticut. 1907 zog er nach Detroit, um für die Pharmafirma Parke, Davis & Company zu arbeiten. Laut Fiery Foods Central bekam er dort eine Wärmesalbe namens Heet zugeteilt, die mit Chilis hergestellt wurde. Seine Aufgabe: den Chili-Anteil so zu standardisieren, dass die Salbe nicht auf der Haut brennt.

Dafür brauchte er eine Methode, um die Schärfe der Schoten zu messen. 1912 stellte er seine Lösung auf der Jahrestagung der American Pharmaceutical Association in Denver vor.

## Zungen als Messgerät

Die Methode heißt organoleptischer Test und war simpel. Ein Chili-Extrakt wurde mit Zuckerwasser gemischt und einer Gruppe von Testpersonen gereicht. Die Mischung wurde immer weiter verdünnt, bis die Schärfe gerade noch wahrnehmbar war, so beschreibt es die Hochschule MCPHS. Eine Beschreibung von 1920, die Fiery Foods Central zitiert, wird konkret: 0,1 Gramm gemahlenen Capsicum über Nacht in 100 Milliliter Alkohol einlegen und diese Tinktur dann in Wasser mit 10 Prozent Zucker geben.

Wie stark verdünnt werden musste, ergab den Wert: die Scoville-Einheit. Eine Gemüsepaprika liegt bei 0. Laut der Wellcome Collection kommen Jalapeños auf 3.500 bis 8.000. Pepper X liegt laut MCPHS bei 2,69 Millionen.

## Von Zungen zu Maschinen

Heute hat die Chromatografie die Testrunde abgelöst, schreibt Fiery Foods Central. Der Name ist trotzdem geblieben: Chili-Schärfe wird weiter in Scoville-Einheiten angegeben, und der Mann dahinter ist fast schon eine Legende.

> Bonusfakt: Laut MCPHS nannte die New York Times Scoville den „Papst der Chilis“ („Pope of Peppers“), und 2016 bekam er zu seinem 151. Geburtstag ein Google Doodle.

Jede Schärfe-Rangliste, die du je gesehen hast, begann also als Qualitätskontrolle für eine Wärmesalbe.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('scoville-scale-muscle-rub', 'de', 1, 'Probierset scharfe Soßen', 'Hot Sauce Probierset Geschenk', 'Mehrere Soßen in verschiedenen Schärfegraden zum direkten Vergleich.'),
  ('scoville-scale-muscle-rub', 'de', 2, 'Chili-Anzuchtset', 'Chili Anzuchtset', 'Damit ziehst du mehrere Chilisorten auf der Fensterbank.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('scoville-scale-muscle-rub', 'de', 1, 'MCPHS: The Spicy Legacy of Alum Wilbur Scoville', 'https://www.mcphs.edu/alumni/news/the-spicy-legacy-of-alum-wilbur-scoville'),
  ('scoville-scale-muscle-rub', 'de', 2, 'Fiery Foods & Barbecue Central: Wilbur Scoville and the Organoleptic Test Centennial', 'https://www.fieryfoodscentral.com/2012/01/17/wilbur-scoville-and-the-organoleptic-test-centennial/'),
  ('scoville-scale-muscle-rub', 'de', 3, 'Wellcome Collection: Chillies and the trouble with Scoville', 'https://wellcomecollection.org/stories/chillies-and-the-trouble-with-scoville');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'scoville-scale-muscle-rub', 'en', 'scoville-scale-muscle-rub-tasters',
  'The chili heat scale began in 1912 with a muscle rub and human tasters',
  'Before lab machines measured chili heat, a pharmacist had people sip spicy sugar water.',
  'Pharmacist Wilbur Scoville developed his chili heat scale in 1912 while working on a chile-based muscle salve, and it measured heat by diluting pepper extract in sugar water until human tasters could barely feel the burn.',
  'How do you put a number on the burn of a chili? In 1912, the answer was: you make people taste it. And the reason behind it wasn''t dinner. It was a muscle rub.

## A pharmacist with a burning problem

Wilbur Scoville was a pharmacist, born in 1865 in Bridgeport, Connecticut. In 1907, he moved to Detroit to work for the drug company Parke, Davis & Company. According to Fiery Foods Central, he was assigned to a warming salve called Heet, which was made with chile peppers. His job: standardize its chile content so the salve wouldn''t burn the skin.

To do that, he needed a way to measure how hot the peppers were. In 1912, he presented his solution at the annual meeting of the American Pharmaceutical Association in Denver.

## Tongues as measuring instruments

The method, known as the organoleptic test, was simple. A pepper extract was mixed with sugar water and handed to a panel of tasters. The mix was diluted further and further until the heat was just barely perceptible, as MCPHS describes it. A 1920 description quoted by Fiery Foods Central gets specific: soak 0.1 grams of ground capsicum overnight in 100 milliliters of alcohol, then add that tincture to water sweetened with 10 percent sugar.

How much dilution it took became the score: the Scoville Heat Unit. A bell pepper sits at 0. According to the Wellcome Collection, jalapeños rate 3,500 to 8,000. Pepper X, MCPHS says, comes in at 2.69 million.

## From tongues to machines

Today, chromatography has taken over from the tasting panel, Fiery Foods Central notes. The name stuck anyway: chili heat is still given in Scoville Heat Units, and the man behind it has become a bit of a legend.

> Bonus fact: According to MCPHS, the New York Times called Scoville the “Pope of Peppers”, and in 2016 he got a Google Doodle on his 151st birthday.

So every chili heat ranking you have ever seen started out as quality control for a muscle rub.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('scoville-scale-muscle-rub', 'en', 1, 'Hot sauce tasting set', 'hot sauce gift set tasting', 'A set of sauces at different heat levels to compare side by side.'),
  ('scoville-scale-muscle-rub', 'en', 2, 'Chili pepper growing kit', 'chili pepper growing kit', 'Lets you grow several pepper varieties on a windowsill.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('scoville-scale-muscle-rub', 'en', 1, 'MCPHS: The Spicy Legacy of Alum Wilbur Scoville', 'https://www.mcphs.edu/alumni/news/the-spicy-legacy-of-alum-wilbur-scoville'),
  ('scoville-scale-muscle-rub', 'en', 2, 'Fiery Foods & Barbecue Central: Wilbur Scoville and the Organoleptic Test Centennial', 'https://www.fieryfoodscentral.com/2012/01/17/wilbur-scoville-and-the-organoleptic-test-centennial/'),
  ('scoville-scale-muscle-rub', 'en', 3, 'Wellcome Collection: Chillies and the trouble with Scoville', 'https://wellcomecollection.org/stories/chillies-and-the-trouble-with-scoville');
