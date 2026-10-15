-- WTFact-Fakt „Warum bei der Schlafparalyse etwas auf deiner Brust zu sitzen scheint“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('sleep-paralysis-nightmare', NULL, 'horror', '🌙', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sleep-paralysis-nightmare', 'de', 'schlafparalyse-nachtmahr',
  'Warum bei der Schlafparalyse etwas auf deiner Brust zu sitzen scheint',
  'Wach, aber bewegungsunfähig, und im Zimmer ist jemand. Hinter dem Nachtmahr steckt ein Fehler beim Aufwachen.',
  'Bei einer Schlafparalyse ist das Gehirn schon wach, der Körper aber noch in der Muskelstarre des Traumschlafs, und genau dann sehen manche Menschen eine Gestalt auf ihrer Brust.',
  'Du wachst nachts auf, die Augen sind offen, aber du kannst keinen Finger rühren. Auf deiner Brust drückt etwas. Und in der Zimmerecke steht jemand. **Was klingt wie der Anfang eines Horrorfilms, hat einen Namen: Schlafparalyse.**

## Wach im falschen Moment

Im REM-Schlaf, der Phase mit den lebhaftesten Träumen, ist deine Muskulatur fast komplett gelähmt. Das ist praktisch, denn so spielst du deine Träume nicht im Bett nach. Manchmal wacht das Bewusstsein aber auf, bevor diese Starre vorbei ist. Dann bist du wach und kannst dich trotzdem nicht bewegen.

Laut der Sleep Foundation dauert so eine Episode meist ein paar Sekunden bis wenige Minuten. Viele Fachleute vermuten, dass dabei Traumbilder in den Wachzustand hineinrutschen. Bis zu 75 Prozent der Episoden gehen mit Halluzinationen einher.

## Der Besucher auf der Brust

Besonders typisch sind zwei Varianten. Beim „Eindringling“ spürt oder sieht man eine bedrohliche Gestalt im Raum. Beim „Inkubus“ fühlt es sich an, als säße jemand auf der Brust. Eine mögliche Erklärung: Im REM-Schlaf atmest du flacher, und wer das plötzlich bewusst merkt, empfindet es als Druck.

Kein Wunder, dass fast jede Kultur eine Figur dafür hat. Im mittelalterlichen Europa war es der Nachtmahr, der sich auf Schlafende setzte. In Neufundland spricht man von der „Old Hag“, in Brasilien von der Pisadeira, in Japan von Kanashibari.

## Ein Gemälde als Gänsehaut-Klassiker

1781 malte Johann Heinrich Füssli „Der Nachtmahr“. Darauf hockt ein dämonisches Wesen auf der Brust einer schlafenden Frau, hinter dem Vorhang lugt ein Pferdekopf hervor. 1782 wurde das Bild an der Royal Academy in London gezeigt und wurde Füsslis erster großer Erfolg. Heute hängt es im Detroit Institute of Arts.

> Ein Kupferstich des Bilds hing in den 1920er-Jahren in Sigmund Freuds Wiener Wohnung.

Und wie häufig ist das Ganze? Eine Übersichtsarbeit mit 35 Studien kam auf 7,6 Prozent in der Allgemeinbevölkerung und 28,3 Prozent bei Studierenden, die es mindestens einmal erlebt haben. Über alle Studien hinweg waren es rund 20 Prozent.

Der Dämon auf der Brust ist also ziemlich verbreitet. Er hat nur das schlechteste Timing der Welt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sleep-paralysis-nightmare', 'de', 1, 'Kunstdruck „Der Nachtmahr“ von Füssli', 'Füssli Nachtmahr Kunstdruck Poster', 'Der Gothic-Klassiker als Poster. Für alle, die ihre Wand gern ein bisschen unheimlich mögen.'),
  ('sleep-paralysis-nightmare', 'de', 2, 'Sachbuch über Schlaf und Träume', 'Sachbuch Schlaf Träume Wissenschaft', 'Erklärt verständlich, was dein Gehirn nachts treibt, von REM-Phasen bis zu Klarträumen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sleep-paralysis-nightmare', 'de', 1, 'Sleep Foundation: Sleep Paralysis Demon', 'https://www.sleepfoundation.org/parasomnias/sleep-demon'),
  ('sleep-paralysis-nightmare', 'de', 2, 'PMC: Lifetime Prevalence Rates of Sleep Paralysis: A Systematic Review', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC3156892/'),
  ('sleep-paralysis-nightmare', 'de', 3, 'Detroit Institute of Arts: The Nightmare', 'https://dia.org/collection/nightmare-45573'),
  ('sleep-paralysis-nightmare', 'de', 4, 'Wikipedia: The Nightmare', 'https://en.wikipedia.org/wiki/The_Nightmare');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sleep-paralysis-nightmare', 'en', 'sleep-paralysis-night-hag',
  'Why sleep paralysis can feel like something is sitting on your chest',
  'Awake, unable to move, and someone is in the room. Behind the night hag is a glitch in waking up.',
  'In sleep paralysis, the brain is already awake while the body is still locked in dream-sleep paralysis, and that''s when some people see a figure on their chest.',
  'You wake up at night, eyes open, but you can''t move a finger. Something is pressing down on your chest. And someone is standing in the corner of the room. **It sounds like the opening of a horror movie, but it has a name: sleep paralysis.**

## Awake at the wrong moment

During REM sleep, the phase with the most vivid dreams, your muscles are almost completely paralyzed. That''s useful, because it stops you from acting out your dreams in bed. Sometimes, though, your mind wakes up before that paralysis wears off. Then you''re awake and still can''t move.

According to the Sleep Foundation, an episode usually lasts from a few seconds to a couple of minutes. Many experts think dream imagery spills over into the waking state. Up to 75 percent of episodes come with hallucinations.

## The visitor on your chest

Two versions are especially common. In the "intruder" type, you sense or see a menacing figure in the room. In the "incubus" type, it feels like someone is sitting on your chest. One possible explanation: breathing gets shallower in REM sleep, and if you suddenly notice that, it feels like pressure.

No wonder almost every culture has a character for it. Medieval Europe had the night-mare, a being that sat on sleepers. Newfoundland talks about the "Old Hag", Brazil about the Pisadeira, Japan about kanashibari.

## A painting made of goosebumps

In 1781, Henry Fuseli painted "The Nightmare". A demonic creature crouches on the chest of a sleeping woman while a horse''s head peers out from behind a curtain. In 1782 it was shown at the Royal Academy in London and became Fuseli''s first big success. Today it hangs in the Detroit Institute of Arts.

> In the 1920s, an engraving of the painting hung in Sigmund Freud''s apartment in Vienna.

So how common is it? A review of 35 studies found that 7.6 percent of the general population and 28.3 percent of students have experienced it at least once. Across all studies, it was about 20 percent.

So the demon on your chest is pretty common. It just has the worst timing in the world.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sleep-paralysis-nightmare', 'en', 1, 'Fuseli "The Nightmare" art print', 'Fuseli The Nightmare art print poster', 'The Gothic classic as a poster. For anyone who likes their walls a little eerie.'),
  ('sleep-paralysis-nightmare', 'en', 2, 'Sleep Paralysis by Shelley Adler', 'Sleep Paralysis Night-mares Nocebos Shelley Adler', 'A medical anthropologist digs into night-mare legends from around the world and what science says about them.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sleep-paralysis-nightmare', 'en', 1, 'Sleep Foundation: Sleep Paralysis Demon', 'https://www.sleepfoundation.org/parasomnias/sleep-demon'),
  ('sleep-paralysis-nightmare', 'en', 2, 'PMC: Lifetime Prevalence Rates of Sleep Paralysis: A Systematic Review', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC3156892/'),
  ('sleep-paralysis-nightmare', 'en', 3, 'Detroit Institute of Arts: The Nightmare', 'https://dia.org/collection/nightmare-45573'),
  ('sleep-paralysis-nightmare', 'en', 4, 'Wikipedia: The Nightmare', 'https://en.wikipedia.org/wiki/The_Nightmare');
