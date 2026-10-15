-- WTFact-Fakt „Das Filmblut in „Psycho“ war Schokoladensirup“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('psycho-chocolate-syrup', NULL, 'horror', '🚿', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'psycho-chocolate-syrup', 'de', 'psycho-schokoladensirup',
  'Das Filmblut in „Psycho“ war Schokoladensirup',
  'Die berühmteste Duschszene der Filmgeschichte hat eine süße Zutat. Und einen Melonen-Soundeffekt.',
  'Für die Duschszene in Hitchcocks „Psycho“ von 1960 wurde als Filmblut Schokoladensirup verwendet, weil er auf Schwarz-Weiß-Film überzeugender aussah.',
  'Kaum eine Filmszene hat so viele Leute vom Duschen abgehalten wie die in Alfred Hitchcocks „Psycho“ von 1960. Dabei floss dort nichts Gruseligeres als **Schokoladensirup.**

## Warum ausgerechnet Schokolade?

„Psycho“ wurde in Schwarz-Weiß gedreht. Laut Popular Science teils, um Kosten zu sparen, teils weil Hitchcock fand, dass farbiges Blut zu blutrünstig wirken würde. Auf Schwarz-Weiß-Film zählt aber nicht die Farbe, sondern wie dunkel etwas erscheint und wie es fließt.

Und da punktet Schokoladensirup. Sein dunkles Braun sah auf dem Film dunkler und echter aus als helles Theaterblut. Außerdem hat er eine ähnlich zähe Konsistenz. Hitchcocks Team trug ihn mit einer Quetschflasche aus Plastik auf, damals eine ziemlich neue Erfindung.

Welche Marke es war, ist allerdings umstritten. Oft wird Bosco genannt. Marli Renfro, das Körperdouble von Hauptdarstellerin Janet Leigh, erinnerte sich laut BFI dagegen an verdünnten Sirup von Hershey''s.

## 78 Einstellungen, 52 Schnitte

Gedreht wurde die Szene über rund eine Woche, das war etwa ein Drittel des gesamten Drehplans. Das Ergebnis: **78 Kameraeinstellungen und 52 Schnitte.** Nach diesen Zahlen ist sogar ein ganzer Dokumentarfilm benannt: „78/52“ von 2017.

Der Trick dabei: Durch die vielen schnellen Schnitte glaubt das Publikum, mehr zu sehen, als tatsächlich gezeigt wird. Den Rest erledigt der Kopf. Dazu kommen die kreischenden Geigen von Komponist Bernard Herrmann. Hitchcock wollte die Szene ursprünglich ganz ohne Musik, Herrmann überzeugte ihn vom Gegenteil.

> Für das Geräusch der Szene testete das Tonteam verschiedene Melonen und entschied sich am Ende für eine Casaba-Melone, weil sie dichter klang.

## Kleine Zutat, große Wirkung

Hitchcock verbot sogar, dass Zuschauer zu spät ins Kino kamen. Wer die ersten Minuten verpasste, sollte die Überraschung nicht verpassen.

Mehr als sechs Jahrzehnte später funktioniert die Szene noch immer. Nicht schlecht für eine Flasche Schokoladensirup.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('psycho-chocolate-syrup', 'de', 1, 'Psycho (1960) auf Blu-ray', 'Psycho Hitchcock 1960 Blu-ray', 'Der Klassiker in restaurierter Bildqualität. Schwarz-Weiß hat selten so gut ausgesehen.'),
  ('psycho-chocolate-syrup', 'de', 2, 'Mr. Hitchcock, wie haben Sie das gemacht? von François Truffaut', 'Mr. Hitchcock wie haben Sie das gemacht Truffaut', 'Das legendäre Interviewbuch, in dem Hitchcock Film für Film seine Tricks verrät.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('psycho-chocolate-syrup', 'de', 1, 'BFI: 10 things you (probably) never knew about the shower scene in Psycho', 'https://www.bfi.org.uk/interviews/psycho-shower-scene-alfred-hitchcock'),
  ('psycho-chocolate-syrup', 'de', 2, 'Popular Science: The spooky (and sweet) history of fake blood', 'https://www.popsci.com/science/fake-blood-history/'),
  ('psycho-chocolate-syrup', 'de', 3, 'History: Psycho’s Shower Scene: How Hitchcock Upped the Terror—and Fooled the Censors', 'https://www.history.com/articles/psycho-shower-scene-hitchcock-tricks-fooled-censors'),
  ('psycho-chocolate-syrup', 'de', 4, 'Wikipedia: Psycho shower scene', 'https://en.wikipedia.org/wiki/Psycho_shower_scene');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'psycho-chocolate-syrup', 'en', 'psycho-chocolate-syrup',
  'The blood in "Psycho" was chocolate syrup',
  'The most famous shower scene in film history has a sweet secret ingredient. And a melon sound effect.',
  'For the shower scene in Hitchcock''s 1960 film "Psycho", the fake blood was chocolate syrup, because it looked more convincing on black-and-white film.',
  'Few movie scenes have made more people nervous about showering than the one in Alfred Hitchcock''s "Psycho" from 1960. Yet nothing scarier than **chocolate syrup** was flowing down that drain.

## Why chocolate, of all things?

"Psycho" was shot in black and white. According to Popular Science, that was partly to save money and partly because Hitchcock thought blood in color would be too gory. On black-and-white film, though, what matters isn''t the color but how dark something looks and how it flows.

That''s where chocolate syrup wins. Its dark brown looked darker and more real on film than bright stage blood. It also has a similarly thick consistency. Hitchcock''s team applied it with a plastic squeeze bottle, a fairly new invention back then.

Which brand it was is disputed, though. Bosco is often named. But Marli Renfro, the body double for star Janet Leigh, remembered watered-down Hershey''s syrup, according to the BFI.

## 78 setups, 52 cuts

Filming the scene took about a week, roughly a third of the entire shooting schedule. The result: **78 camera setups and 52 cuts.** A whole documentary is named after those numbers: "78/52" from 2017.

The trick: thanks to all those rapid cuts, the audience thinks it sees more than is actually shown. Your mind fills in the rest. Then there are the shrieking violins by composer Bernard Herrmann. Hitchcock originally wanted the scene without any music, but Herrmann talked him into it.

> For the scene''s sound, the sound team tested different melons and finally picked a casaba melon because it sounded denser.

## Small ingredient, huge impact

Hitchcock even banned latecomers from entering the theater. Anyone who missed the first minutes wasn''t supposed to miss the surprise.

More than six decades later, the scene still works. Not bad for a bottle of chocolate syrup.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('psycho-chocolate-syrup', 'en', 1, 'Psycho (1960) on Blu-ray', 'Psycho Hitchcock 1960 Blu-ray', 'The classic in restored picture quality. Black and white rarely looked this good.'),
  ('psycho-chocolate-syrup', 'en', 2, 'Hitchcock/Truffaut by François Truffaut', 'Hitchcock Truffaut book', 'The legendary interview book in which Hitchcock reveals his tricks film by film.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('psycho-chocolate-syrup', 'en', 1, 'BFI: 10 things you (probably) never knew about the shower scene in Psycho', 'https://www.bfi.org.uk/interviews/psycho-shower-scene-alfred-hitchcock'),
  ('psycho-chocolate-syrup', 'en', 2, 'Popular Science: The spooky (and sweet) history of fake blood', 'https://www.popsci.com/science/fake-blood-history/'),
  ('psycho-chocolate-syrup', 'en', 3, 'History: Psycho’s Shower Scene: How Hitchcock Upped the Terror—and Fooled the Censors', 'https://www.history.com/articles/psycho-shower-scene-hitchcock-tricks-fooled-censors'),
  ('psycho-chocolate-syrup', 'en', 4, 'Wikipedia: Psycho shower scene', 'https://en.wikipedia.org/wiki/Psycho_shower_scene');
