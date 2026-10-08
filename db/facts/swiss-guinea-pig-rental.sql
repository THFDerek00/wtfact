-- WTFact-Fakt „In der Schweiz darfst du kein Meerschweinchen allein halten, also wurden welche vermietet“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('swiss-guinea-pig-rental', '2026-10-09T08:00:00+02:00', 'weird', '🐹', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'swiss-guinea-pig-rental', 'de', 'schweiz-meerschweinchen-mieten',
  'In der Schweiz darfst du kein Meerschweinchen allein halten, also wurden welche vermietet',
  'Schweizer Regeln verbieten einsame Meerschweinchen, und daraus entstand ein Meerschweinchen-Verleih.',
  'Der Schweizer Tierschutz verbietet es, ein Meerschweinchen allein zu halten, also verlieh eine Frau bei Zürich Meerschweinchen als Gesellschaft.',
  'Stell dir vor, dein Meerschweinchen stirbt, und plötzlich ist das andere ein Problem. Kein emotionales. Ein rechtliches. In der Schweiz kann genau das passieren.

## Die Vorschrift gegen einsame Nager

Die Schweizer Tierschutzregeln stufen Meerschweinchen als soziale Tiere ein. Das Bundesamt für Lebensmittelsicherheit und Veterinärwesen sagt es ganz direkt: Meerschweinchen brauchen Artgenossen, fühlen sich nur in Gruppen von mindestens zwei Tieren wohl und dürfen nicht einzeln gehalten werden. Laut Mental Floss geht die Regel auf ein Tierschutzgesetz zurück, das 2008 eingeführt wurde und Haustieren, die schnell vereinsamen, eine Art „soziales Recht“ gab.

Der Haken liegt auf der Hand. Dass zwei Meerschweinchen am selben Tag sterben, ist ziemlich unwahrscheinlich. Wenn also eins geht, bleibt ein einzelnes Tier übrig, und die Halterin oder der Halter verstößt plötzlich gegen eine Vorschrift.

## Meerschweinchen zum Mieten

Jetzt wird es richtig absurd. Priska Küng aus Hinwil, einem Dorf bei Zürich, hatte eine Lösung: einen Verleih für Meerschweinchen. Wie The World von PRX berichtete, konnten Leute mit nur einem Meerschweinchen dort ein zweites mieten, damit das übrig gebliebene Gesellschaft hat.

Laut dem Trivia-Newsletter Now I Know soll das so funktioniert haben: Für etwa 50 oder 60 Dollar verlieh Küng ein Meerschweinchen, so lange man wollte. Kam das Tier zurück, gab es die Hälfte der Gebühr wieder. Manche Leih-Meerschweinchen sollen schon nach ein paar Wochen zurückgekommen sein. Andere haben den Weg nach Hause nie wieder angetreten.

Kurz gesagt: Schweizer Vorschriften haben eine Nachfrage nach Leih-Gesellschaft geschaffen. Für Nagetiere.

> Bonusfakt: Ein Kaninchen als Mitbewohner reicht übrigens nicht. Das Schweizer Bundesamt schreibt, dass kein Mensch und auch kein Kaninchen einen Artgenossen ersetzt.

## Warum das Ganze?

Meerschweinchen sind keine Einzelgänger zum Kuscheln. Das Schweizer Bundesamt nennt sie soziale Nager, die Artgenossen brauchen, und empfiehlt als ideale Gruppe mehrere Weibchen mit einem kastrierten Männchen. Die Schweiz hat dieses Stück Tierhaltungswissen einfach in verbindliche Vorschriften gegossen.

Irgendwo bei Zürich hatte ein Meerschweinchen also eine Jobbeschreibung: Freund von Beruf.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('swiss-guinea-pig-rental', 'de', 1, 'Meerschweinchen-Ratgeber', 'Meerschweinchen Ratgeber Buch', 'Ein Ratgeber zu Haltung, Futter und Verhalten der kleinen Nager.'),
  ('swiss-guinea-pig-rental', 'de', 2, 'Meerschweinchen-Plüschtier', 'Meerschweinchen Plüschtier', 'Ein weiches Meerschweinchen, das garantiert keinen Mitbewohner braucht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('swiss-guinea-pig-rental', 'de', 1, 'Mental Floss: It’s Illegal to Own Only One Guinea Pig in Switzerland', 'https://www.mentalfloss.com/animals/pets/its-illegal-own-single-guinea-pig-switzerland'),
  ('swiss-guinea-pig-rental', 'de', 2, 'The World from PRX: Rent a Guinea Pig in Switzerland', 'https://theworld.org/stories/2011/09/21/rent-guinea-pig-switzerland'),
  ('swiss-guinea-pig-rental', 'de', 3, 'BLV: Nager', 'https://www.blv.admin.ch/de/nager'),
  ('swiss-guinea-pig-rental', 'de', 4, 'Now I Know: Companion Companion', 'https://nowiknow.com/companion-companion/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'swiss-guinea-pig-rental', 'en', 'switzerland-rent-a-guinea-pig',
  'In Switzerland, you can''t keep just one guinea pig, so one woman rented them out',
  'Swiss rules say guinea pigs can''t live alone, which inspired a rent-a-guinea-pig service.',
  'Swiss animal welfare rules forbid keeping a guinea pig on its own, so a woman near Zurich started renting out guinea pigs as companions.',
  'Imagine your guinea pig dies, and suddenly the survivor is a problem. Not an emotional one. A legal one. In Switzerland, that''s exactly what can happen.

## The rule against lonely rodents

Switzerland''s animal welfare rules treat guinea pigs as social animals. The Swiss Federal Food Safety and Veterinary Office puts it bluntly: guinea pigs need others of their kind, they only feel good in groups of at least two, and they may not be kept alone. According to Mental Floss, the rule goes back to an animal rights law introduced in 2008 that gave pets which tend to get lonely a kind of "social right".

The catch is obvious once you think about it. Two guinea pigs are unlikely to die on the same day. So when one of them goes, the owner is left with a single animal and, technically, a rule they''re now breaking.

## Rent-a-guinea-pig

This is where it gets properly absurd. Priska Küng from Hinwil, a village near Zurich, came up with a fix: a "rent a guinea pig" service. As The World from PRX reported, it let people with only one guinea pig rent another one to keep the survivor company.

According to the trivia newsletter Now I Know, the deal reportedly worked like this: for about 50 or 60 dollars, Küng lent out a guinea pig for as long as the renter wanted. If the animal came back, the renter got half the fee back. Some rented guinea pigs reportedly returned after a few weeks. Others never made the trip home.

So, in short, Swiss rules created demand for rental companions. For rodents.

> Bonus fact: Don''t think a rabbit can step in as a roommate. The Swiss authority writes that no human, and no rabbit either, replaces another guinea pig.

## Why the fuss?

Guinea pigs aren''t cuddly loners. The Swiss authority calls them social rodents that need others of their kind, and it recommends a group of several females with one neutered male as the ideal setup. Switzerland simply turned that piece of pet-care wisdom into binding rules.

Somewhere near Zurich, a guinea pig once had a job description: professional friend.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('swiss-guinea-pig-rental', 'en', 1, 'Guinea pig care book', 'guinea pig care book', 'A practical guide to housing, feeding and understanding these little rodents.'),
  ('swiss-guinea-pig-rental', 'en', 2, 'Guinea pig plush toy', 'guinea pig plush toy', 'A soft guinea pig that never needs a roommate.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('swiss-guinea-pig-rental', 'en', 1, 'Mental Floss: It’s Illegal to Own Only One Guinea Pig in Switzerland', 'https://www.mentalfloss.com/animals/pets/its-illegal-own-single-guinea-pig-switzerland'),
  ('swiss-guinea-pig-rental', 'en', 2, 'The World from PRX: Rent a Guinea Pig in Switzerland', 'https://theworld.org/stories/2011/09/21/rent-guinea-pig-switzerland'),
  ('swiss-guinea-pig-rental', 'en', 3, 'BLV: Nager', 'https://www.blv.admin.ch/de/nager'),
  ('swiss-guinea-pig-rental', 'en', 4, 'Now I Know: Companion Companion', 'https://nowiknow.com/companion-companion/');
