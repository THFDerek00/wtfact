-- WTFact-Fakt „Der längste Ortsname der Welt hat 85 Buchstaben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('longest-place-name-85-letters', '2026-10-22T10:00:00+02:00', 'places', '🪧', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'longest-place-name-85-letters', 'de', 'laengster-ortsname-85-buchstaben',
  'Der längste Ortsname der Welt hat 85 Buchstaben',
  'Ein Hügel in Neuseeland trägt eine komplette Geschichte als Namen. Mit Nasenflöte.',
  'Ein Hügel bei Porangahau in Neuseeland heißt Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu. Mit 85 Buchstaben gilt er als längster Ortsname der Welt.',
  'Manche Orte heißen „Au“. Andere brauchen etwas mehr Platz. Und dann gibt es einen Hügel in Neuseeland, dessen Name kaum auf ein Ortsschild passt.

## Ein Name wie ein Gedicht

Der Hügel liegt in der Nähe von Porangahau in der Region Hawke’s Bay auf der Nordinsel Neuseelands und ist rund 300 Meter hoch. Sein offizieller Name lautet: Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu.

Das sind 85 Buchstaben. Laut Atlas Obscura ist es der längste Ortsname der Welt und auch von Guinness World Records anerkannt. Es gibt sogar eine noch längere Variante mit 105 Buchstaben, offiziell ist aber die mit 85.

## Was er bedeutet

Der Name stammt aus der Sprache der Māori und erzählt eine kleine Geschichte. Frei übersetzt heißt er ungefähr: „Der Gipfel, auf dem Tamatea, der Mann mit den großen Knien, der Rutscher, Kletterer der Berge, der Landverschlinger, der umherreiste, seiner Geliebten auf der Nasenflöte vorspielte.“

Tamatea ist ein legendärer Entdecker der Māori. Der Name ist also eigentlich eine Erinnerung an ihn und an ein Liebeslied, festgehalten in einem einzigen Wort.

> Bonusfakt: Laut „TheJournal.ie“ ist das walisische Llanfairpwllgwyngyllgogerychwyrndrobwll-llantysiliogogogoch, oft als längster Ortsname Europas gefeiert, weltweit nur auf Platz zwei.

Für den Alltag gibt es zum Glück eine Kurzform. Sie hat laut „TheJournal.ie“ allerdings immer noch 57 Buchstaben. Am Hügel steht ein Schild mit dem vollen Namen, und laut Atlas Obscura ist der Ort längst eine Touristenattraktion für Geografie- und Wortfans aus aller Welt. Die meisten lassen sich vor dem Schild fotografieren und versuchen, den Namen vorzulesen.

Wer das ohne Luftholen schafft, darf sich ruhig ein bisschen wie Tamatea fühlen. Nasenflöte optional.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('longest-place-name-85-letters', 'de', 1, 'Reiseführer Neuseeland', 'Reiseführer Neuseeland', 'Alles für den Trip ans andere Ende der Welt, inklusive Hügel mit langem Namen.'),
  ('longest-place-name-85-letters', 'de', 2, 'Buch über Ortsnamen und ihre Bedeutung', 'Buch Ortsnamen Herkunft Bedeutung', 'Erklärt, woher Städte und Dörfer ihre Namen haben.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('longest-place-name-85-letters', 'de', 1, 'Atlas Obscura: The Longest Place Name In The World', 'https://atlasobscura.com/places/longest-place-name'),
  ('longest-place-name-85-letters', 'de', 2, 'TheJournal.ie: Llanfairpwllgwyngyllgogerychwyrndrobwll-llantysiliogogogoch is only the second-longest place name in the world', 'https://www.thejournal.ie/article.php?id=2351662');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'longest-place-name-85-letters', 'en', 'longest-place-name-85-letters',
  'The longest place name in the world has 85 letters',
  'A hill in New Zealand has an entire story for a name. Nose flute included.',
  'A hill near Porangahau in New Zealand is called Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu. At 85 letters, it’s considered the longest place name in the world.',
  'Some places are called "Ely". Others need a bit more room. And then there’s a hill in New Zealand whose name barely fits on a sign.

## A name like a poem

The hill is near Porangahau in the Hawke’s Bay region on New Zealand’s North Island and stands about 300 meters (1,000 feet) tall. Its official name is: Taumatawhakatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu.

That’s 85 letters. According to Atlas Obscura, it’s the longest place name in the world and is also recognized by Guinness World Records. There’s even a longer version with 105 letters, but the official one has 85.

## What it means

The name comes from the Māori language and tells a little story. Translated, it means roughly: "The summit where Tamatea, the man with the big knees, the slider, climber of mountains, the land-swallower who travelled about, played his nose flute to his loved one."

Tamatea is a legendary Māori explorer. So the name is really a tribute to him and to a love song, captured in a single word.

> Bonus fact: According to TheJournal.ie, the Welsh Llanfairpwllgwyngyllgogerychwyrndrobwll-llantysiliogogogoch, often celebrated as Europe’s longest place name, only comes second worldwide.

For everyday use, there’s a short form, thankfully. According to TheJournal.ie, it still has 57 letters, though. A sign at the hill shows the full name, and according to Atlas Obscura, the spot has become a tourist attraction for geography and word nerds from across the globe. Most pose in front of the sign and try to read the name out loud.

Anyone who manages that in one breath can feel a bit like Tamatea. Nose flute optional.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('longest-place-name-85-letters', 'en', 1, 'New Zealand travel guide', 'New Zealand travel guide', 'Everything for a trip to the other side of the world, hill with a long name included.'),
  ('longest-place-name-85-letters', 'en', 2, 'Book about place names and their meaning', 'book place names origins meanings', 'Explains where towns and villages got their names.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('longest-place-name-85-letters', 'en', 1, 'Atlas Obscura: The Longest Place Name In The World', 'https://atlasobscura.com/places/longest-place-name'),
  ('longest-place-name-85-letters', 'en', 2, 'TheJournal.ie: Llanfairpwllgwyngyllgogerychwyrndrobwll-llantysiliogogogoch is only the second-longest place name in the world', 'https://www.thejournal.ie/article.php?id=2351662');
