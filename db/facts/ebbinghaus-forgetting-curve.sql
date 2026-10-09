-- WTFact-Fakt „Ein Psychologe erfand 2.300 sinnlose Silben, um das Vergessen zu messen, und seine Kurve hält bis heute“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ebbinghaus-forgetting-curve', '2026-10-10T07:00:00+02:00', 'mind', '📝', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ebbinghaus-forgetting-curve', 'de', 'ebbinghaus-2300-sinnlose-silben-vergessenskurve',
  'Ein Psychologe erfand 2.300 sinnlose Silben, um das Vergessen zu messen, und seine Kurve hält bis heute',
  'Hermann Ebbinghaus machte sich in den 1880ern selbst zur Versuchsperson. 130 Jahre später hat jemand das Ganze wiederholt.',
  'Hermann Ebbinghaus erfand 2.300 sinnlose Silben und testete sich selbst, um zu messen, wie schnell wir vergessen, und eine Wiederholung von 2015 kam auf fast dieselbe Kurve.',
  'Wie schnell vergisst du etwas? Hermann Ebbinghaus wollte darauf eine Zahl, kein Bauchgefühl. Also machte der deutsche Psychologe in den 1880ern sich selbst zur Laborratte.

## Absichtlich Unsinn lernen

Ebbinghaus brauchte Lernstoff, der ihm nichts bedeutete, damit kein Teil einen Vorsprung hatte. Laut Britannica erfand er dafür 2.300 sinnlose Silben aus drei Buchstaben. Solche Kombinationen haben keine Bedeutung, also fängt jede bei null an.

Er selbst war seine einzige Versuchsperson. Er lernte Reihen von Silben, bis er sie fehlerfrei aufsagen konnte, wartete eine festgelegte Zeit und lernte sie dann erneut. Der Trick: Er maß, wie viel Zeit er beim zweiten Mal sparte. Je mehr Ersparnis, desto mehr war hängen geblieben. Laut einer Analyse in PLOS ONE dauerten seine Versuche etwa sieben Monate, oft mit bis zu drei Sitzungen am Tag.

1885 veröffentlichte er die Ergebnisse in seinem Buch „Über das Gedächtnis“. Berühmt wurde vor allem die Vergessenskurve: Sie beschreibt, wie das Vergessen mit der verstrichenen Zeit zusammenhängt.

## Die Wiederholung, 130 Jahre später

Die Psychologie hat den Ruf, dass manche Ergebnisse zerbröseln, sobald jemand sie nachprüft. Also haben Jaap Murre und Joeri Dros von der Universität Amsterdam genau das gemacht. Dros, der Zweitautor, wurde selbst zur Versuchsperson. Er verbrachte rund 70 Stunden damit, Listen sinnloser Silben zu lernen und neu zu lernen, mit Pausen von 20 Minuten bis 31 Tagen.

Das Ergebnis, 2015 in PLOS ONE erschienen: Seine Vergessenskurve ähnelte der von Ebbinghaus stark. Die Autoren schreiben, die Kurve sei „tatsächlich repliziert“ worden. Eine kleine Überraschung gab es trotzdem: Die Kurve ist nicht ganz glatt und springt wahrscheinlich bei 24 Stunden nach oben. Ob der Schlaf dahintersteckt, müsse noch getestet werden, schreiben sie.

> Bonusfakt: In der Wiederholung waren die ersten zwei und die letzten drei Silben einer Reihe am leichtesten zu lernen, vergessen wurde vor allem in der Mitte.

