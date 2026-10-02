-- WTFact-Fakt „Napoleon war gar nicht klein, sondern rund 1,70 Meter groß“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('napoleon-height', '2026-09-02', 'history', '🎩', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'napoleon-height', 'de', 'napoleon-war-nicht-klein',
  'Napoleon war gar nicht klein, sondern rund 1,70 Meter groß',
  'Der berühmteste „kleine“ Mann der Geschichte war ziemlich durchschnittlich. Schuld sind ein Rechenfehler und fiese Karikaturen.',
  'Napoleon war etwa 1,67 bis 1,70 Meter groß und damit für seine Zeit ganz normal. Der Mythos vom Zwerg kommt aus Umrechnung und Propaganda.',
  'Kleiner Mann, großes Ego: Kaum eine historische Figur ist so sehr mit ihrer Körpergröße verbunden wie Napoleon Bonaparte. Es gibt sogar einen nach ihm benannten „Napoleon-Komplex“. Das Problem: **Napoleon war gar nicht klein.**

## Der Rechenfehler mit dem Zoll

Auf Napoleons Totenschein notierte sein Arzt eine Größe von „5 pieds, 2 pouces, 4 lignes“, also 5 Fuß, 2 Zoll und 4 Linien. Wer das in englischen Maßen liest, stellt sich einen ziemlich kleinen Mann vor. Nur: **Der alte französische Zoll war deutlich länger als der englische.**

Rechnet man korrekt um, kommt man laut Britannica und History.com auf etwa 1,67 bis 1,70 Meter. Damit war Napoleon für einen Mann seiner Zeit ziemlich durchschnittlich groß. Sein großer Gegenspieler, der Herzog von Wellington, maß rund 1,73 Meter, war also nur ein paar Zentimeter größer. Über ihn hat sich niemand lustig gemacht.

## Propaganda mit dem Zeichenstift

Den Rest erledigten britische Karikaturisten. Großbritannien lag jahrelang im Krieg mit Napoleon, und Spott war eine Waffe. Vor allem **James Gillray** zeichnete ihn immer wieder als winzigen Wicht. Britannica nennt etwa eine Karikatur, die ihn als Gulliver gegenüber dem englischen König Georg III. zeigt, angelehnt an „Gullivers Reisen“.

Solche Bilder verbreiteten sich, die Witze wurden weitererzählt, und irgendwann galt der kleine Napoleon als historische Tatsache.

## Der „kleine Korporal“

Dazu kam ein Spitzname, der sich missverstehen lässt: „le petit caporal“, der kleine Korporal. Laut Britannica gaben ihm den aber seine eigenen Soldaten, und er war **liebevoll gemeint**, nicht als Spott über seine Größe.

> Der Begriff „Napoleon-Komplex“ beschreibt die Idee, dass kleine Männer ihre Größe mit besonders dominantem Verhalten ausgleichen. Ausgerechnet der Namensgeber taugt dafür kaum als Beispiel.

Napoleon hat also Schlachten verloren, ein Kaiserreich verloren und am Ende auch den Kampf um sein eigenes Image. Gegen ein paar Zeichner mit spitzer Feder.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('napoleon-height', 'de', 1, 'Napoleon-Biografie als Buch', 'Napoleon Biografie Buch', 'Eine gute Biografie zeigt, wie ein Offizier aus Korsika zum Kaiser wurde. Spannender als jede Serie.'),
  ('napoleon-height', 'de', 2, 'Zweispitz-Hut für Kostüme', 'Zweispitz Hut Napoleon Kostüm', 'Der klassische Hut mit zwei Spitzen. Ein Kostüm-Klassiker für Fasching und Mottopartys.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('napoleon-height', 'de', 1, 'Wikipedia: Napoleon complex', 'https://en.wikipedia.org/wiki/Napoleon_complex'),
  ('napoleon-height', 'de', 2, 'Britannica: Napoleon as Pop Culture Icon', 'https://www.britannica.com/topic/Napoleon-as-Pop-Culture-Icon'),
  ('napoleon-height', 'de', 3, 'History.com: Was Napoleon Short? Origins of the ''Napoleon Complex''', 'https://www.history.com/articles/napoleon-complex-short');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'napoleon-height', 'en', 'napoleon-was-not-short',
  'Napoleon wasn''t short. He was about 1.70 meters tall',
  'History''s most famous "little" man was pretty average. Blame a unit mix-up and some savage cartoons.',
  'Napoleon stood about 5 feet 6, totally normal for his time. The tiny-tyrant myth comes from a measurement mix-up and propaganda.',
  'Small man, big ego: hardly any historical figure is as tied to his height as Napoleon Bonaparte. There''s even a "Napoleon complex" named after him. The problem: **Napoleon wasn''t actually short.**

## The inch that wasn''t an inch

On Napoleon''s death certificate, his doctor recorded his height as "5 pieds, 2 pouces, 4 lignes," or 5 feet, 2 inches and 4 lines. Read that in English units and you picture someone barely over 5 foot 2. But: **the old French inch was noticeably longer than the English one.**

Convert it properly and, according to Britannica and History.com, you get roughly 5 feet 6 inches, about 1.67 to 1.70 meters. That made Napoleon pretty average for a man of his time. His great rival, the Duke of Wellington, was about 5 feet 8 inches (1.73 meters), so only an inch or two taller. Nobody made fun of him.

## Propaganda with a pencil

British cartoonists did the rest. Britain was at war with Napoleon for years, and ridicule was a weapon. **James Gillray** in particular drew him again and again as a tiny little man. Britannica points to one cartoon showing him as Gulliver facing England''s King George III, a nod to "Gulliver''s Travels."

Those images spread, the jokes got retold, and at some point the tiny Napoleon became accepted history.

## The "little corporal"

Then there''s a nickname that''s easy to misread: "le petit caporal," the little corporal. According to Britannica, it came from his own soldiers, and it was **meant affectionately**, not as a jab at his height.

> The term "Napoleon complex" describes the idea that short men make up for their height with extra-dominant behavior. Its namesake is a pretty poor example.

So Napoleon lost battles, lost an empire, and in the end lost the fight over his own image. To a few guys with very sharp pencils.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('napoleon-height', 'en', 1, 'Napoleon: A Life by Andrew Roberts', 'Napoleon A Life Andrew Roberts', 'A gripping, detailed biography of how a Corsican officer became emperor.'),
  ('napoleon-height', 'en', 2, 'Bicorne hat costume', 'bicorne hat napoleon costume', 'The classic two-pointed hat. A costume staple for Halloween and theme parties.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('napoleon-height', 'en', 1, 'Wikipedia: Napoleon complex', 'https://en.wikipedia.org/wiki/Napoleon_complex'),
  ('napoleon-height', 'en', 2, 'Britannica: Napoleon as Pop Culture Icon', 'https://www.britannica.com/topic/Napoleon-as-Pop-Culture-Icon'),
  ('napoleon-height', 'en', 3, 'History.com: Was Napoleon Short? Origins of the ''Napoleon Complex''', 'https://www.history.com/articles/napoleon-complex-short');
