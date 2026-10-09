-- WTFact-Fakt „Der Creeper aus Minecraft war eigentlich ein missglücktes Schwein“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('creeper-was-a-pig', NULL, 'popculture', '🐷', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'creeper-was-a-pig', 'de', 'creeper-war-ein-schwein',
  'Der Creeper aus Minecraft war eigentlich ein missglücktes Schwein',
  'Das gefürchtetste Wesen in Minecraft entstand aus einem Programmierfehler, und zwar beim Bauen eines Schweins.',
  'Minecraft-Erfinder Markus „Notch“ Persson wollte ein Schwein bauen, vertauschte aber Höhe und Länge des Modells, und so entstand der Creeper.',
  'Zisch. Bumm. Wenn du Minecraft gespielt hast, kennst du den Creeper: grün, lautlos und sehr gut darin, das Haus zu sprengen, das du gerade gebaut hast. Was du vielleicht nicht weißt: Eigentlich sollte er ein Schwein werden.

## Hoch statt lang

In der Frühzeit von Minecraft baute Erfinder Markus „Notch“ Persson ein Modell für ein Schwein. Dabei ging etwas schief. Der Mojang-Entwickler Jens Bergensten erklärt auf der offiziellen Seite Minecraft.net, der Creeper „sollte eigentlich das Schwein sein, aber Notch hat die Werte für Höhe und Breite vertauscht“. Statt lang und flach wie ein Schwein dazuliegen, stand das Modell aufrecht.

Notch selbst beschrieb den Moment in der Doku „Minecraft: The Story of Mojang“ von 2012, wie Kotaku zitiert: „Ich habe sie aus Versehen hoch statt lang gemacht, also war es so ein hohes Ding mit vier kleinen Füßen.“

## Ein Bug mit Job

Statt den Fehler zu beheben, behielt Notch das seltsame Wesen. Laut Kotaku gab er ihm ein grünes Aussehen und aggressives Verhalten. Auf Minecraft.net heißt es, dass das Modell zusammen mit einer KI, die den Spieler beobachtete, gruselig genug wirkte, um ein Monster daraus zu machen. Laut Kotaku waren Creeper 2009 die ersten feindlichen Kreaturen im Survival-Test des Spiels.

Heute ist er eine der bekanntesten Figuren der Spielewelt. Sogar das Victoria and Albert Museum in London hat einen Creeper-Pulli in seiner Sammlung. Im Katalogeintrag steht, der Creeper sei „offenbar aus Versehen“ entstanden, weil Notch den Code für ein Schwein falsch programmiert habe.

> Bonusfakt: Laut Minecraft.net explodiert ein Creeper, sobald er dir auf drei Blöcke nahekommt.

Das gefürchtetste Wesen in Minecraft ist technisch gesehen ein Schwein mit Haltungsproblem.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('creeper-was-a-pig', 'de', 1, 'Creeper-Plüschfigur', 'Minecraft Creeper Plüsch', 'Weich, grün und garantiert explosionsfrei, ein Klassiker für jedes Kinderzimmer und Gaming-Regal.'),
  ('creeper-was-a-pig', 'de', 2, 'LEGO-Minecraft-Set', 'LEGO Minecraft Set', 'Baut die Klötzchenwelt aus dem Spiel in echt nach, inklusive Figuren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('creeper-was-a-pig', 'de', 1, 'Minecraft.net: Meet the Creeper', 'https://www.minecraft.net/en-us/article/meet-creeper'),
  ('creeper-was-a-pig', 'de', 2, 'Kotaku: The History Of The Creeper, Minecraft''s Most Infamous Monster', 'https://kotaku.com/the-history-of-the-creeper-minecrafts-most-infamous-mo-1789304071'),
  ('creeper-was-a-pig', 'de', 3, 'V&A: Creeper', 'https://collections.vam.ac.uk/item/O1350002');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'creeper-was-a-pig', 'en', 'minecraft-creeper-was-a-pig',
  'Minecraft''s creeper started out as a botched pig',
  'The most feared creature in Minecraft came from a coding mistake, made while building a pig.',
  'Minecraft creator Markus "Notch" Persson was building a pig but swapped the model''s height and length, and that is how the creeper was born.',
  'Hiss. Boom. If you''ve played Minecraft, you know the creeper: green, silent and very good at blowing up the house you just built. What you might not know is that it was supposed to be a pig.

## Tall instead of long

In the early days of Minecraft, its creator Markus "Notch" Persson was building a model for a pig. Something went wrong. Mojang developer Jens Bergensten explains on the official site Minecraft.net that the creeper "was supposed to be the pig, but Notch mixed the height and the width values." Instead of lying long and flat like a pig, the model stood upright.

Notch himself described the moment in the 2012 documentary Minecraft: The Story of Mojang, as quoted by Kotaku: "And I accidentally made them tall instead of long, so it was like a tall thing with four little feet."

## A bug with a job

Instead of fixing the mistake, Notch kept the strange creature. According to Kotaku, he gave it a green look and aggressive behavior. Minecraft.net says the model, combined with an AI that watched the player, seemed creepy enough to turn into a monster. According to Kotaku, creepers were the first hostile mobs in the game''s survival test in 2009.

Today it''s one of the most recognizable characters in gaming. Even the Victoria and Albert Museum in London has a creeper sweatshirt in its collection. Its catalog entry says the creeper was "apparently created accidentally" because Notch "wrongly programmed the code to create a pig."

> Bonus fact: According to Minecraft.net, a creeper explodes once it gets within three blocks of you.

The most feared creature in Minecraft is, technically, a pig with a posture problem.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('creeper-was-a-pig', 'en', 1, 'Creeper plush toy', 'Minecraft Creeper plush', 'Soft, green and guaranteed not to explode, a classic for any kid''s room or gaming shelf.'),
  ('creeper-was-a-pig', 'en', 2, 'LEGO Minecraft set', 'LEGO Minecraft set', 'Builds the blocky world from the game for real, figures included.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('creeper-was-a-pig', 'en', 1, 'Minecraft.net: Meet the Creeper', 'https://www.minecraft.net/en-us/article/meet-creeper'),
  ('creeper-was-a-pig', 'en', 2, 'Kotaku: The History Of The Creeper, Minecraft''s Most Infamous Monster', 'https://kotaku.com/the-history-of-the-creeper-minecrafts-most-infamous-mo-1789304071'),
  ('creeper-was-a-pig', 'en', 3, 'V&A: Creeper', 'https://collections.vam.ac.uk/item/O1350002');
