-- WTFact-Fakt „Das Wort „Roboter“ stammt aus einem Theaterstück von 1920“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('robot-word-play', '2026-09-13', 'language', '🤖', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'robot-word-play', 'de', 'roboter-wort-aus-theaterstueck',
  'Das Wort „Roboter“ stammt aus einem Theaterstück von 1920',
  'Und die ersten Roboter waren gar nicht aus Metall, sondern eher künstliche Menschen.',
  'Das Wort „Roboter“ haben keine Ingenieure erfunden. Es kommt aus dem Theaterstück „R.U.R.“ des tschechischen Autors Karel Čapek.',
  'Saugroboter, Industrieroboter, Roboter in Science-Fiction-Filmen: Das Wort ist überall. Erfunden hat es aber kein Ingenieur und keine Forscherin, sondern ein Theaterautor aus dem heutigen Tschechien.

## Ein Theaterstück geht um die Welt

Karel Čapek schrieb 1920 das Stück **„R.U.R.“**, kurz für „Rossum''s Universal Robots“. Im Januar 1921 wurde es uraufgeführt, 1922 lief es bereits in New York. Laut IEEE Spectrum war es innerhalb eines Jahres in 30 Sprachen übersetzt. Mit dem Stück reiste ein neues Wort um die Welt: Roboter.

Ganz allein hatte Čapek sich den Begriff allerdings nicht ausgedacht. Er selbst nannte in einem Zeitungsartikel seinen Bruder Josef, einen Maler und Autor, als den eigentlichen Erfinder des Wortes.

## Robota heißt Fronarbeit

Die Bedeutung steckt schon im Tschechischen: **„Robota“ heißt Zwangsarbeit**, also die Fronarbeit, die Leibeigene früher auf den Feldern ihrer Herren leisten mussten. Die Wurzel geht auf ein altes slawisches Wort für „Sklave“ zurück. Roboter waren also von Anfang an als Arbeitskräfte gedacht, die alles erledigen, worauf Menschen keine Lust haben.

Auch der Firmenname im Stück ist ein Wortspiel: „Rossum“ erinnert an das tschechische „rozum“, also Verstand.

> Laut Etymonline gehen das slawische „robota“ und das deutsche Wort „Arbeit“ auf dieselbe uralte indogermanische Wurzel zurück.

## Keine Blechmänner

Jetzt kommt der eigentliche Twist: Čapeks Roboter waren **keine Maschinen aus Schrauben und Zahnrädern**. Im Stück werden sie chemisch aus künstlicher organischer Masse hergestellt und sehen aus wie Menschen. Heute würde man sie eher Androiden nennen. Čapek stellte später selbst klar, sie seien nicht aus Blech und Zahnrädern gemacht.

Die Handlung dreht sich um eine Fabrik, die diese künstlichen Arbeiter massenhaft produziert, bis die Roboter anfangen, mehr zu wollen als nur zu funktionieren. Am Ende entwickeln zwei von ihnen sogar Gefühle füreinander. Die Fragen, die Čapek damals stellte, klingen heute verdächtig nach aktuellen Diskussionen über künstliche Intelligenz.

Dein Saugroboter trägt also ein Stück Theatergeschichte im Namen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('robot-word-play', 'de', 1, '„R.U.R.“ von Karel Čapek als Buch', 'Karel Čapek R.U.R. Buch', 'Das Original-Theaterstück zum Nachlesen. Kurz, bissig und erstaunlich aktuell, wenn man an heutige KI-Debatten denkt.'),
  ('robot-word-play', 'de', 2, 'Retro-Blechroboter zum Aufziehen', 'Blechroboter zum Aufziehen retro', 'Ein kleiner Roboter im Stil der 1950er, der nach dem Aufziehen über den Tisch stapft. Hübsche Deko fürs Regal.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('robot-word-play', 'de', 1, 'Wikipedia: R.U.R.', 'https://en.wikipedia.org/wiki/R.U.R.'),
  ('robot-word-play', 'de', 2, 'IEEE Spectrum: The Man Who Coined the Word ''Robot'' Defends Himself', 'https://spectrum.ieee.org/karel-capek-robots'),
  ('robot-word-play', 'de', 3, 'Etymonline: Robot - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/robot');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'robot-word-play', 'en', 'robot-word-from-a-play',
  'The word ‘robot’ comes from a 1920 stage play',
  'And the first robots weren''t made of metal at all. They were more like artificial people.',
  'Engineers didn''t invent the word ‘robot.’ It comes from the play ‘R.U.R.’ by Czech writer Karel Čapek.',
  'Robot vacuums, factory robots, robots in sci-fi movies: the word is everywhere. But it wasn''t coined by an engineer or a scientist. It came from a playwright in what is now the Czech Republic.

## A play that went global

Karel Čapek wrote the play **"R.U.R."** in 1920. The title is short for "Rossum''s Universal Robots." It premiered in January 1921 and was already running in New York by 1922. According to IEEE Spectrum, within a year it had been translated into 30 languages. And with the play, a brand-new word traveled the world: robot.

Čapek didn''t come up with it entirely on his own, though. In a newspaper article, he named his brother Josef, a painter and writer, as the true inventor of the word.

## Robota means forced labor

The meaning is baked right into Czech: **"robota" means forced labor**, the kind of drudgery serfs once had to do on their masters'' land. The root goes back to an old Slavic word for "slave." So from day one, robots were meant to be workers that do everything humans don''t feel like doing.

The company name in the play is a pun too: "Rossum" echoes the Czech word "rozum," meaning reason or intellect.

> According to Etymonline, the Slavic "robota" and the German word "Arbeit" (work) go back to the same ancient Indo-European root.

## Not tin men

Here''s the real twist: Čapek''s robots were **not machines made of bolts and gears**. In the play, they''re produced chemically from artificial organic matter and look like humans. Today we''d probably call them androids. Čapek himself later made it clear that they weren''t made of sheet metal and cogwheels.

The story revolves around a factory that mass-produces these artificial workers, until the robots start wanting more than just to function. By the end, two of them even develop feelings for each other. The questions Čapek asked back then sound suspiciously like today''s debates about artificial intelligence.

So your robot vacuum carries a piece of theater history in its name.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('robot-word-play', 'en', 1, 'R.U.R. by Karel Čapek', 'R.U.R. Karel Capek book', 'The original play, ready to read. Short, sharp and surprisingly relevant if you follow today''s AI debates.'),
  ('robot-word-play', 'en', 2, 'Retro wind-up tin robot', 'wind up tin robot retro', 'A little 1950s-style robot that stomps across the table once you wind it up. Cute shelf decoration.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('robot-word-play', 'en', 1, 'Wikipedia: R.U.R.', 'https://en.wikipedia.org/wiki/R.U.R.'),
  ('robot-word-play', 'en', 2, 'IEEE Spectrum: The Man Who Coined the Word ''Robot'' Defends Himself', 'https://spectrum.ieee.org/karel-capek-robots'),
  ('robot-word-play', 'en', 3, 'Etymonline: Robot - Etymology, Origin & Meaning', 'https://www.etymonline.com/word/robot');
