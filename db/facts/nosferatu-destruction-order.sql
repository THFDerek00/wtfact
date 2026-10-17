-- WTFact-Fakt „Ein Gericht befahl, jede Kopie von „Nosferatu“ zu vernichten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('nosferatu-destruction-order', '2026-10-23T12:00:00+02:00', 'horror', '🧛', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nosferatu-destruction-order', 'de', 'gericht-befahl-nosferatu-zu-vernichten',
  'Ein Gericht befahl, jede Kopie von „Nosferatu“ zu vernichten',
  'Ein Stummfilm-Klassiker über einen Vampir war ein Dracula ohne Lizenz und sollte für immer verschwinden.',
  'Im Juli 1925 ordnete ein Gericht nach einer Klage von Bram Stokers Witwe an, das Negativ und alle Kopien von „Nosferatu“ zu vernichten, doch einige Kopien überlebten im Ausland.',
  'Ein Horrorklassiker sollte komplett verschwinden. Im Juli 1925 ordnete ein Gericht an, das Negativ und jede Kopie von „Nosferatu“ zu vernichten. Das Problem war nicht der Vampir. Es war der Papierkram.

## Dracula mit neuem Namen

„Nosferatu“ feierte am 4. März 1922 in Berlin Premiere. Es war die erste Produktion einer kleinen Firma namens Prana-Film, und laut EBSCO hatte sie sich nie die Rechte bei den Erben von Bram Stoker besorgt. Ihre Lösung: Namen ändern. Aus Graf Dracula wurde Graf Orlok, und die Geschichte zog von England nach Deutschland. Das BFI schreibt, dass Figuren wie Van Helsing kleiner gemacht oder ganz gestrichen wurden. Laut Britannica blieb der Film trotz der Änderungen nah am Roman.

Stokers Witwe Florence ließ sich nicht täuschen. Laut EBSCO erfuhr sie etwa einen Monat nach der Premiere von dem Film, als ihr ein anonymer Absender das Programmheft schickte. Sie verklagte Prana-Film wegen Urheberrechtsverletzung.

## Die Firma ging pleite, der Film nicht

Prana-Film ging bankrott, Geld für Schadenersatz gab es also nicht. „Nosferatu“ blieb ihr einziger Film. Florence Stoker blieb trotzdem dran. Die Berufung der Firma scheiterte, und im Juli 1925 ordnete das Gericht an, das Negativ und alle Kopien zu vernichten.

Geklappt hat das nicht. Laut Britannica hatten es ein paar Kopien ins Ausland geschafft. Florence Stoker konnte 1925 die Premiere in London verhindern, die US-Premiere 1929 aber nicht. Das BFI sagt es knapp: Die Vernichtung ist nie gelungen.

Deshalb kannst du Orlok heute noch sehen. Ein Film, der per Gericht verschwinden sollte, gilt laut BFI heute als erste ernsthafte Dracula-Verfilmung und als anerkannter Klassiker des expressionistischen Kinos.

> Bonusfakt: Laut Britannica brachte „Nosferatu“ die heute gängige Idee auf, dass Sonnenlicht Vampiren schadet. Am Ende löst sich Orlok auf, als ihn die Sonne trifft.

Der Vampir sollte im Dunkeln bleiben. Der Film hat sich einfach geweigert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nosferatu-destruction-order', 'de', 1, 'Nosferatu 1922, restaurierte Fassung', 'Nosferatu 1922 restaurierte Fassung Blu-ray', 'Der Stummfilmklassiker in aufgearbeiteter Fassung, ideal für einen Gruselfilmabend.'),
  ('nosferatu-destruction-order', 'de', 2, 'Dracula von Bram Stoker, illustrierte Ausgabe', 'Dracula Bram Stoker illustrierte Ausgabe gebunden', 'Der Roman, bei dem sich der Film bedient hat, schön gebunden fürs Regal.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nosferatu-destruction-order', 'de', 1, 'EBSCO Research Starters: Nosferatu Is Found to Have Violated Dracula Copyright', 'https://www.ebsco.com/research-starters/film/nosferatu-found-have-violated-dracula-copyright'),
  ('nosferatu-destruction-order', 'de', 2, 'Britannica: Nosferatu (1922 film) | Cast, 2024 Remake, & Vampire Movie', 'https://www.britannica.com/topic/Nosferatu'),
  ('nosferatu-destruction-order', 'de', 3, 'BFI: Film 2: Nosferatu (1922)', 'https://www.bfi.org.uk/resources-events-teachers/resources-teachers/gothic-classroom/film-2-nosferatu-1922');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nosferatu-destruction-order', 'en', 'court-ordered-nosferatu-destroyed',
  'A court ordered every copy of Nosferatu destroyed',
  'A classic silent vampire film was an unlicensed Dracula, and it was supposed to disappear for good.',
  'In July 1925, after a lawsuit by Bram Stoker''s widow, a court ordered the negative and all prints of "Nosferatu" destroyed, but a few prints survived abroad.',
  'A horror classic was supposed to vanish completely. In July 1925, a court ordered the negative and every print of "Nosferatu" to be destroyed. The problem wasn''t the vampire. It was the paperwork.

## Dracula with a new name

"Nosferatu" premiered in Berlin on March 4, 1922. It was the first production of a small company called Prana-Film, and according to EBSCO, the company never got the rights from Bram Stoker''s estate. Its solution: change the names. Count Dracula became Count Orlok, and the story moved from England to Germany. The BFI notes that characters like Van Helsing were played down or dropped. Britannica says that despite the changes, the film still stuck close to the novel.

Stoker''s widow, Florence, wasn''t fooled. EBSCO says she found out about the film about a month after the premiere, when an anonymous correspondent mailed her the program. She sued Prana-Film for copyright infringement.

## The company went bust, the film didn''t

Prana-Film went bankrupt, so there was no money for damages. "Nosferatu" stayed its only film. Florence Stoker kept pushing anyway. The company''s appeals failed, and in July 1925 the court ordered the negative and all prints destroyed.

It didn''t work. According to Britannica, a small number of prints had made their way abroad. Florence Stoker managed to stop the London premiere in 1925, but she couldn''t stop the American debut in 1929. The BFI puts it plainly: the destruction was never achieved.

That is why you can still watch Orlok today. A film that a court sentenced to disappear is now, in the BFI''s words, the first serious Dracula adaptation and a recognised classic of Expressionist cinema.

> Bonus fact: Britannica says "Nosferatu" introduced the now-common idea that vampires are vulnerable to sunlight. At the end, Orlok dissolves when the sun hits him.

The vampire was supposed to stay in the dark. The film just refused to.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nosferatu-destruction-order', 'en', 1, 'Nosferatu 1922 restored edition', 'Nosferatu 1922 restored Blu-ray', 'The silent classic in a cleaned-up version, great for a spooky movie night.'),
  ('nosferatu-destruction-order', 'en', 2, 'Dracula by Bram Stoker, illustrated edition', 'Dracula Bram Stoker illustrated hardcover', 'The novel the film borrowed from, in a nice edition for the shelf.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nosferatu-destruction-order', 'en', 1, 'EBSCO Research Starters: Nosferatu Is Found to Have Violated Dracula Copyright', 'https://www.ebsco.com/research-starters/film/nosferatu-found-have-violated-dracula-copyright'),
  ('nosferatu-destruction-order', 'en', 2, 'Britannica: Nosferatu (1922 film) | Cast, 2024 Remake, & Vampire Movie', 'https://www.britannica.com/topic/Nosferatu'),
  ('nosferatu-destruction-order', 'en', 3, 'BFI: Film 2: Nosferatu (1922)', 'https://www.bfi.org.uk/resources-events-teachers/resources-teachers/gothic-classroom/film-2-nosferatu-1922');
