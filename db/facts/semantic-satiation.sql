-- WTFact-Fakt „Sag ein Wort oft genug und es wird zu Geräusch: Ein Psychologe gab dem 1962 einen Namen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('semantic-satiation', '2026-10-31T12:00:00+01:00', 'mind', '🔁', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'semantic-satiation', 'de', 'warum-woerter-ihre-bedeutung-verlieren',
  'Sag ein Wort oft genug und es wird zu Geräusch: Ein Psychologe gab dem 1962 einen Namen',
  'Sag eine Weile laut „Löffel“, und irgendwann klingt das Wort wie von einem anderen Planeten. Dafür gibt es einen Fachbegriff.',
  'Wenn du ein Wort immer wieder wiederholst, verliert es kurz seine Bedeutung und klingt fremd. Der Psychologe Leon James nannte das 1962 in seiner Doktorarbeit an der McGill University „semantische Sättigung“.',
  'Probier''s aus: Sag laut „Löffel“, immer wieder. Löffel, Löffel, Löffel. Irgendwann ist das Wort kein Ding mehr aus deiner Küche, sondern ein seltsames Geräusch aus deinem Mund. Mit dir ist alles in Ordnung. Dein Gehirn langweilt sich nur.

## Ein Name aus dem Jahr 1962

Der Effekt heißt semantische Sättigung (englisch „semantic satiation“). Laut Mental Floss und Science ABC prägte Leon Jakobovits James den Begriff 1962. Er schrieb seine Doktorarbeit darüber an der McGill University und wurde später Psychologieprofessor an der University of Hawaii. Seine Fakultätsseite dort bestätigt das: Doktor in Psychologie, McGill, 1962, Thema der Dissertation: semantische Sättigung.

Aufgefallen war das Phänomen schon viel früher. Mental Floss zitiert eine Beschreibung aus dem American Journal of Psychology von 1907: Ein gedrucktes Wort, das man eine Weile anstarrt, wirkt plötzlich „merkwürdig fremd und ausländisch“. Science ABC schreibt diese frühe visuelle Variante Elizabeth Severance und Margaret Floy Washburn zu.

## Warum dein Gehirn abschaltet

James erklärte den Effekt mit der sogenannten reaktiven Hemmung. Science ABC formuliert es so: Wird dieselbe neuronale Repräsentation kurz hintereinander immer wieder aktiviert, sinkt ihre Ansprechbarkeit für einen Moment. Das Netzwerk, das den Klang eines Wortes mit seiner Bedeutung verbindet, ermüdet. Der Klang ist noch da, die Bedeutung ist kurz weg.

James fand das gleiche Muster auch anderswo. Er verwies auf eine frühe Studie, in der eine schlafende Katze bei einem wiederholten Ton jedes Mal langsamer aufwachte, aber sofort reagierte, sobald sich der Ton leicht veränderte. Er schaute sich sogar Popcharts an: Songs, die am schnellsten aufstiegen, flogen auch am schnellsten wieder raus, langsame Aufsteiger verschwanden langsam.

> Bonusfakt: Margaret Floy Washburn, die 1907 die visuelle Variante beschrieb, war laut Science ABC die erste Frau in den USA mit einem Doktortitel in Psychologie.

Die gute Nachricht: Der Effekt hält nur kurz an. Gönn deinem Kopf eine kleine Pause, dann ist der Löffel wieder ein Löffel.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('semantic-satiation', 'de', 1, 'Zungenbrecher-Kartenspiel', 'Zungenbrecher Kartenspiel', 'Schneller, alberner Partyspaß, der Mund und Gehirn auf die Probe stellt.'),
  ('semantic-satiation', 'de', 2, 'Sachbuch über Sprache und Gehirn', 'Sachbuch Sprache Gehirn Psychologie', 'Leicht lesbar erklärt, wie dein Gehirn aus Lauten Bedeutung macht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('semantic-satiation', 'de', 1, 'Mental Floss: Semantic Satiation: Why Words Sometimes Sound Weird or Lose All Meaning', 'https://www.mentalfloss.com/article/71855/why-does-word-sometimes-lose-all-meaning'),
  ('semantic-satiation', 'de', 2, 'Science ABC: Semantic Satiation: Why Do Words Sound Weird When Repeated Multiple Times?', 'https://www.scienceabc.com/eyeopeners/semantic-satiation-why-does-a-word-sound-weird-when-repeated-multiple-times.html'),
  ('semantic-satiation', 'de', 3, 'University of Hawaiʻi at Mānoa, Psychology: Leon James – Psychology (PSY)', 'https://psychology.manoa.hawaii.edu/leon-james/'),
  ('semantic-satiation', 'de', 4, 'McGill eScholarship: Effects of Repeated Stimulation on Cognitive Aspects of Behavior: Some Experiments on the Phenomenon of Semantic Satiation', 'https://escholarship.mcgill.ca/downloads/02871064n');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'semantic-satiation', 'en', 'why-repeated-words-lose-meaning',
  'Say a word often enough and it turns into noise: a psychologist named this in 1962',
  'Repeat "spoon" out loud for a while and it starts to sound like a word from another planet. There''s a name for that.',
  'When you repeat a word over and over, it briefly loses its meaning and sounds strange, an effect psychologist Leon James named "semantic satiation" in his 1962 doctoral thesis at McGill University.',
  'Try it: say "spoon" out loud, again and again. Spoon, spoon, spoon. At some point the word stops being a thing in your kitchen and turns into an odd mouth noise. You''re not broken. Your brain just got bored.

## A name from 1962

The effect is called semantic satiation. According to Mental Floss and Science ABC, the term was coined in 1962 by Leon Jakobovits James, who wrote his doctoral thesis on it at McGill University and later became a psychology professor at the University of Hawaii. His faculty page there confirms it: PhD in psychology, McGill, 1962, dissertation topic semantic satiation.

People had noticed the weirdness long before. Mental Floss quotes a description from The American Journal of Psychology in 1907: a printed word, looked at steadily for a while, takes on "a curiously strange and foreign aspect." Science ABC credits that early visual version to Elizabeth Severance and Margaret Floy Washburn.

## Why your brain tunes out

James explained it with an idea called reactive inhibition. Science ABC puts it like this: when the same neural representation is activated again and again in quick succession, its responsiveness briefly drops. The network linking the sound of a word to its meaning gets tired, so the sound is still there while the meaning goes missing.

James found the same pattern elsewhere. He cited an early study in which a sleeping cat woke up more slowly each time a tone was repeated, but reacted immediately once the tone changed slightly. He even looked at pop charts: songs that shot up the fastest also dropped out the fastest, while slow climbers faded slowly.

> Bonus fact: Margaret Floy Washburn, who described the visual version in 1907, is described by Science ABC as the first woman in the United States to earn a PhD in psychology.

The good news: the effect is only temporary. Give your brain a short break, and spoon will be spoon again.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('semantic-satiation', 'en', 1, 'Tongue twister card game', 'tongue twister card game', 'Fast, silly party fun that puts your mouth and brain to the test.'),
  ('semantic-satiation', 'en', 2, 'Book on the psychology of language', 'psychology of language popular science book', 'An easy read about how your brain turns sounds into meaning.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('semantic-satiation', 'en', 1, 'Mental Floss: Semantic Satiation: Why Words Sometimes Sound Weird or Lose All Meaning', 'https://www.mentalfloss.com/article/71855/why-does-word-sometimes-lose-all-meaning'),
  ('semantic-satiation', 'en', 2, 'Science ABC: Semantic Satiation: Why Do Words Sound Weird When Repeated Multiple Times?', 'https://www.scienceabc.com/eyeopeners/semantic-satiation-why-does-a-word-sound-weird-when-repeated-multiple-times.html'),
  ('semantic-satiation', 'en', 3, 'University of Hawaiʻi at Mānoa, Psychology: Leon James – Psychology (PSY)', 'https://psychology.manoa.hawaii.edu/leon-james/'),
  ('semantic-satiation', 'en', 4, 'McGill eScholarship: Effects of Repeated Stimulation on Cognitive Aspects of Behavior: Some Experiments on the Phenomenon of Semantic Satiation', 'https://escholarship.mcgill.ca/downloads/02871064n');
