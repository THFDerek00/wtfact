-- WTFact-Fakt „Papageifische schlafen in einem Schlafsack aus ihrem eigenen Schleim“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('parrotfish-mucus-cocoon', '2026-10-19T12:00:00+02:00', 'animals', '🐠', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'parrotfish-mucus-cocoon', 'de', 'papageifische-schlafen-im-schleimkokon',
  'Papageifische schlafen in einem Schlafsack aus ihrem eigenen Schleim',
  'Jede Nacht hüllen sich diese Rifffische in Schleim, und ein Experiment hat gezeigt, wofür das gut ist.',
  'Viele Papageifische hüllen sich nachts in einen Kokon aus Schleim, und in einem Experiment wurden nur etwa 10 Prozent der Fische im Kokon von blutsaugenden Parasiten befallen, aber etwa 95 Prozent der Fische ohne.',
  'Manche Menschen schlafen unter einem Moskitonetz. Papageifische bauen sich ihres selbst, und zwar aus Schleim.

## Ein Schlafsack aus den Kiemen

Wenn es am Korallenriff Nacht wird, packen sich viele Papageifische und Lippfische ein. Sie geben Schleim ab, der einen durchsichtigen Kokon um ihren ganzen Körper bildet. Laut National Geographic brauchen sie dafür weniger als eine Stunde. Der Schleim kommt aus speziellen Drüsen in den Kiemen, die laut Live Science etwa so groß wie eine Vierteldollar-Münze sind.

Billig ist dieses Abendritual nicht. Der Kokon kostet etwa 2,5 Prozent der täglichen Energie des Fisches. Warum also der Aufwand?

## Der Parasiten-Test

Die Meeresbiologin Alexandra Grutter von der University of Queensland in Australien hat 2010 eine Idee überprüft. Ihr Verdacht: Gnathiiden, winzige Asseln, die nachts Fischblut saugen und vielleicht auch einen malariaähnlichen Blutparasiten übertragen.

Grutter arbeitete mit Papageifischen der Art Chlorurus sordidus vom Great Barrier Reef. Bei der Hälfte der schlafenden Fische entfernte sie vorsichtig den Kokon, so sanft, dass keiner aufwachte. Dann setzte sie die Parasiten für 4,5 Stunden in die Becken.

Das Ergebnis, erschienen in der Fachzeitschrift Biology Letters: Etwa 95 Prozent der Fische ohne Kokon wurden befallen, aber nur etwa 10 Prozent der Fische im Schleimsack. National Geographic verglich den Kokon mit einem Moskitonetz. Was die Parasiten genau abhält, ist noch offen. Es könnte eine körperliche Barriere sein, eine chemische, oder der Schleim überdeckt den Geruch des Fisches.

> Bonusfakt: Die Idee, dass der Kokon vor Räubern schützt, ist älter. 1959 beobachteten Forscher, dass drei schleimspinnende Arten seltener von Muränen gefressen wurden als eine Art, die ohne Hülle schlief. Live Science merkt aber an, dass auch viele Fische im Kokon gefressen wurden.

Der Morgen danach hat noch eine schräge Note. Laut Live Science sah Grutter einen Gemeinen Putzerlippfisch, der an seinen eigenen alten Kokons pickte, und einen Fisch, der im Morgengrauen offenbar Schleim im Maul hatte. Vielleicht ist der Schlafanzug von gestern das Frühstück von heute.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('parrotfish-mucus-cocoon', 'de', 1, 'Bestimmungsbuch für Korallenrifffische', 'Rifffische Bestimmungsbuch', 'Hilft dir, Papageifische, Lippfische und ihre Nachbarn beim Schnorcheln oder im Aquarium zu erkennen.'),
  ('parrotfish-mucus-cocoon', 'de', 2, 'Papageifisch-Plüschtier', 'Papageifisch Plüschtier', 'Ein bunter, weicher Fisch fürs Sofa oder als Geschenk für Meeresfans.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('parrotfish-mucus-cocoon', 'de', 1, 'National Geographic: Parrotfish sleep in a mosquito net made of mucus', 'https://www.nationalgeographic.com/science/article/parrotfish-sleep-in-a-mosquito-net-made-of-mucus'),
  ('parrotfish-mucus-cocoon', 'de', 2, 'Live Science: Mucus Cocoons Protect Fish from Parasites', 'https://livescience.com/8979-mucus-cocoons-protect-fish-parasites.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'parrotfish-mucus-cocoon', 'en', 'parrotfish-sleep-in-mucus-cocoon',
  'Parrotfish sleep in a sleeping bag made of their own mucus',
  'Every night, these reef fish wrap themselves in slime, and an experiment showed what it''s good for.',
  'Many parrotfish wrap themselves in a cocoon of mucus at night, and in an experiment only about 10 percent of cocooned fish were attacked by blood-sucking parasites, compared with about 95 percent of fish without one.',
  'Some people sleep with a mosquito net. Parrotfish make their own, and they make it out of slime.

## A sleeping bag from the gills

When night falls on a coral reef, many parrotfish and wrasses tuck themselves in. They release mucus that forms a see-through cocoon around their whole body. According to National Geographic, they build it in under an hour. The slime comes from special glands in the gills, which Live Science describes as roughly the size of a quarter.

This bedtime routine isn''t cheap. Making the cocoon costs about 2.5 percent of the fish''s daily energy. So why bother?

## The parasite test

Marine biologist Alexandra Grutter from the University of Queensland in Australia tested one idea in 2010. Her suspect: gnathiid isopods, tiny crustaceans that suck fish blood at night and may also pass on a malaria-like blood parasite.

Grutter worked with bullethead parrotfish from the Great Barrier Reef. From half of the sleeping fish, she carefully removed the cocoon, so gently that none of them woke up. Then she released the parasites into the tanks for 4.5 hours.

The result, published in the journal Biology Letters: about 95 percent of the fish without a cocoon were attacked, but only about 10 percent of the fish in their slime bag. National Geographic compared the cocoon to a mosquito net. What exactly keeps the parasites out is still open. It could be a physical barrier, a chemical one, or the slime might hide the fish''s smell.

> Bonus fact: The idea that the cocoon protects against predators is older. In 1959, researchers observed that three mucus-weaving species got eaten by moray eels less often than a species that slept uncovered. But Live Science notes that many cocooned fish still got eaten.

The morning after has its own twist. According to Live Science, Grutter watched a cleaner wrasse peck at its own old cocoons and saw a fish at dawn that seemed to have mucus stuffed in its mouth. Maybe last night''s pajamas are this morning''s breakfast.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('parrotfish-mucus-cocoon', 'en', 1, 'Coral reef fish identification book', 'coral reef fish identification guide book', 'Helps you spot parrotfish, wrasses and their neighbors on a snorkeling trip or in an aquarium.'),
  ('parrotfish-mucus-cocoon', 'en', 2, 'Parrotfish plush toy', 'parrotfish plush toy', 'A colorful soft fish for the sofa or as a gift for ocean fans.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('parrotfish-mucus-cocoon', 'en', 1, 'National Geographic: Parrotfish sleep in a mosquito net made of mucus', 'https://www.nationalgeographic.com/science/article/parrotfish-sleep-in-a-mosquito-net-made-of-mucus'),
  ('parrotfish-mucus-cocoon', 'en', 2, 'Live Science: Mucus Cocoons Protect Fish from Parasites', 'https://livescience.com/8979-mucus-cocoons-protect-fish-parasites.html');
