-- WTFact-Fakt „Das Kleid war blau-schwarz, doch 30 Prozent sahen Weiß-Gold“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('the-dress-colors', '2026-10-10T21:00:00+02:00', 'mind', '👗', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'the-dress-colors', 'de', 'das-kleid-blau-schwarz-weiss-gold',
  'Das Kleid war blau-schwarz, doch 30 Prozent sahen Weiß-Gold',
  'Ein unscharfes Handyfoto hat 2015 das Internet gespalten und der Hirnforschung ein Geschenk gemacht.',
  'Das berühmte Kleid von 2015 war königsblau mit schwarzer Spitze, doch in einer Umfrage mit rund 1.400 Menschen sahen 30 Prozent es weiß-gold.',
  'Im Februar 2015 hat ein verwackeltes Foto von einem gestreiften Kleid das Internet gespalten. Die einen sahen Blau und Schwarz, die anderen Weiß und Gold. Freunde stritten, Promis mischten mit. Und das Kleid selbst? Königsblau mit schwarzer Spitze.

## Ein Foto, zwei Wirklichkeiten

Aufgenommen hatte das Bild laut Wikipedia die Mutter einer Braut, gepostet wurde es auf Tumblr. Schon am nächsten Tag war es überall. Forschende merkten schnell, dass das mehr war als ein Meme: ein seltener Fall, in dem ganz normale Menschen sich bei denselben Pixeln komplett über die Farben uneinig sind.

Im Mai 2015 erschienen in der Fachzeitschrift Current Biology gleich drei kurze Studien dazu. Ein Team um den Neurowissenschaftler Bevil Conway vom Wellesley College und vom MIT befragte rund 1.400 Menschen. Laut Wellesley beschrieben 57 Prozent das Kleid als blau-schwarz, 30 Prozent als weiß-gold, 11 Prozent als blau-braun und 2 Prozent als etwas anderes. Ältere Menschen und Frauen sahen häufiger Weiß-Gold.

## Dein Gehirn rät das Licht

Die Erklärung heißt Farbkonstanz. Dein Gehirn versucht ständig, die Farbe der Beleuchtung herauszurechnen, damit Dinge gleich aussehen, egal unter welchem Licht. Conway formuliert es so: „Das Gehirn hat herausgefunden, wie es dieses verfälschende Licht ‚wegradieren‘ kann.“

Das Foto ist überbelichtet und verrät kaum, wie das Licht im Raum war. Live Science fasst es so zusammen: Wer Weiß-Gold sah, ging vermutlich von Tageslicht aus und rechnete bläuliche Anteile heraus. Wer Blau-Schwarz sah, ging vermutlich von warmem Kunstlicht aus und rechnete rötliche Anteile heraus. Gleiche Pixel, andere Annahme über den Raum, ein komplett anderes Kleid.

Eine zweite Studie, geleitet von Karl Gegenfurtner von der Universität Gießen, zeigte, dass die Leute eigentlich eine fließende Skala von Blautönen sahen. Sein Team schrieb: „Die Frage sollte also nicht sein, ob das Kleid blau oder weiß ist, sondern ob es hellblau oder dunkelblau ist.“

> Bonusfakt: Als Forschende der University of Nevada, Reno die Farben des Bildes umkehrten, sahen fast 95 Prozent die Streifen gelb oder golden.

Du siehst keine Farben. Du siehst die beste Vermutung deines Gehirns.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('the-dress-colors', 'de', 1, 'Buch über Farben und Farbwahrnehmung', 'Buch Farben Wahrnehmung', 'Erzählt, wie Farben entstehen und warum jeder sie ein bisschen anders sieht.'),
  ('the-dress-colors', 'de', 2, 'Farbfächer mit Farbmustern', 'Farbfächer Farbmuster', 'Praktisch zum Vergleichen von Farbtönen, ob beim Streichen oder beim Gestalten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('the-dress-colors', 'de', 1, 'Wellesley College: New Research Explains Why People Saw “The Dress” Differently', 'https://www.wellesley.edu/news/2015/june/node/62196'),
  ('the-dress-colors', 'de', 2, 'Live Science: Science of ‘the Dress’: Why We Confuse White & Gold with Blue & Black', 'https://livescience.com/50842-dress-debate-color-perception.html'),
  ('the-dress-colors', 'de', 3, 'ScienceDaily: Three perspectives on ‘The Dress’', 'https://www.sciencedaily.com/releases/2015/05/150514132901.htm'),
  ('the-dress-colors', 'de', 4, 'Wikipedia: The dress', 'https://en.wikipedia.org/wiki/The_dress');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'the-dress-colors', 'en', 'the-dress-blue-black-white-gold',
  'The dress was blue and black, but 30 percent saw white and gold',
  'In 2015, one blurry phone photo split the internet and handed brain science a gift.',
  'The famous 2015 dress was royal blue with black lace, yet in a survey of about 1,400 people, 30 percent saw it as white and gold.',
  'In February 2015, a washed-out photo of a striped dress split the internet. Some people saw blue and black, others saw white and gold. Friends argued, celebrities weighed in. And the dress itself? Royal blue with black lace.

## One photo, two realities

According to Wikipedia, the picture was taken by the mother of a bride and posted on Tumblr. By the next day it was everywhere. Scientists quickly realized this was more than a meme: a rare case where perfectly ordinary viewers completely disagree about the colors of the same pixels.

In May 2015, the journal Current Biology published three short studies on it. A team led by neuroscientist Bevil Conway of Wellesley College and MIT surveyed about 1,400 people. According to Wellesley, 57 percent described the dress as blue and black, 30 percent as white and gold, 11 percent as blue and brown, and 2 percent as something else. Older people and women were more likely to see white and gold.

## Your brain guesses the light

The explanation is color constancy. Your brain constantly tries to subtract the color of the lighting so that things look the same no matter what light they are in. Conway put it this way: "The brain has figured out how to ''erase'' that contaminating light."

The photo is overexposed and gives few hints about the light in the room. Live Science sums it up: people who saw white and gold probably assumed daylight and discounted bluish wavelengths. People who saw blue and black probably assumed warm artificial light and discounted reddish wavelengths. Same pixels, different assumption about the room, a completely different dress.

A second study, led by Karl Gegenfurtner of Giessen University, showed that people actually saw a continuous range of blues. His team wrote: "The question should thus not be whether the dress is blue or white, but whether it is light blue or dark blue."

> Bonus fact: When researchers at the University of Nevada, Reno inverted the image''s colors, nearly 95 percent of viewers saw the stripes as yellow or gold.

You don''t see colors. You see your brain''s best guess.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('the-dress-colors', 'en', 1, 'Book about color and color perception', 'book color perception', 'Tells how colors come about and why everyone sees them a little differently.'),
  ('the-dress-colors', 'en', 2, 'Color swatch fan deck', 'color swatch fan deck', 'Handy for comparing shades, whether you are painting a wall or designing something.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('the-dress-colors', 'en', 1, 'Wellesley College: New Research Explains Why People Saw “The Dress” Differently', 'https://www.wellesley.edu/news/2015/june/node/62196'),
  ('the-dress-colors', 'en', 2, 'Live Science: Science of ‘the Dress’: Why We Confuse White & Gold with Blue & Black', 'https://livescience.com/50842-dress-debate-color-perception.html'),
  ('the-dress-colors', 'en', 3, 'ScienceDaily: Three perspectives on ‘The Dress’', 'https://www.sciencedaily.com/releases/2015/05/150514132901.htm'),
  ('the-dress-colors', 'en', 4, 'Wikipedia: The dress', 'https://en.wikipedia.org/wiki/The_dress');
