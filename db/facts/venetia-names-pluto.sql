-- WTFact-Fakt „Pluto hat seinen Namen von einer 11-Jährigen beim Frühstück“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('venetia-names-pluto', '2026-10-11T02:00:00+02:00', 'space', '🔭', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'venetia-names-pluto', 'de', 'elfjaehrige-gab-pluto-seinen-namen',
  'Pluto hat seinen Namen von einer 11-Jährigen beim Frühstück',
  'Profi-Astronomen fanden den Himmelskörper, aber den Namen hatte ein Schulmädchen aus Oxford.',
  'Venetia Burney war 11 Jahre alt, als sie 1930 beim Frühstück den Namen „Pluto“ vorschlug, und das Lowell-Observatorium übernahm ihn einstimmig.',
  'Ein neuer Planet braucht einen Namen. Man denkt an Kommissionen, lange Sitzungen, vielleicht Latein-Profis. Bei Pluto lief es anders: Den Namen hat ein Schulmädchen zwischen Toast und Tee erfunden.

## Ein Planet in der Morgenzeitung

Im März 1930 meldete das Lowell-Observatorium in Flagstaff, Arizona, einen neuen Himmelskörper weit draußen hinter Neptun. Gefunden hatte ihn Clyde Tombaugh, ein 23-Jähriger, der fast ein Jahr lang danach gesucht hatte.

Am Morgen des 14. März 1930 saß in Oxford die 11-jährige Venetia Burney beim Frühstück. Ihr Großvater Falconer Madan, früher Leiter der berühmten Bodleian-Bibliothek, las ihr aus der Zeitung vor. Laut SBS News fragte Venetia: „Warum nennt man ihn nicht Pluto?“ Pluto ist der römische Gott der Unterwelt, ein passender Name für eine kalte, dunkle Welt am Rand des Sonnensystems. Ziemlich clever für jemanden, der eigentlich nur in Ruhe frühstücken wollte.

## Vom Frühstückstisch nach Arizona

Ihr Großvater fand die Idee gut und gab sie an einen Bekannten weiter: laut Space.com Herbert Hall Turner, Astronomieprofessor in Oxford. Der schickte ein Telegramm nach Flagstaff. Dort stimmten die Forschenden ab, und Pluto gewann einstimmig. Am 24. Mai 1930 bekam der Himmelskörper offiziell seinen Namen.

Ein Detail machte den Vorschlag besonders stark: Die ersten zwei Buchstaben, PL, sind die Initialen von Percival Lowell, dem Gründer des Observatoriums.

Und Venetias Lohn? Laut einem BBC-Interview, das SBS News zitiert, bekam sie von ihrem Großvater eine Fünf-Pfund-Note.

> Bonusfakt: Ein Staubmessgerät an Bord der Raumsonde New Horizons, die an Pluto vorbeiflog, ist nach Venetia benannt.

Manche verewigen sich mit Formeln. Venetia reichte eine Frage beim Frühstück.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('venetia-names-pluto', 'de', 1, 'Teleskop für Einsteiger', 'Teleskop Einsteiger Kinder Erwachsene', 'Mond, Saturnringe und Jupitermonde sind damit schon vom Balkon aus gut zu sehen.'),
  ('venetia-names-pluto', 'de', 2, 'Kinderbuch über das Mädchen, das Pluto benannte', 'Buch Venetia Burney Pluto', 'Erzählt die Geschichte von Venetia Burney liebevoll illustriert, schön zum Vorlesen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('venetia-names-pluto', 'de', 1, 'SBS News: How a precocious 11-year-old girl gave Pluto its name', 'https://www.sbs.com.au/news/article/how-a-precocious-11-year-old-girl-gave-pluto-its-name/zxkfvbdb3'),
  ('venetia-names-pluto', 'de', 2, 'Space.com: Celestial Whiz Kids Named Pluto, Designed Alaska''s State Flag', 'https://www.space.com/32230-pluto-discovery-alaska-state-flag-kids.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'venetia-names-pluto', 'en', 'girl-11-named-pluto-at-breakfast',
  'Pluto got its name from an 11-year-old at breakfast',
  'Professional astronomers found it, but the name came from a schoolgirl in Oxford.',
  'Venetia Burney was 11 years old when she suggested the name "Pluto" over breakfast in 1930, and Lowell Observatory adopted it unanimously.',
  'A new planet needs a name. You''d picture committees, long meetings, maybe a few Latin experts. With Pluto, it went differently: a schoolgirl came up with the name between toast and tea.

## A planet in the morning paper

In March 1930, Lowell Observatory in Flagstaff, Arizona, announced a new world far out beyond Neptune. It had been found by Clyde Tombaugh, a 23-year-old who had spent almost a year searching for it.

On the morning of March 14, 1930, in Oxford, 11-year-old Venetia Burney was having breakfast. Her grandfather Falconer Madan, formerly head of the famous Bodleian Library, was reading the newspaper to her. According to SBS News, Venetia asked: "Why not call it Pluto?" Pluto is the Roman god of the underworld, a fitting name for a cold, dark world at the edge of the solar system. Pretty clever for someone who just wanted to eat breakfast in peace.

## From the breakfast table to Arizona

Her grandfather liked the idea and passed it on to a friend: according to Space.com, Herbert Hall Turner, an astronomy professor at Oxford. Turner sent a telegram to Flagstaff. The scientists there voted, and Pluto won unanimously. On May 24, 1930, the new world officially got its name.

One detail made the suggestion especially strong: its first two letters, PL, are the initials of Percival Lowell, the observatory''s founder.

And Venetia''s reward? According to a BBC interview quoted by SBS News, her grandfather gave her a five-pound note.

> Bonus fact: A dust-measuring instrument on the New Horizons spacecraft, which flew past Pluto, is named after Venetia.

Some people make history with equations. Venetia needed one question at breakfast.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('venetia-names-pluto', 'en', 1, 'Beginner telescope', 'beginner telescope astronomy', 'The Moon, Saturn''s rings and Jupiter''s moons are all in reach, right from your balcony.'),
  ('venetia-names-pluto', 'en', 2, 'Picture book about the girl who named Pluto', 'The Girl Who Named Pluto book', 'Tells Venetia Burney''s story with lovely illustrations, great for reading aloud.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('venetia-names-pluto', 'en', 1, 'SBS News: How a precocious 11-year-old girl gave Pluto its name', 'https://www.sbs.com.au/news/article/how-a-precocious-11-year-old-girl-gave-pluto-its-name/zxkfvbdb3'),
  ('venetia-names-pluto', 'en', 2, 'Space.com: Celestial Whiz Kids Named Pluto, Designed Alaska''s State Flag', 'https://www.space.com/32230-pluto-discovery-alaska-state-flag-kids.html');
