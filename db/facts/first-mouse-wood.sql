-- WTFact-Fakt „Die erste Computermaus von 1964 war aus Holz“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('first-mouse-wood', '2026-10-06T03:59:39+02:00', 'tech', '🖱️', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-mouse-wood', 'de', 'erste-computermaus-aus-holz',
  'Die erste Computermaus von 1964 war aus Holz',
  'Lange bevor Mäuse kabellos wurden und bunt leuchteten, steckte die Technik in einem Holzgehäuse auf Rädern.',
  'Die erste Computermaus baute Bill English 1964 am Stanford Research Institute, und ihr Gehäuse war aus Redwood-Holz.',
  'Deine Maus ist wahrscheinlich aus Plastik, kabellos und leuchtet vielleicht sogar in RGB. **Die allererste Computermaus war ein Holzklotz.** Bill English baute sie 1964 am Stanford Research Institute (heute SRI International). Das Gehäuse fertigte die Werkstatt des Instituts aus Redwood-Holz.

## Das große Zeigegeräte-Duell

Anfang der 1960er leitete Douglas Engelbart am SRI ein Labor mit einem ziemlich großen Ziel: den menschlichen Intellekt mit Technik zu verstärken. Für seine Idee einer teilweise grafischen Benutzeroberfläche brauchte er etwas, mit dem man auf Dinge am Bildschirm zeigen kann. Das beliebte Werkzeug dafür war damals der Lichtgriffel.

Also ließ Engelbarts Team die Kandidaten gegeneinander antreten: Lichtgriffel, Joystick, Trackball und ein paar selbst gebastelte Geräte. Eins davon war ein Holzklotz für die Hand, mit rechtwinklig zueinander stehenden Rädern unten und einem einzigen Knopf oben. 1965 veröffentlichte das Team seinen Abschlussbericht. Das Urteil: Die Maus gewann haushoch.

## Wer hat sie Maus getauft?

Woher der Name kommt, weiß keiner so genau. Engelbart sagte, niemand könne sich erinnern, wer mit „Maus“ angefangen hat, und er sei überrascht, dass der Name hängen blieb. Seine Erklärung: Das Ding sah einfach aus wie eine Maus mit Schwanz.

Am 9. Dezember 1968 zeigte Engelbart die Maus der Öffentlichkeit, in einer 90-minütigen Vorführung auf einer Computerkonferenz in San Francisco. Die ging später als „Mother of All Demos“ in die Geschichte ein. Die Maus auf der Bühne hatte schon drei Knöpfe. Anfangs zeigte das Kabel in die andere Richtung, verhedderte sich aber, sobald man den Arm bewegte. Also drehte das Team das Teil um, und der Schwanz kam oben raus.

## Vom Patent ins Museum

Angemeldet wurde das Patent 1967, erteilt 1970 als US-Patent 3.541.541. Das Wort „Maus“ steht nicht mal im Titel: „X-Y position indicator for a display system“. Inzwischen gehört der originale Prototyp dem Computer History Museum, SRI hat ihn gespendet. Vorher stand in der Ausstellung eine Nachbildung, gebaut von Bill English persönlich.

> 2011 holte sich eine Maus aus 18-karätigem Weißgold mit 59 Diamanten den Guinness-Weltrekord als teuerste Computermaus der Welt.

Jeder Klick, den du heute machst, geht auf einen ausgehöhlten Holzklotz mit Rädern zurück.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-mouse-wood', 'de', 1, 'Kabellose Maus aus Holz', 'Holz Maus kabellos', 'Funktioniert wie jede Funkmaus, sieht aber nach Werkstatt statt nach Plastik aus.'),
  ('first-mouse-wood', 'de', 2, 'Illustriertes Buch zur Geschichte des Computers', 'Geschichte des Computers Buch', 'Von den ersten Rechenmaschinen bis zum Smartphone, mit vielen Bildern zum Durchblättern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-mouse-wood', 'de', 1, 'Computer History Museum: CHM Acquires Original SRI Mouse', 'https://computerhistory.org/sri-mouse-mn052024/'),
  ('first-mouse-wood', 'de', 2, 'SRI International: The computer mouse and interactive computing', 'https://www.sri.com/hoi/computer-mouse-and-interactive-computing/'),
  ('first-mouse-wood', 'de', 3, 'Doug Engelbart Institute: Firsts: The Mouse', 'https://dougengelbart.org/theMouse'),
  ('first-mouse-wood', 'de', 4, 'Computer History Museum: The Mouse - CHM Revolution', 'https://www.computerhistory.org/revolution/input-output/14/350');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'first-mouse-wood', 'en', 'first-computer-mouse-wood',
  'The first computer mouse from 1964 was made of wood',
  'Long before mice went wireless and started glowing, the tech sat inside a wooden shell on wheels.',
  'Bill English built the first computer mouse in 1964 at the Stanford Research Institute, and its shell was made of redwood.',
  'Your mouse is probably plastic, wireless and maybe even glowing in RGB. **The very first computer mouse was a block of wood.** Bill English built it in 1964 at the Stanford Research Institute (now SRI International). The shell was crafted from redwood by the institute''s machine shop.

## A showdown of pointing devices

In the early 1960s, Douglas Engelbart ran a lab at SRI with a big goal: enhancing human intellect through technology. His vision of a partly graphical interface needed a way to point at things on a screen. The popular tool for that back then was the light pen.

So Engelbart''s team put the options to the test: the light pen, a joystick, a tracking ball and a few devices they rigged up themselves. One of the homemade ones was a hand-held wooden block with perpendicular wheels underneath and a single button on top. In 1965, the team published its final report. The verdict: the mouse won hands down.

## Nobody knows who named it

Where the name came from is a mystery. Engelbart said no one could remember who started calling it a mouse, and that he was surprised the name stuck. His best guess: it just looked like a mouse with a tail.

On December 9, 1968, Engelbart showed the mouse to the public in a 90-minute demo at a computer conference in San Francisco, later nicknamed the "Mother of All Demos." The mouse on stage had three buttons. At first, the cord pointed the other way, but it got tangled when you moved your arm. So the team turned the thing around, and the tail came out the top.

## From patent to museum

The patent was filed in 1967 and granted in 1970 as US Patent 3,541,541. The word "mouse" is nowhere in its title: "X-Y position indicator for a display system." Today the original prototype belongs to the Computer History Museum, donated by SRI. Before that, its exhibit had shown a replica, made by Bill English himself.

> In 2011, a mouse cast from 18 carat white gold and set with 59 diamonds won the Guinness World Record for the most expensive computer mouse.

Every click you make today goes back to a carved-out block of wood with wheels.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('first-mouse-wood', 'en', 1, 'Wooden wireless mouse', 'wooden wireless mouse', 'Works like any wireless mouse but looks like it came out of a workshop, not a plastic factory.'),
  ('first-mouse-wood', 'en', 2, 'Illustrated computer history book', 'illustrated history of computers book', 'From the first calculating machines to smartphones, with plenty of pictures to flip through.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('first-mouse-wood', 'en', 1, 'Computer History Museum: CHM Acquires Original SRI Mouse', 'https://computerhistory.org/sri-mouse-mn052024/'),
  ('first-mouse-wood', 'en', 2, 'SRI International: The computer mouse and interactive computing', 'https://www.sri.com/hoi/computer-mouse-and-interactive-computing/'),
  ('first-mouse-wood', 'en', 3, 'Doug Engelbart Institute: Firsts: The Mouse', 'https://dougengelbart.org/theMouse'),
  ('first-mouse-wood', 'en', 4, 'Computer History Museum: The Mouse - CHM Revolution', 'https://www.computerhistory.org/revolution/input-output/14/350');
