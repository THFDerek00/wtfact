-- WTFact-Fakt „Wombats kacken Würfel. Kein Witz.“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('wombat-cubes', '2026-10-01', 'nature', '🎲', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wombat-cubes', 'de', 'wombats-kacken-wuerfel',
  'Wombats kacken Würfel. Kein Witz.',
  'Ein Beuteltier aus Australien schafft, was keine Fabrik der Welt hinbekommt: würfelförmige Kacke. Und Forschende haben herausgefunden, wie.',
  'Wombats produzieren als einzige bekannte Tiere würfelförmigen Kot, rund 80 bis 100 Würfel pro Nacht.',
  'Stell dir vor, du gehst nachts durch den australischen Busch und stolperst über kleine, perfekt kantige Würfel. Keine Steine. Kein Spielzeug. **Wombat-Kacke.**

## Wie zur Hölle geht das?

Lange dachte man, der Wombat-Po hätte vielleicht eine eckige Öffnung. Hat er nicht. Ein Team um die Forscherin Patricia Yang hat sich die Sache genauer angesehen (ja, das war wirklich ihr Job) und herausgefunden: Die Würfel entstehen **im Darm**.

Der Darm des Wombats ist nicht überall gleich elastisch. Manche Abschnitte sind steifer, andere dehnbarer. Während der Kot langsam durch die letzten Meter Darm wandert, drücken die unterschiedlich festen Bereiche ihn in Form, bis Kanten und Ecken entstehen. Dazu kommt, dass Wombats ihrem Essen extrem viel Wasser entziehen. Der Kot wird so trocken, dass er seine Form behält.

> Für diese Entdeckung gab es 2019 den Ig-Nobelpreis, die Auszeichnung für Forschung, die einen erst lachen und dann nachdenken lässt.

## Und wozu das Ganze?

Wombats markieren mit ihren Würfeln ihr Revier, gern auf Steinen oder Baumstämmen. Die Theorie: Würfel rollen nicht weg. Eine Kugel auf einem Felsen wäre beim nächsten Windstoß verschwunden, ein Würfel bleibt liegen und sagt allen anderen Wombats: *Hier wohne ich.*

Ein Wombat schafft übrigens **80 bis 100 Würfel pro Nacht**. Die Natur ist manchmal einfach effizienter als jede Fabrik.

## Was Ingenieure davon lernen wollen

Würfel herzustellen ist in der Industrie aufwendig: Man braucht Formen, Pressen oder Schneidwerkzeuge. Der Wombat macht es mit einem weichen Schlauch. Die Forschenden halten es für möglich, dass dieses Prinzip eines Tages bei der Herstellung von weichen Materialien hilft.

Damit ist auch geklärt, was du heute Abend auf die Frage „Was hast du heute gelernt?“ antwortest.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wombat-cubes', 'de', 1, 'Wombat-Kuscheltier', 'Wombat Kuscheltier', 'Der flauschigste Weg, diesen Fakt im Zimmer zu haben.'),
  ('wombat-cubes', 'de', 2, 'Darm mit Charme (Giulia Enders)', 'Darm mit Charme Giulia Enders', 'Der Bestseller über das Organ, über das niemand spricht. Lustig und überraschend lehrreich.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wombat-cubes', 'de', 1, 'Wikipedia: Wombats', 'https://de.wikipedia.org/wiki/Wombats'),
  ('wombat-cubes', 'de', 2, 'Yang et al. (2021), Soft Matter: Intestines of non-uniform stiffness mold the corners of wombat feces', 'https://pubs.rsc.org/en/content/articlelanding/2021/sm/d0sm01230k'),
  ('wombat-cubes', 'de', 3, 'The Conversation: Why do wombats do cube-shaped poo?', 'https://theconversation.com/why-do-wombats-do-cube-shaped-poo-55975');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'wombat-cubes', 'en', 'wombats-poop-cubes',
  'Wombats poop cubes. Seriously.',
  'An Australian marsupial pulls off something no factory can: cube-shaped poop. And scientists finally figured out how.',
  'Wombats are the only known animals that produce cube-shaped poop, around 80 to 100 cubes a night.',
  'Picture yourself walking through the Australian bush at night and tripping over small, perfectly edged cubes. Not rocks. Not toys. **Wombat poop.**

## How on earth does that work?

For a long time people assumed wombats must have a square-shaped exit. They don''t. A team led by researcher Patricia Yang took a closer look (yes, that was actually her job) and found that the cubes are shaped **inside the intestine**.

A wombat''s gut isn''t equally stretchy everywhere. Some sections are stiffer, others more elastic. As the poop slowly moves through the last stretch of intestine, those uneven walls squeeze it into shape until edges and corners form. On top of that, wombats pull a huge amount of water out of their food, so the poop ends up dry enough to keep its shape.

> The discovery won an Ig Nobel Prize in 2019, the award for research that first makes you laugh and then makes you think.

## But why?

Wombats use their cubes to mark territory, often on rocks or logs. The theory: cubes don''t roll away. A round pellet on a boulder would be gone with the next gust of wind, while a cube stays put and tells every other wombat: *I live here.*

A single wombat drops **80 to 100 cubes a night**. Sometimes nature is just more efficient than any factory.

## What engineers want to learn from it

Making cubes in industry takes molds, presses or cutting tools. The wombat does it with a soft tube. The researchers think this principle might one day help manufacture soft materials.

So if anyone asks what you learned today, you have your answer.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('wombat-cubes', 'en', 1, 'Wombat plush toy', 'wombat plush toy', 'The fluffiest way to keep this fact in your room.'),
  ('wombat-cubes', 'en', 2, 'Gut by Giulia Enders', 'Gut Giulia Enders book', 'The bestseller about the organ nobody talks about. Funny and surprisingly eye-opening.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('wombat-cubes', 'en', 1, 'Wikipedia: Wombat', 'https://en.wikipedia.org/wiki/Wombat'),
  ('wombat-cubes', 'en', 2, 'Yang et al. (2021), Soft Matter: Intestines of non-uniform stiffness mold the corners of wombat feces', 'https://pubs.rsc.org/en/content/articlelanding/2021/sm/d0sm01230k'),
  ('wombat-cubes', 'en', 3, 'The Conversation: Why do wombats do cube-shaped poo?', 'https://theconversation.com/why-do-wombats-do-cube-shaped-poo-55975');
