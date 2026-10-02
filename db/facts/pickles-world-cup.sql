-- WTFact-Fakt „Ein Hund namens Pickles fand 1966 den gestohlenen WM-Pokal“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('pickles-world-cup', '2026-09-07', 'sport', '🐕', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pickles-world-cup', 'de', 'hund-pickles-findet-wm-pokal',
  'Ein Hund namens Pickles fand 1966 den gestohlenen WM-Pokal',
  'Die Polizei suchte eine Woche lang. Gefunden hat ihn ein Collie beim Gassigehen.',
  'Kurz vor der WM 1966 wurde der Pokal in London gestohlen, und ein Collie namens Pickles fand ihn eine Woche später beim Gassigehen.',
  'England, März 1966. In wenigen Monaten beginnt die Fußball-WM im eigenen Land, und dann ist plötzlich der Pokal weg. **Wiedergefunden hat ihn nicht die Polizei, sondern ein Hund namens Pickles.**

## Der Pokal verschwindet

Am 20. März 1966 war die WM-Trophäe, der Jules-Rimet-Pokal, in London bei einer Briefmarkenausstellung zum Thema Sport zu sehen. Ausgestellt wurde in der Methodist Central Hall in Westminster. Laut Sports Illustrated verschwand der Pokal am helllichten Tag, während im selben Gebäude ein Gottesdienst stattfand.

Kurz darauf ging eine Lösegeldforderung über 15.000 Pfund beim Chef des englischen Fußballverbands ein. Die Polizei stellte eine Falle und nahm einen Mann fest. Den Pokal hatte der aber gar nicht.

## Eine Woche später: Gassigehen mit Folgen

Am 27. März 1966 ging David Corbett im Süden Londons, im Stadtteil Upper Norwood, mit seinem vierjährigen Collie Pickles spazieren. Pickles schnüffelte an einem Päckchen herum, eingewickelt in Zeitungspapier. Corbett machte es auf und dachte zuerst an eine Bombe. Dann erkannte er die Gravuren.

Sein Satz danach ist legendär. Er rannte rein und sagte zu seiner Frau, er glaube, er habe gerade den World Cup gefunden.

> Pickles bekam einen Jahresvorrat an Hundefutter, wurde zum „Hund des Jahres“ gewählt und spielte sogar in einem Kinofilm mit, „The Spy with a Cold Nose“.

## Vom Gassi-Hund zum Nationalhelden

Corbett bekam eine Belohnung von 5.000 Pfund. Pickles bekam eine Silbermedaille von einem britischen Tierschutzverein, trat im Fernsehen auf, unter anderem in der Kindersendung „Blue Peter“, und wurde international berühmt. Seine Medaillen liegen heute im National Football Museum in England.

Und die WM? Die gewann England im Sommer 1966 mit einem 4:2 im Finale gegen Westdeutschland. Laut Sports Illustrated feierte Kapitän Bobby Moore danach sogar mit Pickles.

Der vielleicht wichtigste Spieler des Turniers hatte also vier Pfoten und hat nie ein Spiel gemacht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pickles-world-cup', 'de', 1, 'Sachbuch zur Geschichte der Fußball-WM', 'Fußball WM Geschichte Buch', 'Alle Turniere, Legenden und Kuriositäten seit 1930 in einem Band.'),
  ('pickles-world-cup', 'de', 2, 'Collie-Kuscheltier', 'Collie Kuscheltier', 'Flauschiger Hund fürs Sofa, mit Spürnase inklusive.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pickles-world-cup', 'de', 1, 'National Football Museum: Pickles the Dog''s medals, 1966', 'https://nationalfootballmuseum.com/items/pickles-the-dogs-medals-1966/'),
  ('pickles-world-cup', 'de', 2, 'Sports Illustrated: The Dog Who Saved the 1966 World Cup: Pickles and the Stolen Trophy', 'https://www.si.com/soccer/dog-saved-1966-world-cup-pickles-stolen-trophy');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'pickles-world-cup', 'en', 'pickles-dog-finds-world-cup',
  'A dog named Pickles found the stolen World Cup trophy in 1966',
  'The police searched for a week. A collie out on a walk found it.',
  'Shortly before the 1966 World Cup, the trophy was stolen in London, and a week later a collie named Pickles sniffed it out on a walk.',
  'England, March 1966. The World Cup is about to kick off on home soil in a few months, and suddenly the trophy is gone. **It wasn''t the police who got it back. It was a dog named Pickles.**

## The trophy disappears

On March 20, 1966, the World Cup trophy, the Jules Rimet Trophy, was on display at a sports-themed stamp exhibition in London, held at Methodist Central Hall in Westminster. According to Sports Illustrated, it vanished in broad daylight while a church service was going on in the same building.

Soon after, a ransom demand for 15,000 pounds reached the chairman of the Football Association. Police set a trap and arrested a man. He didn''t even have the trophy.

## One week later: a walk to remember

On March 27, 1966, David Corbett was out walking his four-year-old collie Pickles in Upper Norwood, South London. Pickles started sniffing at a package wrapped in newspaper. Corbett opened it and at first thought it might be a bomb. Then he recognized the engravings.

What he did next is legendary. He ran back inside and told his wife: "I think I''ve found the World Cup!"

> Pickles got a year''s supply of dog food, was named "Dog of the Year" and even appeared in a movie, "The Spy with a Cold Nose".

## From family pet to national hero

Corbett received a 5,000 pound reward. Pickles got a silver medal from a British animal welfare league, went on TV, including the children''s show "Blue Peter", and became famous around the world. His medals are now held by the National Football Museum in England.

And the World Cup? England won it in the summer of 1966, beating West Germany 4-2 in the final. According to Sports Illustrated, captain Bobby Moore even celebrated with Pickles afterwards.

So arguably the most important player of the tournament had four paws and never played a minute.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('pickles-world-cup', 'en', 1, 'History of the FIFA World Cup book', 'World Cup history book', 'Every tournament, legend and oddity since 1930 in one volume.'),
  ('pickles-world-cup', 'en', 2, 'Collie plush toy', 'collie dog plush toy', 'A fluffy dog for the couch, detective nose included.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('pickles-world-cup', 'en', 1, 'National Football Museum: Pickles the Dog''s medals, 1966', 'https://nationalfootballmuseum.com/items/pickles-the-dogs-medals-1966/'),
  ('pickles-world-cup', 'en', 2, 'Sports Illustrated: The Dog Who Saved the 1966 World Cup: Pickles and the Stolen Trophy', 'https://www.si.com/soccer/dog-saved-1966-world-cup-pickles-stolen-trophy');
