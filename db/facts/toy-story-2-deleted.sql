-- WTFact-Fakt „Toy Story 2 war fast komplett gelöscht, gerettet hat ihn ein Computer bei jemandem zu Hause“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('toy-story-2-deleted', '2026-10-10T22:00:00+02:00', 'popculture', '🤠', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'toy-story-2-deleted', 'de', 'toy-story-2-fast-geloescht',
  'Toy Story 2 war fast komplett gelöscht, gerettet hat ihn ein Computer bei jemandem zu Hause',
  'Ein einziger Befehl ließ bei Pixar einen fast fertigen Film verschwinden. Die Rettung stand im Haus einer Mitarbeiterin.',
  '1998 löschte ein Befehl rund 90 Prozent der Dateien von Toy Story 2, und der Film wurde von einer Kopie auf dem Computer einer Pixar-Mitarbeiterin bei ihr zu Hause gerettet.',
  'Stell dir vor, du arbeitest monatelang an einem Film und siehst dann zu, wie er Datei für Datei verschwindet. Genau das ist 1998 bei Pixar passiert.

## Ein Befehl, 90 Prozent weg

Laut einem ausführlichen Bericht von The Next Web lief auf dem Server mit den Dateien von Toy Story 2 ein Löschbefehl. Wahrscheinlich war es rm -r -f, ein Unix-Befehl, der einen Ordner samt allen Unterordnern löscht, ohne nachzufragen. Bei Pixar sahen Leute, wie Figuren und Kulissen von ihren Bildschirmen verschwanden. Oren Jacob, damals Associate Technical Director des Films, ließ den Server vom Strom nehmen. Da waren schon rund 90 Prozent der Filmdateien weg.

Die naheliegende Lösung wären die Backups gewesen. Aber die Bandsicherungen von Pixar waren nie richtig überprüft worden und hatten unbemerkt nicht mehr sauber funktioniert.

## Rettung per Volvo

Gerettet hat den Film Galyn Susman, die Supervising Technical Director. Sie arbeitete damals von zu Hause aus und hatte dort einen Rechner mit einer vollständigen Kopie des Films, etwa zwei Wochen alt. Jacob und Susman fuhren zu ihr, wickelten den Computer in Decken, schnallten ihn auf der Rückbank ihres Volvos an und brachten ihn sehr vorsichtig zu Pixar. Auch TechSpot, das sich unter anderem auf das Buch „Creativity, Inc.“ von Pixar-Mitgründer Ed Catmull stützt, beschreibt diese Kopie als wohl einzige intakte Version des Films.

Danach prüfte das Team ein Wochenende lang Dateien von Hand. Laut The Next Web waren es etwa 70.000 geprüfte Dateien, 30.000 standen noch aus.

## Der Twist

Und jetzt kommt’s: Nach all dem fand man die Geschichte nicht gut genug. Am 15. Dezember 1998 wurde die Produktion gestoppt, und das Team baute den Film in etwa neun Monaten größtenteils neu. Trotzdem kam er pünktlich im November 1999 in die Kinos.

> Bonusfakt: Oren Jacob, der an dem Tag den Stecker ziehen ließ, wurde später Technikchef von Pixar.

Irgendwo gibt es einen Volvo, der mal Woody und Buzz auf der Rückbank hatte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('toy-story-2-deleted', 'de', 1, 'Toy Story 1–4 als Blu-ray-Box', 'Toy Story 1-4 Blu-ray Collection', 'Alle vier Filme in einer Box, perfekt für einen langen Filmabend.'),
  ('toy-story-2-deleted', 'de', 2, 'Buch „Creativity, Inc.“ von Ed Catmull', 'Creativity Inc Ed Catmull Buch', 'Der Pixar-Mitgründer erzählt, wie das Studio arbeitet und mit Fehlern umgeht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('toy-story-2-deleted', 'de', 1, 'The Next Web: How Pixar''s Toy Story 2 was deleted twice, once by technology and again for its own good', 'https://thenextweb.com/news/how-pixars-toy-story-2-was-deleted-twice-once-by-technology-and-again-for-its-own-good'),
  ('toy-story-2-deleted', 'de', 2, 'TechSpot: How Pixar recovered Toy Story 2 after a Unix command deleted nearly the entire film in 1998', 'https://www.techspot.com/news/112848-how-pixar-nearly-deleted-toy-story-2-single.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'toy-story-2-deleted', 'en', 'toy-story-2-almost-deleted',
  'Toy Story 2 was almost completely deleted, and a computer in someone''s home saved it',
  'A single command made a nearly finished film vanish at Pixar. The rescue was sitting in an employee''s house.',
  'In 1998, a command deleted about 90 percent of the files for Toy Story 2, and the film was rescued from a copy on a Pixar employee''s computer at her home.',
  'Imagine working on a movie for months and then watching it disappear, file by file. That is exactly what happened at Pixar in 1998.

## One command, 90 percent gone

According to a detailed account by The Next Web, someone ran a delete command on the server that held the files for Toy Story 2. It was most likely rm -r -f, a Unix command that deletes a folder and everything inside it without asking. People at Pixar watched characters and sets vanish from their screens. Oren Jacob, then an associate technical director on the film, had the server unplugged. By then, about 90 percent of the movie''s files were gone.

The obvious fix would have been the backups. But Pixar''s tape backups had never been properly checked, and they had quietly stopped working as they should.

## Rescue by Volvo

The film was saved by Galyn Susman, its supervising technical director. She was working from home at the time and had a computer there with a full copy of the movie, about two weeks old. Jacob and Susman drove to her house, wrapped the computer in blankets, belted it into the back seat of her Volvo and drove it very carefully back to Pixar. TechSpot, which draws among other things on Pixar co-founder Ed Catmull''s book Creativity, Inc., also describes that copy as likely the only intact version of the film.

After that, the team spent a weekend checking files by hand. According to The Next Web, about 70,000 files were verified, with 30,000 still to go.

## The twist

Here''s the kicker: after all that, the story was judged not good enough. Production shut down on December 15, 1998, and the team rebuilt most of the film in about nine months. It still hit theaters on time in November 1999.

> Bonus fact: Oren Jacob, who had the plug pulled that day, later became Pixar''s chief technology officer.

Somewhere out there is a Volvo that once carried Woody and Buzz in the back seat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('toy-story-2-deleted', 'en', 1, 'Toy Story 1–4 Blu-ray collection', 'Toy Story 1-4 Blu-ray collection', 'All four movies in one box, perfect for a long movie night.'),
  ('toy-story-2-deleted', 'en', 2, 'Creativity, Inc. by Ed Catmull', 'Creativity Inc Ed Catmull book', 'Pixar''s co-founder explains how the studio works and how it deals with mistakes.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('toy-story-2-deleted', 'en', 1, 'The Next Web: How Pixar''s Toy Story 2 was deleted twice, once by technology and again for its own good', 'https://thenextweb.com/news/how-pixars-toy-story-2-was-deleted-twice-once-by-technology-and-again-for-its-own-good'),
  ('toy-story-2-deleted', 'en', 2, 'TechSpot: How Pixar recovered Toy Story 2 after a Unix command deleted nearly the entire film in 1998', 'https://www.techspot.com/news/112848-how-pixar-nearly-deleted-toy-story-2-single.html');
