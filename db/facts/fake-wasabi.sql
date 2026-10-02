-- WTFact-Fakt „Das Wasabi beim Sushi ist meistens gefärbter Meerrettich“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('fake-wasabi', '2026-09-25', 'food', '🍣', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'fake-wasabi', 'de', 'wasabi-meist-meerrettich',
  'Das Wasabi beim Sushi ist meistens gefärbter Meerrettich',
  'Die grüne Paste neben deinen Maki hat mit der echten Wasabi-Pflanze oft fast nichts zu tun.',
  'Außerhalb Japans besteht das meiste „Wasabi“ aus Meerrettich, Senf und grüner Lebensmittelfarbe.',
  'Kleiner grüner Klecks, viel Schärfe, Tränen in den Augen: So kennst du Wasabi vom Sushi. Die schlechte Nachricht: **Was da auf deinem Teller liegt, ist meistens gar kein Wasabi.**

## Das große Grün-Imitat

Echter Wasabi ist eine Pflanze (*Eutrema japonicum*, früher *Wasabia japonica*), deren Wurzelstock frisch gerieben wird. Außerhalb Japans landet aber fast immer etwas anderes auf dem Teller: eine Mischung aus **Meerrettich, Senf, Stärke und grüner Lebensmittelfarbe** oder Spinatpulver. Laut Wikipedia nutzen sogar die meisten Sushi-Restaurants außerhalb Japans dieses Pulver, auch gute. Viele Tuben mit „Wasabi“ drauf enthalten laut Bustle nur einen winzigen Anteil der echten Pflanze, oft unter einem Prozent.

Ganz frei erfunden ist die Schärfe trotzdem nicht. Meerrettich, Senf und Wasabi sind verwandt und bilden denselben scharfen Stoff: Allylisothiocyanat. Der entsteht erst, wenn die Pflanzenzellen beim Reiben aufbrechen. Deshalb fühlt sich das Imitat so ähnlich an.

## Warum das Original so selten ist

Wasabi ist eine echte Diva. Die Pflanze verträgt kein direktes Sonnenlicht, braucht hohe Luftfeuchtigkeit und Temperaturen zwischen etwa 8 und 20 Grad. Traditionell wächst sie an kühlen Gebirgsbächen in Japan. Meerrettich wächst dagegen schneller, wird größer und ist viel billiger.

Dazu kommt: Echter Wasabi ist eine Sache von Minuten. **Frisch gerieben hält er sein volles Aroma laut HuffPost nur etwa 15 Minuten.** Gute Restaurants reiben ihn deshalb direkt vor dem Servieren. Vorgefertigte Paste aus der Tube kann da nicht mithalten.

> Traditionell wurde Wasabi auf rauer Haifischhaut gerieben. Heute sind Metallreiben üblich.

## Wie schmeckt das Original?

Echter Wasabi ist laut HuffPost milder im Abgang, frischer und eher „pflanzig“. Die Schärfe knallt kurz und ist dann weg, statt lange im Mund zu brennen wie Meerrettich.

Dein Sushi hat also die ganze Zeit mit einem Double gearbeitet, und kaum jemand hat es gemerkt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('fake-wasabi', 'de', 1, 'Sushi-Set zum Selbermachen', 'Sushi Set Bambusmatte Anfänger', 'Bambusmatte, Reispaddel und Stäbchen: Damit gelingen Maki auch zu Hause.'),
  ('fake-wasabi', 'de', 2, 'Japanisches Kochbuch', 'Japanisches Kochbuch', 'Von Ramen bis Onigiri, mit Erklärungen zu Zutaten, die man hier selten kennt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('fake-wasabi', 'de', 1, 'Wikipedia: Wasabi', 'https://en.wikipedia.org/wiki/Wasabi'),
  ('fake-wasabi', 'de', 2, 'HuffPost: Think You''ve Been Eating Wasabi All This Time? Think Again.', 'https://www.huffpost.com/entry/fake-wasabi-horseradish_n_561bd666e4b0082030a33959'),
  ('fake-wasabi', 'de', 3, 'Bustle: The Wasabi That Comes With Your Sushi Is Almost Always Fake, And For Good Reason', 'https://www.bustle.com/p/most-wasabi-isnt-real-wasabi-which-is-actually-way-more-rare-expensive-than-you-think-15914765');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'fake-wasabi', 'en', 'most-wasabi-is-horseradish',
  'The wasabi with your sushi is usually dyed horseradish',
  'That green paste next to your maki often has almost nothing to do with the real wasabi plant.',
  'Outside Japan, most "wasabi" is made of horseradish, mustard and green food coloring.',
  'A little green blob, a lot of heat, tears in your eyes: that''s wasabi as you know it from sushi. The bad news: **what''s on your plate usually isn''t wasabi at all.**

## The great green impostor

Real wasabi is a plant (*Eutrema japonicum*, formerly *Wasabia japonica*) whose rhizome gets grated fresh. Outside Japan, though, you almost always get something else: a mix of **horseradish, mustard, starch and green food coloring** or spinach powder. According to Wikipedia, most sushi restaurants outside Japan use this powder, even good ones. According to Bustle, many tubes labeled "wasabi" contain only a tiny share of the real plant, often under one percent.

The heat isn''t completely fake, though. Horseradish, mustard and wasabi are related and produce the same spicy compound: allyl isothiocyanate. It only forms when the plant cells break open during grating. That''s why the imitation feels so similar.

## Why the original is so rare

Wasabi is a true diva. The plant can''t handle direct sunlight and needs high humidity and temperatures between about 8 and 20 degrees Celsius. Traditionally it grows along cool mountain streams in Japan. Horseradish, on the other hand, grows faster, gets bigger and is much cheaper.

On top of that, real wasabi is a matter of minutes. **Freshly grated, it keeps its full flavor for only about 15 minutes, according to HuffPost.** Good restaurants therefore grate it right before serving. Premade paste from a tube can''t compete.

> Wasabi was traditionally grated on rough sharkskin. Today, metal graters are the norm.

## What does the real thing taste like?

According to HuffPost, real wasabi is smoother, cleaner and more "plant-like". The heat hits briefly and then fades, instead of lingering like horseradish.

So your sushi has been working with a stunt double this whole time, and hardly anyone noticed.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('fake-wasabi', 'en', 1, 'Sushi making kit', 'sushi making kit bamboo mat beginner', 'Bamboo mat, rice paddle and chopsticks: everything you need to roll maki at home.'),
  ('fake-wasabi', 'en', 2, 'Japanese cookbook', 'Japanese home cooking cookbook', 'From ramen to onigiri, with explanations of ingredients you might not know yet.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('fake-wasabi', 'en', 1, 'Wikipedia: Wasabi', 'https://en.wikipedia.org/wiki/Wasabi'),
  ('fake-wasabi', 'en', 2, 'HuffPost: Think You''ve Been Eating Wasabi All This Time? Think Again.', 'https://www.huffpost.com/entry/fake-wasabi-horseradish_n_561bd666e4b0082030a33959'),
  ('fake-wasabi', 'en', 3, 'Bustle: The Wasabi That Comes With Your Sushi Is Almost Always Fake, And For Good Reason', 'https://www.bustle.com/p/most-wasabi-isnt-real-wasabi-which-is-actually-way-more-rare-expensive-than-you-think-15914765');
