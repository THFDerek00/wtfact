-- WTFact-Fakt „Tennisbälle wurden erst 1972 gelb, Wimbledon zog sogar erst 1986 nach“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('yellow-tennis-balls', '2026-10-09T16:00:00+02:00', 'sport', '🎾', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'yellow-tennis-balls', 'de', 'tennisbaelle-gelb-wegen-tv',
  'Tennisbälle wurden erst 1972 gelb, Wimbledon zog sogar erst 1986 nach',
  'Das knallgelbe Filzding auf jedem Court ist jünger, als du denkst, und gibt es vor allem wegen des Fernsehens.',
  'Die ITF hat gelbe Tennisbälle erst 1972 in die Regeln aufgenommen, weil man sie im Fernsehen besser sieht, und Wimbledon spielte bis 1986 mit weißen Bällen.',
  'Stell dir einen Tennisball vor. Du siehst Knallgelb, oder? Den Großteil der Tennisgeschichte hätte das nicht gestimmt.

## Schwarz, weiß und schlecht zu sehen

Laut dem Internationalen Tennisverband (ITF) waren Bälle früher entweder schwarz oder weiß, je nachdem, welche Farbe der Platz hatte. Auf einem hellen Court nahm man einen dunklen Ball, auf einem dunklen einen hellen. Logisch, zumindest für alle, die direkt am Netz standen.

Dann kam das Farbfernsehen. Ende der 1960er schauten immer mehr Leute Tennis zu Hause, und die TV-Produzenten suchten nach Wegen, den Sport auf dem Bildschirm besser aussehen zu lassen. Ein kleiner weißer Ball, der über den Bildschirm flitzt, war nicht gerade leicht zu verfolgen.

## Die Regeländerung kam vom Fernsehen

1972 nahm die ITF gelbe Bälle in die Tennisregeln auf. Die Begründung war erfrischend ehrlich: Untersuchungen hätten gezeigt, dass diese Bälle für Fernsehzuschauer besser sichtbar sind. Die Farbe, die du heute auf jedem öffentlichen Platz der Welt siehst, wurde also für Leute auf dem Sofa ausgesucht, nicht für die Spieler.

Mit der Geschichte ist ein bekannter Name verbunden. David Attenborough, ja, der Naturfilm-Star, arbeitete in den 1960ern bei der BBC, als sie auf Farbe umstellte. Laut dem All England Club war er einer derjenigen, die den Wechsel zu gelben Bällen angestoßen haben. 2024 saß er mit 98 Jahren am ersten Turniertag von Wimbledon in der Royal Box am Centre Court.

## Wimbledon ließ sich Zeit

Jetzt kommt der Twist: Ausgerechnet das berühmteste Turnier hatte es überhaupt nicht eilig. Wimbledon blieb noch 14 Jahre beim traditionellen weißen Ball und führte gelbe Bälle erst 1986 ein. In Wimbledons eigenem Kompendium für 1986 steht, dass sich die weißen Bälle auf dem Rasen grün verfärbten und dadurch auch im Fernsehen schwer zu erkennen waren.

> Bonusfakt: Laut ITF darf ein normaler Tennisball 6,54 bis 6,86 cm Durchmesser haben, und diese Spanne wurde zuletzt 1966 geändert.

Die bekannteste Farbe im Sport wurde also für die Kamera ausgesucht, nicht für den Platz.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('yellow-tennis-balls', 'de', 1, 'Druckbälle für Tennis (gelb)', 'Tennisbälle Druckball 4er Dose', 'Der klassische gelbe Ball, ideal für eine lockere Runde auf dem Platz oder zum Werfen mit dem Hund.'),
  ('yellow-tennis-balls', 'de', 2, 'Bildband zur Geschichte von Wimbledon', 'Wimbledon Buch Geschichte', 'Voller Fotos und Geschichten aus über hundert Jahren Rasentennis.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('yellow-tennis-balls', 'de', 1, 'ITF: History of Tennis Balls', 'https://m.itftennis.com/media/2280/balls-history-of-tennis-balls.pdf'),
  ('yellow-tennis-balls', 'de', 2, 'NBC New York: David Attenborough''s colorful impact on Wimbledon and tennis: yellow balls', 'https://www.nbcnewyork.com/news/sports/tennis/why-tennis-balls-are-yellow/5561395/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'yellow-tennis-balls', 'en', 'tennis-balls-yellow-for-tv',
  'Tennis balls only turned yellow in 1972, and Wimbledon held out until 1986',
  'That neon fuzz on every court is younger than you think, and it exists mainly because of television.',
  'The ITF only added yellow tennis balls to the rules in 1972 because they were easier to see on TV, and Wimbledon kept playing with white balls until 1986.',
  'Picture a tennis ball. You see bright yellow, right? For most of tennis history, that picture would have been wrong.

## Black, white, and badly lit

According to the International Tennis Federation (ITF), balls used to be either black or white, depending on the background color of the court. On a pale court you''d pick a dark ball, on a dark one a light ball. Simple logic for the people standing right next to the net.

Then color television arrived. In the late 1960s, more and more people watched tennis at home, and TV producers were looking for ways to make the sport look better on screen. A small white ball zipping across a screen was not exactly easy to follow.

## The rule change that came from TV

In 1972, the ITF added yellow balls to the rules of tennis. Its reason was refreshingly honest: research had shown that these balls were more visible to television viewers. So the color you now see on every public court in the world was chosen for people on the sofa, not for the players.

One famous name is tied to the story. David Attenborough, yes, the nature documentary legend, worked at the BBC in the 1960s while it was switching to color. According to the All England Club, he was one of the people who inspired the move to yellow balls. In 2024, at 98, he sat in the Royal Box on Centre Court on the first day of Wimbledon.

## Wimbledon took its time

Here''s the twist: the most famous tournament of all was in no hurry. Wimbledon kept using the traditional white ball for 14 more years and only adopted yellow balls in 1986. Its own compendium for that year says the white balls were getting stained green on the grass, which also made them hard to see on TV.

> Bonus fact: According to the ITF, the allowed diameter of a standard tennis ball is 6.54 to 6.86 cm, a range that last changed in 1966.

So the most recognizable color in sports was picked for the camera, not the court.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('yellow-tennis-balls', 'en', 1, 'Pressurized tennis balls (yellow)', 'tennis balls pressurized 4 pack', 'The classic optic yellow ball, good for a casual hit or just playing catch with your dog.'),
  ('yellow-tennis-balls', 'en', 2, 'Illustrated book on the history of Wimbledon', 'Wimbledon history book', 'Packed with photos and stories from more than a century of grass court tennis.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('yellow-tennis-balls', 'en', 1, 'ITF: History of Tennis Balls', 'https://m.itftennis.com/media/2280/balls-history-of-tennis-balls.pdf'),
  ('yellow-tennis-balls', 'en', 2, 'NBC New York: David Attenborough''s colorful impact on Wimbledon and tennis: yellow balls', 'https://www.nbcnewyork.com/news/sports/tennis/why-tennis-balls-are-yellow/5561395/');
