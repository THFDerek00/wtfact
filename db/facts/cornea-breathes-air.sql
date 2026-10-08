-- WTFact-Fakt „Deine Hornhaut hat keine Blutgefäße und holt sich Sauerstoff direkt aus der Luft“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('cornea-breathes-air', '2026-10-08T03:58:31+02:00', 'body', '👁️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cornea-breathes-air', 'de', 'hornhaut-atmet-luft',
  'Deine Hornhaut hat keine Blutgefäße und holt sich Sauerstoff direkt aus der Luft',
  'Ein Teil deines Körpers verzichtet komplett auf Blut, und du schaust gerade durch ihn hindurch.',
  'Die Hornhaut deines Auges hat keine Blutgefäße und nimmt fast ihren gesamten Sauerstoff direkt aus der Luft auf.',
  'Atme mal tief ein. Deine Lunge holt sich Sauerstoff, dein Blut verteilt ihn im Körper. Fast überall jedenfalls. **Ein Stück von dir lässt das Blut komplett links liegen und bedient sich direkt an der Luft: deine Hornhaut.**

## Durchsichtig heißt: keine Adern

Die Hornhaut ist die durchsichtige Struktur ganz vorne an deinem Auge. Laut StatPearls ist sie „avaskulär“, hat also keine Blutgefäße. Der Grund ist simpel: Sie muss glasklar sein, damit Licht sauber gebrochen wird. Adern mittendrin wären da ungefähr so hilfreich wie ein Kabelsalat vor einer Kameralinse. Africa Check bringt es auf den Punkt: Hätte die Hornhaut Blut, wären wir blind.

Aber auch Zellen ohne Adern brauchen Sauerstoff. Also nimmt die äußerste Schicht der Hornhaut ihn einfach aus der Umgebung auf. Nährstoffe bekommt sie aus der Tränenflüssigkeit und aus dem Kammerwasser, der klaren Flüssigkeit im Raum vor Iris und Linse.

## Fast der gesamte Sauerstoff kommt aus der Luft

Wie viel davon wirklich aus der Luft stammt, hat ein Forschungsteam 2023 mit einem winzigen Glasfaser-Sensor gemessen, vor allem an Mäusen. Ihr Fazit: Die Aufnahme aus der Atmosphäre deckt „praktisch den gesamten“ Sauerstoffverbrauch der Hornhaut. Nur am Rand liefern nahe Blutgefäße etwas zu, und das ist laut der Studie vernachlässigbar.

Genau deshalb ist Sauerstoff auch ein Thema bei Kontaktlinsen. Laut Africa Check verringert eine Linse die Sauerstoffzufuhr zur Hornhaut, die dann anschwillt. Wer Linsen über Nacht trägt, drückt die Menge noch weiter.

## Klein, aber extrem empfindlich

Keine Adern heißt übrigens nicht keine Nerven. Im Gegenteil: StatPearls nennt die menschliche Hornhaut das am dichtesten mit Nerven versorgte Gewebe des Körpers, mit einer Empfindlichkeit, die 300- bis 600-mal so hoch ist wie die der Haut.

> Der Augenforscher David Maurice stellte 1998 eine schräge Hypothese auf: Die schnellen Augenbewegungen im REM-Schlaf könnten vor allem dazu da sein, das Kammerwasser bei geschlossenen Lidern in Bewegung zu halten, damit die Hornhaut genug Sauerstoff bekommt. Er nannte sie die „Hypothese vom stehenden Kammerwasser“.

Du atmest also nicht nur mit der Lunge. Ein kleines bisschen atmest du auch mit den Augen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cornea-breathes-air', 'de', 1, 'Anatomisches Augenmodell zum Zerlegen', 'Augenmodell Anatomie zerlegbar', 'Ein zerlegbares Modell zeigt Hornhaut, Linse und Netzhaut zum Anfassen.'),
  ('cornea-breathes-air', 'de', 2, 'Sachbuch über die menschlichen Sinne', 'Sachbuch Sinne Mensch Wahrnehmung', 'Ein Sachbuch erklärt anschaulich, wie Sehen, Hören, Riechen und Tasten funktionieren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cornea-breathes-air', 'de', 1, 'StatPearls (NCBI Bookshelf): Corneal Reflex', 'https://www.ncbi.nlm.nih.gov/books/NBK534247/'),
  ('cornea-breathes-air', 'de', 2, 'Biosensors (PMC): Optic Fiber Microsensor Reveals Specific Spatiotemporal Oxygen Uptake Profiles at the Mammalian Ocular Surface', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC9954666/'),
  ('cornea-breathes-air', 'de', 3, 'Africa Check: Yes, the eye’s cornea doesn’t have blood and gets its oxygen from the air', 'https://africacheck.org/fact-checks/meta-programme-fact-checks/yes-eyes-cornea-doesnt-have-blood-and-gets-its-oxygen-air'),
  ('cornea-breathes-air', 'de', 4, 'Newswise: New Research Suggest REM is about Eyes not Dreams', 'https://www.newswise.com/articles/new-research-suggest-rem-is-about-eyes-not-dreams');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'cornea-breathes-air', 'en', 'cornea-breathes-air',
  'Your cornea has no blood vessels and takes its oxygen straight from the air',
  'One part of your body skips blood completely, and you''re looking through it right now.',
  'The cornea of your eye has no blood vessels and takes almost all of its oxygen directly from the air.',
  'Take a deep breath. Your lungs grab the oxygen, your blood ships it around your body. Almost everywhere, anyway. **One part of you skips the blood entirely and helps itself straight from the air: your cornea.**

## See-through means no blood vessels

The cornea is the clear structure at the very front of your eye. According to StatPearls, it is "avascular", meaning it has no blood vessels. The reason is simple: it has to stay crystal clear so light gets bent properly. Vessels running through it would be about as helpful as a tangle of cables in front of a camera lens. Africa Check sums it up: if the cornea contained blood, we would be blind.

But even cells without vessels need oxygen. So the outermost layer of the cornea simply absorbs it from the environment. Nutrients come from your tear fluid and from the aqueous humour, the clear liquid in the space in front of the iris and lens.

## Nearly all of its oxygen comes from the air

How much really comes from the air? In 2023, a research team measured it with a tiny optic fiber sensor, mostly in mice. Their conclusion: uptake from the atmosphere accounts for "virtually all" of the oxygen the cornea consumes. Only at the edge do nearby blood vessels chip in, and the study calls that contribution negligible.

That is exactly why oxygen comes up with contact lenses. According to Africa Check, a lens reduces the oxygen supply to the cornea, making it swell. Wearing lenses overnight cuts the amount down even further.

## Tiny, but ridiculously sensitive

No blood vessels doesn''t mean no nerves. Quite the opposite: StatPearls calls the human cornea the most richly innervated tissue in the body, with a sensitivity 300 to 600 times that of skin.

> In 1998, eye researcher David Maurice proposed an odd hypothesis: the rapid eye movements of REM sleep might mainly be there to keep the aqueous humour moving while your eyelids are shut, so the cornea gets enough oxygen. He called it the "stagnant aqueous humour hypothesis".

So you don''t just breathe with your lungs. In a tiny way, you breathe with your eyes too.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('cornea-breathes-air', 'en', 1, 'Anatomical eye model that comes apart', 'human eye anatomy model', 'A take-apart model lets you hold the cornea, lens and retina in your hand.'),
  ('cornea-breathes-air', 'en', 2, 'Popular science book about the human senses', 'book human senses perception popular science', 'A readable book on how seeing, hearing, smell and touch actually work.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('cornea-breathes-air', 'en', 1, 'StatPearls (NCBI Bookshelf): Corneal Reflex', 'https://www.ncbi.nlm.nih.gov/books/NBK534247/'),
  ('cornea-breathes-air', 'en', 2, 'Biosensors (PMC): Optic Fiber Microsensor Reveals Specific Spatiotemporal Oxygen Uptake Profiles at the Mammalian Ocular Surface', 'https://pmc.ncbi.nlm.nih.gov/articles/PMC9954666/'),
  ('cornea-breathes-air', 'en', 3, 'Africa Check: Yes, the eye’s cornea doesn’t have blood and gets its oxygen from the air', 'https://africacheck.org/fact-checks/meta-programme-fact-checks/yes-eyes-cornea-doesnt-have-blood-and-gets-its-oxygen-air'),
  ('cornea-breathes-air', 'en', 4, 'Newswise: New Research Suggest REM is about Eyes not Dreams', 'https://www.newswise.com/articles/new-research-suggest-rem-is-about-eyes-not-dreams');
