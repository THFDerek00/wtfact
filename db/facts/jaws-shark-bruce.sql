-- WTFact-Fakt „Der weiße Hai hieß Bruce, nach Spielbergs Anwalt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('jaws-shark-bruce', '2026-10-11T14:00:00+02:00', 'popculture', '🦈', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'jaws-shark-bruce', 'de', 'weisser-hai-hiess-bruce',
  'Der weiße Hai hieß Bruce, nach Spielbergs Anwalt',
  'Der berühmteste Hai der Filmgeschichte hat einen ziemlich unspektakulären Namen und eine Vergangenheit auf dem Schrottplatz.',
  'Die Crew von „Der weiße Hai“ nannte den mechanischen Hai Bruce, nach Steven Spielbergs Anwalt Bruce Ramer, und das letzte erhaltene Exemplar verbrachte 25 Jahre auf einem Schrottplatz.',
  'Der berühmteste Hai der Filmgeschichte hat einen Namen, und der klingt nicht gerade furchteinflößend. Die Crew von „Der weiße Hai“ nannte ihn Bruce.

## Ein Hai, benannt nach einem Anwalt

Laut NPR und Spectrum News 1 bekam der mechanische Hai seinen Spitznamen nach Steven Spielbergs Anwalt Bruce Ramer. Kein Monster, kein Meeresgott, sondern der Mann, der sich um die Verträge des Regisseurs kümmerte.

Bruce war dabei nicht ein Hai, sondern drei. Art Director Joe Alves entwarf für den Film von 1975 drei mechanische Weiße Haie, die vor Martha’s Vineyard im Salzwasser funktionieren mussten. Laut NPR gingen die Haie so oft kaputt, dass der Dreh länger dauerte und teurer wurde als geplant. Einen Haifilm zu drehen ist schwierig, wenn dein Hai ständig Feierabend macht.

## Vom Schrottplatz ins Museum

Nach dem Dreh wurden die drei Original-Haie zerstört oder zurückgelassen. Als „Der weiße Hai“ dann ein riesiger Kinohit wurde, goss man aus derselben Form einen vierten Hai. Laut Spectrum News 1 hing er 15 Jahre lang als Fotomotiv in den Universal Studios Hollywood und lag danach 25 Jahre auf einem Schrottplatz in Sun Valley, Kalifornien. 2016 wurde er dem Academy Museum of Motion Pictures in Los Angeles geschenkt.

Effektkünstler Greg Nicotero und sein Team restaurierten den etwa 7,6 Meter (25 Fuß) langen Hai. Spectrum spricht von sieben Monaten Arbeit, NPR von sechs. Heute hängt Bruce im Museum, sichtbar von der Fairfax Avenue aus, und um zu ihm hochzuschauen, brauchst du nicht mal ein Ticket.

> Bonusfakt: Laut Spectrum News 1 wiegt der Museums-Bruce 1.208 Pfund, also rund 548 Kilogramm, und hat 116 Zähne.

Der letzte erhaltene Hai aus „Der weiße Hai“ trägt den Namen eines Anwalts und hat eine Vergangenheit auf dem Schrottplatz.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('jaws-shark-bruce', 'de', 1, '„Der weiße Hai“ auf Blu-ray', 'Der weiße Hai Blu-ray', 'Der Klassiker von 1975 in guter Bildqualität, ideal für einen Filmabend.'),
  ('jaws-shark-bruce', 'de', 2, 'Weißer Hai als Plüschtier', 'Weißer Hai Plüschtier groß', 'Weich, groß und deutlich freundlicher als sein Vorbild aus dem Kino.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('jaws-shark-bruce', 'de', 1, 'WGBH: ''Jaws'' Shark Gets His Bite Back: A Love Story', 'https://www.wgbh.org/lifestyle/2019-08-09/jaws-shark-gets-his-bite-back-a-love-story'),
  ('jaws-shark-bruce', 'de', 2, 'Spectrum News 1: Bruce, the Last "Jaws" Shark, Docks at the Academy Museum', 'https://spectrumnews1.com/ca/la-east/entertainment/2020/11/23/bruce--the-last--jaws--shark--docks-at-the-academy-museum');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'jaws-shark-bruce', 'en', 'jaws-shark-named-bruce',
  'The shark in Jaws was named Bruce, after Spielberg''s lawyer',
  'The most famous shark in movie history has a pretty ordinary name and a past in a junkyard.',
  'The crew of Jaws named the mechanical shark Bruce, after Steven Spielberg''s lawyer Bruce Ramer, and the last surviving one spent 25 years in a junkyard.',
  'The most famous shark in movie history has a name, and it''s not exactly terrifying. The crew of Jaws called it Bruce.

## A shark named after a lawyer

According to NPR and Spectrum News 1, the mechanical shark got its nickname from Steven Spielberg''s lawyer, Bruce Ramer. Not a monster, not a sea god, just the man who handled the director''s contracts.

And Bruce wasn''t one shark but three. Art director Joe Alves designed three mechanical great whites for the 1975 film, and they had to work in salt water off Martha''s Vineyard. According to NPR, the sharks broke down so often that the shoot ran over schedule and over budget. Making a shark movie is hard when your shark keeps clocking out.

## From junkyard to museum

After filming, the three original sharks were destroyed or abandoned. But once Jaws became a huge box office hit, a fourth shark was cast from the same mold. According to Spectrum News 1, it hung at Universal Studios Hollywood for 15 years as a photo spot, then spent 25 years in a junkyard in Sun Valley, California. In 2016, it was donated to the Academy Museum of Motion Pictures in Los Angeles.

Special effects artist Greg Nicotero and his team restored the shark, which is about 25 feet (7.6 meters) long. Spectrum says the work took seven months, NPR says six. Today Bruce hangs in the museum, visible from Fairfax Avenue, and you don''t even need a ticket to look up at him.

> Bonus fact: According to Spectrum News 1, the museum''s Bruce weighs 1,208 pounds, about 548 kilograms, and has 116 teeth.

The last surviving Jaws shark carries a lawyer''s name and a junkyard past.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('jaws-shark-bruce', 'en', 1, 'Jaws on Blu-ray', 'Jaws Blu-ray', 'The 1975 classic in good picture quality, ideal for a movie night.'),
  ('jaws-shark-bruce', 'en', 2, 'Great white shark plush toy', 'great white shark plush large', 'Soft, big and a lot friendlier than its movie role model.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('jaws-shark-bruce', 'en', 1, 'WGBH: ''Jaws'' Shark Gets His Bite Back: A Love Story', 'https://www.wgbh.org/lifestyle/2019-08-09/jaws-shark-gets-his-bite-back-a-love-story'),
  ('jaws-shark-bruce', 'en', 2, 'Spectrum News 1: Bruce, the Last "Jaws" Shark, Docks at the Academy Museum', 'https://spectrumnews1.com/ca/la-east/entertainment/2020/11/23/bruce--the-last--jaws--shark--docks-at-the-academy-museum');
