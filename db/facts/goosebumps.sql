-- WTFact-Fakt „Gänsehaut: ein Reflex für ein Fell, das wir längst nicht mehr haben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('goosebumps', '2026-09-16', 'body', '🥶', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'goosebumps', 'de', 'gaensehaut-fell-erbe',
  'Gänsehaut: ein Reflex für ein Fell, das wir längst nicht mehr haben',
  'Bei Tieren mit dichtem Fell ergibt die Gänsehaut Sinn. Bei uns gilt sie als Überbleibsel, aber ganz nutzlos ist sie vielleicht nicht.',
  'Gänsehaut stellt Haare auf, die uns kaum noch wärmen. Viele halten sie deshalb für ein Überbleibsel aus Zeiten mit Fell.',
  'Ein kalter Windstoß, ein Schreckmoment, Fingernägel, die über eine Tafel kratzen: Plötzlich stehen dir die Härchen auf den Armen zu Berge. Dein Körper tut dabei etwas, das eigentlich für ein Fell gedacht ist. **Und Fell hast du keins.**

## Was da in der Haut passiert

An jedem Haarfollikel sitzt ein winziger Muskel, der Haarbalgmuskel (Musculus arrector pili). Wird es kalt oder wirst du aufgeregt, schickt das **sympathische Nervensystem**, also das System für Kampf- oder Fluchtreaktionen, ein Signal. Die Muskeln ziehen sich zusammen, die Haare richten sich auf, und rund um jedes Haar entsteht eine kleine Beule.

Bei Tieren mit dichtem Fell ist das richtig nützlich. Aufgestellte Haare halten **eine Luftschicht fest, die isoliert**. Außerdem wirkt das Tier größer und damit bedrohlicher. Stachelschweine stellen bei Gefahr ihre Stacheln auf. Bei uns Menschen steht dagegen nur ein bisschen Flaum hoch. Wärmer wird uns davon kaum.

## Ein Überbleibsel, oder doch nicht?

Deshalb gilt die Gänsehaut beim Menschen vielen als Überbleibsel, als Reflex aus einer Zeit, in der er noch etwas gebracht hat. Schon Charles Darwin hat sich laut Harvard Gazette über die Gänsehaut Gedanken gemacht.

Eine Studie von 2020 bringt aber eine neue Wendung. Forscher um Ya-Chieh Hsu von der Harvard University fanden heraus, dass der Nerv, der bei Kälte die Gänsehaut auslöst, gleichzeitig **Stammzellen im Haarfollikel aktiviert**. Die sorgen langfristig für neues Haarwachstum. Untersucht wurde das allerdings an Mäusen, veröffentlicht im Fachjournal Cell. Die Gänsehaut wäre damit nicht nur ein kurzer Reflex, sondern Teil eines Systems, das die Haut an die Umgebung anpasst.

> Nicht jede Sprache denkt dabei an Gänse: Im Französischen und Spanischen ist es Hühnerhaut, im Hebräischen eine Ente, und im Russischen und Ukrainischen sind es krabbelnde Ameisen.

Fun Fact zum Schluss: Wer glaubt, Gänsehaut zu haben, hat sie laut Wikipedia nicht immer wirklich. Das Gefühl und die messbare Reaktion der Haut passen nicht zwingend zusammen. Dein Körper hat also gleich zwei Geheimnisse: Er reagiert mit einem Fell-Reflex ohne Fell und spürt manchmal Gänsehaut, die gar nicht da ist.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('goosebumps', 'de', 1, 'Anatomie-Atlas des menschlichen Körpers', 'Anatomie Atlas menschlicher Körper Sachbuch', 'Große, detaillierte Illustrationen von Muskeln, Nerven und Haut. Zum Nachschlagen und Staunen.'),
  ('goosebumps', 'de', 2, 'Kuscheltier Stachelschwein', 'Stachelschwein Kuscheltier Plüsch', 'Ein weiches Plüsch-Stachelschwein, das garantiert niemanden piekst. Hübsch als Deko im Regal.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('goosebumps', 'de', 1, 'Wikipedia: Goose bumps', 'https://en.wikipedia.org/wiki/Goose_bumps'),
  ('goosebumps', 'de', 2, 'Harvard Gazette: Getting to the bottom of goosebumps', 'https://news.harvard.edu/gazette/story/2020/07/the-hair-raising-reason-for-goosebumps-is-revealed/'),
  ('goosebumps', 'de', 3, 'Scientific American: Why do humans get “goosebumps” when they are cold, or under other circumstances?', 'https://www.scientificamerican.com/article/why-do-humans-get-goosebu/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'goosebumps', 'en', 'goosebumps-fur-leftover',
  'Goosebumps: a reflex built for fur we no longer have',
  'For animals with thick fur, goosebumps make sense. In humans they''re often called a leftover, but they might not be totally useless.',
  'Goosebumps raise hairs that barely keep us warm, which is why many see them as a leftover from our furrier past.',
  'A cold gust of wind, a sudden scare, nails scraping on a chalkboard: suddenly the hairs on your arms stand up. Your body is doing something that was really designed for fur. **And you don''t have any.**

## What''s happening in your skin

Every hair follicle has a tiny muscle attached to it, called the arrector pili. When you get cold or worked up, your **sympathetic nervous system**, the one behind fight-or-flight, sends a signal. The muscles contract, the hairs stand up, and a small bump forms around each one.

For animals with thick fur, that''s genuinely useful. Raised hair **traps a layer of air that insulates**. It also makes the animal look bigger and scarier. Porcupines raise their quills when threatened. In humans, though, all that stands up is a bit of fine body hair. It barely warms you at all.

## A leftover, or not?

That''s why many consider goosebumps in humans a leftover, a reflex from a time when it actually did something. According to the Harvard Gazette, even Charles Darwin wondered about them.

A 2020 study added a twist. Researchers led by Ya-Chieh Hsu at Harvard University found that the nerve that triggers goosebumps in the cold also **activates stem cells in the hair follicle**, which drive new hair growth over time. That was shown in mice, and the study was published in the journal Cell. So goosebumps might be more than a quick reflex. They could be part of a system that helps skin adapt to its surroundings.

> Not every language thinks of geese: French and Spanish go with chicken skin, Hebrew picks a duck, and Russian and Ukrainian talk about crawling ants.

One last fun fact: according to Wikipedia, feeling like you have goosebumps doesn''t always mean you actually do. The sensation and the measurable skin reaction don''t necessarily match up. So your body has two mysteries going on: a fur reflex with no fur, and sometimes goosebumps that aren''t even there.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('goosebumps', 'en', 1, 'Illustrated human anatomy atlas', 'human anatomy atlas illustrated book', 'Big, detailed illustrations of muscles, nerves and skin. Great for looking things up or just marveling.'),
  ('goosebumps', 'en', 2, 'Porcupine plush toy', 'porcupine plush stuffed animal', 'A soft plush porcupine that''s guaranteed not to poke anyone. Cute as shelf decor.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('goosebumps', 'en', 1, 'Wikipedia: Goose bumps', 'https://en.wikipedia.org/wiki/Goose_bumps'),
  ('goosebumps', 'en', 2, 'Harvard Gazette: Getting to the bottom of goosebumps', 'https://news.harvard.edu/gazette/story/2020/07/the-hair-raising-reason-for-goosebumps-is-revealed/'),
  ('goosebumps', 'en', 3, 'Scientific American: Why do humans get “goosebumps” when they are cold, or under other circumstances?', 'https://www.scientificamerican.com/article/why-do-humans-get-goosebu/');
