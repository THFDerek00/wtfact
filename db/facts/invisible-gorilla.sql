-- WTFact-Fakt „Rund die Hälfte der Zuschauer übersieht einen Gorilla mitten in einem Basketball-Video“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('invisible-gorilla', NULL, 'mind', '🦍', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'invisible-gorilla', 'de', 'unsichtbarer-gorilla-basketball-video',
  'Rund die Hälfte der Zuschauer übersieht einen Gorilla mitten in einem Basketball-Video',
  'Ein Mensch im Affenkostüm läuft durchs Bild, trommelt sich auf die Brust und bleibt trotzdem unsichtbar.',
  'Im berühmten Gorilla-Experiment bemerkte etwa die Hälfte der Zuschauer einen Menschen im Gorillakostüm nicht, der mitten durchs Bild lief, weil sie Pässe zählen sollten.',
  'Stell dir ein kurzes Video vor. Ein paar Leute passen sich Basketbälle zu, und deine Aufgabe ist simpel: Zähl die Pässe der Spieler in Weiß. Kein Problem. Danach fragen dich die Forscher, ob dir der Gorilla aufgefallen ist.

## Der Gorilla, den keiner sah

So läuft das berühmte Experiment der Psychologen Daniel Simons und Christopher Chabris an der Harvard University. Zwei Teams, eins in Weiß, eins in Schwarz, spielen sich Bälle zu. Die Zuschauer zählen die Pässe des weißen Teams. Nach etwa einer halben Minute läuft ein Mensch im Gorillakostüm in die Mitte, dreht sich zur Kamera, trommelt sich auf die Brust und geht wieder.

Laut NPR und dem Smithsonian Magazine hat ungefähr die Hälfte der Zuschauer den Gorilla überhaupt nicht gesehen. Nicht verschwommen, nicht so halb. Gar nicht. In einer Version war er laut Chabris neun Sekunden lang im Bild.

Psychologen nennen das Unaufmerksamkeitsblindheit. Wenn deine Aufmerksamkeit an einer Aufgabe klebt, kann alles, wonach du nicht suchst, komplett an deinem Bewusstsein vorbeirauschen, selbst wenn es direkt vor deinen Augen passiert.

## Auch Profis tappen rein

Vielleicht denkst du, Fachleute mit geschultem Blick sind dagegen immun. Trafton Drew und Jeremy Wolfe von der Harvard Medical School haben das mit Radiologen getestet, also mit Leuten, deren Job es ist, winzige Details in medizinischen Aufnahmen zu entdecken. Sie versteckten einen Gorilla in der Größe einer Streichholzschachtel in Lungenaufnahmen und baten die Radiologen, nach Krebsknoten zu suchen.

Laut NPR übersahen 83 Prozent der Radiologen den Gorilla. Ihr Blick war zwar über die Stelle gewandert, aber weil sie nach Knoten suchten und nicht nach Gorillas, kam er bei ihnen nie an.

> Bonusfakt: In einer Fortsetzung von 2010 entdeckten Zuschauer, die den Gorilla schon kannten, ihn zwar, übersahen aber oft andere Überraschungen, etwa einen Vorhang im Hintergrund, der die Farbe wechselte.

Deine Augen nehmen viel mehr auf, als du mitbekommst. Was davon wirklich in deinem Kopf landet, entscheidet deine Aufmerksamkeit.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('invisible-gorilla', 'de', 1, 'Buch „Der unsichtbare Gorilla“ von Chabris und Simons', 'Der unsichtbare Gorilla Chabris Simons', 'Die beiden Forscher erklären selbst, welche Streiche dir deine Wahrnehmung spielt.'),
  ('invisible-gorilla', 'de', 2, 'Buch mit optischen Täuschungen', 'optische Täuschungen Buch', 'Dutzende Bilder, bei denen dein Gehirn garantiert ins Stolpern gerät.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('invisible-gorilla', 'de', 1, 'Smithsonian Magazine: But Did You See the Gorilla? The Problem With Inattentional Blindness', 'https://www.smithsonianmag.com/science-nature/but-did-you-see-the-gorilla-the-problem-with-inattentional-blindness-17339778/'),
  ('invisible-gorilla', 'de', 2, 'NPR: Why Even Radiologists Can Miss A Gorilla Hiding In Plain Sight', 'https://www.npr.org/sections/health-shots/2013/02/11/171409656/why-even-radiologists-can-miss-a-gorilla-hiding-in-plain-sight'),
  ('invisible-gorilla', 'de', 3, 'Big Think: Missing the 200-Pound Gorilla in the Room', 'https://bigthink.com/videos/missing-the-200-pound-gorilla-in-the-room/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'invisible-gorilla', 'en', 'invisible-gorilla-basketball-video',
  'About half of viewers miss a gorilla walking right through a basketball video',
  'A person in a gorilla suit strolls through the scene, thumps its chest and still stays invisible.',
  'In the famous gorilla experiment, about half of viewers failed to notice a person in a gorilla suit walking through the middle of the scene because they were busy counting passes.',
  'Picture a short video. A few people pass basketballs to each other, and your job is simple: count the passes made by the players in white. Easy. Afterwards, the researchers ask whether you noticed the gorilla.

## The gorilla nobody saw

That is the famous experiment by psychologists Daniel Simons and Christopher Chabris at Harvard University. Two teams, one in white and one in black, pass balls around. Viewers count the white team''s passes. About half a minute in, a person in a gorilla suit walks into the middle, turns to the camera, thumps its chest and walks off.

According to NPR and Smithsonian Magazine, roughly half of the viewers did not see the gorilla at all. Not a blurry glimpse, not sort of. Nothing. In one version, Chabris says, it was on screen for nine seconds.

Psychologists call this inattentional blindness. When your attention is glued to one task, anything you are not looking for can slip right past your awareness, even if it happens directly in front of your eyes.

## Even the experts fall for it

Maybe you think trained professionals are immune. Trafton Drew and Jeremy Wolfe of Harvard Medical School tested that with radiologists, people whose job is to spot tiny details in medical images. They hid a gorilla the size of a matchbook in lung scans and asked the radiologists to look for cancerous nodules.

According to NPR, 83 percent of the radiologists missed the gorilla. Their eyes had passed over the spot, but because they were searching for nodules and not for gorillas, it never registered.

> Bonus fact: In a 2010 sequel, viewers who already knew about the gorilla spotted it, but many missed other surprises, such as a curtain in the background changing color.

Your eyes take in far more than you ever notice. What actually lands in your head is up to your attention.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('invisible-gorilla', 'en', 1, 'The Invisible Gorilla by Chabris and Simons', 'The Invisible Gorilla Chabris Simons book', 'The two researchers explain in their own words how your perception plays tricks on you.'),
  ('invisible-gorilla', 'en', 2, 'Book of optical illusions', 'optical illusions book', 'Dozens of images that are guaranteed to trip up your brain.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('invisible-gorilla', 'en', 1, 'Smithsonian Magazine: But Did You See the Gorilla? The Problem With Inattentional Blindness', 'https://www.smithsonianmag.com/science-nature/but-did-you-see-the-gorilla-the-problem-with-inattentional-blindness-17339778/'),
  ('invisible-gorilla', 'en', 2, 'NPR: Why Even Radiologists Can Miss A Gorilla Hiding In Plain Sight', 'https://www.npr.org/sections/health-shots/2013/02/11/171409656/why-even-radiologists-can-miss-a-gorilla-hiding-in-plain-sight'),
  ('invisible-gorilla', 'en', 3, 'Big Think: Missing the 200-Pound Gorilla in the Room', 'https://bigthink.com/videos/missing-the-200-pound-gorilla-in-the-room/');
