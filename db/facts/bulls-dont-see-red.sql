-- WTFact-Fakt „Stiere werden gar nicht wütend, wenn sie Rot sehen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bulls-dont-see-red', '2026-10-21T21:00:00+02:00', 'myths', '🐂', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bulls-dont-see-red', 'de', 'stiere-sehen-kein-rot',
  'Stiere werden gar nicht wütend, wenn sie Rot sehen',
  'Das rote Tuch ist reine Show. Für den Stier hat es nicht einmal eine besondere Farbe.',
  'Rinder können Rot nicht von anderen Farben unterscheiden. Ein Stier greift das Tuch an, weil es sich bewegt, nicht wegen der Farbe.',
  '„Wie ein rotes Tuch“ sagen wir, wenn jemand sofort ausrastet. Das Bild stammt aus der Stierkampfarena. Dumm nur, dass der Stier die Farbe gar nicht richtig sehen kann.

## Farbenblind für Rot

Rinder haben weniger Arten von Farbsinneszellen als Menschen. Rot können sie nicht von anderen Farben unterscheiden. Ein knallrotes Tuch ist für einen Stier also ungefähr so aufregend wie ein graues.

Was ihn wirklich reizt, ist Bewegung. Das sieht man schon im Stierkampf selbst: Im ersten Teil schwenkt der Torero ein großes Tuch, die Capa, das auf einer Seite magenta und auf der anderen gelb oder blau ist. Der Stier stürmt darauf genauso wütend los wie später auf das kleine rote Tuch, die Muleta.

## Der Test mit drei Fahnen

2007 nahmen sich die „MythBusters“ das Thema mit einem echten Stier vor. Zuerst hängten sie drei Fahnen in die Arena, eine rote, eine blaue und eine weiße. Der Stier griff alle an, egal welche Farbe.

Dann stellten sie drei Puppen in Rot, Blau und Weiß auf. Wieder wurden alle umgerannt, die rote sogar als letzte. Im dritten Versuch stand ein Mensch in Rot völlig still in der Arena, während Cowboys in anderen Farben herumliefen. Der Stier ignorierte den roten Mann und jagte die, die sich bewegten.

> Bonusfakt: Warum ist die Muleta dann rot? Sie kommt im letzten Teil des Kampfes zum Einsatz, und auf Rot fällt Blut weniger auf.

Die Farbe ist also für das Publikum gedacht, nicht für den Stier. Wer in Rot vor einem Rind steht, ist dadurch nicht mehr in Gefahr als in Blau. Entscheidend ist, was man tut. Hektisches Herumwedeln wirkt, Stillstehen eher nicht.

Das Sprichwort bleibt trotzdem. Es klingt einfach besser als „wie ein wild geschwenktes Tuch in beliebiger Farbe“.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bulls-dont-see-red', 'de', 1, 'Kuh-Kuscheltier', 'Kuh Kuscheltier groß', 'Ein weiches Rind fürs Sofa, das garantiert auf keine Farbe reagiert.'),
  ('bulls-dont-see-red', 'de', 2, 'Buch über Irrtümer und Alltagsmythen', 'Buch Irrtümer Alltagsmythen', 'Sammelt die schönsten Dinge, die fast alle glauben und die trotzdem nicht stimmen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bulls-dont-see-red', 'de', 1, 'Live Science: Why Do Bulls Charge When they See Red?', 'https://www.livescience.com/33700-bulls-charge-red.html'),
  ('bulls-dont-see-red', 'de', 2, 'How It Works: Are bulls enraged by the colour red?', 'https://www.howitworksdaily.com/are-bulls-enraged-by-the-colour-red/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bulls-dont-see-red', 'en', 'bulls-dont-see-red',
  'Bulls don’t actually get angry when they see red',
  'The red cape is pure showmanship. To the bull it isn’t even a special color.',
  'Cattle can’t tell red apart from other colors. A bull charges the cape because it moves, not because of its color.',
  '"Like a red rag to a bull" is what we say when something instantly sets someone off. The image comes from the bullring. Awkwardly, the bull can’t really see the color at all.

## Colorblind to red

Cattle have fewer types of color-sensing cells than humans. They can’t tell red apart from other colors. A bright red cape is about as exciting to a bull as a gray one.

What actually sets it off is movement. You can see this in the bullfight itself: in the first stage, the matador swings a large cape, the capote, which is magenta on one side and yellow or blue on the other. The bull charges it just as furiously as it later charges the small red cape, the muleta.

## The three-flag test

In 2007, the MythBusters tested this with a real bull. First, they hung three flags in the arena: one red, one blue and one white. The bull attacked all of them, whatever the color.

Next, they set up three dummies dressed in red, blue and white. Again, every one got knocked over, and the red one was actually hit last. In the third test, a person in red stood completely still in the arena while cowboys in other colors moved around. The bull ignored the man in red and chased the ones who were moving.

> Bonus fact: So why is the muleta red? It’s used in the final stage of the fight, and red helps hide the blood.

The color is there for the audience, not for the bull. Standing in front of a bull in red doesn’t put you in any more danger than standing there in blue. What matters is what you do. Frantic waving works, standing still mostly doesn’t.

The saying sticks around anyway. It just sounds better than "like a wildly waved rag of any color".'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bulls-dont-see-red', 'en', 1, 'Cow plush toy', 'cow plush toy large', 'A soft cow for the couch that’s guaranteed not to react to any color.'),
  ('bulls-dont-see-red', 'en', 2, 'Book of common misconceptions', 'book common misconceptions myths', 'Collects the best things almost everyone believes that still aren’t true.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bulls-dont-see-red', 'en', 1, 'Live Science: Why Do Bulls Charge When they See Red?', 'https://www.livescience.com/33700-bulls-charge-red.html'),
  ('bulls-dont-see-red', 'en', 2, 'How It Works: Are bulls enraged by the colour red?', 'https://www.howitworksdaily.com/are-bulls-enraged-by-the-colour-red/');
