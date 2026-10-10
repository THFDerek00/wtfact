-- WTFact-Fakt „Die Venusfliegenfalle zählt: 2 Berührungen zum Zuschnappen, 5 zum Verdauen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('venus-flytrap-counts', '2026-10-12T16:00:00+02:00', 'nature', '🪴', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'venus-flytrap-counts', 'de', 'venusfliegenfalle-zaehlt-beruehrungen',
  'Die Venusfliegenfalle zählt: 2 Berührungen zum Zuschnappen, 5 zum Verdauen',
  'Diese Pflanze führt Strichliste, wie oft ihre Beute sie berührt, und entscheidet nach der Zahl, was sie tut.',
  'Eine Venusfliegenfalle schnappt erst nach der zweiten Berührung ihrer Fühlhaare zu und schaltet ihre Verdauungsenzyme erst nach der fünften ein, wie ein Team der Universität Würzburg 2016 gezeigt hat.',
  'Pflanzen können nicht zählen. Außer dieser hier, wie es aussieht. Die Venusfliegenfalle merkt sich, wie oft ihre Beute sie berührt, und entscheidet anhand dieser Zahl, was als Nächstes passiert.

## Eine Berührung könnte Fehlalarm sein

Jede Hälfte der Falle hat drei empfindliche Fühlhaare. Streift etwas eines davon, feuert die Pflanze ein elektrisches Signal, aber noch passiert nichts. Wie die Universität Würzburg schreibt, könnte ein Signal ja auch Fehlalarm sein. Laut Science News Explores verhindert das, dass die Falle bei einem Regentropfen oder einem vorbeistreifenden Blatt zuklappt.

Kommt innerhalb von 20 Sekunden eine zweite Berührung, schnappt die Falle zu. Die Zahl fürs Zuklappen ist also 2. Bleibt das, was gefangen wurde, danach still, öffnet sich die Falle nach etwa einem halben Tag wieder.

## Fünf Berührungen heißt Abendessen

Ein gefangenes Insekt hält selten still. Ein panisches kann die Fühlhaare bis zu 60-mal pro Stunde treffen, und die Pflanze zählt mit. Ein Team um den Biophysiker Rainer Hedrich fand heraus, dass die Venusfliegenfalle ab 5 Signalen die Gene für Verdauungsenzyme in allen ihren 37.000 Drüsen einschaltet. Die dritte und vierte Berührung zeigten keine sichtbare Wirkung. Je mehr Berührungen, desto mehr Moleküle bildet die Pflanze, um Nährstoffe aufzunehmen, was auf eine größere Mahlzeit hindeutet. Die Studie erschien im Fachjournal Current Biology.

Die Doktorandin Jennifer Böhm zeigte außerdem, dass ein durch Berührung eingeschaltetes Gen einen Kanal bildet, der Natrium transportiert.

> Bonusfakt: Laut Universität Würzburg merkt sich die Venusfliegenfalle die Zahl der Berührungen mindestens vier Stunden lang.

Je heftiger ein Insekt also zappelt, desto mehr bereitet sich die Falle darauf vor, es zu fressen. Schlechter Deal für die Fliege.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('venus-flytrap-counts', 'de', 1, 'Venusfliegenfalle Anzuchtset', 'Venusfliegenfalle Anzuchtset', 'Damit ziehst du deine eigene fleischfressende Pflanze auf der Fensterbank.'),
  ('venus-flytrap-counts', 'de', 2, 'Buch über fleischfressende Pflanzen', 'Buch fleischfressende Pflanzen', 'Erklärt Kannenpflanzen, Sonnentau und Klappfallen mit vielen Fotos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('venus-flytrap-counts', 'de', 1, 'University of Würzburg: Plants can do maths', 'https://www.uni-wuerzburg.de/en/news-and-events/news/detail/news/plants-can-do-maths-1/'),
  ('venus-flytrap-counts', 'de', 2, 'Science News Explores: Before eating, Venus flytraps must ‘count’', 'https://www.snexplores.org/article/eating-venus-flytraps-must-count');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'venus-flytrap-counts', 'en', 'venus-flytrap-counts-touches',
  'The Venus flytrap counts: 2 touches to snap shut, 5 to start digesting',
  'This plant keeps a tally of how often its prey brushes against it and decides what to do based on the number.',
  'A Venus flytrap only snaps shut after a second touch of its trigger hairs, and only switches on its digestive enzymes after the fifth, a team at the University of Würzburg showed in 2016.',
  'Plants can''t count. Except this one, apparently. The Venus flytrap keeps track of how often its prey touches it, and uses that number to decide what to do next.

## One touch could be a false alarm

Each half of the trap has three sensitive trigger hairs. When something brushes one of them, the plant fires an electrical signal, but nothing happens yet. As the University of Würzburg puts it, one signal could be a false alarm after all. According to Science News Explores, this keeps the trap from closing on a raindrop or a leaf brushing past.

If a second touch follows within 20 seconds, the trap snaps shut. So the number for closing is 2. If whatever got caught then stays still, the trap reopens after about half a day.

## Five touches mean dinner

A trapped insect rarely stays still. A panicking one can hit the trigger hairs up to 60 times per hour, and the plant counts along. A team led by biophysicist Rainer Hedrich found that at 5 or more signals, the flytrap switches on the genes for digestive enzymes in all of its 37,000 glands. The third and fourth touches had no visible effect. The more touches, the more molecules the plant makes to absorb nutrients, which hints at a bigger meal. The study appeared in the journal Current Biology.

PhD student Jennifer Böhm also showed that one gene switched on by touch encodes a channel that transports sodium.

> Bonus fact: According to the University of Würzburg, the flytrap remembers the number of touches for at least four hours.

So the harder an insect struggles, the more the trap gets ready to eat it. Terrible deal for the fly.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('venus-flytrap-counts', 'en', 1, 'Venus flytrap grow kit', 'venus flytrap grow kit', 'Grow your own carnivorous plant on a sunny windowsill.'),
  ('venus-flytrap-counts', 'en', 2, 'Book about carnivorous plants', 'carnivorous plants book', 'Explains pitchers, sundews and snap traps with lots of photos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('venus-flytrap-counts', 'en', 1, 'University of Würzburg: Plants can do maths', 'https://www.uni-wuerzburg.de/en/news-and-events/news/detail/news/plants-can-do-maths-1/'),
  ('venus-flytrap-counts', 'en', 2, 'Science News Explores: Before eating, Venus flytraps must ‘count’', 'https://www.snexplores.org/article/eating-venus-flytraps-must-count');
