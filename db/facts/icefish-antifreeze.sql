-- WTFact-Fakt „Eisfische: Frostschutz im Blut und kein Hämoglobin“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('icefish-antifreeze', '2026-09-02', 'survival', '🐟', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'icefish-antifreeze', 'de', 'eisfische-frostschutz-ohne-haemoglobin',
  'Eisfische: Frostschutz im Blut und kein Hämoglobin',
  'Im Südpolarmeer ist das Wasser kälter als 0 Grad. Diese Fische haben sich dafür ein ziemlich schräges Blut zugelegt.',
  'Antarktische Eisfische sind die einzigen bekannten Wirbeltiere, die als Erwachsene kein Hämoglobin im Blut haben.',
  'Rund um die Antarktis kann das Meerwasser auf etwa -2 Grad abkühlen. Salzwasser bleibt da noch flüssig, aber das Blut der meisten Fische würde gefrieren. Trotzdem leben dort Fische, und einige davon sind so speziell gebaut, dass sie auf den ersten Blick unmöglich wirken.

## Frostschutzmittel aus eigener Herstellung

Viele antarktische Fische produzieren sogenannte **Frostschutz-Glykoproteine**. Die zirkulieren im Blut und bremsen das Wachstum winziger Eiskristalle, sodass das Blut flüssig bleibt. Das Ganze funktioniert also nicht wie ein Eiswürfel, der gar nicht erst entsteht, sondern eher wie ein Türsteher, der jeden Kristall klein hält.

Spannend ist, woher die Fähigkeit kommt. Beim Antarktischen Seehecht ist das Frostschutz-Gen aus Teilen eines Gens entstanden, das ursprünglich für ein **Verdauungsprotein der Bauchspeicheldrüse** zuständig war. Aus Verdauung wurde Frostschutz.

## Fische ohne rote Blutfarbe

Die Krokodileisfische gehen noch einen Schritt weiter. Von dieser Familie sind mindestens 16 Arten bekannt, und sie sind **die einzigen bekannten Wirbeltiere, die als Erwachsene kein Hämoglobin haben**. Rote Blutkörperchen fehlen meist komplett, und wenn doch welche da sind, dann nur wenige und funktionslos.

Wie kommt dann der Sauerstoff in den Körper? Er ist einfach **im Blutplasma gelöst**. Das klappt, weil kaltes Wasser mehr Sauerstoff aufnehmen kann als warmes. Dazu haben Eisfische ein größeres Herz, größere Blutgefäße und etwa 4-mal so viel Blut wie andere Fische. Ihr Herz pumpt rund 5-mal so viel Blut pro Zeit.

Außerdem sparen sie Energie: Eisfische liegen meist ruhig am Meeresboden und warten auf Beute. Wer sich wenig bewegt, braucht weniger Sauerstoff.

> Auch der Polardorsch in der Arktis hat Frostschutzproteine im Blut, nutzt dafür aber ganz andere Gene. Die Evolution hat dieselbe Lösung zweimal unabhängig erfunden.

Ohne Hämoglobin, mit Frostschutz und einem XXL-Herz: Eisfische beweisen, dass es für das Leben im Eis mehr als einen Bauplan gibt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('icefish-antifreeze', 'de', 1, 'Doku „Frozen Planet“ auf DVD oder Blu-ray', 'Frozen Planet DVD', 'Die BBC-Naturdoku zeigt Arktis und Antarktis in spektakulären Bildern, über und unter Wasser.'),
  ('icefish-antifreeze', 'de', 2, 'Bildband über die Antarktis', 'Bildband Antarktis', 'Großformatige Fotos von Eisbergen, Pinguinen und Forschungsstationen am Ende der Welt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('icefish-antifreeze', 'de', 1, 'Wikipedia: Channichthyidae', 'https://en.wikipedia.org/wiki/Channichthyidae'),
  ('icefish-antifreeze', 'de', 2, 'Marine Science Institute, The University of Texas at Austin: Icefish', 'https://utmsi.utexas.edu/science-and-the-sea/radio-program/icefish/'),
  ('icefish-antifreeze', 'de', 3, 'Understanding Evolution (UC Berkeley): No ice in their veins', 'https://evolution.berkeley.edu/fisheye-view-tree-of-life/no-ice-in-their-veins/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'icefish-antifreeze', 'en', 'icefish-antifreeze-no-hemoglobin',
  'Icefish: antifreeze in their blood and zero hemoglobin',
  'The water around Antarctica drops below freezing. These fish evolved some seriously strange blood to deal with it.',
  'Antarctic icefish are the only known vertebrates that have no hemoglobin in their blood as adults.',
  'Around Antarctica, seawater can cool to about -2 degrees Celsius (28 degrees Fahrenheit). Salt water stays liquid at that temperature, but the blood of most fish would freeze. Fish live there anyway, and some of them are built so strangely they seem impossible at first glance.

## Homemade antifreeze

Many Antarctic fish produce **antifreeze glycoproteins**. These circulate in the blood and stop tiny ice crystals from growing, so the blood stays liquid. It doesn''t work by keeping ice from ever appearing, but more like a bouncer that keeps every crystal small.

Where this ability came from is the cool part. In the Antarctic toothfish, the antifreeze gene evolved from pieces of a gene that originally made a **pancreatic digestive protein**. Digestion turned into frost protection.

## Fish without red blood

Crocodile icefish take it even further. At least 16 species of this family are known, and they are **the only known vertebrates that have no hemoglobin as adults**. Red blood cells are usually missing entirely, and when there are any, they''re rare and don''t work.

So how does oxygen get around? It''s simply **dissolved in the blood plasma**. That works because cold water can hold more oxygen than warm water. On top of that, icefish have bigger hearts, bigger blood vessels and about 4 times as much blood as other fish. Their hearts pump around 5 times as much blood per minute.

They also save energy: icefish mostly sit still on the sea floor and wait for prey. Less movement means less oxygen needed.

> Arctic cod also have antifreeze proteins in their blood, but they use completely different genes. Evolution invented the same solution twice, independently.

No hemoglobin, built-in antifreeze and an XXL heart: icefish prove there''s more than one blueprint for life in the ice.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('icefish-antifreeze', 'en', 1, 'Frozen Planet documentary', 'Frozen Planet BBC documentary', 'The BBC nature series shows the Arctic and Antarctic in jaw-dropping footage, above and below the water.'),
  ('icefish-antifreeze', 'en', 2, 'Antarctica photo book', 'Antarctica photography coffee table book', 'Big, beautiful photos of icebergs, penguins and research stations at the bottom of the world.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('icefish-antifreeze', 'en', 1, 'Wikipedia: Channichthyidae', 'https://en.wikipedia.org/wiki/Channichthyidae'),
  ('icefish-antifreeze', 'en', 2, 'Marine Science Institute, The University of Texas at Austin: Icefish', 'https://utmsi.utexas.edu/science-and-the-sea/radio-program/icefish/'),
  ('icefish-antifreeze', 'en', 3, 'Understanding Evolution (UC Berkeley): No ice in their veins', 'https://evolution.berkeley.edu/fisheye-view-tree-of-life/no-ice-in-their-veins/');
