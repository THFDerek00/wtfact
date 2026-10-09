-- WTFact-Fakt „Mit zwei Pinseln bringt man dein Gehirn dazu, eine Gummihand für deine zu halten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('rubber-hand-illusion', '2026-10-10T16:00:00+02:00', 'mind', '✋', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rubber-hand-illusion', 'de', 'gummihand-illusion-zwei-pinsel',
  'Mit zwei Pinseln bringt man dein Gehirn dazu, eine Gummihand für deine zu halten',
  'Ein Stück Gummi, ein Sichtschutz und ein bisschen Streicheln reichen, damit dein Körpergefühl umzieht.',
  'Werden eine sichtbare Gummihand und deine versteckte echte Hand gleichzeitig mit Pinseln gestreichelt, spüren viele Menschen die Berührung in der Gummihand, und manche halten sie für ihre eigene.',
  'Dein Gehirn weiß, wo dein Körper aufhört. Sollte man jedenfalls meinen. Ein simpler Trick mit einer falschen Hand und zwei Pinseln zeigt, dass diese Grenze viel beweglicher ist, als sie sich anfühlt.

## Zwei Pinsel, eine Gummihand

1998 veröffentlichten Matthew Botvinick und Jonathan Cohen in Nature einen Artikel mit dem Titel „Rubber hands ‚feel‘ touch that eyes see“, auf Deutsch etwa: Gummihände „spüren“ Berührungen, die die Augen sehen. Der Aufbau, wie ScienceDaily ihn beschreibt: Jede Testperson legte ihren linken Arm auf einen Tisch, versteckt hinter einem Sichtschutz. Davor lag gut sichtbar das Gummimodell einer linken Hand mit Arm.

Während die Person auf die Gummihand schaute, strich eine Versuchsleiterin oder ein Versuchsleiter mit Pinseln gleichzeitig über die falsche und die versteckte echte Hand, möglichst exakt im selben Takt.

Das Ergebnis war schräg. Die Teilnehmenden berichteten, dass sich die Berührung anfühlte, als käme sie von dem Pinsel, den sie auf der Gummihand sahen. Acht der 10 Personen, die diese Illusion erlebten, sagten außerdem, die Gummihand fühle sich an wie ihre eigene.

## Dein Körpergefühl ist eine Schätzung

Warum akzeptiert jemand ein Stück Gummi als Teil von sich? Die Autoren schreiben in Nature, dass hier drei Dinge zusammenspielen: Sehen, Tasten und der Sinn dafür, wo deine Körperteile gerade sind. Wenn Sehen und Fühlen perfekt zusammenpassen, entscheidet sich dein Gehirn für die überzeugendste Geschichte, auch wenn darin eine falsche Hand vorkommt.

Laut dem Lancaster Glossary of Child Development verändert die Illusion sogar, wo Menschen ihre echte Hand vermuten: Ihre Einschätzung der Position rutscht in Richtung Gummihand. Die Autoren der Originalstudie sehen darin einen Hinweis darauf, wie wir überhaupt festlegen, was zu unserem eigenen Körper gehört.

> Bonusfakt: Auch Kinder erleben die Gummihand-Illusion, laut dem Lancaster-Glossar sogar noch stärker als Erwachsene.

Du hast nicht einfach einen Körper. Dein Gehirn entscheidet ständig neu, was davon zu dir gehört.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rubber-hand-illusion', 'de', 1, 'Buch über Körpergefühl und Gehirn', 'Buch Körperwahrnehmung Gehirn', 'Erklärt, wie dein Kopf aus Sinneseindrücken ein Bild deines Körpers baut.'),
  ('rubber-hand-illusion', 'de', 2, 'Set aus weichen Malpinseln', 'Pinselset weich Aquarell', 'Gute Allround-Pinsel zum Malen, Basteln und Experimentieren.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rubber-hand-illusion', 'de', 1, 'Nature: Rubber hands ‘feel’ touch that eyes see', 'https://www.nature.com/articles/35784'),
  ('rubber-hand-illusion', 'de', 2, 'ScienceDaily: Pitt, Carnegie Mellon Researchers Shed Light On ‘The Nature Of The Self’', 'https://www.sciencedaily.com/releases/1998/02/980225074435.htm'),
  ('rubber-hand-illusion', 'de', 3, 'Lancaster University: Rubber hand illusion – Lancaster Glossary of Child Development', 'https://www.lancaster.ac.uk/fas/psych/glossary/rubber_hand_illusion/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'rubber-hand-illusion', 'en', 'rubber-hand-illusion-two-paintbrushes',
  'Two paintbrushes can trick your brain into adopting a rubber hand',
  'A lump of rubber, a screen and a bit of stroking are all it takes to relocate your sense of your own body.',
  'When a visible rubber hand and your hidden real hand are stroked with paintbrushes at the same time, many people feel the touch in the rubber hand, and some feel it is their own.',
  'Your brain knows where your body ends. Or so you''d think. A simple trick with a fake hand and two paintbrushes shows that this border is far more flexible than it feels.

## Two brushes, one rubber hand

In 1998, Matthew Botvinick and Jonathan Cohen published a paper in Nature called "Rubber hands ''feel'' touch that eyes see". The setup, as ScienceDaily described it: each participant rested their left arm on a table, hidden behind a screen. In front of them, in plain view, lay a rubber model of a left hand and arm.

While the participant looked at the rubber hand, an experimenter used paintbrushes to stroke the fake hand and the hidden real hand at the same time, matching the strokes as closely as possible.

The result was bizarre. Participants reported that the touch they felt seemed to come from the brush they could see on the rubber hand. Eight of the 10 people who experienced this illusion also said the rubber hand felt like their own.

## Your body sense is an estimate

Why would anyone accept a piece of rubber as part of themselves? The authors write in Nature that three things interact here: vision, touch and your sense of where your body parts are. When seeing and feeling match perfectly, your brain goes with the most convincing story, even if that story includes a fake hand.

According to the Lancaster Glossary of Child Development, the illusion even changes where people think their real hand is: their judgment of its position shifts toward the rubber hand. The authors of the original study see this as a clue to how we decide what belongs to our own body in the first place.

> Bonus fact: Children experience the rubber hand illusion too, and according to the Lancaster glossary, even more strongly than adults.

You don''t just have a body. Your brain keeps deciding which parts of the world count as you.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('rubber-hand-illusion', 'en', 1, 'Book about body perception and the brain', 'book body perception brain', 'Explains how your head builds a picture of your body from your senses.'),
  ('rubber-hand-illusion', 'en', 2, 'Set of soft paintbrushes', 'soft paintbrush set watercolor', 'Good all-round brushes for painting, crafts and experimenting.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('rubber-hand-illusion', 'en', 1, 'Nature: Rubber hands ‘feel’ touch that eyes see', 'https://www.nature.com/articles/35784'),
  ('rubber-hand-illusion', 'en', 2, 'ScienceDaily: Pitt, Carnegie Mellon Researchers Shed Light On ‘The Nature Of The Self’', 'https://www.sciencedaily.com/releases/1998/02/980225074435.htm'),
  ('rubber-hand-illusion', 'en', 3, 'Lancaster University: Rubber hand illusion – Lancaster Glossary of Child Development', 'https://www.lancaster.ac.uk/fas/psych/glossary/rubber_hand_illusion/');
