-- WTFact-Fakt „Erst ein Diebstahl machte die Mona Lisa weltberühmt“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('mona-lisa-theft-made-her-famous', '2026-10-21T21:00:00+02:00', 'art', '🖼️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mona-lisa-theft-made-her-famous', 'de', 'mona-lisa-diebstahl-machte-sie-beruehmt',
  'Erst ein Diebstahl machte die Mona Lisa weltberühmt',
  '1911 verschwand sie aus dem Louvre. Und mehr als einen Tag lang fiel es niemandem auf.',
  'Am 21. August 1911 stahl ein Handwerker die Mona Lisa aus dem Louvre. Laut Smithsonian merkte rund 26 Stunden lang niemand, dass das Bild fehlte.',
  'Heute ist die Mona Lisa das berühmteste Gemälde der Welt. Vor 1911 war sie zwar bekannt, aber längst nicht der Superstar von heute. Dann wurde sie gestohlen.

## Ein Bild verschwindet

Am 21. August 1911 nahm der italienische Handwerker Vincenzo Perugia die Mona Lisa im Louvre in Paris einfach von der Wand und trug sie hinaus. Laut dem Smithsonian Magazine fiel es rund 26 Stunden lang niemandem auf, dass das Bild fehlte.

Als der Diebstahl entdeckt wurde, war die Aufregung riesig. Zeitungen auf der ganzen Welt berichteten, die Polizei ermittelte in alle Richtungen. Laut Smithsonian wurde sogar der junge Maler Pablo Picasso befragt.

## Menschen kamen, um die leere Wand zu sehen

Das Seltsamste: Als der Louvre wieder öffnete, kamen Menschen, um sich die Lücke anzusehen, an der die Mona Lisa gehangen hatte. Laut Smithsonian gehörte auch der Schriftsteller Franz Kafka dazu.

Mehr als zwei Jahre blieb das Bild verschwunden. Erst im Dezember 1913 tauchte es in Florenz wieder auf, als Perugia versuchte, es dort zu verkaufen. Er wurde festgenommen.

> Bonusfakt: Laut NPR wurde Perugia nur zu acht Monaten Gefängnis verurteilt. Er gab an, ein Patriot zu sein, und behauptete, Napoleon habe das Bild aus Italien gestohlen.

Als die Mona Lisa wieder im Louvre hing, war sie berühmter als je zuvor. Laut Smithsonian kamen in den ersten zwei Tagen nach ihrer Rückkehr über 100.000 Menschen, um sie zu sehen.

Der Diebstahl hatte aus einem bekannten Gemälde eine Legende gemacht. Ihre Geschichte war jetzt in jeder Zeitung erzählt worden, und jeder kannte ihr Gesicht.

Heute hängt die Mona Lisa hinter Panzerglas, und täglich drängen sich Tausende vor ihr. Ein Teil ihres Ruhms geht auf einen Mann zurück, der sie einfach unter den Arm geklemmt hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mona-lisa-theft-made-her-famous', 'de', 1, 'Buch über den Louvre', 'Buch Louvre Museum Paris', 'Die Geschichten hinter den berühmtesten Werken des Museums.'),
  ('mona-lisa-theft-made-her-famous', 'de', 2, 'Mona-Lisa-Puzzle', 'Mona Lisa Puzzle 1000 Teile', 'Das berühmteste Lächeln der Welt, Stück für Stück.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mona-lisa-theft-made-her-famous', 'de', 1, 'Smithsonian Magazine: Stolen: How the Mona Lisa Became the World’s Most Famous Painting', 'https://www.smithsonianmag.com/arts-culture/the-theft-that-made-the-mona-lisa-a-masterpiece-16406234/'),
  ('mona-lisa-theft-made-her-famous', 'de', 2, 'NPR: The Theft That Made The “Mona Lisa” A Masterpiece', 'https://www.npr.org/2011/07/30/138800110/the-theft-that-made-the-mona-lisa-a-masterpiece');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'mona-lisa-theft-made-her-famous', 'en', 'mona-lisa-theft-made-her-famous',
  'It took a theft to make the Mona Lisa world-famous',
  'In 1911, she vanished from the Louvre. And for more than a day, nobody noticed.',
  'On August 21, 1911, a handyman stole the Mona Lisa from the Louvre. According to Smithsonian, nobody noticed the painting was missing for about 26 hours.',
  'Today, the Mona Lisa is the most famous painting in the world. Before 1911, it was well known, but nowhere near the superstar it is now. Then it was stolen.

## A painting disappears

On August 21, 1911, the Italian handyman Vincenzo Perugia simply took the Mona Lisa off the wall at the Louvre in Paris and carried it out. According to Smithsonian Magazine, nobody noticed it was missing for about 26 hours.

When the theft was discovered, the uproar was huge. Newspapers around the world covered it, and the police investigated in every direction. According to Smithsonian, even the young painter Pablo Picasso was questioned.

## People came to see the empty wall

The strangest part: when the Louvre reopened, people came to look at the gap where the Mona Lisa had hung. According to Smithsonian, the writer Franz Kafka was one of them.

The painting stayed missing for more than two years. It only resurfaced in Florence in December 1913, when Perugia tried to sell it there. He was arrested.

> Bonus fact: According to NPR, Perugia was sentenced to just eight months in prison. He claimed to be a patriot and said the painting had been stolen from Italy by Napoleon.

When the Mona Lisa was back in the Louvre, she was more famous than ever. According to Smithsonian, more than 100,000 people came to see her in the first two days after her return.

The theft had turned a well-known painting into a legend. Her story had now been told in every newspaper, and everyone knew her face.

Today, the Mona Lisa hangs behind bulletproof glass, and thousands crowd in front of her every day. Part of her fame goes back to a man who simply tucked her under his arm.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('mona-lisa-theft-made-her-famous', 'en', 1, 'Book about the Louvre', 'book Louvre museum Paris', 'The stories behind the museum’s most famous works.'),
  ('mona-lisa-theft-made-her-famous', 'en', 2, 'Mona Lisa jigsaw puzzle', 'Mona Lisa puzzle 1000 pieces', 'The world’s most famous smile, piece by piece.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('mona-lisa-theft-made-her-famous', 'en', 1, 'Smithsonian Magazine: Stolen: How the Mona Lisa Became the World’s Most Famous Painting', 'https://www.smithsonianmag.com/arts-culture/the-theft-that-made-the-mona-lisa-a-masterpiece-16406234/'),
  ('mona-lisa-theft-made-her-famous', 'en', 2, 'NPR: The Theft That Made The “Mona Lisa” A Masterpiece', 'https://www.npr.org/2011/07/30/138800110/the-theft-that-made-the-mona-lisa-a-masterpiece');
