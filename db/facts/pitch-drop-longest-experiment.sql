-- WTFact-Fakt „Dieses Experiment läuft seit 1927, und es sind erst 9 Tropfen gefallen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('pitch-drop-longest-experiment', '2026-10-30T12:00:00+01:00', 'records', '⏳', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pitch-drop-longest-experiment', 'de', 'pechtropfen-laengstes-experiment',
  'Dieses Experiment läuft seit 1927, und es sind erst 9 Tropfen gefallen',
  'Ein Trichter voll schwarzem Pech in Australien hält den Rekord als längstes Laborexperiment, und fast nichts passiert darin.',
  'Das Pechtropfen-Experiment der University of Queensland hält den Guinness-Weltrekord als am längsten laufendes Laborexperiment: Es wurde 1927 angesetzt, und seitdem sind erst 9 Tropfen gefallen.',
  'Die meisten Experimente sind an einem Nachmittag erledigt. Dieses hier hat vor fast hundert Jahren begonnen, und es ist immer noch nicht fertig.

## Ein Feststoff, der tropft

1927 erhitzte Thomas Parnell, der erste Physikprofessor der University of Queensland, eine Probe Pech, also eine teerartige Masse, und goss sie in einen Glastrichter mit verschlossenem Hals. Dann ließ er sie 3 Jahre lang setzen. 1930 schnitt er den Hals auf, und das Pech fing an zu tropfen.

Zeigen wollte er, dass etwas fest wirken und trotzdem fließen kann. Bei Zimmertemperatur fühlt sich Pech so hart an, dass man es mit dem Hammer zerschlagen könnte. Laut der Universität ist es aber 100 Milliarden Mal zähflüssiger als Wasser. Deshalb tropft es so langsam. Der erste Tropfen brauchte 8 Jahre. Insgesamt sind laut der Universität erst 9 Tropfen gefallen, der letzte im April 2014. Guinness World Records führt es als am längsten laufendes Laborexperiment.

## Keiner hat es gesehen

Ungefähr alle neun Jahre fällt ein Tropfen. Laut der Universität haben verschiedene Pannen aber verhindert, dass jemals jemand einen fallen sah. Am bittersten war es im Jahr 2000: Eine Webcam lief mit, doch wie Australian Geographic berichtet, gingen die Aufnahmen dieses Tropfens durch einen Datenfehler verloren.

John Mainstone betreute das Experiment mehr als 50 Jahre lang. Er starb etwa acht Monate vor dem neunten Tropfen, ohne je einen fallen gesehen zu haben. Heute ist Professor Andrew White der dritte Hüter. Die Universität erwartet den nächsten Tropfen irgendwann in den 2020ern und überträgt den Trichter live im Netz.

> Bonusfakt: Geduld ist eingeplant. Laut Guinness World Records ist noch genug Pech im Trichter, damit das Experiment weitere hundert Jahre laufen kann.

Irgendwo in Australien bereitet sich ein Klumpen Teer auf seinen zehnten großen Moment vor. Wahrscheinlich genau dann, wenn alle wegschauen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pitch-drop-longest-experiment', 'de', 1, 'Deko-Sanduhr', 'große Sanduhr Deko', 'Eine klassische Sanduhr, die auf Schreibtisch oder Regal richtig gut aussieht.'),
  ('pitch-drop-longest-experiment', 'de', 2, 'Experimentierset mit Schleim', 'Experimentierkasten Schleim nicht newtonsche Flüssigkeit', 'Damit spielst du mit Glibber, der sich gleichzeitig flüssig und fest verhält.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pitch-drop-longest-experiment', 'de', 1, 'Guinness World Records: Longest-running laboratory experiment', 'https://guinnessworldrecords.com/world-records/longest-running-laboratory-experiment'),
  ('pitch-drop-longest-experiment', 'de', 2, 'University of Queensland, School of Mathematics and Physics: Pitch Drop experiment', 'https://smp.uq.edu.au/pitch-drop-experiment'),
  ('pitch-drop-longest-experiment', 'de', 3, 'Australian Geographic: World''s longest experiment drops 13-year blob', 'https://www.australiangeographic.com.au/news/2014/04/worlds-longest-lab-experiment-produces-result');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pitch-drop-longest-experiment', 'en', 'pitch-drop-longest-experiment',
  'This experiment has been running since 1927, and only 9 drops have fallen',
  'A funnel of black tar in Australia holds the record for the longest-running lab experiment, and almost nothing happens in it.',
  'The Pitch Drop experiment at the University of Queensland holds the Guinness World Record for the longest-running laboratory experiment: it was set up in 1927, and only 9 drops have fallen since.',
  'Most experiments are over in an afternoon. This one started almost a hundred years ago, and it''s still not finished.

## A solid that drips

In 1927, Thomas Parnell, the University of Queensland''s first professor of physics, heated a sample of pitch, a tar-like substance, and poured it into a glass funnel with a sealed stem. Then he let it settle for 3 years. In 1930 he cut the stem open, and the pitch began to drip.

The point was to show that something can feel solid and still flow. At room temperature, pitch feels hard enough to shatter with a hammer, yet according to the university it is 100 billion times more viscous than water. That''s why the dripping is so slow. The first drop took 8 years to fall. According to the university, only 9 drops have fallen in total, the most recent in April 2014. Guinness World Records lists it as the longest-running laboratory experiment.

## Nobody saw it happen

A drop falls roughly every nine years, but according to the university, various glitches have prevented anyone from seeing one fall. The most painful miss came in 2000: a webcam was watching, but as Australian Geographic reports, a data malfunction meant the footage of that drop was lost.

John Mainstone looked after the experiment for more than 50 years. He died about eight months before the ninth drop, without ever seeing a drop fall. Today Professor Andrew White is the third custodian. The university expects the next drop sometime in the 2020s and streams the funnel live online.

> Bonus fact: Patience is built in. According to Guinness World Records, there is enough pitch left in the funnel for the experiment to run for another hundred years.

Somewhere in Australia, a lump of tar is getting ready for its tenth big moment. Probably while everyone is looking away.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pitch-drop-longest-experiment', 'en', 1, 'Hourglass desk decoration', 'large hourglass sand timer decoration', 'A classic sand timer that looks great on a desk or shelf.'),
  ('pitch-drop-longest-experiment', 'en', 2, 'Non-Newtonian slime kit', 'science kit slime non newtonian fluid', 'Lets you play with goo that acts like a liquid and a solid at the same time.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pitch-drop-longest-experiment', 'en', 1, 'Guinness World Records: Longest-running laboratory experiment', 'https://guinnessworldrecords.com/world-records/longest-running-laboratory-experiment'),
  ('pitch-drop-longest-experiment', 'en', 2, 'University of Queensland, School of Mathematics and Physics: Pitch Drop experiment', 'https://smp.uq.edu.au/pitch-drop-experiment'),
  ('pitch-drop-longest-experiment', 'en', 3, 'Australian Geographic: World''s longest experiment drops 13-year blob', 'https://www.australiangeographic.com.au/news/2014/04/worlds-longest-lab-experiment-produces-result');
