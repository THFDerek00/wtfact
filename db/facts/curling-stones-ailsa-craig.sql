-- WTFact-Fakt „Olympische Curlingsteine stammen von einer einzigen unbewohnten Insel“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('curling-stones-ailsa-craig', '2026-10-23T16:00:00+02:00', 'sport', '🥌', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'curling-stones-ailsa-craig', 'de', 'olympische-curlingsteine-von-einer-insel',
  'Olympische Curlingsteine stammen von einer einzigen unbewohnten Insel',
  'Der Granit auf dem Olympia-Eis kommt von einem Vogelfelsen vor Schottland, und nur eine Firma darf ihn holen.',
  'Olympische Curlingsteine fertigt die Firma Kays of Scotland aus Granit von Ailsa Craig, einer unbewohnten Insel im Firth of Clyde.',
  'Die Curlingsteine, die bei den Winterspielen übers Eis gleiten, haben dieselbe Heimatadresse: Ailsa Craig, ein Felsbrocken im Firth of Clyde vor der Westküste Schottlands. Dort wohnt niemand. Die Seevögel zählen nicht.

## Ein erstarrter Vulkanschlot voller Spezialgranit

Laut World Curling ist Ailsa Craig ein erstarrter Vulkanschlot, der vor etwa 60 Millionen Jahren entstanden ist. Team GB gibt die Insel mit etwa 0,75 mal 0,5 Meilen an, sie ragt bis zu 340 Meter auf. Zwischen dem 16. und 19. Jahrhundert waren dort Menschen aktiv, heute gehört die Insel den Vögeln: Hier brütet Schottlands drittgrößte Basstölpel-Kolonie, und auch Papageitaucher schauen vorbei.

Der Fels liefert zwei Sorten Granit. Ailsa Craig Blue Hone ist extrem wasserabweisend und bildet die Lauffläche, also den Teil, der wirklich das Eis berührt. Ailsa Craig Common Green macht den Rest des Steins aus, weil er Treffer wegsteckt, ohne zu splittern, wenn Steine zusammenkrachen.

## Eine Firma, eine Insel

Nur eine Firma darf auf der Insel Granit holen: Kays of Scotland aus Mauchline in Ayrshire. Die exklusiven Rechte hat ihr der Marquess of Ailsa vergeben. Kays wurde 1851 gegründet, und laut World Curling werden olympische Steine seit 1998 in Schottland von Hand gefertigt.

Gegraben wird dort nicht täglich. Laut Team GB wird der Granit nur etwa alle zehn Jahre geerntet, zuletzt 2020. World Curling ergänzt, dass der Fels früher gesprengt wurde, heute liegt aber so viel heruntergefallener Granit herum, dass kein Dynamit mehr nötig ist.

Für die Olympischen und Paralympischen Spiele in Mailand und Cortina 2026 fertigte Kays 132 neue Steine von Hand. Laut Team GB wiegt ein Stein auf Olympia-Niveau typischerweise 20 Kilogramm.

> Bonusfakt: Ailsa Craig ist nicht die einzige Quelle für Curling-Granit. Laut Team GB liefert auch ein Steinbruch in Trefor im Norden von Wales Granit für Curlingsteine.

Das ganze Wischen und Schreien auf dem Eis hängt also an einem Stein von einer Insel, auf der nur Seevögel wohnen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('curling-stones-ailsa-craig', 'de', 1, 'Tisch-Curling-Spiel', 'Tisch Curling Spiel', 'Bringt das Gleiten und die Sprüche an den Küchentisch.'),
  ('curling-stones-ailsa-craig', 'de', 2, 'Reiseführer Schottland', 'Reiseführer Schottland', 'Hilft bei der Planung einer Reise an die Westküste, von Ayrshire bis zu den Inseln.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('curling-stones-ailsa-craig', 'de', 1, 'Team GB: Ailsa Craig: Olympic curling stones and the Scottish island that makes them', 'https://www.teamgb.com/article/ailsa-craig-everything-you-need-to-know-about-where-olympic-curling-stones/5EFRzBr6xItMWCr2XRyaTS'),
  ('curling-stones-ailsa-craig', 'de', 2, 'World Curling: Made in Scotland, built for champions: The curling stones of Milano Cortina 2026', 'https://worldcurling.org/2026/02/olympic-curling-stone-feature/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'curling-stones-ailsa-craig', 'en', 'olympic-curling-stones-one-island',
  'Olympic curling stones come from a single uninhabited island',
  'The granite on Olympic ice comes from a seabird rock off Scotland, and only one company may take it.',
  'Olympic curling stones are made by Kays of Scotland from granite from Ailsa Craig, an uninhabited island in the Firth of Clyde.',
  'The curling stones gliding across the ice at the Winter Olympics share the same home address: Ailsa Craig, a lump of rock in the Firth of Clyde off Scotland''s west coast. Nobody lives there. The seabirds don''t count.

## A volcanic plug full of perfect granite

According to World Curling, Ailsa Craig is a volcanic plug that formed about 60 million years ago. Team GB puts the island at about 0.75 by 0.5 miles, rising to 340 meters. Humans were active there between the 16th and 19th centuries, but today the island belongs to the birds: it is home to Scotland''s third largest gannet colony, and puffins drop by too.

The rock comes in two kinds of granite. Ailsa Craig Blue Hone is extremely water-resistant and is used for the running edge, the part that actually touches the ice. Ailsa Craig Common Green makes up the rest of the stone, because it takes hits without splintering when stones crash into each other.

## One company, one island

Only one company may take granite from the island: Kays of Scotland, based in Mauchline, Ayrshire. It holds the exclusive rights, granted by the Marquess of Ailsa. Kays was founded in 1851, and according to World Curling, Olympic stones have been hand-crafted in Scotland since 1998.

Nobody is digging there every day. Team GB says the granite is harvested roughly once a decade, most recently in 2020. World Curling adds that crews used to blast the rock, but there is now so much fallen granite lying around that dynamite isn''t needed anymore.

For the Olympic and Paralympic Games in Milano Cortina 2026, Kays made 132 new stones by hand. According to Team GB, an Olympic-level stone typically weighs 20 kilograms.

> Bonus fact: Ailsa Craig isn''t the only source of curling granite. Team GB says a quarry in Trefor in North Wales supplies granite for curling stones as well.

All that sweeping and shouting on the ice comes down to a rock from an island where only seabirds live.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('curling-stones-ailsa-craig', 'en', 1, 'Tabletop curling game', 'tabletop curling game', 'Brings the sliding and the trash talk to your kitchen table.'),
  ('curling-stones-ailsa-craig', 'en', 2, 'Scotland travel guide', 'Scotland travel guide book', 'Helps plan a trip to the west coast, from Ayrshire to the islands.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('curling-stones-ailsa-craig', 'en', 1, 'Team GB: Ailsa Craig: Olympic curling stones and the Scottish island that makes them', 'https://www.teamgb.com/article/ailsa-craig-everything-you-need-to-know-about-where-olympic-curling-stones/5EFRzBr6xItMWCr2XRyaTS'),
  ('curling-stones-ailsa-craig', 'en', 2, 'World Curling: Made in Scotland, built for champions: The curling stones of Milano Cortina 2026', 'https://worldcurling.org/2026/02/olympic-curling-stone-feature/');
