-- WTFact-Fakt „Der Klettverschluss entstand 1941 nach einem Ausflug mit Hund“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('velcro-dog-walk', '2026-10-10T00:26:33+02:00', 'brands', '🐕', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'velcro-dog-walk', 'de', 'klettverschluss-ausflug-mit-hund',
  'Der Klettverschluss entstand 1941 nach einem Ausflug mit Hund',
  'Ein Schweizer Ingenieur ärgerte sich über Kletten im Hundefell, schaute genauer hin und erfand den Klettverschluss.',
  'George de Mestral entdeckte 1941 nach einem Ausflug mit seinem Hund unter dem Mikroskop die winzigen Haken von Kletten und baute daraus den Klettverschluss Velcro.',
  'Ratsch. Dieses Geräusch kennst du von Turnschuhen, Jacken und Rucksäcken. Erfunden hat es ein Hund, zumindest indirekt.

## Kletten unter dem Mikroskop

1941 war der Schweizer Ingenieur George de Mestral laut der Weltorganisation für geistiges Eigentum (WIPO) mit seinem Hund im Jura unterwegs. Danach hingen überall Kletten: an seiner Hose und im Fell des Hundes. Statt sie einfach abzuzupfen, legte er sie unter ein Mikroskop.

Was er sah, waren Hunderte winziger Haken. Die verhakten sich in allem, was Schlaufen hatte, also in Stoff und Tierhaaren. De Mestral fragte sich, ob man dieses Prinzip nachbauen könnte. Laut swissinfo nahmen nur wenige die Idee ernst, und manche lachten ihn offen aus.

## Fast 14 Jahre Tüftelei

Einfach war es nicht. Laut WIPO arbeitete de Mestral fast acht Jahre lang mit einem Weber aus einer französischen Textilfabrik an der Umsetzung. Baumwolle funktionierte schlecht, Nylon viel besser. Laut swissinfo halfen ein Weber in Lyon und ein Webstuhlbauer in Basel, und die Haken entstanden aus Nylon, das unter Infrarotlicht genäht wurde.

1951 meldete er in der Schweiz ein Patent an, das 1954 erteilt wurde. 1955 folgten Patente in Frankreich und den USA. Vom Ausflug im Wald bis dahin vergingen also rund 14 Jahre.

## Samt plus Haken

Den Namen Velcro setzte de Mestral aus zwei französischen Wörtern zusammen: „velours“ für Samt und „crochet“ für Haken. Im Deutschen hat sich dagegen „Klettverschluss“ durchgesetzt, benannt nach der Pflanze, mit der alles anfing.

Das ursprüngliche Patent lief laut WIPO 1978 aus. Seitdem darf jeder Klettverschlüsse herstellen, der Markenname Velcro gehört aber weiterhin der Firma.

> Bonusfakt: Bei Apollo 11 bedeckten laut WIPO rund 3.300 Quadratzoll Klettband die Innen- und Außenflächen des Raumschiffs, das sind gut 2 Quadratmeter.

Die Natur hatte die Idee zuerst. Der Hund hat sie nur nach Hause getragen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('velcro-dog-walk', 'de', 1, 'Klettkabelbinder wiederverwendbar', 'Klett Kabelbinder wiederverwendbar', 'Bändigt das Kabelchaos hinter dem Schreibtisch und lässt sich immer wieder öffnen.'),
  ('velcro-dog-walk', 'de', 2, 'Bestimmungsbuch Wildpflanzen', 'Wildpflanzen Bestimmungsbuch', 'Hilft dir, Pflanzen am Wegrand zu erkennen, von Klette bis Brennnessel.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('velcro-dog-walk', 'de', 1, 'WIPO: From a Mountain Walk to 2,100 Patents: The Velcro IP Story', 'https://www.wipo.int/en/web/ip-advantage/w/stories/the-velcro-ip-story'),
  ('velcro-dog-walk', 'de', 2, 'swissinfo.ch: How a Swiss invention hooked the world', 'https://www.swissinfo.ch/eng/velcro_how-a-swiss-invention-hooked-the-world/5653568');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'velcro-dog-walk', 'en', 'velcro-invented-after-dog-walk',
  'Velcro was invented after a trip with a dog in 1941',
  'A Swiss engineer got annoyed by burrs in his dog''s fur, took a closer look and invented the hook-and-loop fastener.',
  'In 1941, after a trip with his dog, George de Mestral looked at burdock burrs under a microscope, found tiny hooks and turned them into the fastener Velcro.',
  'Rrrrip. You know that sound from sneakers, jackets and backpacks. A dog invented it, at least indirectly.

## Burrs under the microscope

In 1941, according to the World Intellectual Property Organization (WIPO), Swiss engineer George de Mestral was out in the Jura mountains with his dog. Afterwards, burdock burrs were stuck everywhere: on his trousers and in the dog''s fur. Instead of just picking them off, he put them under a microscope.

What he saw were hundreds of tiny hooks. They caught on anything with loops, like fabric and animal hair. De Mestral wondered if he could copy the trick. According to swissinfo, few people took the idea seriously, and some openly laughed at him.

## Almost 14 years of tinkering

It wasn''t easy. According to WIPO, de Mestral spent nearly eight years working on it with a weaver from a French textile plant. Cotton worked poorly, nylon much better. According to swissinfo, a weaver in Lyon and a loom maker in Basel helped, and the hooks were made from nylon sewn under infrared light.

In 1951, he filed a patent in Switzerland, which was granted in 1954. Patents in France and the United States followed in 1955. So about 14 years passed between the walk in the woods and that point.

## Velvet plus hook

De Mestral built the name Velcro from two French words: "velours" for velvet and "crochet" for hook. In German, it''s called "Klettverschluss", named after the burdock plant ("Klette") where it all began.

According to WIPO, the original patent expired in 1978. Since then anyone can make hook-and-loop fasteners, but the Velcro brand name still belongs to the company.

> Bonus fact: According to WIPO, about 3,300 square inches of Velcro covered the interior and exterior surfaces of Apollo 11, which is just over 2 square meters.

Nature had the idea first. The dog just carried it home.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('velcro-dog-walk', 'en', 1, 'Reusable hook-and-loop cable ties', 'reusable hook and loop cable ties', 'Tames the cable mess behind your desk and opens and closes as often as you like.'),
  ('velcro-dog-walk', 'en', 2, 'Wild plant field guide', 'wild plants field guide', 'Helps you identify plants along the trail, from burdock to nettles.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('velcro-dog-walk', 'en', 1, 'WIPO: From a Mountain Walk to 2,100 Patents: The Velcro IP Story', 'https://www.wipo.int/en/web/ip-advantage/w/stories/the-velcro-ip-story'),
  ('velcro-dog-walk', 'en', 2, 'swissinfo.ch: How a Swiss invention hooked the world', 'https://www.swissinfo.ch/eng/velcro_how-a-swiss-invention-hooked-the-world/5653568');
