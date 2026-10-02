-- WTFact-Fakt „Das erste E-Sport-Turnier fand 1972 statt, der Hauptpreis war ein Zeitschriften-Abo“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('first-esports-tournament', '2026-08-26', 'sport', '🕹️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-esports-tournament', 'de', 'erstes-esport-turnier-1972',
  'Das erste E-Sport-Turnier fand 1972 statt, der Hauptpreis war ein Zeitschriften-Abo',
  'Kein Preisgeld, keine Arena, nur ein Großrechner und ein Jahr „Rolling Stone“ für den Sieger.',
  'Am 19. Oktober 1972 trafen sich Studierende in Stanford zum vermutlich ersten Videospielturnier der Welt, als Preis gab es ein Jahresabo des „Rolling Stone“.',
  'Heute füllen E-Sport-Turniere ganze Hallen, und es geht um Millionen. Angefangen hat alles deutlich bescheidener: **Beim vermutlich ersten Videospielturnier der Welt, 1972 in Stanford, gewann der Sieger ein Jahresabo einer Musikzeitschrift.**

## Weltraumschlacht im Uni-Labor

Am 19. Oktober 1972 trafen sich Studierende und Forschende im Labor für Künstliche Intelligenz der Stanford University in Kalifornien. Der Name der Veranstaltung klang deutlich größer als sie war: „Intergalactic Spacewar Olympics“.

Gespielt wurde „Spacewar!“, eines der ersten Computerspiele überhaupt, ursprünglich entwickelt von Steve Russell und Kollegen am MIT. Zwei Raumschiffe oder mehr kämpfen darin um einen Stern, dessen Schwerkraft alles in seine Richtung zieht. Gespielt wurde auf dem einzigen PDP-10-Großrechner, den Stanford damals hatte.

## Der Preis: Lesestoff

Es gab zwei Wettbewerbe. Im Teamwettbewerb gewannen Slim Tovar und Robert E. Maas. Das Jeder-gegen-jeden-Finale mit fünf Schiffen holte Bruce Baumgart. Der Hauptpreis: **ein Jahresabo des „Rolling Stone“**.

Das hatte einen Grund. Der Autor Stewart Brand berichtete für das Magazin über das Turnier, und laut Kotaku machte eine junge Fotografin namens Annie Leibovitz die Bilder. Sie wurde später eine der bekanntesten Fotografinnen der Welt.

> „Spacewar!“ kannst du heute noch auf einem originalen PDP-1-Rechner spielen, im Computer History Museum in Mountain View, Kalifornien, an ausgewählten Samstagen.

## Schon damals absehbar

Brand sagte Jahrzehnte später dem „Rolling Stone“ sinngemäß, dass volle Arenen mit Leuten, die anderen beim Zocken zuschauen, vielleicht erstaunlich wirken. Aber sie seien eine völlig logische Folge dessen, was man schon 1972 sehen konnte.

Er sollte recht behalten. Aus einem Abend im Labor wurde eine Industrie mit Profiteams, Ligen und ausverkauften Stadien.

Der erste E-Sport-Champion der Welt bekam also kein Preisgeld, sondern Post. Zwölf Monate lang.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-esports-tournament', 'de', 1, 'Retro-Spielkonsole mit vorinstallierten Klassikern', 'Retro Konsole vorinstallierte Spiele', 'Viele Arcade-Klassiker direkt am Fernseher, ohne Kassetten oder Downloads.'),
  ('first-esports-tournament', 'de', 2, 'Sachbuch zur Geschichte der Videospiele', 'Geschichte der Videospiele Buch', 'Von den ersten Großrechner-Spielen bis zu heutigen Konsolen, mit vielen Bildern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-esports-tournament', 'de', 1, 'Rolling Stone: Stewart Brand Recalls First ''Spacewar'' Video Game Tournament', 'https://www.rollingstone.com/culture/culture-news/stewart-brand-recalls-first-spacewar-video-game-tournament-187669/'),
  ('first-esports-tournament', 'de', 2, 'Kotaku: Today is the 40th Anniversary of the World''s First Known Video Gaming Tournament', 'https://kotaku.com/today-is-the-40th-anniversary-of-the-worlds-first-known-5953371'),
  ('first-esports-tournament', 'de', 3, 'Game Developer: As eSports rise, look back at one of the world''s first video game tournaments', 'https://www.gamedeveloper.com/business/as-esports-rise-look-back-at-one-of-the-world-s-first-video-game-tournaments');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-esports-tournament', 'en', 'first-esports-tournament-1972',
  'The first esports tournament happened in 1972, and the top prize was a magazine subscription',
  'No prize money, no arena, just one mainframe and a year of Rolling Stone for the winner.',
  'On October 19, 1972, students at Stanford held what is likely the world''s first video game tournament, and the prize was a year''s subscription to Rolling Stone.',
  'Today, esports tournaments fill entire arenas, with millions on the line. It all started on a much smaller scale: **at what was probably the world''s first video game tournament, held at Stanford in 1972, the winner got a year''s subscription to a music magazine.**

## Space battle in a university lab

On October 19, 1972, students and researchers gathered at the Stanford Artificial Intelligence Laboratory in California. The event''s name sounded a lot bigger than it was: the "Intergalactic Spacewar Olympics".

The game was "Spacewar!", one of the very first computer games, originally created by Steve Russell and colleagues at MIT. Spaceships battle around a star whose gravity pulls everything toward it. It all ran on the one PDP-10 mainframe Stanford had at the time.

## The prize: reading material

There were two events. Slim Tovar and Robert E. Maas won the team competition. Bruce Baumgart took the five-ship free-for-all. The top prize: **a year''s subscription to Rolling Stone**.

There was a reason for that. Writer Stewart Brand covered the tournament for the magazine, and according to Kotaku, a young photographer named Annie Leibovitz took the pictures. She went on to become one of the most famous photographers in the world.

> You can still play "Spacewar!" on an original PDP-1 computer at the Computer History Museum in Mountain View, California, on selected Saturdays.

## You could see it coming

Decades later, Brand told Rolling Stone: "It may seem extraordinary that you can now fill arenas with people who want to watch videogames. But it''s a perfectly reasonable outcome of what you could already see in 1972."

He was right. One evening in a lab turned into an industry with pro teams, leagues and sold-out stadiums.

So the world''s first esports champion didn''t get prize money. He got mail. For twelve months.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-esports-tournament', 'en', 1, 'Retro game console with built-in classics', 'retro game console built in games', 'Lots of arcade classics straight on your TV, no cartridges or downloads needed.'),
  ('first-esports-tournament', 'en', 2, 'History of video games book', 'history of video games book', 'From the first mainframe games to today''s consoles, with plenty of pictures.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-esports-tournament', 'en', 1, 'Rolling Stone: Stewart Brand Recalls First ''Spacewar'' Video Game Tournament', 'https://www.rollingstone.com/culture/culture-news/stewart-brand-recalls-first-spacewar-video-game-tournament-187669/'),
  ('first-esports-tournament', 'en', 2, 'Kotaku: Today is the 40th Anniversary of the World''s First Known Video Gaming Tournament', 'https://kotaku.com/today-is-the-40th-anniversary-of-the-worlds-first-known-5953371'),
  ('first-esports-tournament', 'en', 3, 'Game Developer: As eSports rise, look back at one of the world''s first video game tournaments', 'https://www.gamedeveloper.com/business/as-esports-rise-look-back-at-one-of-the-world-s-first-video-game-tournaments');
