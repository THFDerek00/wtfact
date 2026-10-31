-- WTFact-Fakt „Die Tour de France 1904 gewann der Fahrer, der Fünfter geworden war“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('tour-de-france-1904-fifth-place-winner', '2026-11-05T08:00:00+01:00', 'sport', '🚲', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tour-de-france-1904-fifth-place-winner', 'de', 'tour-de-france-1904-der-fuenfte-gewann',
  'Die Tour de France 1904 gewann der Fahrer, der Fünfter geworden war',
  'Züge, Autos und Nägel auf der Straße: Bei der zweiten Tour überhaupt wurde so viel geschummelt, dass die Spitze des Klassements rausflog.',
  'Nach der Tour de France 1904 wurden 12 Fahrer wegen Betrugs disqualifiziert, darunter der Erste im Ziel, und der 19-jährige Henri Cornet, der Fünfter geworden war, wurde zum Sieger erklärt.',
  'Stell dir vor, du wirst bei einem Rennen Fünfter und bist ein paar Monate später plötzlich Sieger. Genau das ist Henri Cornet bei der Tour de France 1904 passiert, der erst zweiten Ausgabe des Rennens.

## Ein Rennen voller Tricks

Die Tour 1904 ging über 2.428 Kilometer in sechs Etappen, und viele Fahrer haben die Regeln offenbar eher als Vorschlag gesehen. Laut road.cc wurde unter anderem Maurice Garin, der Sieger der ersten Tour von 1903, vorgeworfen, Teile der Strecke verbotenerweise mit dem Zug oder im Auto zurückgelegt zu haben. Hippolyte Aucouturier, der vier Etappen gewann, wurde disqualifiziert, weil er sich von einem Auto ziehen ließ: Er biss auf einen Korken, der mit einer Schnur am Wagen hing.

Es wurde noch chaotischer. Auf den Straßen landeten Nägel und Glasscherben, damit die Konkurrenz einen Platten bekam, und Rennoffizielle feuerten Schüsse in die Luft, um eine Menge von etwa 200 Fans aufzulösen, die den Fahrer Antoine Fauré anfeuern wollte. Laut einem Porträt bei Cyclingnews wurde Garin nie mit Fahrkarten erwischt, soll aber Jahre später einem Bekannten gestanden haben, dass er den Zug genommen hat, um langweilige Abschnitte zu überspringen. Und er soll darüber gelacht haben.

## Das Urteil kam im Dezember

Der französische Radsportverband UVF ermittelte rund vier Monate lang. Im Dezember 1904 disqualifizierte er 12 Fahrer, darunter Garin, den Rest der Spitze der Gesamtwertung und die Sieger aller sechs Etappen. Garin wurde außerdem für zwei Jahre gesperrt.

Damit rückte Cornet, der als Fünfter ins Ziel gekommen war, ganz nach oben. Ganz sauber war allerdings auch er nicht: Laut road.cc war er während des Rennens verwarnt worden, weil er sich im Auto hatte mitnehmen lassen. Tour-Organisator Henri Desgrange hatte ihm den Spitznamen „Le Rigolo“ gegeben, der Witzbold.

> Bonusfakt: Cornet war bei seinem Sieg 19 Jahre und 355 Tage alt. Bis heute hat niemand die Tour de France jünger gewonnen.

Die zweite Tour der Geschichte wurde nicht auf der Straße entschieden, sondern am Schreibtisch.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tour-de-france-1904-fifth-place-winner', 'de', 1, 'Buch zur Geschichte der Tour de France', 'Tour de France Geschichte Buch', 'Erzählt die lange, schräge Geschichte des Rennens von den Anfängen bis heute.'),
  ('tour-de-france-1904-fifth-place-winner', 'de', 2, 'Vintage-Radrennen-Poster', 'Vintage Poster Radrennen Retro', 'Retro-Radsportkunst, die an jeder Wand gut aussieht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tour-de-france-1904-fifth-place-winner', 'de', 1, 'road.cc: Cheating at the Tour de France — a rich history dating back 120 years', 'https://road.cc/index.php/feature/cheating-tour-de-france-rich-history-302189/'),
  ('tour-de-france-1904-fifth-place-winner', 'de', 2, 'Only A Game: Tour De France Cheating Started With The Race''s First Champion', 'https://www.wbur.org/onlyagame/2017/06/30/tour-de-france-maurice-garin-peter-cossins'),
  ('tour-de-france-1904-fifth-place-winner', 'de', 3, 'Cyclingnews: Maurice Garin feature', 'https://www.cyclingnews.com/news/maurice-garin-feature/'),
  ('tour-de-france-1904-fifth-place-winner', 'de', 4, 'Topend Sports: 1904 Tour de France', 'https://www.topendsports.com/events/tour-de-france/tours/1904.htm'),
  ('tour-de-france-1904-fifth-place-winner', 'de', 5, 'Wikipedia: Henri Cornet', 'https://en.wikipedia.org/wiki/Henri_Cornet'),
  ('tour-de-france-1904-fifth-place-winner', 'de', 6, 'Wikipedia: 1904 Tour de France', 'https://en.wikipedia.org/wiki/1904_Tour_de_France');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tour-de-france-1904-fifth-place-winner', 'en', 'tour-de-france-1904-fifth-place-winner',
  'The 1904 Tour de France was won by the rider who finished fifth',
  'Trains, car tows and nails on the road: the second Tour ever was so full of cheating that the top of the standings got thrown out.',
  'After the 1904 Tour de France, 12 riders were disqualified for cheating, including the rider who crossed the line first, and 19-year-old Henri Cornet, who had finished fifth, became the winner.',
  'Imagine finishing a race in fifth place and waking up months later as the champion. That is exactly what happened to Henri Cornet at the 1904 Tour de France, only the second edition of the race.

## A race full of tricks

The 1904 Tour covered 2,428 kilometres in six stages, and a lot of riders seem to have treated the rules as suggestions. According to road.cc, Maurice Garin, who had won the first Tour in 1903, and others were accused of illegally taking trains or riding in cars for parts of the route. Hippolyte Aucouturier, who won four stages, was disqualified for being towed by a car: he bit down on a cork attached to the vehicle by a string.

It got messier. Nails and glass were spread on the roads to puncture rivals, and race officials fired shots in the air to break up a crowd of about 200 fans who had gathered to cheer on rider Antoine Fauré. A Cyclingnews feature says Garin, who was never caught with ticket stubs, reportedly admitted to an acquaintance years later that he had caught a train to skip boring bits of the course, and laughed about it.

## The verdict came in December

The French cycling union, the UVF, investigated for about four months. In December 1904 it disqualified 12 riders, including Garin, the rest of the top of the standings and the winners of all six stages. Garin also got a two-year ban.

That moved Cornet, who had finished fifth, to the top. Even he wasn''t spotless: road.cc reports he had been warned during the race after getting a lift in a car. Race organiser Henri Desgrange had nicknamed him "Le Rigolo", the joker.

> Bonus fact: Cornet was 19 years and 355 days old when he won, and he is still the youngest winner in Tour de France history.

The second Tour ever was decided not on the road but at a desk.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tour-de-france-1904-fifth-place-winner', 'en', 1, 'Tour de France history book', 'Tour de France history book', 'Tells the long, odd story of the race from its first editions to today.'),
  ('tour-de-france-1904-fifth-place-winner', 'en', 2, 'Vintage bicycle poster', 'vintage bicycle race poster', 'Retro cycling art that looks great on a wall.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tour-de-france-1904-fifth-place-winner', 'en', 1, 'road.cc: Cheating at the Tour de France — a rich history dating back 120 years', 'https://road.cc/index.php/feature/cheating-tour-de-france-rich-history-302189/'),
  ('tour-de-france-1904-fifth-place-winner', 'en', 2, 'Only A Game: Tour De France Cheating Started With The Race''s First Champion', 'https://www.wbur.org/onlyagame/2017/06/30/tour-de-france-maurice-garin-peter-cossins'),
  ('tour-de-france-1904-fifth-place-winner', 'en', 3, 'Cyclingnews: Maurice Garin feature', 'https://www.cyclingnews.com/news/maurice-garin-feature/'),
  ('tour-de-france-1904-fifth-place-winner', 'en', 4, 'Topend Sports: 1904 Tour de France', 'https://www.topendsports.com/events/tour-de-france/tours/1904.htm'),
  ('tour-de-france-1904-fifth-place-winner', 'en', 5, 'Wikipedia: Henri Cornet', 'https://en.wikipedia.org/wiki/Henri_Cornet'),
  ('tour-de-france-1904-fifth-place-winner', 'en', 6, 'Wikipedia: 1904 Tour de France', 'https://en.wikipedia.org/wiki/1904_Tour_de_France');
