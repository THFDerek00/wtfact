-- WTFact-Fakt „Ein Schrei von 1951 steckt in mehr als 400 Filmen und TV-Sendungen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('wilhelm-scream-400-films', '2026-10-25T08:00:00+01:00', 'popculture', '🎬', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wilhelm-scream-400-films', 'de', 'ein-schrei-in-ueber-400-filmen',
  'Ein Schrei von 1951 steckt in mehr als 400 Filmen und TV-Sendungen',
  'Du hast diesen Typen in Star Wars, Toy Story und Titanic schreien hören, und offiziell weiß bis heute niemand, wer er war.',
  'Ein einziger Schrei, aufgenommen für den Western „Distant Drums“ von 1951, wurde laut dem National Science and Media Museum in mehr als 400 Filmen und TV-Sendungen wiederverwendet, von Star Wars bis Toy Story.',
  'Es gibt einen Schrei, den du mit ziemlicher Sicherheit schon gehört hast, wahrscheinlich sogar öfter. Er klingt wie ein Mann, der völlig überrascht aufjault, und er taucht in Blockbustern, Zeichentrickfilmen und Videospielen auf. Filmfans nennen ihn den Wilhelmsschrei, international „Wilhelm scream“.

## Geboren in einem Sumpf, 1951

Zum ersten Mal zu hören war der Sound im Warner-Bros.-Western „Distant Drums“ von 1951, in einer Sumpfszene, in der ein Soldat von einem Alligator unter Wasser gezogen wird. Laut Mental Floss wurde der Schrei später in einer Tonkabine aufgenommen: sechs Schreie in einem Durchgang, und der fünfte wurde der berühmte.

Danach behielt Warner Bros. ihn einfach im Geräuscharchiv und setzte ihn wieder ein, etwa in „Springfield Rifle“ (1952). In „The Charge at Feather River“ von 1953 gehörte er einer Nebenfigur namens Private Wilhelm. Daher kommt der Name, obwohl Wilhelm gar nicht der Erste war.

## Wie ein Filmstudent ihn berühmt machte

In den 1970ern fiel dem USC-Filmstudenten Ben Burtt und seinem Freund Richard L. Anderson auf, dass immer wieder derselbe Schrei auftauchte, und sie gaben ihm seinen Namen. Dann wurde Burtt Sounddesigner von „Star Wars“. Er baute den Schrei ein, als ein Sturmtruppler von einem Vorsprung fällt, und nutzte ihn auch in den ersten vier Indiana-Jones-Filmen.

Von da an verbreitete er sich wie ein Insider-Witz. Mental Floss zählt unter anderem „Toy Story“, „Titanic“, „Der Herr der Ringe“ und „Fluch der Karibik“ auf. Das National Science and Media Museum kommt auf mehr als 400 Filme und TV-Sendungen, und auch in einigen Videospielen taucht er auf.

> Bonus-Fakt: Die wahrscheinlichste Stimme ist die von Schauspieler und Sänger Sheb Wooley. Er hatte eine Rolle ohne Namensnennung in „Distant Drums“ und sang auch den Novelty-Hit „The Purple People Eater“. Bestätigt hat er es selbst nie, aber seine Witwe erzählte Burtt, er sei am Set für seine Schreie bekannt gewesen.

## Die Stimme ohne Abspann

Das Ganze ist ziemlich absurd: Eines der berühmtesten Geräusche der Kinogeschichte hat bis heute keinen offiziellen Sprecher. Ein Mann hat Anfang der 1950er vielleicht ein paar Sekunden in eine Tonkabine geschrien, und Regisseure bauen ihn mehr als 70 Jahre später immer noch in Filme ein.

Manche Schauspieler bekommen einen Oscar. Sheb Wooley bekam wohl den längsten Gastauftritt Hollywoods.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wilhelm-scream-400-films', 'de', 1, 'USB-Kondensatormikrofon', 'USB Kondensatormikrofon Aufnahme', 'Gut genug, um zu Hause eigene Soundeffekte, Podcasts oder Sprachaufnahmen zu machen.'),
  ('wilhelm-scream-400-films', 'de', 2, 'Film-Quiz-Spiel', 'Film Quiz Spiel Brettspiel', 'Ein Quizabend für Leute, denen in Filmen Dinge auffallen, die andere übersehen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wilhelm-scream-400-films', 'de', 1, 'Mental Floss: What Is the Wilhelm Scream?', 'https://www.mentalfloss.com/article/20713/10-places-youve-heard-wilhelm-scream'),
  ('wilhelm-scream-400-films', 'de', 2, 'Backstage: The Wilhelm Scream: The History of Film’s Most Popular Sound Effect', 'https://www.backstage.com/magazine/article/wilhelm-scream-explained-75982/'),
  ('wilhelm-scream-400-films', 'de', 3, '3DVF: Over 400 films, 75 years, one scream and its origin is still a mystery', 'https://3dvf.com/en/over-400-films-75-years-one-scream-and-its-origin-is-still-a-mystery/'),
  ('wilhelm-scream-400-films', 'de', 4, 'National Science and Media Museum: Arghhhh! A closer look at the ‘Wilhelm scream’', 'https://blog.scienceandmediamuseum.org.uk/wilhelm-scream/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wilhelm-scream-400-films', 'en', 'one-scream-in-over-400-films',
  'One scream from 1951 has ended up in more than 400 films and TV shows',
  'You have heard this guy yell in Star Wars, Toy Story and Titanic, and nobody can officially say who he was.',
  'A single scream recorded for the 1951 western Distant Drums has been reused in more than 400 films and TV programmes, according to the National Science and Media Museum, from Star Wars to Toy Story.',
  'There is a scream you have almost certainly heard, probably more than once. It sounds like a man yelping in sheer surprise, and it pops up in blockbusters, cartoons and video games. Film nerds call it the Wilhelm scream.

## Born in a swamp in 1951

The sound first appeared in the Warner Bros. western „Distant Drums“ from 1951, in a swamp scene where a soldier gets dragged under the water by an alligator. According to Mental Floss, the scream was recorded later in a sound booth: six screams in one take, and the fifth became the famous one.

After that, Warner Bros. simply kept it in its sound library and reused it, for example in „Springfield Rifle“ (1952). In „The Charge at Feather River“ from 1953 it belonged to a minor character called Private Wilhelm. That is where the name comes from, even though Wilhelm was never the first.

## How a film student made it famous

In the 1970s, USC film student Ben Burtt and his friend Richard L. Anderson noticed the same yell turning up again and again and gave it its name. Then Burtt became the sound designer of „Star Wars“. He slipped the scream in when a Stormtrooper falls off a ledge, and he used it in the first four Indiana Jones films too.

From there it spread like an inside joke. Mental Floss lists „Toy Story“, „Titanic“, „The Lord of the Rings“ and „Pirates of the Caribbean“ among its appearances. The National Science and Media Museum counts more than 400 films and TV programmes, and it even turns up in some video games.

> Bonus fact: The most likely voice is actor and singer Sheb Wooley, who had an uncredited role in „Distant Drums“ and also recorded the novelty hit „The Purple People Eater“. He never confirmed it himself, but his widow told Burtt he was known on set for doing screams.

## The voice without a credit

The whole thing is a bit absurd: one of the most famous sounds in cinema history still has no official performer. A man may have yelled for a few seconds in a recording booth in the early 1950s, and directors are still adding him to films more than 70 years later.

Some actors get an Oscar. Sheb Wooley probably got the longest-running cameo in Hollywood.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wilhelm-scream-400-films', 'en', 1, 'USB condenser microphone', 'USB condenser microphone recording', 'Good enough to record your own sound effects, podcasts or voice-overs at home.'),
  ('wilhelm-scream-400-films', 'en', 2, 'Movie trivia board game', 'movie trivia board game', 'A quiz night for people who notice things in films that others miss.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wilhelm-scream-400-films', 'en', 1, 'Mental Floss: What Is the Wilhelm Scream?', 'https://www.mentalfloss.com/article/20713/10-places-youve-heard-wilhelm-scream'),
  ('wilhelm-scream-400-films', 'en', 2, 'Backstage: The Wilhelm Scream: The History of Film’s Most Popular Sound Effect', 'https://www.backstage.com/magazine/article/wilhelm-scream-explained-75982/'),
  ('wilhelm-scream-400-films', 'en', 3, '3DVF: Over 400 films, 75 years, one scream and its origin is still a mystery', 'https://3dvf.com/en/over-400-films-75-years-one-scream-and-its-origin-is-still-a-mystery/'),
  ('wilhelm-scream-400-films', 'en', 4, 'National Science and Media Museum: Arghhhh! A closer look at the ‘Wilhelm scream’', 'https://blog.scienceandmediamuseum.org.uk/wilhelm-scream/');
