-- WTFact-Fakt „1931 wurde nachts ein zweiter Dracula in denselben Kulissen gedreht, und manche Kritiker finden ihn besser“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('spanish-dracula-night-shift', '2026-10-31T08:00:00+01:00', 'horror', '🦇', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'spanish-dracula-night-shift', 'de', 'spanischer-dracula-nachtschicht',
  '1931 wurde nachts ein zweiter Dracula in denselben Kulissen gedreht, und manche Kritiker finden ihn besser',
  'Während die Crew von Tod Browning schlief, übernahm eine komplett andere Besetzung Draculas Schloss und drehte den ganzen Film noch einmal auf Spanisch.',
  '1931 drehte Universal nachts einen spanischsprachigen Dracula, in genau den Kulissen, die das englische Team tagsüber benutzt hatte, mit anderer Besetzung und anderem Regisseur.',
  'Den klassischen Schwarz-Weiß-Dracula von Universal kennst du wahrscheinlich. Was kaum jemand weiß: Das Schloss hatte eine Nachtschicht. Sobald das englische Team Feierabend machte, zog ein zweiter Dracula ein.

## Gleiches Schloss, anderer Vampir

1931 drehte Universal eine zweite Fassung für das spanischsprachige Publikum. Laut der Library of Congress filmte Tod Browning den englischen Dracula tagsüber, und das Team von George Melford nutzte nachts dieselben Kulissen.

NPR beschreibt, wie nach Einbruch der Dunkelheit eine neue Besetzung samt Crew anrückte, um jede Szene auf Spanisch neu zu drehen. Schauspielerin Lupita Tovar, die die Heldin Eva spielte, erinnerte sich: Sie nutzten genau dieselben Kulissen und trafen sogar dieselben Markierungen auf dem Boden wie die englischen Schauspieler. Den Grafen mit Umhang spielte Carlos Villarías.

Der Regisseur hatte ein kleines Problem: Melford sprach kein Spanisch. Seine Anweisungen mussten übersetzt werden, und Co-Regisseur Enrique Tovar Ávalos half ihm bei der Verständigung mit dem Ensemble.

## Die Nachtschicht hatte Ehrgeiz

Eine billige Kopie wollte das spanische Team nicht sein. Tovar sagte zu NPR: „Wir wollten, dass unsere Version die beste wird.“ Der Essay der Library of Congress lobt Melfords raffiniertere Kamerafahrten und seinen Blick für die Bildgestaltung. Die spanische Fassung ist außerdem gewagter, mit mehr Erotik und Nahaufnahmen der Vampirbisse, und sie läuft fast 30 Minuten länger als Brownings Film.

Manche Kritiker halten den Drácula der Nachtschicht für den besseren der beiden. 2015 wurde er ins National Film Registry aufgenommen, das von der Library of Congress geführt wird.

> Bonusfakt: Laut der Library of Congress war die spanische Fassung ein paar Tage vor dem englischen Original fertig, obwohl sie nur einen kleinen Teil des Budgets bekam.

Draculas Schloss erwachte also wirklich erst nach Sonnenuntergang zum Leben. Nur etwas anders, als der Roman es sich vorgestellt hatte.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('spanish-dracula-night-shift', 'de', 1, 'Dracula von Bram Stoker (illustrierte Ausgabe)', 'Dracula Bram Stoker illustrierte Ausgabe gebunden', 'Der Roman von 1897, mit dem alles anfing, ideal zum Lesen bei Kerzenlicht.'),
  ('spanish-dracula-night-shift', 'de', 2, 'Gothic-Kerzenhalter mit Fledermaus', 'Gothic Kerzenhalter Fledermaus', 'Gruselige kleine Deko für einen Horrorfilmabend.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('spanish-dracula-night-shift', 'de', 1, 'NPR: ''Dracula'' in Spanish finds new blood after 91 years', 'https://www.npr.org/2022/09/19/1122120454/spanish-dracula-finds-new-blood-more-than-90-years-after-its-release'),
  ('spanish-dracula-night-shift', 'de', 2, 'Library of Congress, Now See Hear!: From the National Film Registry: "Drácula" (1931)', 'https://blogs.loc.gov/now-see-hear/2022/10/from-the-national-film-registry-drcula-1931/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'spanish-dracula-night-shift', 'en', 'spanish-dracula-night-shift',
  'In 1931, a second Dracula was filmed at night on the same sets, and some critics like it better',
  'While Tod Browning''s crew slept, a completely different cast took over Castle Dracula and shot the whole film again in Spanish.',
  'In 1931, Universal filmed a Spanish-language Dracula at night on the very same sets the English crew had used during the day, with a different cast and director.',
  'You probably know the classic black-and-white Dracula from Universal. What most people don''t know: the castle had a night shift. Once the English crew went home, a second Dracula moved in.

## Same castle, different vampire

In 1931, Universal shot a second version for Spanish-speaking audiences. According to the Library of Congress, Tod Browning filmed the English Dracula during the day, and George Melford''s crew used the same sets at night.

NPR describes how a new cast and crew arrived after dark to redo every scene in Spanish. Actress Lupita Tovar, who played the heroine Eva, remembered that they used exactly the same sets and even hit the same marks as the English actors. The caped count was played by Carlos Villarías.

The director had one small problem: Melford didn''t speak Spanish. His directions had to be translated, and co-director Enrique Tovar Ávalos helped him communicate with the cast.

## The night shift had ambitions

The Spanish crew wasn''t content to be a cheap copy. Tovar told NPR: "We wanted our version to be the best." The Library of Congress essay credits Melford with more sophisticated camera movements and a stronger eye for the look of each scene. The Spanish version is also bolder, with more eroticism and close-ups of the vampire''s bites, and it runs almost 30 minutes longer than Browning''s film.

Some critics consider the night-shift Drácula the better of the two. In 2015, it was added to the National Film Registry, run by the Library of Congress.

> Bonus fact: According to the Library of Congress, the Spanish version was finished a few days before the English original was ready, even though it only got a small part of the budget.

So Castle Dracula really did come alive after sunset. Just not quite the way the novel imagined.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('spanish-dracula-night-shift', 'en', 1, 'Dracula by Bram Stoker (illustrated edition)', 'Dracula Bram Stoker illustrated hardcover', 'The 1897 novel that started it all, nice to read by candlelight.'),
  ('spanish-dracula-night-shift', 'en', 2, 'Gothic bat candle holder', 'gothic bat candle holder', 'A spooky little piece of decor for a horror movie night.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('spanish-dracula-night-shift', 'en', 1, 'NPR: ''Dracula'' in Spanish finds new blood after 91 years', 'https://www.npr.org/2022/09/19/1122120454/spanish-dracula-finds-new-blood-more-than-90-years-after-its-release'),
  ('spanish-dracula-night-shift', 'en', 2, 'Library of Congress, Now See Hear!: From the National Film Registry: "Drácula" (1931)', 'https://blogs.loc.gov/now-see-hear/2022/10/from-the-national-film-registry-drcula-1931/');
