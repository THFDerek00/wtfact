-- WTFact-Fakt „Die Bajau haben eine rund 50 Prozent größere Milz, und das steckt wohl in ihren Genen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('bajau-divers', '2026-09-22', 'survival', '🌊', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bajau-divers', 'de', 'bajau-seenomaden-groessere-milz',
  'Die Bajau haben eine rund 50 Prozent größere Milz, und das steckt wohl in ihren Genen',
  'Ein Volk, das seit Jahrhunderten vom Tauchen lebt, hat sich offenbar auch körperlich angepasst.',
  'Bei den Bajau, den „Seenomaden“ Südostasiens, ist die Milz im Schnitt rund 50 Prozent größer als bei ihren Nachbarn, vermutlich durch natürliche Selektion.',
  'Die meisten Menschen schaffen beim Luftanhalten ungefähr eine Minute. Die Bajau verbringen dagegen einen Großteil ihres Arbeitstags unter Wasser. Und ihr Körper scheint sich darauf eingestellt zu haben, bis hinein in die Gene.

## Ein Leben auf dem Meer

Die Bajau werden oft „Seenomaden“ genannt. Seit rund 1000 Jahren leben sie in den Gewässern zwischen den Philippinen, Malaysia und Indonesien. Traditionell tauchen sie nach Fischen und Meerestieren, in langen Schichten und mit einfacher Ausrüstung. Laut Auswertungen verbringen manche von ihnen **etwa 60 Prozent ihres Arbeitstags unter Wasser**.

Die Genetikerin Melissa Ilardo wollte wissen, warum. Sie reiste nach Indonesien, lernte die Gemeinschaft kennen und maß dann mit einem tragbaren Ultraschallgerät die Milz von Bajau und von Saluan, einem verwandten Volk, das an Land lebt.

## Die Milz als Sauerstofftank

Warum ausgerechnet die Milz? Beim Tauchen springt im Körper ein Reflex an: Die Milz zieht sich zusammen und schiebt zusätzliche rote Blutkörperchen voller Sauerstoff in den Kreislauf. Eine größere Milz bedeutet also mehr Reserve. Robben, die tief tauchen, haben ebenfalls auffällig große Milzen.

Das Ergebnis der Studie, 2018 im Fachjournal Cell erschienen: **Die Milz der Bajau ist im Schnitt rund 50 Prozent größer als die der Saluan.** Der entscheidende Hinweis: Auch Bajau, die gar nicht tauchen, hatten größere Milzen. Training allein kann es also kaum erklären.

## Die Spur führt zu einem Gen

Im Erbgut fanden die Forschenden 25 Stellen, an denen sich die Bajau deutlich von den Vergleichsgruppen unterschieden. Eine davon liegt im Gen PDE10A. Varianten dort hängen mit einer größeren Milz zusammen. Bei Mäusen beeinflusst das Gen ein Schilddrüsenhormon, das die Größe der Milz steuert.

> Eine Folgestudie von 2021 zeigte: Mäuse mit weniger PDE10A-Protein entwickelten tatsächlich größere Milzen, passend zu dem, was man bei den Bajau beobachtet hatte.

Ganz abgeschlossen ist die Sache nicht. Fachleute weisen darauf hin, dass mehr Daten nötig sind, um sicher zu belegen, dass die Genvariante, die große Milz und die Tauchkünste ursächlich zusammenhängen. Trotzdem gilt der Fall als eines der seltenen Beispiele, bei denen man natürliche Selektion beim modernen Menschen so konkret beobachten kann.

Evolution passiert eben nicht nur im Lehrbuch, sondern auch mitten im Ozean.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bajau-divers', 'de', 1, 'Holzmodell eines traditionellen Segelboots', 'Segelboot Modell Holz Deko', 'Handgefertigtes Boot fürs Regal. Bringt ein bisschen Meer und Fernweh in jedes Zimmer.'),
  ('bajau-divers', 'de', 2, 'Bildband über die Unterwasserwelt', 'Bildband Unterwasserwelt Ozean', 'Großformatige Fotos von Riffen, Fischschwärmen und Tiefsee. Perfekt zum Blättern auf dem Sofa.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bajau-divers', 'de', 1, 'National Geographic: ''Sea Nomads'' Are First Known Humans Genetically Adapted to Diving', 'https://www.nationalgeographic.com/science/article/bajau-sea-nomads-free-diving-spleen-science'),
  ('bajau-divers', 'de', 2, 'ScienceDaily: Natural selection gave a freediving people in Southeast Asia bigger spleens', 'https://www.sciencedaily.com/releases/2018/04/180419131128.htm'),
  ('bajau-divers', 'de', 3, 'Science Feedback: Research suggests that a particular mutation related to larger spleen size provides the Bajau people from Southeast Asia with remarkable diving skills', 'https://science.feedback.org/review/research-suggests-particular-mutation-larger-spleen-size-provides-bajau-people-southeast-asia-remarkable-diving-skills/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bajau-divers', 'en', 'bajau-sea-nomads-bigger-spleens',
  'The Bajau have spleens about 50 percent bigger, and it''s probably in their genes',
  'A people who have lived off diving for centuries seem to have adapted physically, too.',
  'The Bajau, Southeast Asia''s "sea nomads," have spleens about 50 percent bigger on average than their neighbors, likely thanks to natural selection.',
  'Most people can hold their breath for about a minute. The Bajau, meanwhile, spend a huge chunk of their workday underwater. And their bodies seem to have adjusted to it, all the way down to their genes.

## A life at sea

The Bajau are often called "sea nomads." For about 1000 years they''ve lived in the waters between the Philippines, Malaysia and Indonesia. Traditionally they dive for fish and other seafood, in long shifts and with simple gear. By some estimates, some of them spend **around 60 percent of their workday underwater**.

Geneticist Melissa Ilardo wanted to know how. She traveled to Indonesia, got to know the community, and then used a portable ultrasound machine to measure the spleens of Bajau people and of the Saluan, a related group that lives on land.

## The spleen as an oxygen tank

Why the spleen? During a dive, a reflex kicks in: the spleen contracts and pushes extra oxygen-rich red blood cells into circulation. A bigger spleen means a bigger reserve. Deep-diving seals have unusually large spleens too.

The result, published in 2018 in the journal Cell: **Bajau spleens are about 50 percent bigger on average than those of the Saluan.** The key clue: even Bajau who don''t dive had larger spleens. So training alone can hardly explain it.

## The trail leads to a gene

In the genome, the researchers found 25 sites where the Bajau differed significantly from the comparison groups. One of them is in a gene called PDE10A. Variants there are linked to a larger spleen. In mice, the gene influences a thyroid hormone that controls spleen size.

> A follow-up study in 2021 found that mice with less PDE10A protein really did develop larger spleens, matching what had been seen in the Bajau.

The case isn''t completely closed. Experts point out that more data is needed to firmly prove a causal link between the gene variant, the big spleen and the diving skills. Still, it counts as one of the rare examples where you can see natural selection in modern humans this concretely.

Evolution doesn''t just happen in textbooks. Sometimes it happens in the middle of the ocean.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bajau-divers', 'en', 1, 'Wooden traditional sailboat model', 'wooden sailboat model decor', 'A handcrafted boat for your shelf. Brings a bit of ocean and wanderlust into any room.'),
  ('bajau-divers', 'en', 2, 'Underwater world photography book', 'underwater ocean photography coffee table book', 'Big, gorgeous shots of reefs, fish schools and the deep sea. Perfect for flipping through on the couch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bajau-divers', 'en', 1, 'National Geographic: ''Sea Nomads'' Are First Known Humans Genetically Adapted to Diving', 'https://www.nationalgeographic.com/science/article/bajau-sea-nomads-free-diving-spleen-science'),
  ('bajau-divers', 'en', 2, 'ScienceDaily: Natural selection gave a freediving people in Southeast Asia bigger spleens', 'https://www.sciencedaily.com/releases/2018/04/180419131128.htm'),
  ('bajau-divers', 'en', 3, 'Science Feedback: Research suggests that a particular mutation related to larger spleen size provides the Bajau people from Southeast Asia with remarkable diving skills', 'https://science.feedback.org/review/research-suggests-particular-mutation-larger-spleen-size-provides-bajau-people-southeast-asia-remarkable-diving-skills/');
