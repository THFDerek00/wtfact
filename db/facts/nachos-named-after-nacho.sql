-- WTFact-Fakt „Nachos sind nach einem echten Mann namens Nacho benannt, der sie 1943 improvisiert hat“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('nachos-named-after-nacho', '2026-10-10T12:00:00+02:00', 'food', '🧀', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nachos-named-after-nacho', 'de', 'nachos-nach-einem-mann-benannt',
  'Nachos sind nach einem echten Mann namens Nacho benannt, der sie 1943 improvisiert hat',
  'Der Käse-Snack war ursprünglich eine Notlösung und trägt bis heute den Spitznamen seines Erfinders.',
  '1943 hat Ignacio „Nacho“ Anaya in Piedras Negras in Mexiko für eine Gruppe hungriger Frauen von US-Soldaten frittierte Tortilla-Chips mit Käse und Jalapeños belegt und das Gericht nach sich selbst benannt.',
  'Nachos klingen wie eine Lebensmittel-Kategorie. In Wahrheit sind sie ein Mensch. Der Snack, den du im Kino in Käsesoße tunkst, ist nach Ignacio Anaya benannt, und dessen Spitzname war Nacho.

## Alles zu und alle hungrig

Die Geschichte spielt 1943 in Piedras Negras, einer kleinen mexikanischen Stadt nahe Fort Duncan, einem US-Militärstützpunkt in Texas. Laut TIME war eine Gruppe von etwa einem Dutzend Frauen von US-Soldaten den Tag über in Eagle Pass shoppen und wollte danach in Mexiko essen gehen. Das Problem: Die Restaurants in der Nähe hatten schon zu.

So landeten sie im Victory Club, wo Anaya als Maître d'' arbeitete (manche Quellen sagen: als Koch). Ohne richtige Karte kochte er mit dem, was noch in der Küche war: Er schnitt Tortillas, frittierte sie, belegte die Chips mit geriebenem Käse und Jalapeño-Scheiben und servierte das Ganze.

## Der Name war quasi seine Unterschrift

Als die Frauen fragten, wie das Gericht heißt, benannte Anaya es nach sich selbst: „Nachos Especiales“. Auch Saveur erzählt diese Entstehungsgeschichte, mit frittierten Tortilla-Stücken, geschmolzenem Käse und eingelegten Jalapeño-Scheiben. Kein Geheimrezept, kein Food-Labor, nur ein Typ, der improvisiert und seinen Spitznamen draufschreibt.

Die Rechte an seiner Idee bekam Anaya nie. Sein Sohn Ignacio Anaya Jr. erzählte einem Reporter, er habe 1960 geprüft, ob er seinem Vater helfen könne, die Rechte am Nacho zu beanspruchen, aber das sei zu schwierig gewesen. Anaya starb 1975. Sein Sohn betrieb später ein „Nacho''s Restaurant“ in Piedras Negras und saß dort in der Jury eines jährlichen Nacho-Wettbewerbs am zweiten Oktoberwochenende.

> Bonusfakt: Laut Saveur wurden Nachos Mitte der 1970er im Arlington Stadium in Texas zum Stadionessen. In dieser Saison verkaufte das Stadion ungefähr eine Portion pro zweieinhalb Besucherinnen und Besucher.

Heute gibt es sogar einen Internationalen Tag des Nachos am 21. Oktober. Wenn du also Nachos bestellst, bestellst du streng genommen den Spitznamen eines Mannes mit extra Käse.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nachos-named-after-nacho', 'de', 1, 'Tortilla-Wärmekorb', 'Tortilla Chips Wärmekorb', 'Hält eine große Portion Chips auf dem Tisch warm und knusprig.'),
  ('nachos-named-after-nacho', 'de', 2, 'Nacho-Käsesoßen-Spender', 'Nacho Käsesoße Wärmer Spender', 'Bringt warme Käsesoße wie im Stadion zu dir nach Hause.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nachos-named-after-nacho', 'de', 1, 'TIME: The International Day of the Nacho Would Not Be Possible Without This Man', 'https://time.com/4534655/international-day-of-the-nacho-history/'),
  ('nachos-named-after-nacho', 'de', 2, 'Saveur: Toward a Theory of Perfect Nachos', 'https://www.saveur.com/nachos-history');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nachos-named-after-nacho', 'en', 'nachos-named-after-a-man',
  'Nachos are named after a real man called Nacho, who improvised them in 1943',
  'This cheesy snack started as a late-night emergency plan and still carries its inventor''s nickname.',
  'In 1943, Ignacio "Nacho" Anaya threw together fried tortilla chips, cheese and jalapeños for a group of hungry U.S. military wives in Piedras Negras, Mexico, and named the dish after himself.',
  'Nachos sound like a food category. They''re actually a person. The snack you dunk into cheese sauce at the movies is named after Ignacio Anaya, whose nickname was Nacho.

## A closed town and a hungry table

The story goes back to 1943 and Piedras Negras, a small Mexican city near Fort Duncan, a U.S. military base in Texas. According to TIME, a group of about a dozen U.S. military wives had spent the day shopping in Eagle Pass and crossed over for dinner, only to find that the nearby restaurants were closed.

They ended up at the Victory Club, where Anaya worked as maître d'' (some accounts say chef). With no proper menu to offer, he cooked with what was left in the kitchen: he sliced and fried tortillas, covered the chips with shredded cheese and sliced jalapeños, and served them up.

## The name was basically a signature

When the women asked what the dish was called, Anaya named it after himself: "Nachos Especiales." Saveur tells the same origin story, with fried tortilla pieces, melted cheese and pickled jalapeño slices. No secret recipe, no food lab, just one guy improvising and putting his nickname on the result.

Anaya never got the rights to his idea. His son, Ignacio Anaya Jr., told a reporter that he had looked into helping his father claim ownership of the nacho in 1960, but it was too difficult. Anaya died in 1975. His son later owned a Nacho''s Restaurant in Piedras Negras and judged an annual nacho competition there on the second weekend of October.

> Bonus fact: According to Saveur, nachos took off as stadium food at Arlington Stadium in Texas in the mid 1970s. That season, the stadium sold about one portion for every two and a half fans who came through the gates.

Today there''s even an International Day of the Nacho on October 21. So when you order a plate of nachos, you''re technically ordering a guy''s nickname with extra cheese.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nachos-named-after-nacho', 'en', 1, 'Tortilla chip warmer basket', 'tortilla chip warmer basket', 'Keeps a big batch of chips warm and crisp on the table.'),
  ('nachos-named-after-nacho', 'en', 2, 'Nacho cheese sauce dispenser', 'nacho cheese sauce warmer dispenser', 'Gives you stadium-style warm cheese sauce at home.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nachos-named-after-nacho', 'en', 1, 'TIME: The International Day of the Nacho Would Not Be Possible Without This Man', 'https://time.com/4534655/international-day-of-the-nacho-history/'),
  ('nachos-named-after-nacho', 'en', 2, 'Saveur: Toward a Theory of Perfect Nachos', 'https://www.saveur.com/nachos-history');
