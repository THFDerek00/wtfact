-- WTFact-Fakt „Jedes deiner Augen hat einen blinden Fleck, und dein Gehirn malt ihn einfach zu“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('blind-spot', NULL, 'mind', '👀', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'blind-spot', 'de', 'blinder-fleck-gehirn-malt-zu',
  'Jedes deiner Augen hat einen blinden Fleck, und dein Gehirn malt ihn einfach zu',
  'In deinem Blickfeld ist ein Loch. Gerade jetzt. Du merkst nur nichts davon.',
  'Dort, wo der Sehnerv das Auge verlässt, gibt es keine Lichtsinneszellen, deshalb hat jedes Auge einen blinden Fleck, den dein Gehirn unbemerkt auffüllt.',
  'In deinem Blickfeld ist ein Loch. Genau jetzt, in jedem Auge. Du hast es noch nie bemerkt, weil dein Gehirn es so gut überdeckt.

## Wo das Kabel das Auge verlässt

Deine Netzhaut ist mit lichtempfindlichen Zellen bedeckt, die Licht in Nervensignale umwandeln. Diese Signale müssen irgendwie ins Gehirn, und sie verlassen das Auge über den Sehnerv. Laut Britannica laufen dafür die Fortsätze von über einer Million Nervenzellen der Netzhaut an einer Stelle zusammen, der Papille. Sie ist etwa 1,5 Millimeter groß und hat überhaupt keine Fotorezeptoren. Was dort landet, wird schlicht nicht erfasst.

Das Ergebnis ist ein blinder Fleck im Blickfeld jedes Auges. Encyclopedia.com schreibt die Vorhersage dem französischen Wissenschaftler Edme Mariotte im 17. Jahrhundert zu. Beim Sezieren eines menschlichen Auges fiel ihm die Papille auf, und er folgerte, dass jedes Auge einen kleinen blinden Bereich haben muss.

## Dein Gehirn füllt die Lücke

Warum läufst du dann nicht mit einem dunklen Fleck im Bild herum? Zwei Gründe. Mit beiden Augen offen überlappen sich die Blickfelder, jedes Auge deckt also die Lücke des anderen ab, erklärt Britannica. Und selbst mit einem geschlossenen Auge füllt dein Gehirn die fehlende Stelle mit der Umgebung auf. Encyclopedia.com beschreibt, dass der blinde Fleck normalerweise in derselben Farbe wie der Hintergrund erscheint. Das Gehirn kann sogar Linien über die Lücke hinweg verbinden.

Finden kannst du deinen eigenen mit einem Test von Neuroscience for Kids der University of Washington: ein Auge zu, mit dem anderen ein Pluszeichen anschauen und das Blatt langsam näher heranholen. Bei einem bestimmten Abstand verschwindet der Punkt daneben einfach.

> Bonusfakt: Kraken und Kalmare haben diesen blinden Fleck nicht, weil bei ihnen der Sehnerv von hinten an die Sinneszellen herankommt, statt durch die Netzhaut zu brechen.

Das Bild, dem du jeden Tag vertraust, hat ein Loch, und dein Gehirn flickt es, bevor du es merkst.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('blind-spot', 'de', 1, 'Anatomisches Augenmodell', 'Augenmodell anatomisch', 'Zeigt Netzhaut, Linse und Sehnerv zum Auseinandernehmen.'),
  ('blind-spot', 'de', 2, 'Buch über das Sehen und das Gehirn', 'Buch Sehen Gehirn Wahrnehmung', 'Erklärt, wie aus Licht auf der Netzhaut ein Bild im Kopf wird.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('blind-spot', 'de', 1, 'Britannica: blind spot', 'https://www.britannica.com/science/blind-spot'),
  ('blind-spot', 'de', 2, 'University of Washington: Neuroscience for Kids - Vision Exp.', 'https://faculty.washington.edu/chudler/chvision.html'),
  ('blind-spot', 'de', 3, 'Encyclopedia.com: Blind Spot', 'https://www.encyclopedia.com/arts/culture-magazines/blind-spot'),
  ('blind-spot', 'de', 4, 'Wikipedia: Blind spot (vision)', 'https://en.wikipedia.org/wiki/Blind_spot_(vision)');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'blind-spot', 'en', 'blind-spot-brain-paints-over',
  'Each of your eyes has a blind spot, and your brain paints over it',
  'There is a hole in your field of view. Right now. You just don’t notice it.',
  'Where the optic nerve leaves the eye there are no light-sensitive cells, so every eye has a blind spot that your brain quietly fills in.',
  'There is a hole in your vision. Right now, in each eye. You have never noticed it because your brain covers it up so well.

## Where the cable leaves the eye

Your retina is covered with light-sensitive cells that turn light into nerve signals. Those signals have to get to the brain somehow, and they leave the eye through the optic nerve. According to Britannica, the fibers of over one million nerve cells in the retina come together at one spot to form it: the optic disc. It is about 1.5 millimeters across and has no photoreceptors at all. Whatever lands there is simply not detected.

The result is a blind spot in the field of view of each eye. Encyclopedia.com credits the French scientist Edme Mariotte with predicting it in the 17th century. While dissecting a human eye, he noticed the optic disc and concluded that every eye must have a small blind area.

## Your brain fills the gap

So why aren''t you walking around with a dark blob in your view? Two reasons. With both eyes open, the fields of view overlap, so each eye covers the other''s gap, Britannica explains. And even with one eye closed, your brain fills in the missing patch using the surroundings. Encyclopedia.com describes how the blind spot normally appears in the same color as the background. The brain can even join lines across the gap.

You can find your own with a test from Neuroscience for Kids at the University of Washington: close one eye, look at a plus sign with the other and slowly bring the page closer. At a certain distance, the dot next to it simply disappears.

> Bonus fact: Octopuses and squid don''t have this blind spot, because in their eyes the optic nerve reaches the receptors from behind instead of breaking through the retina.

The view you trust every day has a hole in it, and your brain patches it before you can notice.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('blind-spot', 'en', 1, 'Anatomical eye model', 'anatomical eye model', 'Shows the retina, lens and optic nerve, and you can take it apart.'),
  ('blind-spot', 'en', 2, 'Book about vision and the brain', 'book vision brain perception', 'Explains how light on your retina turns into a picture in your head.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('blind-spot', 'en', 1, 'Britannica: blind spot', 'https://www.britannica.com/science/blind-spot'),
  ('blind-spot', 'en', 2, 'University of Washington: Neuroscience for Kids - Vision Exp.', 'https://faculty.washington.edu/chudler/chvision.html'),
  ('blind-spot', 'en', 3, 'Encyclopedia.com: Blind Spot', 'https://www.encyclopedia.com/arts/culture-magazines/blind-spot'),
  ('blind-spot', 'en', 4, 'Wikipedia: Blind spot (vision)', 'https://en.wikipedia.org/wiki/Blind_spot_(vision)');
