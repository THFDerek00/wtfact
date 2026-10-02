-- WTFact-Fakt „Dieser Frosch friert im Winter ein und taut im Frühling wieder auf“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('wood-frog-freeze', '2026-08-21', 'survival', '🐸', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wood-frog-freeze', 'de', 'waldfrosch-friert-ein',
  'Dieser Frosch friert im Winter ein und taut im Frühling wieder auf',
  'Kein Herzschlag, keine Atmung, Eis im Körper. Und trotzdem hüpft er im März wieder los.',
  'Der Waldfrosch friert im Winter teilweise ein, sein Herz hört auf zu schlagen, und im Frühling taut er einfach wieder auf.',
  'Stell dir vor, du liegst im Wald unter dem Laub, dein Herz bleibt stehen, du atmest nicht mehr, und ein großer Teil deines Körpers wird zu Eis. Für fast jedes Tier wäre das das Ende. Für den nordamerikanischen Waldfrosch (*Lithobates sylvaticus*) ist es einfach Winter.

## Eiszeit im eigenen Körper

Der Waldfrosch verkriecht sich zum Überwintern nicht tief in die Erde, sondern bleibt dicht unter der Laubschicht. Wenn es friert, friert er mit. **Rund 65 bis 70 Prozent seines Körperwassers können zu Eis werden.** Dann ist kein Herzschlag mehr messbar, keine Atmung, kein Blutkreislauf, keine Hirnaktivität.

In freier Natur bleiben manche Frösche so über Monate am Stück gefroren. In einer Untersuchung an Fröschen im natürlichen Winterschlaf waren es im Schnitt rund 193 Tage am Stück.

## Zucker als Frostschutz

Der Trick steckt in der Leber. Sobald sich im Körper Eis bildet, wandelt sie gespeichertes Glykogen in **Glukose** um, also Traubenzucker. Der flutet den ganzen Körper. Zusammen mit Harnstoff wirkt er als Frostschutzmittel: Er hält genug Flüssigkeit in den Zellen, sodass sie nicht austrocknen oder von Eiskristallen zerstört werden.

Das Wasser gefriert vor allem **außerhalb der Zellen**, während die Zuckerlösung das Innere der Zellen schützt. Je nach Region überstehen Waldfrösche so Temperaturen bis etwa -16 Grad. Frösche aus Alaska haben dabei mehr Glykogen in der Leber und mehr Harnstoff im Blut als ihre Verwandten weiter südlich.

> Der Waldfrosch ist der einzige Frosch Nordamerikas, der auch nördlich des Polarkreises vorkommt.

## Neustart im Frühling

Wird es wärmer, taut der Frosch von innen nach außen auf. **Das Herz beginnt wieder zu schlagen**, und nach und nach fahren die anderen Organe hoch. Kurz darauf hüpft er zum nächsten Tümpel, um sich zu paaren, als wäre nichts gewesen.

Kein Wunder, dass der Waldfrosch auch die Forschung fasziniert: Er zeigt, dass ein Wirbeltier Eis im eigenen Körper aushalten kann, wenn die Chemie stimmt.

Ein Frosch am Stiel, nur eben einer, der im Frühling wieder lebendig wird.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wood-frog-freeze', 'de', 1, 'Frosch-Kuscheltier', 'Frosch Kuscheltier', 'Weich, grün und garantiert frostfrei. Macht sich gut auf dem Sofa oder im Regal.'),
  ('wood-frog-freeze', 'de', 2, 'Sachbuch über Tiere im Winter', 'Sachbuch Tiere im Winter überwintern', 'Erklärt mit vielen Bildern, wie Frösche, Igel, Vögel und Insekten die kalte Jahreszeit überstehen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wood-frog-freeze', 'de', 1, 'Wikipedia: Wood frog', 'https://en.wikipedia.org/wiki/Wood_frog'),
  ('wood-frog-freeze', 'de', 2, 'Lake Champlain Basin Program: Is it true that some frogs can survive being frozen?', 'https://www.lcbp.org/2024/01/q-is-it-true-that-some-frogs-can-survive-being-frozen/'),
  ('wood-frog-freeze', 'de', 3, 'EarthDate: Frogsicles', 'https://www.earthdate.org/episodes/frogsicles');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wood-frog-freeze', 'en', 'wood-frog-freezes-solid',
  'This frog freezes in winter and thaws out in spring',
  'No heartbeat, no breathing, ice inside its body. And come spring, it hops off like nothing happened.',
  'The wood frog partly freezes in winter, its heart stops beating, and in spring it simply thaws back to life.',
  'Picture this: you''re lying under the leaves in a forest, your heart stops, you stop breathing, and a big chunk of your body turns to ice. For almost any animal, that would be game over. For the North American wood frog (*Lithobates sylvaticus*), it''s just winter.

## An ice age inside its body

Wood frogs don''t burrow deep into the ground to hibernate. They stay just beneath the leaf litter, and when it freezes, they freeze too. **Up to 65 to 70 percent of their body water can turn to ice.** At that point there''s no detectable heartbeat, no breathing, no blood flow and no brain activity.

In the wild, some frogs stay frozen for months at a stretch. In one study of frogs in natural hibernation, it was about 193 days in a row on average.

## Sugar as antifreeze

The trick happens in the liver. As soon as ice starts forming in the body, the liver turns stored glycogen into **glucose** and floods the whole body with it. Together with urea, that sugar works as antifreeze: it keeps enough water inside the cells so they don''t dry out or get shredded by ice crystals.

The water freezes mostly **outside the cells**, while the sugar solution protects what''s inside them. Depending on the region, wood frogs can survive temperatures down to about -16 degrees Celsius (around 3 degrees Fahrenheit). Frogs from Alaska carry more glycogen in their livers and more urea in their blood than their relatives farther south.

> The wood frog is the only North American frog that lives north of the Arctic Circle.

## Reboot in spring

When it warms up, the frog thaws from the inside out. **Its heart starts beating again**, and the other organs slowly come back online. Soon after, it hops off to the nearest pond to mate as if nothing had happened.

No wonder scientists are fascinated by it: the wood frog shows that a vertebrate can handle ice inside its own body, as long as the chemistry is right.

A frog popsicle, just one that comes back to life every spring.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wood-frog-freeze', 'en', 1, 'Frog plush toy', 'frog plush toy', 'Soft, green and guaranteed frost-free. Looks great on a couch or a shelf.'),
  ('wood-frog-freeze', 'en', 2, 'Winter World by Bernd Heinrich', 'Winter World Bernd Heinrich', 'A biologist explores how animals from insects to frogs and birds make it through the cold months.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wood-frog-freeze', 'en', 1, 'Wikipedia: Wood frog', 'https://en.wikipedia.org/wiki/Wood_frog'),
  ('wood-frog-freeze', 'en', 2, 'Lake Champlain Basin Program: Is it true that some frogs can survive being frozen?', 'https://www.lcbp.org/2024/01/q-is-it-true-that-some-frogs-can-survive-being-frozen/'),
  ('wood-frog-freeze', 'en', 3, 'EarthDate: Frogsicles', 'https://www.earthdate.org/episodes/frogsicles');
