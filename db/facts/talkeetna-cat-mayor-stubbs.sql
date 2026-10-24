-- WTFact-Fakt „Ein Ort in Alaska hatte rund 20 Jahre lang einen Kater als Ehrenbürgermeister“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('talkeetna-cat-mayor-stubbs', '2026-10-28T08:00:00+01:00', 'weird', '🐱', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'talkeetna-cat-mayor-stubbs', 'de', 'alaska-ort-katze-buergermeister',
  'Ein Ort in Alaska hatte rund 20 Jahre lang einen Kater als Ehrenbürgermeister',
  'Talkeetna hat keinen offiziellen Bürgermeister, also übernahm ein Kater ohne Schwanz aus dem Dorfladen den Job.',
  'Rund 20 Jahre lang war ein Kater namens Stubbs Ehrenbürgermeister von Talkeetna in Alaska, einem Ort ohne menschlichen Bürgermeister.',
  'Manche Orte wählen einen Bürgermeister. Talkeetna in Alaska bekam einen Kater ohne Schwanz und behielt ihn rund 20 Jahre lang im Amt.

## Ein Kätzchen aus dem Karton

Lauri Stec, Leiterin des Ladens Nagley''s General Store, erzählte CNN, er habe in einem Karton voller Kätzchen vor dem Laden gesessen, die die Besitzer verschenkten. Sie nannte ihn Stubbs, weil er keinen Schwanz hatte (englisch „stub“ heißt Stummel). Bald war der Dorfladen die Adresse, wenn man den Bürgermeister sehen wollte.

Talkeetna hat rund 900 Einwohner und einen kleinen Haken. Der Ort ist nur ein historischer Bezirk und hat deshalb gar keinen echten Bürgermeister. CBS News schreibt es ganz direkt: Einen menschlichen Bürgermeister gibt es dort nicht. Der Titel war ein Ehrenamt, und Stubbs trug ihn.

## Die Wahl, die es nie gab

Die Legende sagt, die Leute vor Ort fanden die menschlichen Kandidaten so schwach, dass sie den Kater auf ihre Stimmzettel schrieben, und er gewann. Schöne Geschichte. Culture Trip nennt sie falsch: Ohne echten Bürgermeister gab es auch nie eine Wahl. Der US-Sender NPR stellte die Geschichte 2012 genauso richtig. CBS News beschrieb es trotzdem als Sieg per handschriftlichem Eintrag 1998, so gut hat sich die Legende gehalten.

Belegt ist dagegen sein Alltag. Laut Stec trank er Wasser nur aus einem Weinglas mit Katzenminze darin. Culture Trip beschreibt, wie er sich auf den Tresen zum Bauchkraulen ausstreckte und hinter dem Getränkeautomaten döste. Besucher nannten ihren Halt einen „Termin beim Bürgermeister“, und laut Culture Trip brachte der Titel dem Laden jede Menge Kundschaft.

> Bonusfakt: Bei der Wahl zum US-Senat 2014 in Alaska drehte jemand einen Wahlwerbespot für Stubbs, und ein DJ aus dem Ort erzählte dem Radiosender KTNA, er habe bei jeder Wahl außer der zum Gouverneur „Mayor Stubbs“ auf den Stimmzettel geschrieben.

## Zwei Jahrzehnte im Amt

Stubbs trug den Ehrentitel bis 2017. Seine Familie schrieb, er habe „20 Jahre und 3 Monate“ gelebt, und einen möglichen Nachfolger hatte sie schon im Blick: das Kätzchen Denali, das laut der Erklärung der Familie bei CBS News „genau dieselbe Persönlichkeit wie Stubbs“ hat.

Zwei Jahrzehnte im Amt, kein Wahlkampf, bezahlt in Katzenminze. Für ein Fundkätzchen keine schlechte Karriere.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('talkeetna-cat-mayor-stubbs', 'de', 1, 'Katzenminze-Spielzeug-Set', 'Katzenminze Spielzeug Set Katze', 'Ein paar nachfüllbare Katzenminze-Spielzeuge beschäftigen jede Hauskatze.'),
  ('talkeetna-cat-mayor-stubbs', 'de', 2, 'Alaska-Bildband', 'Alaska Bildband', 'Große Landschaftsfotos von Gletschern, Bergen und kleinen Orten im hohen Norden.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('talkeetna-cat-mayor-stubbs', 'de', 1, 'CBS News: Stubbs, small Alaska town''s honorary cat mayor, dead at 20: family statement', 'https://www.cbsnews.com/news/stubbs-dead-alaska-talkeetna-honorary-cat-mayor/'),
  ('talkeetna-cat-mayor-stubbs', 'de', 2, 'Culture Trip: The Fame and Fable of the Cat Mayor in Talkeetna, AK', 'https://theculturetrip.com/articles/the-fame-and-fable-of-the-cat-mayor-in-talkeetna-ak'),
  ('talkeetna-cat-mayor-stubbs', 'de', 3, 'NPR: Following Up On Tuesday''s Feline Mayor Story', 'https://www.npr.org/transcripts/156961189'),
  ('talkeetna-cat-mayor-stubbs', 'de', 4, 'WTVR (CNN): Mayor of Alaska village walks on four paws', 'https://www.wtvr.com/2012/07/17/mayor-of-alaska-village-walks-on-four-paws'),
  ('talkeetna-cat-mayor-stubbs', 'de', 5, 'KTNA: Stubbs for U.S. Senate? Thanks to the Internet, This is a Thing', 'https://ktna.org/2014/11/stubbs-for-u-s-senate-thanks-to-the-internet-this-is-a-thing/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'talkeetna-cat-mayor-stubbs', 'en', 'alaska-town-cat-mayor',
  'An Alaska town had a cat as its honorary mayor for about 20 years',
  'Talkeetna has no official mayor, so a tailless cat from the general store took the job.',
  'For about 20 years, a cat called Stubbs served as the honorary mayor of Talkeetna, Alaska, a town that has no human mayor.',
  'Some towns elect a mayor. Talkeetna in Alaska got a cat with no tail, and kept him in office for about 20 years.

## A kitten from a box

Lauri Stec, manager of Nagley''s General Store, told CNN that he was in a box full of kittens in front of the store, and the owners were giving them away. She picked the name Stubbs because he had no tail. Before long, the general store was the place to go if you wanted to see the mayor.

Talkeetna has about 900 residents and one small catch. It is only a historic district, so it has no real mayor at all. CBS News puts it plainly: there is no human mayor in the town. The title was honorary, and Stubbs wore it.

## The election that never happened

The legend says locals were so unimpressed by the human candidates that they wrote the cat in on their ballots, and he won. Great story. Culture Trip calls it false: with no real mayor, there was never an election. NPR corrected the write-in story the same way in 2012. CBS News still described it as a write-in win in 1998, which shows how well the legend stuck.

What is documented is his routine. According to Stec, he would only drink water from a wine glass with catnip in it. Culture Trip describes him stretching out on the counters for belly rubs and lounging behind the drinks machine. Visitors called their stop “a meeting with the Mayor”, and according to Culture Trip, the title brought untold amounts of business into the store.

> Bonus fact: During the 2014 U.S. Senate election in Alaska, someone made a campaign ad for Stubbs, and a local DJ told the radio station KTNA that he wrote in “Mayor Stubbs” for every race except governor.

## Two decades in office

Stubbs held the honorary title until 2017. His family wrote that he lived for “20 years and 3 months”, and they already had a possible successor in mind: a kitten called Denali, who, according to the family''s statement on CBS News, has “the exact personality as Stubbs”.

Two decades in office, no campaign, paid in catnip. Not a bad career for a kitten from a box.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('talkeetna-cat-mayor-stubbs', 'en', 1, 'Catnip toy set', 'catnip toys cat set', 'A few refillable catnip toys keep any house cat busy.'),
  ('talkeetna-cat-mayor-stubbs', 'en', 2, 'Alaska photo book', 'Alaska photo book coffee table', 'Big landscape photos of glaciers, mountains and small towns in the far north.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('talkeetna-cat-mayor-stubbs', 'en', 1, 'CBS News: Stubbs, small Alaska town''s honorary cat mayor, dead at 20: family statement', 'https://www.cbsnews.com/news/stubbs-dead-alaska-talkeetna-honorary-cat-mayor/'),
  ('talkeetna-cat-mayor-stubbs', 'en', 2, 'Culture Trip: The Fame and Fable of the Cat Mayor in Talkeetna, AK', 'https://theculturetrip.com/articles/the-fame-and-fable-of-the-cat-mayor-in-talkeetna-ak'),
  ('talkeetna-cat-mayor-stubbs', 'en', 3, 'NPR: Following Up On Tuesday''s Feline Mayor Story', 'https://www.npr.org/transcripts/156961189'),
  ('talkeetna-cat-mayor-stubbs', 'en', 4, 'WTVR (CNN): Mayor of Alaska village walks on four paws', 'https://www.wtvr.com/2012/07/17/mayor-of-alaska-village-walks-on-four-paws'),
  ('talkeetna-cat-mayor-stubbs', 'en', 5, 'KTNA: Stubbs for U.S. Senate? Thanks to the Internet, This is a Thing', 'https://ktna.org/2014/11/stubbs-for-u-s-senate-thanks-to-the-internet-this-is-a-thing/');
