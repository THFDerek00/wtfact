-- WTFact-Fakt „„Stille Nacht“ wurde 1818 zur Gitarre uraufgeführt, nicht zur Orgel“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('silent-night-guitar', '2026-12-18T00:00:00+01:00', 'history', '🎸', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'silent-night-guitar', 'de', 'stille-nacht-mit-gitarre',
  '„Stille Nacht“ wurde 1818 zur Gitarre uraufgeführt, nicht zur Orgel',
  'Das berühmteste Weihnachtslied der Welt begann mit einem Priester, einem Lehrer und einer Gitarre.',
  'Bei der Uraufführung von „Stille Nacht“ 1818 in Oberndorf bei Salzburg spielte Pfarrer Joseph Mohr Gitarre, weil die Orgel der Überlieferung nach nicht spielbar war.',
  'Ein Kirchenlied, feierlich, mit Orgel und Chor. So stellt man sich „Stille Nacht“ vor. Bei der allerersten Aufführung klang es eher wie ein Lagerfeuer-Song.

## Ein Gedicht und eine Melodie

Den Text schrieb der junge Priester Joseph Mohr schon 1816. Laut Sonntagsblatt belegt das ein Schriftstück, das erst 1996 entdeckt wurde. Zwei Jahre später, 1818, war Mohr Hilfspfarrer in Oberndorf bei Salzburg. Er bat den Lehrer und Organisten Franz Xaver Gruber, eine Melodie zu seinem Gedicht zu schreiben.

Uraufgeführt wurde das Lied an Weihnachten 1818 in der Kirche St. Nikolaus in Oberndorf. Laut Sonntagsblatt sangen zwei Solostimmen, dazu ein Chor. Mohr sang Tenor und spielte Gitarre, Gruber sang Bass.

## Warum die Gitarre?

Laut Überlieferung war die alte Orgel nicht spielbar. Eine beliebte Legende macht Mäuse dafür verantwortlich, die den Blasebalg angenagt haben sollen. Vatican News stellt klar, dass das eine Legende ist. Historiker gehen eher davon aus, dass Gruber das Lied ohnehin für Gitarre schrieb, weil die damals leichter verfügbar war. Mohrs Gitarre ist heute im Museum zu sehen.

Danach ging das kleine Lied aus Oberndorf auf eine lange Reise um die Welt. Laut Sonntagsblatt sang die Tiroler Sängerfamilie Rainer es spätestens 1822 vor dem russischen Zaren und dem österreichischen Kaiser. Heute wird es in fast 300 Sprachen und Dialekten gesungen, Sonntagsblatt spricht sogar von mehr als 300.

> Bonusfakt: Seit 2011 steht „Stille Nacht“ in Österreich auf der Liste des immateriellen UNESCO-Kulturerbes.

Das feierlichste Lied des Abends war also zuerst ein kleines Stück für zwei Stimmen und eine Gitarre.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('silent-night-guitar', 'de', 1, 'Akustikgitarre für Einsteiger', 'Akustikgitarre Einsteiger Set', 'Ein gutes Einstiegsinstrument mit Zubehör.'),
  ('silent-night-guitar', 'de', 2, 'Weihnachtslieder für Gitarre, Notenheft', 'Weihnachtslieder Gitarre Noten Anfänger', 'Leichte Arrangements bekannter Weihnachtslieder.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('silent-night-guitar', 'de', 1, 'Vatican News: Austria commemorates 200th anniversary of "Silent Night"', 'https://vaticannews.va/en/world/news/2018-12/austria-commemorates-200-anniversary-silent-night.html'),
  ('silent-night-guitar', 'de', 2, 'Sonntagsblatt: Vor 200 Jahren schrieb ein Priester „Stille Nacht“', 'https://www.sonntagsblatt.de/artikel/kultur/vor-200-jahren-schrieb-ein-priester-stille-nacht');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'silent-night-guitar', 'en', 'silent-night-premiered-on-guitar',
  '‘Silent Night’ premiered in 1818 on a guitar, not an organ',
  'The world''s most famous Christmas carol started with a priest, a teacher and a guitar.',
  'At the first performance of "Silent Night" in 1818 in Oberndorf near Salzburg, the priest Joseph Mohr played guitar, because tradition says the organ couldn''t be played.',
  'A solemn hymn with organ and choir. That''s how most people imagine "Silent Night". At its very first performance, it sounded more like a campfire song.

## A poem and a melody

The young priest Joseph Mohr wrote the words as early as 1816. According to Sonntagsblatt, a document discovered only in 1996 proves it. Two years later, in 1818, Mohr was assistant priest in Oberndorf near Salzburg. He asked the teacher and organist Franz Xaver Gruber to write a melody for his poem.

The song premiered at Christmas 1818 in St. Nicholas Church in Oberndorf. According to Sonntagsblatt, two solo voices sang along with a choir. Mohr sang tenor and played guitar, Gruber sang bass.

## Why the guitar?

According to tradition, the old organ couldn''t be played. A popular legend blames mice that supposedly chewed through the bellows. Vatican News makes clear that this is a legend. Historians tend to think Gruber wrote it for guitar anyway, because guitars were more widely available. Mohr''s guitar is on display in a museum today.

Then the song went traveling. According to Sonntagsblatt, the Rainer family of singers from Tyrol performed it for the Russian tsar and the Austrian emperor by 1822 at the latest. Today it''s sung in nearly 300 languages and dialects, and Sonntagsblatt even says more than 300.

> Bonus fact: Since 2011, "Silent Night" has been on Austria''s national list of UNESCO intangible cultural heritage.

The most solemn song of the night started out as a small piece for two voices and a guitar.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('silent-night-guitar', 'en', 1, 'Beginner acoustic guitar set', 'beginner acoustic guitar set', 'A good first instrument with accessories.'),
  ('silent-night-guitar', 'en', 2, 'Christmas songs for guitar songbook', 'christmas songs guitar beginner songbook', 'Easy arrangements of well-known carols.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('silent-night-guitar', 'en', 1, 'Vatican News: Austria commemorates 200th anniversary of "Silent Night"', 'https://vaticannews.va/en/world/news/2018-12/austria-commemorates-200-anniversary-silent-night.html'),
  ('silent-night-guitar', 'en', 2, 'Sonntagsblatt: Vor 200 Jahren schrieb ein Priester „Stille Nacht“', 'https://www.sonntagsblatt.de/artikel/kultur/vor-200-jahren-schrieb-ein-priester-stille-nacht');
