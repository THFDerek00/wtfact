-- WTFact-Fakt „Durstige Tomatenpflanzen klicken Dutzende Male pro Stunde, nur zu hoch für deine Ohren“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('stressed-plants-ultrasonic-clicks', '2026-10-22T16:00:00+02:00', 'nature', '🍅', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stressed-plants-ultrasonic-clicks', 'de', 'gestresste-pflanzen-klicken-ultraschall',
  'Durstige Tomatenpflanzen klicken Dutzende Male pro Stunde, nur zu hoch für deine Ohren',
  'Pflanzen haben keine Stimmbänder, aber unter Stress machen sie Knackgeräusche, die Ultraschallmikrofone auffangen.',
  'Forschende der Universität Tel Aviv haben Tomaten- und Tabakpflanzen aufgenommen, die ausgetrocknet oder angeschnitten etwa 30 bis 50 Ultraschall-Klicks pro Stunde bei 40 bis 80 Kilohertz von sich gaben.',
  'Pflanzen haben keinen Mund, keine Lunge und keine Stimmbänder. Trotzdem machen sie Geräusche, wenn es ihnen schlecht geht. Ein Team der Universität Tel Aviv hat das aufgenommen, und es klingt ein bisschen wie platzendes Popcorn.

## Ein stiller Keller und sehr gute Mikrofone

Die Forschenden stellten Ultraschallmikrofone etwa 10 Zentimeter neben Tomaten- und Tabakpflanzen, zuerst in einer Akustikbox in einem ruhigen, abgeschotteten Keller. Manche Pflanzen bekamen fünf Tage lang kein Wasser, bei manchen wurde der Stängel durchgeschnitten, andere blieben in Ruhe.

Der Unterschied war deutlich. Pflanzen ohne Stress gaben im Schnitt weniger als ein Geräusch pro Stunde von sich. Eine einzelne gestresste Pflanze machte laut Sci.News etwa 30 bis 50 Klicks pro Stunde, bei Frequenzen von 40 bis 80 Kilohertz. Erwachsene Menschen hören bis etwa 16 Kilohertz. Für dich bleibt der Raum also still, obwohl die Klicks ungefähr so laut sind wie menschliche Sprache.

## Jede Pflanze klingt anders

Algorithmen für maschinelles Lernen konnten allein anhand der Aufnahmen erkennen, welche Pflanze das Geräusch machte und ob sie ausgetrocknet oder angeschnitten war. Das klappte sogar in einem lauten Gewächshaus. Das Team nahm auch andere Arten auf, darunter Weizen, Mais, Kaktus und Stängelumfassende Taubnessel. Die Studie erschien 2023 im Fachjournal Cell.

Woher das Geräusch kommt, ist noch nicht geklärt. Die Autoren vermuten, dass Luftblasen im Leitgewebe der Pflanze entstehen und platzen, ein Vorgang namens Kavitation.

> Bonusfakt: Laut Universität Tel Aviv könnten Fledermäuse, Mäuse und Insekten diese Klicks wahrscheinlich hören, vielleicht sogar andere Pflanzen.

Studienleiterin Lilach Hadany fasste es so zusammen: „Offenbar kann eine idyllische Blumenwiese ein ziemlich lauter Ort sein.“ Deine Zimmerpflanze auf der Fensterbank ist vielleicht weniger still, als sie aussieht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stressed-plants-ultrasonic-clicks', 'de', 1, 'Selbstbewässernder Blumentopf', 'selbstbewässernder Blumentopf', 'Hält die Erde tagelang feucht, praktisch für vergessliche Pflanzenfans.'),
  ('stressed-plants-ultrasonic-clicks', 'de', 2, 'Fledermaus-Detektor', 'Fledermaus Detektor Ultraschall', 'Macht Ultraschall hörbar, ideal für Abendspaziergänge.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stressed-plants-ultrasonic-clicks', 'de', 1, 'Sci.News: Plants Emit Ultrasonic Sounds When Stressed, Groundbreaking Study Shows', 'https://www.sci.news/biology/plant-ultrasonic-sounds-11794.html'),
  ('stressed-plants-ultrasonic-clicks', 'de', 2, 'Tel Aviv University: Plants Emit Sounds – Especially When Stressed', 'https://english.tau.ac.il/plants_emit_sounds'),
  ('stressed-plants-ultrasonic-clicks', 'de', 3, 'SolarDaily: Global breakthrough: Plants emit sounds', 'https://www.solardaily.com/reports/Global_breakthrough_Plants_emit_sounds_999.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stressed-plants-ultrasonic-clicks', 'en', 'stressed-plants-click-ultrasound',
  'Thirsty tomato plants click dozens of times an hour, just too high for you to hear',
  'Plants have no vocal cords, but under stress they make popping sounds that ultrasonic microphones can pick up.',
  'Researchers at Tel Aviv University recorded tomato and tobacco plants that, when dried out or cut, emitted around 30 to 50 ultrasonic clicks per hour at 40 to 80 kilohertz.',
  'Plants don''t have mouths, lungs or vocal cords. They still make noise when things go badly. A team at Tel Aviv University recorded it, and the result sounds a bit like popcorn popping.

## A quiet basement and some very good microphones

The researchers placed ultrasonic microphones about 10 centimeters from tomato and tobacco plants, first in an acoustic box in a quiet, isolated basement. Some plants went five days without water, some had their stems cut, and some were left alone.

The difference was clear. Unstressed plants emitted fewer than one sound per hour on average. A single stressed plant, according to Sci.News, made around 30 to 50 clicks per hour at frequencies of 40 to 80 kilohertz. Adult humans hear up to about 16 kilohertz, so to you the room stays silent, even though the clicks are about as loud as human speech.

## Every plant has its own sound

Machine learning algorithms could tell from the recordings alone which plant was making the sound and whether it was dehydrated or cut. That even worked in a noisy greenhouse. The team also recorded other species, including wheat, corn, cactus and henbit. The study appeared in the journal Cell in 2023.

Where does the sound come from? That isn''t settled yet. The authors suggest it might be air bubbles forming and bursting in the plant''s vascular system, a process called cavitation.

> Bonus fact: According to Tel Aviv University, bats, mice and insects could probably hear these clicks, and maybe even other plants.

Study leader Lilach Hadany summed it up: "Apparently, an idyllic field of flowers can be a rather noisy place." Your houseplant on the windowsill might be less quiet than it looks.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stressed-plants-ultrasonic-clicks', 'en', 1, 'Self-watering plant pot', 'self watering plant pot', 'Keeps the soil moist for days, handy for forgetful plant owners.'),
  ('stressed-plants-ultrasonic-clicks', 'en', 2, 'Bat detector', 'ultrasonic bat detector', 'Turns ultrasound into sounds you can hear, great for evening walks.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stressed-plants-ultrasonic-clicks', 'en', 1, 'Sci.News: Plants Emit Ultrasonic Sounds When Stressed, Groundbreaking Study Shows', 'https://www.sci.news/biology/plant-ultrasonic-sounds-11794.html'),
  ('stressed-plants-ultrasonic-clicks', 'en', 2, 'Tel Aviv University: Plants Emit Sounds – Especially When Stressed', 'https://english.tau.ac.il/plants_emit_sounds'),
  ('stressed-plants-ultrasonic-clicks', 'en', 3, 'SolarDaily: Global breakthrough: Plants emit sounds', 'https://www.solardaily.com/reports/Global_breakthrough_Plants_emit_sounds_999.html');
