-- WTFact-Fakt „Die Menschen im Mittelalter hielten die Erde gar nicht für eine Scheibe“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('medieval-flat-earth-myth', '2026-10-28T16:00:00+01:00', 'myths', '🌍', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'medieval-flat-earth-myth', 'de', 'mittelalter-erde-scheibe-mythos',
  'Die Menschen im Mittelalter hielten die Erde gar nicht für eine Scheibe',
  'Die Geschichte von Kolumbus, der gegen Scheiben-Gläubige ansegelt, ist vor allem eine Erfindung des 19. Jahrhunderts.',
  'Gebildete Menschen im Mittelalter wussten, dass die Erde eine Kugel ist; mit Kolumbus stritt man über ihre Größe, und die Scheiben-Version verbreitete Washington Irvings Kolumbus-Buch von 1828.',
  'Die Geschichte geht so: Im Mittelalter hielten alle die Erde für eine Scheibe, und Kolumbus segelte los, um ihnen das Gegenteil zu beweisen. Schönes Drama. Fast nichts davon hält.

## Das Mittelalter kannte die Kugel

Gebildete Menschen im Mittelalter wussten, dass die Erde eine Kugel ist. Medievalists.net nennt den Gelehrten Beda Venerabilis und später Roger Bacon und Thomas von Aquin im dreizehnten Jahrhundert unter denen, die eine runde Erde beschrieben. Der Astronom Ahmad al-Farghani stellte im neunten Jahrhundert fest, dass Schiffe langsam hinter dem Horizont versinken, statt auf einen Schlag zu verschwinden. Sogar der Reichsapfel in den Herrschaftszeichen der Könige spiegelte die Idee einer kugelförmigen Welt.

Die alten Griechen waren schon lange vorher darauf gekommen. James Hannam schreibt, dass Eratosthenes den Erdumfang auf etwa 23.000 Meilen schätzte. Der wahre Wert liegt bei etwa 24.900 Meilen.

## Wo Kolumbus wirklich danebenlag

Kolumbus'' Kritiker hatten keine Angst, dass er vom Rand fällt. Sie hielten seine Zahlen für falsch. Laut Hannam ging der Streit um die Größe der Welt, nicht um ihre Form: Die Kommission in Salamanca glaubte, Kolumbus unterschätze die Entfernung nach Ostindien. Laut Ripley''s rechnete er mit einem Erdumfang, der 25 Prozent kleiner war als der echte.

Die Kritiker hatten recht. Laut Ripley''s bewies das schon seine erste Fahrt. Asien erreichte Kolumbus auf dieser Reise nie, er landete auf San Salvador.

> Bonusfakt: Selbst in Irvings eigener Geschichte hielten die gelehrten Kritiker in Salamanca die Erde für rund. Wie Darin Hayton zeigt, wandten sie ein, sie sei so groß, dass die Überquerung des Atlantiks drei Jahre dauern würde.

## Woher der Mythos kommt

Die Scheiben-Version verdankt viel dem US-Schriftsteller Washington Irving. 1828 veröffentlichte er ein Buch über Leben und Reisen von Christoph Kolumbus. Medievalists.net nennt es trotz seines Titels eher einen Roman als einen Geschichtsbericht. Hayton beschreibt, wie Irving das echte Treffen in Salamanca dramatisierte und Kolumbus'' Gegner als getrieben von „mönchischer Engstirnigkeit“ darstellte, die ihn mit Bibelzitaten angriffen. Spätere Autoren hielten die Geschichte am Leben, schreibt Hannam, darunter Andrew Dickson White in einem Buch von 1896.

Die Leute, die sich ein flaches Mittelalter vorstellten, lebten also gar nicht im Mittelalter. Sie lasen Bücher aus dem 19. Jahrhundert.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('medieval-flat-earth-myth', 'de', 1, 'Globus im Antik-Look', 'Globus Antik Optik Schreibtisch', 'Ein Tischglobus im Stil alter Landkarten ist eine schöne Deko.'),
  ('medieval-flat-earth-myth', 'de', 2, 'Armillarsphäre als Deko', 'Armillarsphäre Messing Deko', 'Ein Metallmodell der Himmelsringe, wie es Astronomen vor Jahrhunderten nutzten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('medieval-flat-earth-myth', 'de', 1, 'Medievalists.net: The Myth of the Flat Earth', 'https://www.medievalists.net/2023/05/the-myth-of-the-flat-earth/'),
  ('medieval-flat-earth-myth', 'de', 2, 'James Hannam: The Myth of the Flat Earth', 'https://jameshannam.com/flatearth.htm'),
  ('medieval-flat-earth-myth', 'de', 3, 'Darin Hayton: Washington Irving''s Columbus and the Flat Earth', 'https://dhayton.haverford.edu/blog/2014/12/02/washington-irvings-columbus-and-the-flat-earth/'),
  ('medieval-flat-earth-myth', 'de', 4, 'Ripley''s Believe It or Not!: How Columbus Failed to Prove the Earth Was Round', 'https://www.ripleys.com/stories/columbus-earth');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'medieval-flat-earth-myth', 'en', 'middle-ages-flat-earth-myth',
  'People in the Middle Ages did not think the Earth was flat',
  'The story of Columbus sailing against flat-Earth believers is mostly a 19th-century invention.',
  'Educated people in the Middle Ages knew the Earth was a sphere; Columbus''s critics argued about its size, and the flat-Earth version was popularized by Washington Irving''s Columbus book from 1828.',
  'The story goes like this: medieval people thought the Earth was a disc, and Columbus sailed off to prove them wrong. Nice drama. Almost none of it holds up.

## The Middle Ages knew it was a ball

Educated people in the Middle Ages knew the Earth was a sphere. Medievalists.net lists the Venerable Bede, and later Roger Bacon and Thomas Aquinas in the thirteenth century, among those who described a round Earth. The ninth-century astronomer Ahmad al-Farghani noted that ships sink slowly below the horizon instead of vanishing all at once. Even the orb in royal regalia reflected the idea of a spherical world.

The ancient Greeks had worked it out long before. James Hannam writes that Eratosthenes estimated the Earth''s circumference at about 23,000 miles. The true value is about 24,900 miles.

## What Columbus actually got wrong

Columbus''s critics did not fear he would fall off the edge. They thought his numbers were off. According to Hannam, the dispute was about the size of the world, not its shape: the committee in Salamanca believed Columbus had underestimated the distance to the East Indies. Ripley''s says he calculated the Earth''s circumference as 25 percent smaller than it really is.

The critics were right. According to Ripley''s, his first voyage proved it. Columbus never reached Asia on that trip; he landed on San Salvador.

> Bonus fact: Even in Irving''s own story, the learned critics at Salamanca accepted that the Earth was round. As Darin Hayton points out, their objection was that it was so big that crossing the Atlantic would take three years.

## Where the myth comes from

The flat-Earth version owes a lot to the American writer Washington Irving. In 1828 he published a book on the life and voyages of Christopher Columbus. Medievalists.net calls it a novel rather than a historical account, despite its title. Hayton describes how Irving dramatized the real meeting in Salamanca, painting Columbus''s opponents as driven by “monastic bigotry” and attacking him with quotes from the Bible. Later writers kept the story going, Hannam notes, among them Andrew Dickson White in a book from 1896.

So the people who pictured a flat medieval world weren''t medieval at all. They were reading 19th-century books.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('medieval-flat-earth-myth', 'en', 1, 'Antique-style globe', 'antique style desk globe', 'A desk globe with an old-map look makes a good-looking decoration.'),
  ('medieval-flat-earth-myth', 'en', 2, 'Armillary sphere decoration', 'armillary sphere brass decor', 'A metal model of the celestial rings, as used by astronomers centuries ago.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('medieval-flat-earth-myth', 'en', 1, 'Medievalists.net: The Myth of the Flat Earth', 'https://www.medievalists.net/2023/05/the-myth-of-the-flat-earth/'),
  ('medieval-flat-earth-myth', 'en', 2, 'James Hannam: The Myth of the Flat Earth', 'https://jameshannam.com/flatearth.htm'),
  ('medieval-flat-earth-myth', 'en', 3, 'Darin Hayton: Washington Irving''s Columbus and the Flat Earth', 'https://dhayton.haverford.edu/blog/2014/12/02/washington-irvings-columbus-and-the-flat-earth/'),
  ('medieval-flat-earth-myth', 'en', 4, 'Ripley''s Believe It or Not!: How Columbus Failed to Prove the Earth Was Round', 'https://www.ripleys.com/stories/columbus-earth');
