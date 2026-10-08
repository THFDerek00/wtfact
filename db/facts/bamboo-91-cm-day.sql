-- WTFact-Fakt „Mancher Bambus wächst bis zu 91 Zentimeter an einem einzigen Tag“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bamboo-91-cm-day', '2026-10-09T12:00:00+02:00', 'nature', '🎋', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bamboo-91-cm-day', 'de', 'bambus-waechst-91-cm-am-tag',
  'Mancher Bambus wächst bis zu 91 Zentimeter an einem einzigen Tag',
  'Mancher Bambus wächst so schnell, dass er an einem einzigen Tag ungefähr so viel zulegen kann, wie ein Kleinkind groß ist, und die Rekordbücher haben die Zahlen dazu.',
  'Laut Guinness World Records können bestimmte Bambusarten bis zu 91 Zentimeter (35 Zoll) an einem einzigen Tag wachsen, damit ist Bambus die am schnellsten wachsende Pflanze der Erde.',
  'Deine Zimmerpflanze schiebt alle paar Wochen ein neues Blatt raus und du bist stolz drauf. Währenddessen legt irgendwo in einem Bambuswald ein einzelner Spross bis morgen früh fast einen Meter Höhe zu.

## Der offizielle Rekord

Guinness World Records führt als am schnellsten wachsende Pflanze bestimmte Arten aus den 45 Gattungen des Bambus. Bei einigen wurde ein Wachstum von bis zu 91 Zentimetern (35 Zoll) pro Tag gemessen. Als Geschwindigkeit sind das 0,00003 km/h. Klingt nach nichts, reicht aber, dass du theoretisch neben einem Spross sitzen und während eines langen Filmabends merken könntest, dass er größer geworden ist.

Das BBC Science Focus Magazine nennt einen Star: den chinesischen Moso-Bambus, der an einem einzigen Tag fast einen Meter wachsen kann. Bambus ist übrigens ein Gras und kein Baum. Stell ihn dir also als Rasen vor, der komplett übertrieben hat.

## So schafft Bambus das

Der Trick: Ein neuer Spross muss die harte Arbeit nicht allein machen. Bambussprosse sind über einen unterirdischen Stängel, das Rhizom, mit ihrer Mutterpflanze verbunden. Dieses Netzwerk versorgt den Nachwuchs, deshalb braucht der Spross keine eigenen Blätter, bis er seine volle Höhe erreicht hat. Erst schießt er nach oben, die Solarpanels baut er später.

Auch an anderer Stelle spart Bambus Energie: Er wächst mit gleichbleibendem Durchmesser. Anders als Bäume mit Holz steckt er keine Kraft in Jahresringe, die den Stamm Jahr für Jahr dicker machen. Der Halm kommt ungefähr so dick aus dem Boden, wie er je wird, und dann geht es einfach nur nach oben.

In seiner Heimat ergibt das Sinn. Bambus wächst in dichten Wäldern, in denen wenig Licht bis zum Boden kommt. Je schneller ein Spross Richtung Sonne klettert, desto besser stehen seine Chancen.

> Bonusfakt: Die Bambusart Phyllostachys bambusoides folgt einem Blühzyklus von etwa 120 Jahren. Als sie Ende der 1960er-Jahre blühte, blühten Wälder gleichzeitig, obwohl Tausende Kilometer zwischen ihnen lagen. Danach starben die Pflanzen, die 72 Fuß (etwa 22 Meter) hoch werden können, alle ab.

