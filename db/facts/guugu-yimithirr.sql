-- WTFact-Fakt „In dieser Sprache gibt es kein Links und Rechts, nur Himmelsrichtungen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('guugu-yimithirr', '2026-08-28', 'language', '🧭', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'guugu-yimithirr', 'de', 'guugu-yimithirr-himmelsrichtungen',
  'In dieser Sprache gibt es kein Links und Rechts, nur Himmelsrichtungen',
  'Statt „Rutsch mal nach links“ heißt es hier: „Rutsch mal ein Stück nach Osten.“',
  'Wer Guugu Yimithirr spricht, sagt nicht „links“ oder „rechts“, sondern nutzt Norden, Süden, Osten und Westen, sogar für die Ameise neben deinem Fuß.',
  'Wo ist dein Handy? „Links neben dir.“ Für uns ein völlig normaler Satz. Im Nordosten Australiens würdest du damit aber fragende Blicke ernten. Denn in der Sprache **Guugu Yimithirr gibt es keine Wörter für links und rechts**.

## Die Ameise nördlich von deinem Fuß

Guugu Yimithirr ist eine Sprache der Aborigines im Norden von Queensland, gesprochen vor allem in der Gemeinde Hope Vale. Statt Richtungen vom eigenen Körper aus zu beschreiben, benutzen die Sprecher Himmelsrichtungen. Immer.

Das klingt dann so: Im Auto bittest du jemanden, ein Stück „nach Osten“ zu rutschen. Etwas liegt „am südlichen Rand des westlichen Tischs“. Und wer dich warnen will, sagt: „Pass auf die große Ameise nördlich von deinem Fuß auf.“ Laut dem Linguisten Guy Deutscher wird sogar beschrieben, was im Fernseher passiert, und zwar danach, wie der Fernseher gerade im Raum steht.

## Ein Kompass im Kopf

Das funktioniert nur, wenn man jederzeit weiß, wo Norden ist. Genau das lernen Kinder, die mit Guugu Yimithirr aufwachsen, schon sehr früh. Sie achten auf Hinweise wie den Stand der Sonne und entwickeln so eine Art **inneren Kompass**.

Wie gut der funktioniert, haben die Forscher John Haviland und Stephen Levinson Anfang der 1980er-Jahre in Hope Vale untersucht. Sie baten Sprecher, auch mitten im dichten Busch auf bekannte Orte zu zeigen, die sie nicht sehen konnten. Bei 120 Versuchen lagen sie laut der Australian Academy of the Humanities um **weniger als vier Prozent** daneben. Ganz ohne Karten-App.

> Aus Guugu Yimithirr stammt ein Wort, das du kennst: Die Crew von James Cook notierte 1770 das Wort für ein großes hüpfendes Tier. Daraus wurde „Känguru“.

## Eine Sprache in Gefahr

Heute sprechen nur noch wenige Hundert Menschen Guugu Yimithirr, die UNESCO stuft die Sprache als gefährdet ein. In Hope Vale haben ältere Sprecher deshalb Lernvideos aufgenommen, und an der örtlichen Schule steht die Sprache auf dem Lehrplan.

Für die Forschung ist Guugu Yimithirr ein Glücksfall. Die Sprache zeigt, dass „links“ und „rechts“ keine Naturgesetze sind, sondern nur eine von mehreren Möglichkeiten, die Welt einzuteilen.

Vielleicht ist dein Orientierungssinn gar nicht schlecht. Vielleicht fehlen dir nur die richtigen Wörter.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('guugu-yimithirr', 'de', 1, '„Im Spiegel der Sprache“ von Guy Deutscher', 'Im Spiegel der Sprache Guy Deutscher', 'Ein unterhaltsames Sachbuch darüber, ob und wie unsere Sprache beeinflusst, wie wir die Welt sehen.'),
  ('guugu-yimithirr', 'de', 2, 'Messing-Kompass als Deko', 'Messing Kompass Deko', 'Sieht im Regal oder auf dem Schreibtisch edel aus und zeigt dir trotzdem zuverlässig, wo Norden ist.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('guugu-yimithirr', 'de', 1, 'Wikipedia: Guugu Yimithirr language', 'https://en.wikipedia.org/wiki/Guugu_Yimithirr_language'),
  ('guugu-yimithirr', 'de', 2, 'Australian Academy of the Humanities: I don’t like the look of that fellow to your south-west', 'https://humanities.org.au/power-of-the-humanities/i-dont-like-the-look-of-that-fellow-to-your-south-west/'),
  ('guugu-yimithirr', 'de', 3, 'Now I Know: The People That Have No Rights', 'https://nowiknow.com/the-people-that-have-no-rights/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'guugu-yimithirr', 'en', 'guugu-yimithirr-no-left-right',
  'This language has no left and right, only north, south, east and west',
  'Instead of ‘scoot over to the left,’ people here say: ‘move a bit to the east.’',
  'Speakers of Guugu Yimithirr don''t say ‘left’ or ‘right.’ They use north, south, east and west, even for the ant next to your foot.',
  'Where''s your phone? "On your left." Totally normal sentence, right? In northeastern Australia, though, you''d get some confused looks. Because the language **Guugu Yimithirr has no words for left and right**.

## The ant north of your foot

Guugu Yimithirr is an Aboriginal language from northern Queensland, spoken mainly in the community of Hope Vale. Instead of describing directions relative to their own bodies, speakers use cardinal directions. Always.

So it sounds like this: in a car, you ask someone to move "a bit to the east." Something lies "on the southern edge of the western table." And if someone wants to warn you, they say: "Look out for that big ant just north of your foot." According to linguist Guy Deutscher, even what happens on a TV screen gets described by compass direction, depending on which way the TV happens to face.

## A compass in your head

This only works if you always know where north is. And that''s exactly what kids growing up with Guugu Yimithirr learn very early on. They pay attention to clues like the position of the sun and develop a kind of **internal compass**.

Researchers John Haviland and Stephen Levinson tested how well it works in Hope Vale in the early 1980s. They asked speakers to point to familiar places they couldn''t see, even deep in dense bush. Across 120 trials, according to the Australian Academy of the Humanities, they were off by **less than four percent**. No map app needed.

> You already know a word from Guugu Yimithirr: in 1770, James Cook''s crew wrote down the local word for a big hopping animal. It became "kangaroo."

## A language at risk

Today only a few hundred people still speak Guugu Yimithirr, and UNESCO classifies it as vulnerable. In Hope Vale, elders have recorded video lessons, and the local school teaches the language as part of its curriculum.

For researchers, Guugu Yimithirr is a gift. It shows that "left" and "right" aren''t laws of nature, just one of several ways to slice up the world around you.

Maybe your sense of direction isn''t bad after all. Maybe you''re just missing the right words.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('guugu-yimithirr', 'en', 1, 'Through the Language Glass by Guy Deutscher', 'Through the Language Glass Guy Deutscher', 'An entertaining book about whether, and how, the language you speak shapes the way you see the world.'),
  ('guugu-yimithirr', 'en', 2, 'Brass compass decoration', 'brass compass decor', 'Looks classy on a shelf or desk and still tells you exactly where north is.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('guugu-yimithirr', 'en', 1, 'Wikipedia: Guugu Yimithirr language', 'https://en.wikipedia.org/wiki/Guugu_Yimithirr_language'),
  ('guugu-yimithirr', 'en', 2, 'Australian Academy of the Humanities: I don’t like the look of that fellow to your south-west', 'https://humanities.org.au/power-of-the-humanities/i-dont-like-the-look-of-that-fellow-to-your-south-west/'),
  ('guugu-yimithirr', 'en', 3, 'Now I Know: The People That Have No Rights', 'https://nowiknow.com/the-people-that-have-no-rights/');
