-- WTFact-Fakt „Frische Ananas verdaut beim Essen ein bisschen mit“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('pineapple-bromelain', '2026-08-19', 'food', '🍍', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pineapple-bromelain', 'de', 'ananas-isst-zurueck',
  'Frische Ananas verdaut beim Essen ein bisschen mit',
  'Das Kribbeln auf der Zunge hat einen Grund: Ein Enzym in der Ananas knabbert an Eiweißen. Auch an deinen.',
  'Frische Ananas enthält Bromelain, ein Enzym, das Eiweiße zerlegt und dadurch die Schutzschicht in deinem Mund angreift.',
  'Du beißt in eine frische Ananas, und nach ein paar Stücken kribbelt die Zunge, manchmal fühlt sich der Mund regelrecht wund an. Das ist keine Einbildung. **Die Ananas zerlegt beim Essen ein kleines bisschen von dir.**

## Ein Enzym, das Eiweiß zerschneidet

Verantwortlich ist Bromelain, ein Gemisch aus Enzymen, das es so nur in der Ananas gibt. Bromelain ist eine Protease, also ein Enzym, das Proteine in kleinere Stücke zerlegt. Laut Live Science greift es dabei Muzine an, die Eiweiße, aus denen die schützende Schleimschicht in deinem Mund besteht. Wird die angeknabbert, liegt das Gewebe darunter freier.

Dazu kommt die Säure. Ananas hat einen pH-Wert von etwa 3 bis 4, ist also ziemlich sauer. Die Säure trifft auf die angegriffene Schleimhaut, und genau das spürst du als Kribbeln oder Brennen. Laut Live Science ist das bei den Mengen in der Frucht nicht gefährlich, nur unangenehm.

## Der Wackelpudding-Test

Wie stark Bromelain ist, kannst du in der Küche sehen. Versuch mal, Wackelpudding mit frischer Ananas zu machen: **Er wird nicht fest.** Gelatine besteht aus langen Eiweißketten, die sich beim Abkühlen verheddern und so das Gel bilden. Laut The Naked Scientists zerhackt Bromelain diese Ketten in Stücke, die zu kurz sind, um sich zu verknoten.

Mit Ananas aus der Dose klappt es dagegen. Beim Konservieren wird die Frucht erhitzt, und die Hitze zerstört das Enzym. Aus demselben Grund kribbelt gegrillte Ananas auch nicht mehr auf der Zunge.

> Auch frische Kiwi und Papaya enthalten eiweißspaltende Enzyme und bringen Wackelpudding zum Scheitern.

## Superkraft fürs Fleisch

Was im Mund nervt, ist in der Küche praktisch. Weil Bromelain Proteine aufspaltet, eignet sich Ananas als Zartmacher für Fleisch in Marinaden. The Naked Scientists vermuten, dass solche Enzyme der Pflanze ursprünglich als Abwehr gegen Schädlinge dienen, denn Tiere und Bakterien bestehen zu großen Teilen aus Proteinen.

Die Ananas ist also die einzige Frucht, die beim Essen höflich zurückknabbert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pineapple-bromelain', 'de', 1, 'Ananasschneider', 'Ananasschneider Edelstahl', 'Schält, entkernt und schneidet die Frucht in Ringe, ohne Schnippelei und ohne Saftsauerei.'),
  ('pineapple-bromelain', 'de', 2, 'Buch über Küchenchemie', 'Buch Küchenchemie Kochen Wissenschaft', 'Erklärt, was beim Kochen, Backen und Marinieren chemisch passiert, verständlich und mit Experimenten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pineapple-bromelain', 'de', 1, 'Live Science: Why does eating pineapple make your mouth tingle?', 'https://www.livescience.com/why-pineapple-makes-mouth-tingle'),
  ('pineapple-bromelain', 'de', 2, 'The Naked Scientists: Science of fruit jellies', 'https://www.thenakedscientists.com/get-naked/experiments/science-fruit-jellies');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pineapple-bromelain', 'en', 'pineapple-eats-you-back',
  'Fresh pineapple digests you a little while you eat it',
  'That tingling on your tongue has a reason: an enzyme in pineapple breaks down proteins. Including yours.',
  'Fresh pineapple contains bromelain, an enzyme that breaks down proteins and attacks the protective layer in your mouth.',
  'You bite into fresh pineapple, and after a few pieces your tongue starts tingling. Sometimes your whole mouth feels raw. You''re not imagining it. **While you''re eating the pineapple, it''s breaking down a tiny bit of you.**

## An enzyme that cuts up protein

The culprit is bromelain, a mix of enzymes found only in pineapple. Bromelain is a protease, an enzyme that chops proteins into smaller pieces. According to Live Science, it goes after mucins, the proteins that make up the protective mucus layer in your mouth. Once that layer gets nibbled away, the tissue underneath is more exposed.

Then there''s the acid. Pineapple has a pH of about 3 to 4, so it''s pretty sour. That acid hits the weakened lining, and that''s the tingling or burning you feel. According to Live Science, the amounts in the fruit aren''t dangerous, just uncomfortable.

## The jelly test

You can see bromelain at work in the kitchen. Try making jelly or Jell-O with fresh pineapple: **it won''t set.** Gelatin is made of long protein chains that tangle up as they cool and form the gel. According to The Naked Scientists, bromelain chops these chains into pieces that are too short to tangle.

Canned pineapple works, though. During canning the fruit gets heated, and the heat destroys the enzyme. That''s also why grilled pineapple doesn''t make your tongue tingle anymore.

> Fresh kiwi and papaya also contain protein-cutting enzymes and will ruin your jelly too.

## A superpower for meat

What''s annoying in your mouth is handy in the kitchen. Because bromelain breaks down proteins, pineapple works as a meat tenderizer in marinades. The Naked Scientists suggest these enzymes may originally have helped the plant fend off pests, since animals and bacteria are largely made of protein.

Pineapple: the only fruit that politely nibbles back.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pineapple-bromelain', 'en', 1, 'Pineapple corer and slicer', 'pineapple corer slicer stainless steel', 'Peels, cores and cuts the fruit into rings without hacking around or a juice flood.'),
  ('pineapple-bromelain', 'en', 2, 'Book on kitchen chemistry', 'kitchen science cooking chemistry book', 'Explains what happens chemically when you cook, bake and marinate, with easy experiments.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pineapple-bromelain', 'en', 1, 'Live Science: Why does eating pineapple make your mouth tingle?', 'https://www.livescience.com/why-pineapple-makes-mouth-tingle'),
  ('pineapple-bromelain', 'en', 2, 'The Naked Scientists: Science of fruit jellies', 'https://www.thenakedscientists.com/get-naked/experiments/science-fruit-jellies');
