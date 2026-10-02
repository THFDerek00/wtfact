-- WTFact-Fakt „Basketball wurde mit Pfirsichkörben erfunden, und das erste Spiel endete 1:0“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('basketball-peach-baskets', '2026-08-22', 'sport', '🏀', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'basketball-peach-baskets', 'de', 'basketball-pfirsichkoerbe',
  'Basketball wurde mit Pfirsichkörben erfunden, und das erste Spiel endete 1:0',
  'Keine Netze, kein richtiger Basketball und nach jedem Treffer musste jemand auf die Leiter.',
  'Beim allerersten Basketballspiel 1891 hingen Pfirsichkörbe als Körbe an der Galerie, gespielt wurde mit einem Fußball, und es endete 1:0.',
  'Heute fliegen in der NBA pro Spiel Dutzende Dreier durchs Netz. Das allererste Basketballspiel der Welt sah ein bisschen anders aus: **Es gab genau einen Treffer, gespielt wurde mit einem Fußball, und die Körbe waren Pfirsichkörbe.**

## Ein Sportlehrer, ein Hausmeister, zwei Körbe

Im Winter 1891 sollte James Naismith, damals 31 Jahre alt, am heutigen Springfield College in Massachusetts ein Spiel für die Halle erfinden. Die Studenten hatten Hallenkoller, und Turnübungen allein reichten nicht.

Naismith bat den Hausmeister um zwei Kisten als Ziele. Der hatte keine, brachte aber zwei Pfirsichkörbe. Naismith nagelte sie an das Geländer der Galerie, rund drei Meter über dem Boden. Diese Höhe von zehn Fuß gilt bis heute.

Dazu schrieb er **13 Regeln**, tippte sie ab und hängte sie ans Schwarze Brett. Am 21. Dezember 1891 ging es los. Naismith warf einen Fußball zwischen zwei Spieler hoch, und das Spiel begann. Richtige Basketbälle gab es erst ab 1894.

## 18 Spieler, ein Korb

Auf dem Feld standen 18 Studenten, aufgeteilt in zwei Teams zu je neun. Weil alle selbst den Treffer landen wollten, ging der Ball eher selten von Hand zu Hand. Am Ende stand es **1:0**. Den einzigen Korb warf ein Student namens William R. Chase, laut Überlieferung in den letzten Sekunden.

Fünf Spieler pro Team sind übrigens erst seit 1897 Standard.

> Die Körbe hatten anfangs noch einen Boden. Bei einem frühen Uni-Spiel 1895 musste laut der Hamline University nach jedem Treffer ein Schiedsrichter auf eine Leiter steigen und den Ball herausholen.

## Vom Obstkorb zum Netz

Genau dieses Problem löste später eine simple Idee: Netze ohne Boden. Seitdem fällt der Ball einfach durch, und niemand muss mehr klettern.

Das Spiel verbreitete sich über das YMCA-Netzwerk in Rekordzeit. Schon 1895 spielten Universitäten gegeneinander, und heute kennt fast jeder Mensch auf der Welt Basketball.

Alles nur, weil ein Hausmeister keine Kisten hatte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('basketball-peach-baskets', 'de', 1, 'Mini-Basketballkorb für die Zimmertür', 'Mini Basketballkorb Tür', 'Kleiner Korb mit Softball, der einfach über die Tür gehängt wird. Perfekt für Wurfpausen am Schreibtisch.'),
  ('basketball-peach-baskets', 'de', 2, 'Sachbuch zur Geschichte des Basketballs', 'Geschichte des Basketballs Buch', 'Von den Anfängen in einer Turnhalle bis zu den großen Ligen, mit vielen Bildern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('basketball-peach-baskets', 'de', 1, 'Springfield College: Where Basketball was Invented: The History of Basketball', 'https://springfield.edu/about/birthplace-of-basketball'),
  ('basketball-peach-baskets', 'de', 2, 'Mass Moments: First Game of Basketball Played in Springfield', 'https://www.massmoments.org/moment-details/first-game-of-basketball-played-in-springfield.html'),
  ('basketball-peach-baskets', 'de', 3, 'The First Basket Ball Players: The First Game', 'https://basketballplayers.omeka.net/exhibits/show/william-r--chase/the-first-game'),
  ('basketball-peach-baskets', 'de', 4, 'Hamline University: From peach baskets to modern hoops: 131 years of Hamline basketball', 'https://www.hamline.edu/news/2026/02/peach-baskets-modern-hoops-131-years-hamline-basketball');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'basketball-peach-baskets', 'en', 'basketball-peach-baskets',
  'Basketball was invented with peach baskets, and the first game ended 1-0',
  'No nets, no actual basketball, and after every score someone had to climb a ladder.',
  'At the very first basketball game in 1891, the goals were peach baskets, the ball was a soccer ball, and the final score was 1-0.',
  'In today''s NBA, dozens of threes swish through the net every game. The very first basketball game looked a little different: **there was exactly one basket, the ball was a soccer ball, and the hoops were peach baskets.**

## A gym teacher, a janitor, two baskets

In the winter of 1891, James Naismith, then 31, was asked to invent an indoor game at what is now Springfield College in Massachusetts. His students had cabin fever, and gymnastics alone wasn''t cutting it.

Naismith asked the janitor for two boxes to use as goals. There weren''t any, but the janitor brought two peach baskets. Naismith nailed them to the railing of the gym''s balcony, ten feet above the floor. That height is still the standard today.

He also wrote **13 rules**, typed them up and pinned them to the bulletin board. On December 21, 1891, it was game time. Naismith tossed a soccer ball up between two players, and play began. Actual basketballs only showed up in 1894.

## 18 players, one basket

There were 18 students on the floor, split into two teams of nine. Since everyone wanted to be the one to score, the ball didn''t get passed around much. The final score was **1-0**. The only basket came from a student named William R. Chase, reportedly in the final few seconds.

Five players per team only became the standard in 1897.

> The baskets still had bottoms at first. At an early college game in 1895, according to Hamline University, an umpire had to climb a ladder after every score to get the ball back out.

## From fruit basket to net

That problem was later solved by a simple idea: nets without a bottom. Since then the ball just drops through, and nobody has to climb anything.

The game spread through the YMCA network at record speed. By 1895, colleges were playing each other, and today almost everyone on the planet knows basketball.

All because a janitor didn''t have any boxes.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('basketball-peach-baskets', 'en', 1, 'Over-the-door mini basketball hoop', 'over the door mini basketball hoop', 'A small hoop with a soft ball that hangs right on your door. Perfect for shooting breaks at your desk.'),
  ('basketball-peach-baskets', 'en', 2, 'Illustrated history of basketball', 'history of basketball book', 'From a single gym in Massachusetts to the big leagues, with lots of photos.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('basketball-peach-baskets', 'en', 1, 'Springfield College: Where Basketball was Invented: The History of Basketball', 'https://springfield.edu/about/birthplace-of-basketball'),
  ('basketball-peach-baskets', 'en', 2, 'Mass Moments: First Game of Basketball Played in Springfield', 'https://www.massmoments.org/moment-details/first-game-of-basketball-played-in-springfield.html'),
  ('basketball-peach-baskets', 'en', 3, 'The First Basket Ball Players: The First Game', 'https://basketballplayers.omeka.net/exhibits/show/william-r--chase/the-first-game'),
  ('basketball-peach-baskets', 'en', 4, 'Hamline University: From peach baskets to modern hoops: 131 years of Hamline basketball', 'https://www.hamline.edu/news/2026/02/peach-baskets-modern-hoops-131-years-hamline-basketball');
