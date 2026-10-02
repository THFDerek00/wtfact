-- WTFact-Fakt „Seeotter wickeln sich zum Schlafen in Seetang, damit sie nicht abtreiben“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('sea-otters-hands', '2026-08-25', 'nature', '🦦', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sea-otters-hands', 'de', 'seeotter-kelp-schlafen',
  'Seeotter wickeln sich zum Schlafen in Seetang, damit sie nicht abtreiben',
  'Schlafen mitten im Meer klingt entspannt, bis man morgens woanders aufwacht. Seeotter haben dafür einen Trick.',
  'Seeotter schlafen auf dem Rücken im Wasser und wickeln sich vorher in Kelp, damit die Strömung sie nicht davonträgt.',
  'Stell dir vor, du schläfst auf einer Luftmatratze im Meer ein und wachst ein paar Kilometer weiter wieder auf. Für Seeotter wäre das ein echtes Problem, denn sie verbringen fast ihr ganzes Leben im Wasser. **Ihre Lösung: Sie binden sich fest, und zwar mit Seetang.**

## Ein Anker aus Kelp

Seeotter leben an den Küsten des Nordpazifiks, oft in großen Tangwäldern aus Kelp, einer riesigen Braunalge. Zum Ausruhen legen sie sich auf den Rücken und treiben an der Wasseroberfläche.

Damit die Strömung sie dabei nicht aufs offene Meer hinauszieht, **wickeln sie sich in die langen Kelpstränge ein**. Der Tang wirkt wie ein Anker. Sie machen das nicht nur beim Schlafen, sondern auch beim Fressen.

## Lieber in der Gruppe

Seeotter suchen ihr Futter allein, ruhen sich aber gern zusammen aus. Solche Gruppen heißen im Englischen „Raft“, also Floß. Ein Raft besteht meist aus **10 bis 100 Tieren**. Die größte beobachtete Gruppe zählte über 2000 Seeotter.

Und dann gibt es noch diese berühmten Fotos: **schlafende Seeotter, die sich an den Pfoten halten**. Das kommt tatsächlich vor. Der Klassiker zum Festhalten bleibt aber der Kelp.

## Fell statt Speck

Warum sie überhaupt so viel Zeit mit Ausruhen verbringen? Seeotter haben einen anstrengenden Alltag. Anders als die meisten Meeressäuger besitzen sie **keine isolierende Speckschicht**. Warm hält sie nur ihr extrem dichtes Fell, mit bis zu 150.000 Haaren pro Quadratzentimeter. Damit es funktioniert, putzen sie es ständig und pusten Luft hinein.

Das kostet Energie. Ein Seeotter muss deshalb jeden Tag schätzungsweise **25 bis 38 Prozent seines Körpergewichts** fressen. Die Schalen von Muscheln und Seeigeln knacken sie, indem sie sich einen Stein auf die Brust legen und die Beute dagegenschlagen.

> Seeotter-Mütter legen ihr Junges zum Ausruhen auf die eigene Brust, damit es nicht im kalten Wasser liegt.

Kuscheln, Werkzeug, eingebauter Anker: Viel besser kann man sich auf dem offenen Meer kaum einrichten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sea-otters-hands', 'de', 1, 'Otter-Kuscheltier', 'Seeotter Kuscheltier', 'Ein weicher Plüschotter mit großen Knopfaugen. Hält sich gern an deinem Kissen fest.'),
  ('sea-otters-hands', 'de', 2, 'Bildband Meerestiere', 'Bildband Meerestiere Ozean', 'Großformatige Fotos aus Riffen, Tangwäldern und der Tiefsee. Schön zum Blättern und Staunen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sea-otters-hands', 'de', 1, 'Wikipedia: Sea otter', 'https://en.wikipedia.org/wiki/Sea_otter'),
  ('sea-otters-hands', 'de', 2, 'National Geographic: Sea Otter', 'https://www.nationalgeographic.com/animals/mammals/facts/sea-otter'),
  ('sea-otters-hands', 'de', 3, 'Aquarium of the Pacific: Southern Sea Otter', 'https://www.aquariumofpacific.org/onlinelearningcenter/species/southern_sea_otter');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'sea-otters-hands', 'en', 'sea-otters-kelp-sleep',
  'Sea otters wrap themselves in kelp so they don''t drift off while sleeping',
  'Sleeping in the middle of the ocean sounds relaxing, until you wake up somewhere else. Sea otters have a trick for that.',
  'Sea otters sleep on their backs in the water and wrap themselves in kelp first so the current doesn''t carry them away.',
  'Imagine falling asleep on an air mattress in the ocean and waking up a few miles down the coast. For sea otters, that would be a real problem, since they spend almost their entire lives in the water. **Their solution: they tie themselves down, using seaweed.**

## An anchor made of kelp

Sea otters live along the coasts of the North Pacific, often in big kelp forests. Kelp is a giant brown seaweed. To rest, otters float on their backs at the surface.

To keep the current from pulling them out to sea, **they wrap themselves in long strands of kelp**. The seaweed works like an anchor. They don''t just do this while sleeping, but while eating too.

## Better together

Sea otters hunt alone but like to rest in groups. These groups are called rafts. A raft usually has **10 to 100 animals**. The biggest one ever seen had over 2000 sea otters.

And then there are those famous photos: **sleeping sea otters holding paws**. That really happens. But the classic way to stay put is still kelp.

## Fur instead of blubber

Why do they need so much rest in the first place? Sea otters have an exhausting lifestyle. Unlike most marine mammals, they have **no insulating layer of blubber**. The only thing keeping them warm is their super dense fur, with up to 150,000 hairs per square centimeter. To keep it working, they groom it constantly and blow air into it.

That burns a lot of energy. A sea otter has to eat an estimated **25 to 38 percent of its body weight** every single day. To crack open clams and sea urchins, they put a rock on their chest and smash their prey against it.

> Sea otter moms rest their pups on their own chests to keep them out of the cold water.

Cuddling, tools, a built-in anchor: you can''t really set yourself up much better on the open ocean.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('sea-otters-hands', 'en', 1, 'Sea otter plush toy', 'sea otter plush', 'A soft plush otter with big button eyes. Happy to hold on to your pillow.'),
  ('sea-otters-hands', 'en', 2, 'Ocean animals photo book', 'ocean animals photography book', 'Big, beautiful photos from reefs, kelp forests and the deep sea. Perfect for flipping through and staring.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('sea-otters-hands', 'en', 1, 'Wikipedia: Sea otter', 'https://en.wikipedia.org/wiki/Sea_otter'),
  ('sea-otters-hands', 'en', 2, 'National Geographic: Sea Otter', 'https://www.nationalgeographic.com/animals/mammals/facts/sea-otter'),
  ('sea-otters-hands', 'en', 3, 'Aquarium of the Pacific: Southern Sea Otter', 'https://www.aquariumofpacific.org/onlinelearningcenter/species/southern_sea_otter');
