-- WTFact-Fakt „Beim Weihnachtsstern sind die roten Teile gar keine Blüten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('poinsettia-red-leaves', '2026-12-04T00:00:00+01:00', 'nature', '🌺', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'poinsettia-red-leaves', 'de', 'weihnachtsstern-rote-blaetter-keine-bluete',
  'Beim Weihnachtsstern sind die roten Teile gar keine Blüten',
  'Du kaufst ihn wegen der roten Blüten. Nur sind die gar keine. Die echten sind winzig und gelb.',
  'Die roten „Blüten“ des Weihnachtssterns sind in Wahrheit umgefärbte Blätter, die echten Blüten sind die kleinen gelben Knubbel in der Mitte.',
  'Rot, sternförmig, auf jeder Fensterbank im Dezember. Der Weihnachtsstern ist die Pflanze der Saison. Nur das, wofür ihn alle kaufen, ist keine Blüte.

## Blätter in Verkleidung

Die roten Teile sind sogenannte Hochblätter, auf Englisch bracts. Das sind umgewandelte Blätter, die sich verfärben. Die University of Illinois und die University of Connecticut schreiben beide dasselbe: Die echten Blüten sind die kleinen gelben Knospen in der Mitte des roten Sterns. Unscheinbar, winzig, und kaum jemand schaut sie an. Die UConn nennt die Pflanze deshalb auch nicht Blume, sondern Strauch oder kleinen Baum.

Die Pflanze macht das nicht für uns. Die knalligen Hochblätter locken Bestäuber zu den mickrigen Blüten. Damit sie sich färben, braucht der Weihnachtsstern lange Nächte. Die UConn empfiehlt allen, die ihn im nächsten Jahr wieder rot sehen wollen, ihn ab Anfang Oktober rund zehn Wochen lang jeden Abend von 17 bis 7 Uhr in völlige Dunkelheit zu stellen.

## Eigentlich ein Strauch aus Mexiko

In seiner Heimat in Mexiko und Mittelamerika ist der Weihnachtsstern keine Topfpflanze, sondern ein mehrjähriger Strauch. Laut der University of Illinois wird er dort oft über drei Meter hoch.

Die Azteken nannten ihn cuetlaxochitl. Seinen englischen Namen poinsettia verdankt er Joel Poinsett, der von 1825 bis 1830 US-Botschafter in Mexiko war. Er schickte Stecklinge in sein Gewächshaus in South Carolina, von dort verbreitete sich die Pflanze.

> Bonusfakt: Botanisch heißt der Weihnachtsstern Euphorbia pulcherrima, „die schönste Wolfsmilch“. Er ist also mit den Wolfsmilchgewächsen verwandt.

Die Show machen also die Blätter, die eigentliche Blüte steht daneben wie ein Statist im eigenen Film.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('poinsettia-red-leaves', 'de', 1, 'Übertopf aus Keramik für Zimmerpflanzen', 'Übertopf Keramik rot Weihnachten', 'Ein schöner Topf, in dem Pflanzen auf der Fensterbank gut aussehen.'),
  ('poinsettia-red-leaves', 'de', 2, 'Buch über Zimmerpflanzen-Pflege', 'Buch Zimmerpflanzen Pflege Ratgeber', 'Erklärt Licht, Gießen und Standort für viele Pflanzen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('poinsettia-red-leaves', 'de', 1, 'University of Illinois Extension: The Story Behind the Poinsettia: History, Symbolism, and Holiday Care Tips', 'https://extension.illinois.edu/blogs/flowers-fruits-and-frass/2024-12-13-story-behind-poinsettia-history-symbolism-and-holiday'),
  ('poinsettia-red-leaves', 'de', 2, 'UConn Home & Garden Education Center: Poinsettia', 'https://homegarden.cahnr.uconn.edu/factsheets/poinsettia');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'poinsettia-red-leaves', 'en', 'poinsettia-red-parts-are-not-flowers',
  'The red parts of a poinsettia aren''t flowers at all',
  'You buy it for the red flowers. Except they aren''t flowers. The real ones are tiny and yellow.',
  'The red "flowers" of a poinsettia are actually colored leaves, and the real flowers are the little yellow buds in the middle.',
  'Red, star-shaped, on every windowsill in December. The poinsettia is the plant of the season. But the thing everyone buys it for isn''t a flower.

## Leaves in disguise

The red parts are called bracts, which are modified leaves that change color. The University of Illinois and the University of Connecticut both say the same thing: the true flowers are the small yellow buds in the center of the red star. Plain, tiny, and almost nobody looks at them.

The plant isn''t doing this for us. The bright bracts attract pollinators to the puny flowers. To change color, a poinsettia needs long nights. UConn advises anyone who wants it red again next year to keep it in total darkness from 5 p.m. to 7 a.m. every night for about ten weeks, starting in early October.

## Actually a shrub from Mexico

In its home range in Mexico and Central America, the poinsettia isn''t a potted plant but a perennial shrub. According to the University of Illinois, it often grows more than 10 feet tall there, which is over three meters.

The Aztecs called it cuetlaxochitl. Its English name comes from Joel Poinsett, US ambassador to Mexico from 1825 to 1830. He sent cuttings to his greenhouse in South Carolina, and the plant spread from there.

> Bonus fact: The poinsettia''s botanical name is Euphorbia pulcherrima, "the most beautiful spurge". It belongs to the spurge family.

So the leaves steal the show, while the actual flower stands next to them like an extra in its own movie.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('poinsettia-red-leaves', 'en', 1, 'Ceramic plant pot cover', 'ceramic plant pot cover red', 'A good-looking pot that makes windowsill plants look better.'),
  ('poinsettia-red-leaves', 'en', 2, 'Houseplant care book', 'houseplant care book', 'Covers light, watering and placement for lots of plants.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('poinsettia-red-leaves', 'en', 1, 'University of Illinois Extension: The Story Behind the Poinsettia: History, Symbolism, and Holiday Care Tips', 'https://extension.illinois.edu/blogs/flowers-fruits-and-frass/2024-12-13-story-behind-poinsettia-history-symbolism-and-holiday'),
  ('poinsettia-red-leaves', 'en', 2, 'UConn Home & Garden Education Center: Poinsettia', 'https://homegarden.cahnr.uconn.edu/factsheets/poinsettia');
