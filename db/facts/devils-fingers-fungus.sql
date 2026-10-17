-- WTFact-Fakt „Dieser Pilz schlüpft aus einem Ei und bekommt rote Tentakel, die nach verwestem Fleisch riechen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('devils-fingers-fungus', '2026-10-18T08:00:00+02:00', 'horror', '🍄', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'devils-fingers-fungus', 'de', 'pilz-schluepft-mit-roten-tentakeln',
  'Dieser Pilz schlüpft aus einem Ei und bekommt rote Tentakel, die nach verwestem Fleisch riechen',
  'Der Tintenfischpilz sieht aus wie ein kleiner Krake, der aus dem Waldboden kriecht, und er riecht noch schlimmer, als er aussieht.',
  'Der Tintenfischpilz (Clathrus archeri) beginnt als schleimiges „Ei“ im Boden, dann schiebt er leuchtend rote Arme heraus, die mit einem Schleim überzogen sind, der nach verwestem Fleisch riecht und Fliegen anlockt, die seine Sporen wegtragen.',
  'Stell dir einen Waldspaziergang im Sommer vor. Zwischen dem Laub liegt eine blasse, weiche Kugel, nur etwa 2 bis 3 Zentimeter groß. Etwas später sind rote Tentakel aus ihr herausgebrochen. Sie biegen sich nach hinten wie bei einem Seestern, und in der Luft hängt ein Geruch, als wäre hier etwas gestorben.

Das ist kein Alien. Das ist ein Pilz: der Tintenfischpilz, auf Englisch „Devil''s fingers“, also Teufelsfinger, wissenschaftlich Clathrus archeri.

## Geschlüpft aus einem Schleim-Ei

Die meiste Zeit lebt der Pilz versteckt als Geflecht aus Fäden im Boden. Wenn er sich zeigen will, bildet er ein „Ei“: eine weiche, gallertartige Kugel. Laut Live Science gibt ihre Haut nach, wenn man mit dem Finger drückt. Nach Angaben der Nationalparkbehörde des New Forest in England hängt das Ei mit einem dicken Strang am unterirdischen Geflecht und kann mehrere Wochen warten, bis die Bedingungen passen.

Dann schlüpft er. Die roten Arme schieben sich heraus, zuerst noch an den Spitzen verbunden. Dann lösen sie sich und biegen sich zu einem Stern auseinander. Meist sind es mindestens 3 oder 4, manchmal 7 oder 8, Live Science berichtet sogar von bis zu 12. Das Ganze ist laut The Wildlife Trusts nur etwa 5 Zentimeter hoch, die Arme werden bis zu etwa 7 Zentimeter lang.

## Der Gestank ist der ganze Trick

Die Arme sind mit einer schleimigen Schicht überzogen, der Gleba, in der die Sporen stecken. Sie riecht nach verwestem Fleisch. Die Pilzkundler David Arora und William R. Burk beschrieben den Geruch laut Live Science als „wie verrottende Krabbe“.

Eklig, aber clever. Der Geruch lockt Fliegen an, und die New-Forest-Behörde zählt auch Käfer und Schnecken zu den Gästen. Der Schleim bleibt an ihnen kleben, und sie tragen die Sporen an neue Orte. Für einen Pilz ist das ungewöhnlich, und so hat sich der Tintenfischpilz in weniger als 20 Jahren über den ganzen New Forest ausgebreitet.

> Bonusfakt: Eigentlich ist der Tintenfischpilz gar nicht europäisch. Er stammt aus Australien und Neuseeland, in Teilen der USA heißt er „Octopus Fungus“, also Krakenpilz. Nach Europa kam er vermutlich um 1914, möglicherweise mit Kriegsnachschub oder Wolle.

Falls du also mal einen roten Kraken im Laub entdeckst: Keine Panik. Einfach Nase zuhalten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('devils-fingers-fungus', 'de', 1, 'Pilz-Bestimmungsbuch', 'Pilze Bestimmungsbuch', 'Hilft dir, den seltsamen Dingen im Wald einen Namen zu geben.'),
  ('devils-fingers-fungus', 'de', 2, 'Klapp-Lupe', 'Einschlaglupe 10x Natur', 'Zeigt Pilze, Moos und Insekten aus der Nähe, ohne dass du sie anfassen musst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('devils-fingers-fungus', 'de', 1, 'The Wildlife Trusts: Devil’s fingers fungus', 'https://www.wildlifetrusts.org/wildlife-explorer/fungi/devils-fingers-fungus'),
  ('devils-fingers-fungus', 'de', 2, 'Live Science: People Are Freaking Out Over This Monster Fungus That Smells Like Rotting Crab', 'https://livescience.com/61042-devil-fingers-fungus-alien.html'),
  ('devils-fingers-fungus', 'de', 3, 'New Forest National Park Authority: Devil''s fingers', 'https://www.newforestnpa.gov.uk/discover/plants-fungi/fungi/devils-fingers'),
  ('devils-fingers-fungus', 'de', 4, 'First Nature: Clathrus archeri, Devil''s Fingers fungus identification', 'https://first-nature.com/fungi/clathrus-archeri.php');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'devils-fingers-fungus', 'en', 'fungus-hatches-red-tentacles',
  'This fungus hatches from an egg and grows red tentacles that smell like rotting flesh',
  'Devil''s fingers looks like a tiny octopus crawling out of the forest floor, and it smells even worse than it looks.',
  'The devil''s fingers fungus (Clathrus archeri) starts as a slimy "egg" in the ground, then pushes out bright red arms coated in a slime that smells like rotting flesh and lures flies, which carry its spores away.',
  'Picture a walk in the woods in summer. Between the fallen leaves sits a pale, squishy ball only about 2 to 3 centimeters across. A little later, bright red tentacles have burst out of it. They curl backward like a starfish, and the air smells like something died.

That''s not an alien. It''s a fungus called devil''s fingers, Clathrus archeri.

## Hatched from a slimy egg

Most of the time, the fungus lives hidden as a network of threads underground. When it''s ready to show itself, it forms an "egg": a soft, gelatinous ball. Live Science says its skin dents under your finger. According to the New Forest National Park Authority in England, the egg hangs on the underground network by a thick strand and can wait for several weeks until conditions are right.

Then it hatches. The red arms push out, at first joined at the tips. Then they split and arch back into a star. Usually there are at least 3 or 4, sometimes 7 or 8, and Live Science even reports up to 12. The whole thing is only about 5 centimeters high, with arms up to about 7 centimeters long, according to The Wildlife Trusts.

## The stink is the whole point

The arms are coated in a slimy layer called the gleba, which holds the spores. It smells like rotting flesh. Mycologists David Arora and William R. Burk described the odor as "like rotting crab," Live Science reports.

Gross, but clever. The smell attracts flies, and the New Forest authority adds beetles and slugs to the guest list. The slime sticks to them, and they carry the spores off to new places. That trick is unusual for a fungus, and it helped devil''s fingers spread across the New Forest in under 20 years.

> Bonus fact: Devil''s fingers isn''t European at all. It comes from Australia and New Zealand, and in parts of the USA it''s called the octopus fungus. It is thought to have reached Europe around 1914, possibly with war supplies or wool.

So if you ever spot a red octopus in the leaf litter, don''t call for help. Just hold your nose.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('devils-fingers-fungus', 'en', 1, 'Mushroom field guide', 'mushroom identification field guide book', 'Helps you put a name to the strange things growing in the woods.'),
  ('devils-fingers-fungus', 'en', 2, 'Folding magnifying loupe', 'folding magnifying loupe 10x nature', 'Shows fungi, moss and insects up close without touching them.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('devils-fingers-fungus', 'en', 1, 'The Wildlife Trusts: Devil’s fingers fungus', 'https://www.wildlifetrusts.org/wildlife-explorer/fungi/devils-fingers-fungus'),
  ('devils-fingers-fungus', 'en', 2, 'Live Science: People Are Freaking Out Over This Monster Fungus That Smells Like Rotting Crab', 'https://livescience.com/61042-devil-fingers-fungus-alien.html'),
  ('devils-fingers-fungus', 'en', 3, 'New Forest National Park Authority: Devil''s fingers', 'https://www.newforestnpa.gov.uk/discover/plants-fungi/fungi/devils-fingers'),
  ('devils-fingers-fungus', 'en', 4, 'First Nature: Clathrus archeri, Devil''s Fingers fungus identification', 'https://first-nature.com/fungi/clathrus-archeri.php');
