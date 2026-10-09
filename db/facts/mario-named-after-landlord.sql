-- WTFact-Fakt „Super Mario ist nach dem Vermieter von Nintendo in den USA benannt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('mario-named-after-landlord', NULL, 'popculture', '🍄', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mario-named-after-landlord', 'de', 'mario-nach-vermieter-benannt',
  'Super Mario ist nach dem Vermieter von Nintendo in den USA benannt',
  'Der berühmteste Klempner der Welt hieß erst ganz anders. Seinen Namen verdankt er offenbar einer Diskussion über die Miete.',
  'Nintendo of America benannte Mario nach Mario Segale, dem Vermieter seines Lagerhauses bei Seattle, der laut einem Buch wegen verspäteter Miete vorbeikam.',
  'Der berühmteste Klempner der Welt hieß am Anfang gar nicht Mario. Und den Namen, den er schließlich bekam, trug ein echter Mann aus dem US-Bundesstaat Washington, der offenbar wegen der Miete vorbeikam.

## Darf ich vorstellen: Jumpman

Als Mario 1981 in Donkey Kong seinen ersten Auftritt hatte, war er laut FOX 5 New York ein Zimmermann namens Jumpman. Die US-Niederlassung von Nintendo suchte einen besseren Namen für den amerikanischen Markt, hatte aber noch keinen gefunden.

Nintendo of America mietete damals ein Lagerhaus mit 60.000 Quadratfuß, also rund 5.600 Quadratmetern, in Tukwila, einem Vorort von Seattle. Vermieter war ein örtlicher Immobilienunternehmer namens Mario A. Segale.

## Die Miete war zu spät

Laut David Sheffs Buch „Game Over“, das die New York Times zitiert, war Nintendo mit der Miete im Rückstand. Segale kam vorbei und stellte Minoru Arakawa, den damaligen Chef von Nintendo of America, vor dem versammelten Team zur Rede. Nachdem er wieder weg war, hatte das Team seinen Namen: Super Mario.

Das Gesicht von Nintendo ist also nach einem Mann benannt, der eine offene Miete eintreiben wollte. In einem Nintendo-Video von 2015 bestätigte Mario-Erfinder Shigeru Miyamoto laut der New York Times, dass Segale die Inspiration für den Namen war.

Segale selbst blieb gelassen. In einem Interview von 1993 scherzte er: „Man könnte sagen, ich warte immer noch auf meine Tantiemen-Schecks.“

> Bonusfakt: Der 10. März gilt als Mario-Tag, weil das Datum auf Englisch abgekürzt als „MAR10“ aussieht wie Marios Name.

Ein Streit um die Miete in einem Lagerhaus gab der Spielewelt ihren größten Namen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mario-named-after-landlord', 'de', 1, 'Mario-Kappe in Rot', 'Super Mario Cap rot', 'Die klassische rote Mütze mit dem M, für den nächsten Spieleabend oder Fasching.'),
  ('mario-named-after-landlord', 'de', 2, 'Buch „Game Over“ von David Sheff', 'Game Over David Sheff Nintendo Buch', 'Die Geschichte von Nintendos Aufstieg, inklusive der Anekdote mit dem Vermieter.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mario-named-after-landlord', 'de', 1, 'WRAL: Mario Segale, Developer Who Inspired Nintendo to Name Super Mario, Dies at 84', 'https://www.wral.com/archive/17966514/'),
  ('mario-named-after-landlord', 'de', 2, 'FOX 5 New York: National Mario Day: How a Seattle man inspired the name of Nintendo''s most iconic character', 'https://www.fox5ny.com/news/mario-day-how-a-seattle-man-inspired-the-name-of-nintendos-most-iconic-character');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mario-named-after-landlord', 'en', 'mario-named-after-landlord',
  'Super Mario is named after Nintendo''s landlord in the US',
  'The world''s most famous plumber started out with a different name. He reportedly owes his current one to an argument about rent.',
  'Nintendo of America named Mario after Mario Segale, the landlord of its warehouse near Seattle, who according to one book came by about late rent.',
  'The world''s most famous plumber wasn''t called Mario at first. And the name he ended up with belonged to a real man in Washington state who reportedly showed up about the rent.

## Meet Jumpman

When Mario made his debut in Donkey Kong in 1981, he was a carpenter called Jumpman, according to FOX 5 New York. Nintendo''s US branch wanted a better name for the American market but hadn''t found one yet.

At the time, Nintendo of America was renting a 60,000-square-foot warehouse, about 5,600 square meters, in Tukwila, a suburb of Seattle. The landlord was a local real estate developer named Mario A. Segale.

## The rent was late

According to David Sheff''s book Game Over, as cited by The New York Times, Nintendo was behind on the rent. Segale came by and confronted Minoru Arakawa, then president of Nintendo of America, in front of the whole team. After he left, the team had its name: Super Mario.

So the face of Nintendo is named after a man who came to collect overdue rent. In a 2015 Nintendo video, Mario creator Shigeru Miyamoto confirmed that Segale inspired the name, according to The New York Times.

Segale himself kept it light. In a 1993 interview, he joked: "You might say I''m still waiting for my royalty checks."

> Bonus fact: March 10 is known as Mario Day, because the date, abbreviated in English as "MAR10," looks like Mario''s name.

A rent dispute in a warehouse gave gaming its biggest name.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mario-named-after-landlord', 'en', 1, 'Red Mario cap', 'Super Mario cap red', 'The classic red cap with the M, for your next game night or costume party.'),
  ('mario-named-after-landlord', 'en', 2, 'Game Over by David Sheff', 'Game Over David Sheff Nintendo book', 'The story of Nintendo''s rise, including the landlord anecdote.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mario-named-after-landlord', 'en', 1, 'WRAL: Mario Segale, Developer Who Inspired Nintendo to Name Super Mario, Dies at 84', 'https://www.wral.com/archive/17966514/'),
  ('mario-named-after-landlord', 'en', 2, 'FOX 5 New York: National Mario Day: How a Seattle man inspired the name of Nintendo''s most iconic character', 'https://www.fox5ny.com/news/mario-day-how-a-seattle-man-inspired-the-name-of-nintendos-most-iconic-character');