Bambus ist also das Gegenteil einer geduldigen Eiche: keine Jahresringe, anfangs keine Blätter, nur pure Ambition nach oben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bamboo-91-cm-day', 'de', 1, 'Glücksbambus für drinnen', 'Glücksbambus Zimmerpflanze', 'Eine pflegeleichte Pflanze, die Schreibtisch oder Regal etwas Grün verpasst.'),
  ('bamboo-91-cm-day', 'de', 2, 'Schneidebrett aus Bambus', 'Bambus Schneidebrett', 'Robust, leicht und sieht in jeder Küche gut aus.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bamboo-91-cm-day', 'de', 1, 'Guinness World Records: Fastest growing plant', 'https://www.guinnessworldrecords.com/world-records/fastest-growing-plant'),
  ('bamboo-91-cm-day', 'de', 2, 'BBC Science Focus Magazine: Why does bamboo grow so fast?', 'https://www.sciencefocus.com/nature/speed-bamboo-plant-grow'),
  ('bamboo-91-cm-day', 'de', 3, 'National Geographic: Bamboo Mathematicians', 'https://www.nationalgeographic.com/science/article/bamboo-mathematicians');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bamboo-91-cm-day', 'en', 'bamboo-grows-91-cm-a-day',
  'Some bamboo grows up to 91 centimeters in a single day',
  'Some bamboo grows so fast that in a single day it can add about the height of a toddler, and the record books have the numbers.',
  'According to Guinness World Records, certain bamboo species can grow up to 91 centimeters (35 inches) in a single day, making bamboo the fastest growing plant on Earth.',
  'Your houseplant pushes out a new leaf every few weeks and you''re proud of it. Meanwhile, somewhere in a bamboo forest, a single shoot is adding almost a meter of height before tomorrow morning.

## The official record

Guinness World Records lists the fastest growing plant as certain species from the 45 genera of bamboo. Some of them have been found to grow up to 91 centimeters (35 inches) per day. Expressed as a speed, that''s 0.00003 km/h. Sounds tiny, but it''s fast enough that you could, in theory, sit next to a shoot and notice it got taller during a long movie night.

BBC Science Focus names one star player: Chinese moso bamboo, which can grow almost a meter in a single day. Bamboo is a grass, not a tree, so think of it as the lawn that went completely overboard.

## How bamboo pulls it off

The trick is that a new shoot doesn''t have to do the hard work alone. Bamboo shoots are connected to their parent plant by an underground stem called a rhizome. That network feeds the youngster, so the shoot doesn''t need any leaves of its own until it reaches full height. It just shoots up first and builds its solar panels later.

Bamboo also saves energy in another way: it grows with a constant diameter. Unlike woody trees, it doesn''t bother with growth rings that slowly thicken the stalk year after year. The stem comes out of the ground about as thick as it will ever be, and then it simply goes up.

That makes sense in its home turf. Bamboo grows in dense forests where little light reaches the ground, so the faster a shoot climbs toward the sun, the better its chances.

> Bonus fact: The bamboo species Phyllostachys bambusoides follows a roughly 120-year flowering cycle. When it bloomed in the late 1960s, forests flowered in sync even though they were thousands of miles apart, and then the plants, which can reach 72 feet (about 22 meters), all died.

So bamboo is basically the opposite of a patient oak: no rings, no leaves at first, just pure vertical ambition.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bamboo-91-cm-day', 'en', 1, 'Lucky bamboo plant for indoors', 'lucky bamboo indoor plant', 'An easy, low-maintenance plant that brings a bit of green to a desk or shelf.'),
  ('bamboo-91-cm-day', 'en', 2, 'Bamboo cutting board', 'bamboo cutting board', 'Hard-wearing, light and good-looking in any kitchen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bamboo-91-cm-day', 'en', 1, 'Guinness World Records: Fastest growing plant', 'https://www.guinnessworldrecords.com/world-records/fastest-growing-plant'),
  ('bamboo-91-cm-day', 'en', 2, 'BBC Science Focus Magazine: Why does bamboo grow so fast?', 'https://www.sciencefocus.com/nature/speed-bamboo-plant-grow'),
  ('bamboo-91-cm-day', 'en', 3, 'National Geographic: Bamboo Mathematicians', 'https://www.nationalgeographic.com/science/article/bamboo-mathematicians');
