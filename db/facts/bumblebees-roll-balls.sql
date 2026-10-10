-- WTFact-Fakt „Hummeln rollen kleine Bälle herum, offenbar einfach zum Spaß“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bumblebees-roll-balls', '2026-10-14T08:00:00+02:00', 'animals', '🐝', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bumblebees-roll-balls', 'de', 'hummeln-rollen-baelle-zum-spass',
  'Hummeln rollen kleine Bälle herum, offenbar einfach zum Spaß',
  'Kein Futter, kein Training, keine Belohnung: Hummeln im Labor schoben trotzdem Holzbälle durch die Gegend.',
  'In einer Studie von 2022 rollten Hummeln immer wieder kleine Holzbälle, ohne dafür belohnt zu werden. Laut der beteiligten Universität Oulu wurde damit zum ersten Mal Spiel mit Objekten bei einem Insekt nachgewiesen.',
  'Hunde jagen Bällen hinterher. Katzen spielen mit Wollknäueln. Und Hummeln? Die rollen auch Bälle, und zwar ganz ohne Gegenleistung.

## Ein Umweg, den keiner brauchte

Forschende der Queen Mary University of London und der Universität Oulu in Finnland bauten eine Arena für 45 Hummeln. Die Tiere konnten einen freien Weg direkt zum Futterplatz nehmen oder einen Umweg durch Bereiche mit kleinen Holzbällen machen.

Und sie nahmen den Umweg: Einzelne Tiere rollten die Bälle zwischen 1 und 117 Mal. Es gab keine Zuckerbelohnung und kein Training, und laut CBC hatten die Hummeln sowieso unbegrenzt Zuckerlösung und Pollen.

## Macht das den Hummeln wirklich Spaß?

Um das herauszufinden, folgte ein zweites Experiment mit 42 anderen Hummeln. Sie hatten Zugang zu zwei Kammern in unterschiedlichen Farben: eine mit beweglichen Bällen, eine ganz ohne Gegenstände. Später durften sie zwischen zwei Kammern in diesen Farben wählen, diesmal beide ohne Bälle. Sie bevorzugten die Farbe, die sie mit den Bällen verbunden hatten. Das spricht dafür, dass sich das Rollen für sie lohnend anfühlte.

Ein paar weitere Details passen gut zu Spielen. Jüngere Hummeln rollten mehr Bälle als ältere, und Männchen rollten länger als Weibchen. Das Rollen half weder bei der Futtersuche noch beim Aufräumen oder bei der Partnersuche, und es passierte unter stressfreien Bedingungen. Die Studie erschien 2022 in der Fachzeitschrift Animal Behaviour unter dem Titel „Do bumble bees play?“.

Lars Chittka von der Queen Mary University of London fasste es so zusammen: „Diese Forschung ist ein starker Hinweis darauf, dass der Geist von Insekten weit raffinierter ist, als wir es uns vielleicht vorstellen.“

> Bonusfakt: Die Idee stammt aus einem früheren Experiment, in dem Hummeln darauf trainiert wurden, einen Ball für eine Zuckerbelohnung zu einem Ziel zu rollen. Dabei rollten manche Tiere die Bälle auch dann, wenn es gar keine Belohnung gab.

Fleißig wie eine Biene? Für eine kleine Runde Ballspiel ist offenbar trotzdem Zeit.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bumblebees-roll-balls', 'de', 1, '„The Mind of a Bee“ von Lars Chittka', 'Lars Chittka The Mind of a Bee', 'Ein ganzes Buch darüber, wie Bienen denken, von einem der Forscher hinter der Studie.'),
  ('bumblebees-roll-balls', 'de', 2, 'Hummel-Plüschtier', 'Hummel Plüschtier', 'Eine weiche, flauschige Hummel für Schreibtisch oder Sofa.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bumblebees-roll-balls', 'de', 1, 'University of Oulu: First-ever study shows bumble bees ‘play’', 'https://www.oulu.fi/en/news/first-ever-study-shows-bumble-bees-play'),
  ('bumblebees-roll-balls', 'de', 2, 'Bee Culture: Astonishing Experiment Shows Bumble Bees “Play” With Objects', 'https://www.beeculture.com/bumblebees-play-with-balls/'),
  ('bumblebees-roll-balls', 'de', 3, 'CBC News: Bumblebees play with balls just for fun, study finds', 'https://amp.cbc.ca/lite/story/1.6639406');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bumblebees-roll-balls', 'en', 'bumblebees-roll-balls-for-fun',
  'Bumblebees roll tiny balls around, apparently just for fun',
  'No food, no training, no prize: bees in a lab kept pushing wooden balls anyway.',
  'In a 2022 study, bumblebees repeatedly rolled small wooden balls without any reward. According to the University of Oulu, which took part in the study, it is the first time object play has been shown in an insect.',
  'Dogs chase balls. Kittens bat at yarn. Bumblebees? They roll balls too, and nobody pays them for it.

## The detour nobody needed

Researchers from Queen Mary University of London and the University of Oulu in Finland built an arena for 45 bumblebees. The bees could take a clear path straight to a feeding area, or they could make a detour into areas with small wooden balls.

And they did take that detour: individual bees rolled balls between 1 and 117 times. There was no sugar reward and no training involved, and according to CBC the bees had unlimited sugar solution and pollen anyway.

## Do bees actually enjoy it?

To find out, the team ran a second experiment with 42 different bees. They had access to two chambers in different colors: one with movable balls, one with no objects at all. Later, the bees got to choose between two chambers of those colors, this time both without balls. They preferred the color they had linked to the balls. That suggests rolling them felt rewarding.

A few more details make it look a lot like play. Younger bees rolled more balls than older ones, and males rolled them for longer than females. The rolling didn''t help the bees get food, clear clutter or find a mate, and it happened under stress-free conditions. The study appeared in 2022 in the journal Animal Behaviour under the title “Do bumble bees play?”.

Lars Chittka from Queen Mary University of London summed it up: “This research provides a strong indication that insect minds are far more sophisticated than we might imagine.”

> Bonus fact: The idea came from an earlier experiment in which bees were trained to roll a ball to a target for a sugar reward. During that work, some bees rolled balls even when there was no reward at all.

Busy as a bee? Apparently even bees make time for a little ball game.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bumblebees-roll-balls', 'en', 1, 'The Mind of a Bee by Lars Chittka', 'Lars Chittka The Mind of a Bee', 'A whole book on how bees think, from one of the researchers behind the study.'),
  ('bumblebees-roll-balls', 'en', 2, 'Bumblebee plush toy', 'bumblebee plush toy', 'A soft, fuzzy bee for your desk or sofa.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bumblebees-roll-balls', 'en', 1, 'University of Oulu: First-ever study shows bumble bees ‘play’', 'https://www.oulu.fi/en/news/first-ever-study-shows-bumble-bees-play'),
  ('bumblebees-roll-balls', 'en', 2, 'Bee Culture: Astonishing Experiment Shows Bumble Bees “Play” With Objects', 'https://www.beeculture.com/bumblebees-play-with-balls/'),
  ('bumblebees-roll-balls', 'en', 3, 'CBC News: Bumblebees play with balls just for fun, study finds', 'https://amp.cbc.ca/lite/story/1.6639406');