Ein Mann, ein Stapel Unsinn und sehr viel Geduld haben vermessen, wie dein Gedächtnis Dinge verliert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ebbinghaus-forgetting-curve', 'de', 1, 'Karteikasten mit Lernkarten', 'Karteikasten Lernkarten A7', 'Der Klassiker zum Vokabel- und Faktenlernen, einfach und robust.'),
  ('ebbinghaus-forgetting-curve', 'de', 2, 'Sachbuch über das Gedächtnis', 'Sachbuch Gedächtnis Erinnerung', 'Erklärt anschaulich, wie Erinnerungen entstehen und wieder verblassen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ebbinghaus-forgetting-curve', 'de', 1, 'Britannica: Hermann Ebbinghaus', 'https://www.britannica.com/biography/Hermann-Ebbinghaus'),
  ('ebbinghaus-forgetting-curve', 'de', 2, 'PLOS ONE: Replication and Analysis of Ebbinghaus’ Forgetting Curve', 'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0120644'),
  ('ebbinghaus-forgetting-curve', 'de', 3, 'University of Amsterdam: Replication and analysis of Ebbinghaus’ forgetting curve', 'https://www.dare.uva.nl/id/2deae194-9200-43ba-bf69-6ac797371502');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ebbinghaus-forgetting-curve', 'en', 'ebbinghaus-2300-nonsense-syllables-forgetting-curve',
  'A psychologist made up 2,300 nonsense syllables to measure forgetting, and his curve still holds',
  'In the 1880s, Hermann Ebbinghaus became his own test subject. 130 years later, someone did it all again.',
  'Hermann Ebbinghaus invented 2,300 nonsense syllables and tested himself to measure how fast we forget, and a 2015 replication came up with almost the same curve.',
  'How fast do you forget things? Hermann Ebbinghaus wanted a number, not a hunch. So in the 1880s, the German psychologist turned himself into his own lab rat.

## Learning nonsense on purpose

Ebbinghaus needed material that meant nothing to him, so that no item had a head start. According to Britannica, he invented 2,300 three-letter nonsense syllables for this. Combinations like that have no meaning, so every one of them starts from zero.

He was his own and only test subject. He learned rows of syllables until he could recite them without mistakes, waited a set amount of time and then learned them again. The trick: he measured how much time he saved the second time around. The bigger the savings, the more had stuck. According to an analysis in PLOS ONE, his experiments took about seven months, often with up to three sessions a day.

In 1885 he published the results in his book "Über das Gedächtnis" (On Memory). The most famous of them is the forgetting curve, which describes how forgetting relates to the time that has passed.

## The rerun, 130 years later

Psychology has a reputation for results that crumble as soon as someone checks them. So Jaap Murre and Joeri Dros of the University of Amsterdam did exactly that. Dros, the second author, became the test subject himself. He spent about 70 hours learning and relearning lists of nonsense syllables, with gaps ranging from 20 minutes to 31 days.

The result, published in PLOS ONE in 2015: his forgetting curve closely resembled Ebbinghaus''s. The authors write that "the Ebbinghaus forgetting curve has indeed been replicated." There was one small surprise: the curve isn''t completely smooth and probably jumps up at the 24-hour mark. Whether sleep is behind that, they say, still needs to be tested.

> Bonus fact: In the replication, the first two and the last three syllables of a row were the easiest to learn, and most of the forgetting happened in the middle.

One man, a pile of nonsense and a lot of patience mapped out how your memory loses things.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ebbinghaus-forgetting-curve', 'en', 1, 'Index card box with flashcards', 'index card box flashcards', 'The classic for learning vocabulary and facts, simple and sturdy.'),
  ('ebbinghaus-forgetting-curve', 'en', 2, 'Popular science book about memory', 'popular science book memory', 'Explains clearly how memories form and how they fade again.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ebbinghaus-forgetting-curve', 'en', 1, 'Britannica: Hermann Ebbinghaus', 'https://www.britannica.com/biography/Hermann-Ebbinghaus'),
  ('ebbinghaus-forgetting-curve', 'en', 2, 'PLOS ONE: Replication and Analysis of Ebbinghaus’ Forgetting Curve', 'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0120644'),
  ('ebbinghaus-forgetting-curve', 'en', 3, 'University of Amsterdam: Replication and analysis of Ebbinghaus’ forgetting curve', 'https://www.dare.uva.nl/id/2deae194-9200-43ba-bf69-6ac797371502');
