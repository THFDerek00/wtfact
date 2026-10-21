-- WTFact-Fakt „Der größte Diamantenraub der Geschichte scheiterte an einem halb gegessenen Sandwich“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('antwerp-diamond-heist-sandwich', '2026-10-22T10:00:00+02:00', 'crime', '💎', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'antwerp-diamond-heist-sandwich', 'de', 'antwerpen-diamantenraub-sandwich',
  'Der größte Diamantenraub der Geschichte scheiterte an einem halb gegessenen Sandwich',
  '10 Sicherheitsstufen, vier Jahre Planung, 100 Millionen Dollar Beute. Und dann ein Pausenbrot.',
  '2003 räumten Diebe in Antwerpen Diamanten im Wert von über 100 Millionen Dollar aus einem Tresorraum mit 10 Sicherheitsstufen. Überführt wurde der Anführer durch seine DNA an einem weggeworfenen Sandwich.',
  'Ein Tresor unter einem der bestbewachten Gebäude der Welt. Eine Bande, die jahrelang plant. Und ein Pausenbrot, das alles ruiniert. Der Diamantenraub von Antwerpen hat alles, was ein Heist-Film braucht, nur das Happy End für die Diebe fehlt.

## Das Wochenende im Tresor

Am Wochenende vom 15. auf den 16. Februar 2003 drang eine Bande in den Tresorraum des Antwerp World Diamond Centre in Belgien ein. Laut Guinness World Records hatte der Tresor 10 Sicherheitsstufen. Die Planung dauerte vier Jahre.

Der Anführer, Leonardo Notarbartolo, hatte zuvor Büros im Gebäude gemietet und sich als Diamantenhändler ausgegeben. So lernte die Bande die Abläufe, den Grundriss und die Alarmanlagen kennen. Mit Nachschlüsseln gelangte sie in den Hochsicherheitstresor und leerte 123 von 160 Schließfächern.

Die Beute: Diamanten, Edelsteine und Schmuck im Wert von mehr als 100 Millionen Dollar. Der größte Diamantenraub, den Guinness je verzeichnet hat. „National Geographic“ nennt ihn den „Raub des Jahrhunderts“.

## Die Panne am Straßenrand

Die Diebe waren schlau genug, die Aufnahmen der Überwachungskameras mitzunehmen. Weniger schlau: Auf der Flucht warfen sie die Aufnahmen und anderen Müll am Straßenrand weg. Dazu gehörte ein halb gegessenes Sandwich.

Daran klebte Notarbartolos DNA. Zusammen mit den übrigen Spuren reichte das, um ihn zu verurteilen. Er bekam zehn Jahre Haft.

> Bonusfakt: Die Diamanten selbst wurden nie gefunden. Wo die Beute von über 100 Millionen Dollar geblieben ist, weiß bis heute niemand außer den Tätern.

Notarbartolo kam später auf Bewährung frei. Die Steine blieben verschwunden.

Ein perfekter Plan, vier Jahre Vorbereitung, zehn Sicherheitsstufen überwunden. Und dann der Hunger.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('antwerp-diamond-heist-sandwich', 'de', 1, 'Sachbuch über den Diamantenraub von Antwerpen', 'Diamantenraub Antwerpen Buch Flawless', 'Erzählt den Coup von der Planung bis zum Sandwich.'),
  ('antwerp-diamond-heist-sandwich', 'de', 2, 'Escape-Room-Spiel Tresorknacker', 'Escape Room Spiel Tresor', 'Ein Rätselspiel für den Spieleabend, bei dem ihr selbst den Tresor knacken müsst.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('antwerp-diamond-heist-sandwich', 'de', 1, 'Guinness World Records: Largest diamond heist', 'https://www.guinnessworldrecords.com/world-records/112164-largest-diamond-heist'),
  ('antwerp-diamond-heist-sandwich', 'de', 2, 'National Geographic: A Recent History of Diamond Heists', 'https://www.nationalgeographic.com/culture/article/130509-diamond-heist-crime-jewel-thief');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'antwerp-diamond-heist-sandwich', 'en', 'antwerp-diamond-heist-sandwich',
  'The biggest diamond heist in history was foiled by a half-eaten sandwich',
  '10 layers of security, four years of planning, 100 million dollars in loot. And then a snack.',
  'In 2003, thieves in Antwerp cleaned out over 100 million dollars in diamonds from a vault with 10 layers of security. The ringleader was convicted thanks to his DNA on a discarded sandwich.',
  'A vault beneath one of the best-guarded buildings in the world. A gang that plans for years. And a sandwich that ruins everything. The Antwerp diamond heist has everything a heist movie needs, except a happy ending for the thieves.

## A weekend in the vault

Over the weekend of February 15 to 16, 2003, a gang broke into the vault of the Antwerp World Diamond Centre in Belgium. According to Guinness World Records, the vault had 10 layers of security. The planning took four years.

The ringleader, Leonardo Notarbartolo, had rented offices in the building and posed as a diamond merchant. That way, the gang learned the routines, the layout and the alarm systems. Using copied keys, they got into the high-security vault and emptied 123 of 160 safe-deposit boxes.

The loot: diamonds, gems and jewelry worth more than 100 million dollars. The largest diamond heist Guinness has ever recorded.

## The roadside slip-up

The thieves were smart enough to take the security camera footage with them. Less smart: during their getaway, they dumped the footage and other trash by the side of the road. That included a half-eaten sandwich.

It had Notarbartolo’s DNA on it. Together with the other evidence, that was enough to convict him. He got ten years in prison.

> Bonus fact: The diamonds themselves were never found. Where the more than 100 million dollars in loot ended up, nobody but the thieves knows.

Notarbartolo was later released on parole. The stones stayed missing.

A perfect plan, four years of prep, ten layers of security beaten. And then lunch.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('antwerp-diamond-heist-sandwich', 'en', 1, 'Nonfiction book about the Antwerp diamond heist', 'Flawless Antwerp diamond heist book', 'Tells the story of the job from planning to sandwich.'),
  ('antwerp-diamond-heist-sandwich', 'en', 2, 'Vault escape room game', 'escape room game vault', 'A puzzle game for game night where you have to crack the vault yourselves.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('antwerp-diamond-heist-sandwich', 'en', 1, 'Guinness World Records: Largest diamond heist', 'https://www.guinnessworldrecords.com/world-records/112164-largest-diamond-heist'),
  ('antwerp-diamond-heist-sandwich', 'en', 2, 'National Geographic: A Recent History of Diamond Heists', 'https://www.nationalgeographic.com/culture/article/130509-diamond-heist-crime-jewel-thief');
