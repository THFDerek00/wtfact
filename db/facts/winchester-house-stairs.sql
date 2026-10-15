-- WTFact-Fakt „Im Winchester-Haus mit rund 160 Zimmern führen Treppen in die Decke“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('winchester-house-stairs', '2026-10-15T22:06:56+02:00', 'horror', '🏚️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'winchester-house-stairs', 'de', 'winchester-haus-treppen-in-die-decke',
  'Im Winchester-Haus mit rund 160 Zimmern führen Treppen in die Decke',
  'Türen, die gegen eine Wand gehen, und eine Legende über Geister. Was davon belegt ist, ist fast genauso schräg.',
  'Im Winchester Mystery House in Kalifornien gibt es rund 160 Zimmer, Treppen, die an der Decke enden, und Türen, die sich zur Wand hin öffnen.',
  'Du steigst eine Treppe hoch, und oben ist: Decke. Du öffnest eine Tür, und dahinter ist: Wand. **Im Winchester Mystery House in San José, Kalifornien, ist genau das Alltag.** Das Haus hat rund 160 Zimmer und gilt als eines der seltsamsten Gebäude der USA.

## Die Erbin, die nicht aufhörte zu bauen

Gebaut hat es Sarah Winchester. Ihr Mann William war Sohn des Gewehrfabrikanten Oliver Winchester, er starb 1881, ihre kleine Tochter Annie schon Jahre zuvor. Sarah erbte ein riesiges Vermögen, zog Mitte der 1880er-Jahre nach Kalifornien und kaufte ein Farmhaus. Dann fing sie an, anzubauen. Und baute weiter, bis zu ihrem Tod 1922.

Bei ihrem Tod hatte das Haus rund 160 Zimmer, etwa 2000 Türen, 10.000 Fenster, 47 Treppen und 47 Kamine. Dazu kommen die berühmten Kuriositäten: Treppen, die in der Decke enden, Türen und Schränke, die auf eine blanke Wand gehen, und Fenster mitten im Haus.

## Was die Legende erzählt

Die bekannte Geschichte geht so: Ein Medium in Boston soll Sarah gesagt haben, die Geister aller Menschen, die durch Winchester-Gewehre gestorben sind, verfolgten sie. Nur wenn sie ununterbrochen baue, sei sie sicher. Die Treppen ins Nichts sollten die Geister verwirren.

Belegt ist das nicht. Das angebliche Medium taucht in keinen Bostoner Unterlagen auf, und Historikerin Mary Jo Ignoffo hat viele Mythen in ihrer Biografie zerlegt. Sarahs eigene Briefe drehen sich eher um praktische Dinge wie einen zu dunklen Flur. In einem schrieb sie sogar, sie habe die Handwerker über den Winter heimgeschickt. Mit „nonstop“ war es also nichts.

## Die nüchterne Erklärung

Viele der Sackgassen entstanden wohl durch das Erdbeben von 1906. Es zerstörte einen Turm und große Teile der oberen Stockwerke, und Sarah ließ vieles davon nicht wieder aufbauen. Was übrig blieb, waren Treppen und Türen, die plötzlich nirgendwohin mehr führten.

> Eine Treppe im Haus hat 44 Stufen, steigt aber nur etwa 3 Meter. Die flachen Stufen sollen Sarah, die sehr klein und gesundheitlich angeschlagen war, das Treppensteigen erleichtert haben.

Kein Spuk, nur Erdbeben, Eigensinn und ein sehr großes Budget. Gruselig sieht es trotzdem aus.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('winchester-house-stairs', 'de', 1, 'Winchester – Das Haus der Verdammten (Blu-ray)', 'Winchester Das Haus der Verdammten Blu-ray', 'Gruselfilm mit Helen Mirren als Sarah Winchester. Erzählt die Legende, nicht die Geschichte, aber mit viel Atmosphäre.'),
  ('winchester-house-stairs', 'de', 2, 'Captive of the Labyrinth von Mary Jo Ignoffo (Englisch)', 'Captive of the Labyrinth Ignoffo', 'Die gründlich recherchierte Biografie über Sarah Winchester. Für alle, die wissen wollen, was wirklich hinter dem Haus steckt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('winchester-house-stairs', 'de', 1, 'National Park Service: Winchester House', 'https://www.nps.gov/places/winchester-house.htm'),
  ('winchester-house-stairs', 'de', 2, 'The Saturday Evening Post: Sarah Winchester and Her Mystery House', 'https://www.saturdayeveningpost.com/2026/07/sarah-winchester-and-her-mystery-house/'),
  ('winchester-house-stairs', 'de', 3, 'Wikipedia: Winchester Mystery House', 'https://en.wikipedia.org/wiki/Winchester_Mystery_House');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'winchester-house-stairs', 'en', 'winchester-house-stairs-to-the-ceiling',
  'In the 160-room Winchester House, stairs lead into the ceiling',
  'Doors that open onto walls and a legend about ghosts. The documented story is almost as strange.',
  'The Winchester Mystery House in California has around 160 rooms, stairs that end at the ceiling and doors that open onto walls.',
  'You climb a staircase, and at the top there''s: ceiling. You open a door, and behind it there''s: wall. **At the Winchester Mystery House in San Jose, California, that''s just normal.** The house has around 160 rooms and is considered one of the strangest buildings in the US.

## The heiress who kept on building

It was built by Sarah Winchester. Her husband William was the son of rifle maker Oliver Winchester. He died in 1881, and their baby daughter Annie had died years earlier. Sarah inherited a huge fortune, moved to California in the mid-1880s and bought a farmhouse. Then she started adding on. And kept going until her death in 1922.

By the time she died, the house had around 160 rooms, about 2,000 doors, 10,000 windows, 47 staircases and 47 fireplaces. Then there are the famous oddities: stairs that end in the ceiling, doors and cabinets that open onto bare walls, and windows in the middle of the house.

## What the legend says

The famous story goes like this: a medium in Boston supposedly told Sarah that the spirits of everyone killed by Winchester rifles were haunting her. She would only be safe if she never stopped building. The stairs to nowhere were meant to confuse the ghosts.

None of this is documented. The alleged medium doesn''t show up in any Boston records, and historian Mary Jo Ignoffo took apart many of the myths in her biography. Sarah''s own letters deal with practical things, like a hallway that was too dark. In one, she even wrote that she had sent the workmen home for the winter. So much for "nonstop".

## The down-to-earth explanation

Many of the dead ends were probably caused by the 1906 earthquake. It destroyed a tower and large parts of the upper floors, and Sarah never rebuilt much of it. What was left were stairs and doors that suddenly led nowhere.

> One staircase in the house has 44 steps but rises only about 3 meters. The shallow steps are said to have made climbing easier for Sarah, who was very short and in poor health.

No haunting, just an earthquake, a strong will and a very big budget. It still looks spooky.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('winchester-house-stairs', 'en', 1, 'Winchester (2018) Blu-ray', 'Winchester 2018 Helen Mirren Blu-ray', 'A horror movie starring Helen Mirren as Sarah Winchester. It tells the legend, not the history, but it''s full of atmosphere.'),
  ('winchester-house-stairs', 'en', 2, 'Captive of the Labyrinth by Mary Jo Ignoffo', 'Captive of the Labyrinth Ignoffo', 'The thoroughly researched biography of Sarah Winchester. For anyone who wants to know what''s really behind the house.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('winchester-house-stairs', 'en', 1, 'National Park Service: Winchester House', 'https://www.nps.gov/places/winchester-house.htm'),
  ('winchester-house-stairs', 'en', 2, 'The Saturday Evening Post: Sarah Winchester and Her Mystery House', 'https://www.saturdayeveningpost.com/2026/07/sarah-winchester-and-her-mystery-house/'),
  ('winchester-house-stairs', 'en', 3, 'Wikipedia: Winchester Mystery House', 'https://en.wikipedia.org/wiki/Winchester_Mystery_House');
