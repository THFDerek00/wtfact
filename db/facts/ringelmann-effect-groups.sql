-- WTFact-Fakt „In einer Achtergruppe brachte jeder nur 49 Prozent: der Ringelmann-Effekt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('ringelmann-effect-groups', '2026-10-24T12:00:00+02:00', 'mind', '🪢', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ringelmann-effect-groups', 'de', 'ringelmann-effekt-gruppenleistung',
  'In einer Achtergruppe brachte jeder nur 49 Prozent: der Ringelmann-Effekt',
  'Ein französischer Agraringenieur stellte schon in den 1880ern fest: Je größer das Team, desto weniger bringt jedes Mitglied.',
  'In Maximilien Ringelmanns Daten erreichte jedes Mitglied einer Achtergruppe nur 49 Prozent dessen, was eine Person allein schaffte.',
  'Gemeinsam sind wir stark, oder? Ein französischer Agraringenieur hatte Zahlen, die sagen: Es ist kompliziert.

## Acht Leute, halbe Kraft

Maximilien Ringelmann untersuchte, wie effizient Pferde, Ochsen, Menschen und Maschinen in der Landwirtschaft arbeiten. Seine Versuche mit Menschen liefen vor allem zwischen 1882 und 1887 an der Landwirtschaftsschule Grand-Jouan, veröffentlicht hat er sie 1913. In seiner Übersichtstabelle zählt eine Person allein als 100 Prozent. Zu zweit schaffte jeder nur noch 93 Prozent. Zu dritt 85 Prozent. In einer Achtergruppe gerade mal 49 Prozent pro Kopf.

Noch schräger sind die Summen. Sieben Leute zusammen kamen auf das 3,92-Fache einer Einzelperson. Acht Leute: ebenfalls 3,92. Auf dem Papier brachte die achte Person also gar nichts.

## Das Seil, das vielleicht keins war

Erzählt wird die Studie meist als Seilzieh-Experiment, und auch die Sage Encyclopedia of Group Processes beschreibt Gruppen von Arbeitern, die an einem Seil ziehen. Doch als David Kravitz und Barbara Martin 1986 den Originalartikel wieder ausgruben, stellten sie fest: Ringelmann ließ in manchen Tests tatsächlich am Seil ziehen. Welche Aufgaben hinter der berühmten Tabelle stecken, hat er aber nie angegeben. Dass es Seilzieh-Daten seien, kam erst später auf. Bekannt wurden die Zahlen durch einen Artikel eines Autors namens Moede von 1927, der Ringelmann nur in Klammern in einer Bildunterschrift nannte.

Warum verlieren Gruppen an Kraft? Zum Teil, weil sich Menschen nicht perfekt abstimmen. Doch 1974 bauten Alan Ingham und Kollegen den Seilversuch mit Augenbinden nach. In manchen Durchgängen glaubten die Teilnehmenden, sie zögen mit anderen, dabei zogen sie in Wahrheit allein. Ihre Leistung sank trotzdem. Es liegt also nicht nur an holpriger Teamarbeit: Menschen strengen sich in der Gruppe offenbar auch weniger an.

> Bonusfakt: In Inghams erster Studie verloren Zweiergruppen 9 Prozent und Dreiergruppen 18 Prozent. Eine vierte, fünfte oder sechste Person machte kaum noch einen Unterschied.

1979 gaben Bibb Latané und Kollegen dem Phänomen den Namen, den es bis heute trägt: „Social Loafing“, auf Deutsch soziales Faulenzen. Viele Hände machen der Arbeit ein schnelles Ende, manchmal auch der Anstrengung.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ringelmann-effect-groups', 'de', 1, 'Buch über Sozialpsychologie', 'Sozialpsychologie Buch', 'Eine gut lesbare Einführung in die klassischen Experimente zum Verhalten in Gruppen.'),
  ('ringelmann-effect-groups', 'de', 2, 'Tauziehen-Seil', 'Tauziehen Seil', 'Ein robustes Seil für Gartenfeste und Teamspiele.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ringelmann-effect-groups', 'de', 1, 'Journal of Personality and Social Psychology: Ringelmann Rediscovered: The Original Article', 'https://doi.org/10.1037/0022-3514.50.5.936'),
  ('ringelmann-effect-groups', 'de', 2, 'Sage Knowledge: Ringelmann Effect', 'https://sk.sagepub.com/ency/edvol/embed/processes/chpt/ringelmann-effect'),
  ('ringelmann-effect-groups', 'de', 3, 'Sage Knowledge: Social Loafing', 'https://sk.sagepub.com/ency/edvol/embed/processes/chpt/social-loafing');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ringelmann-effect-groups', 'en', 'ringelmann-effect-group-effort',
  'In a group of eight, each person put in just 49 percent: the Ringelmann effect',
  'A French farm engineer found out in the 1880s that teams get less out of each member the bigger they get.',
  'In Maximilien Ringelmann''s data, each member of a group of eight reached only 49 percent of what one worker managed alone.',
  'Teamwork makes the dream work, right? A French agricultural engineer had numbers that say: it''s complicated.

## Eight people, half the effort

Maximilien Ringelmann studied how efficiently horses, oxen, men and machines work on farms. His experiments with people ran mainly between 1882 and 1887 at the Grand-Jouan agricultural school, and he published them in 1913. In his summary table, one worker alone counts as 100 percent. In a pair, each person reached only 93 percent. In a group of three, 85 percent. In a group of eight, just 49 percent per person.

The totals look even stranger. Seven workers together managed 3.92 times the output of one person. Eight workers: also 3.92. On paper, the eighth person added nothing.

## The rope that might not have been a rope

The study is usually retold as a rope-pulling experiment, and the Sage Encyclopedia of Group Processes describes groups of coworkers pulling on a rope. But when David Kravitz and Barbara Martin dug up the original article in 1986, they found that he did have people pull on a rope in some tests. But he never said which tasks were behind that famous table. Calling it rope-pulling data came later. The figures became widely known through a 1927 article by a writer named Moede, who credited Ringelmann only in parentheses in a figure caption.

So why do groups lose power? Partly because people don''t coordinate perfectly. But in 1974, Alan Ingham and his colleagues rebuilt the rope test with blindfolds. On some trials, participants believed they were pulling with others while they were actually pulling alone. Their performance still dropped. So it''s not just clumsy teamwork: people also seem to put in less effort as part of a group.

> Bonus fact: In Ingham''s first study, pairs lost 9 percent and groups of three lost 18 percent. A fourth, fifth or sixth person made almost no further difference.

In 1979, Bibb Latané and his colleagues gave the phenomenon the name it still has today: social loafing. Many hands make light work, sometimes a little too light.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ringelmann-effect-groups', 'en', 1, 'Social psychology book', 'social psychology book', 'A readable intro to the classic experiments on how people behave in groups.'),
  ('ringelmann-effect-groups', 'en', 2, 'Tug-of-war rope', 'tug of war rope', 'A sturdy rope for garden parties and team games.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ringelmann-effect-groups', 'en', 1, 'Journal of Personality and Social Psychology: Ringelmann Rediscovered: The Original Article', 'https://doi.org/10.1037/0022-3514.50.5.936'),
  ('ringelmann-effect-groups', 'en', 2, 'Sage Knowledge: Ringelmann Effect', 'https://sk.sagepub.com/ency/edvol/embed/processes/chpt/ringelmann-effect'),
  ('ringelmann-effect-groups', 'en', 3, 'Sage Knowledge: Social Loafing', 'https://sk.sagepub.com/ency/edvol/embed/processes/chpt/social-loafing');
