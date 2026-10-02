-- WTFact-Fakt „Nintendo begann 1889 mit Spielkarten, nicht mit Videospielen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('nintendo-1889', '2026-09-25', 'history', '🎴', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nintendo-1889', 'de', 'nintendo-spielkarten-1889',
  'Nintendo begann 1889 mit Spielkarten, nicht mit Videospielen',
  'Lange vor Mario, Zelda und Switch verdiente Nintendo sein Geld mit bemalten Karten aus Kyoto.',
  'Nintendo wurde 1889 in Kyoto gegründet, um Hanafuda-Spielkarten herzustellen.',
  'Bei Nintendo denkst du wahrscheinlich an Mario, Pokémon und die Switch. Aber die Firma ist viel älter als jede Spielkonsole. **Nintendo wurde 1889 in Kyoto gegründet**, und zwar als Hersteller von Spielkarten.

## Blumenkarten aus Kyoto

Gründer war der Handwerker Fusajiro Yamauchi. Seine Firma hieß damals Nintendo Koppai und stellte japanische Spielkarten her, vor allem **Hanafuda**, auf Deutsch „Blumenkarten“.

Was der Name Nintendo bedeutet, ist übrigens gar nicht eindeutig. Oft wird er mit „Überlass das Glück dem Himmel“ übersetzt, historisch belegt ist das aber nicht. Selbst die Nachfahren von Yamauchi kennen die ursprünglich gemeinte Bedeutung nicht.

## Vom Kartentisch zur Konsole

Nintendo blieb lange beim Kartenspiel. Anfang des 20. Jahrhunderts kamen Karten im westlichen Stil dazu. 1959 schloss die Firma einen Deal mit Disney und brachte Karten mit Disney-Figuren heraus.

Danach probierte Nintendo so einiges aus, das mit Spielen nichts zu tun hatte. Laut Britannica versuchte sich die Firma unter anderem an **Instant-Reis und einem Taxiunternehmen**. Der Weg, der wirklich weiterführte, war ein anderer: Spielzeug, etwa die Ultra Hand.

Von dort ging es Schritt für Schritt Richtung Elektronik. Es folgten Lichtgewehr-Schießstände, die Handhelds der Serie Game & Watch und 1981 der Arcade-Automat Donkey Kong. **Darin hatte die Figur ihren ersten Auftritt, die später als Mario berühmt wurde.**

> 1953 war Nintendo das erste Unternehmen in Japan, das Spielkarten aus Plastik erfolgreich in Massenproduktion herstellte.

Der Firmensitz ist bis heute Kyoto. Eine Firma, die mit Papierkarten anfing und heute Konsolen in die ganze Welt verkauft: Besser hätte sich Fusajiro Yamauchi sein Blatt kaum mischen können.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nintendo-1889', 'de', 1, 'Hanafuda-Kartenspiel', 'Hanafuda Karten', 'Die traditionellen japanischen Blumenkarten mit ihren farbigen Motiven. Schön zum Spielen und zum Hinstellen.'),
  ('nintendo-1889', 'de', 2, 'Sachbuch über die Geschichte von Nintendo', 'Nintendo Geschichte Buch', 'Erzählt, wie aus einer Kartenmanufaktur einer der wichtigsten Spielekonzerne der Welt wurde.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nintendo-1889', 'de', 1, 'Wikipedia: Nintendo', 'https://en.wikipedia.org/wiki/Nintendo'),
  ('nintendo-1889', 'de', 2, 'Britannica Money: Nintendo', 'https://www.britannica.com/topic/Nintendo-Company-Ltd'),
  ('nintendo-1889', 'de', 3, 'The Boston Globe: Hiroshi Yamauchi, 85; helped Nintendo gain gaming dominance', 'https://www.bostonglobe.com/metro/obituaries/2013/09/20/hiroshi-yamauchi-who-helped-nintendo-gain-video-game-dominance-dies/qA9RrGg8AlO8MZuDKSwcjL/story.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nintendo-1889', 'en', 'nintendo-playing-cards-1889',
  'Nintendo started out making playing cards in 1889',
  'Long before Mario, Zelda and the Switch, Nintendo made its money with painted cards from Kyoto.',
  'Nintendo was founded in Kyoto in 1889 to make hanafuda playing cards.',
  'When you hear Nintendo, you probably think of Mario, Pokémon and the Switch. But the company is way older than any game console. **Nintendo was founded in Kyoto in 1889**, as a maker of playing cards.

## Flower cards from Kyoto

The founder was a craftsman named Fusajiro Yamauchi. His company was called Nintendo Koppai, and it made Japanese playing cards, especially **hanafuda**, or "flower cards."

What the name Nintendo actually means isn''t clear, by the way. It''s often translated as "leave luck to heaven," but there''s no historical proof of that. Even Yamauchi''s descendants don''t know what the name was originally meant to say.

## From card table to console

Nintendo stuck with cards for a long time. In the early 1900s, it added Western-style decks. In 1959, the company struck a deal with Disney and started selling cards with Disney characters.

After that, Nintendo tried out a bunch of things that had nothing to do with games. According to Britannica, it dabbled in **instant rice and a taxi company**. The path that actually led somewhere was a different one: toys, like the Ultra Hand.

From there, it moved step by step toward electronics. Next came light-gun shooting ranges, the Game & Watch handhelds and, in 1981, the arcade game Donkey Kong. **That''s where the character later known as Mario made his first appearance.**

> In 1953, Nintendo became the first company in Japan to successfully mass-produce plastic playing cards.

The company is still headquartered in Kyoto. It started with paper cards and now sells consoles worldwide. Fusajiro Yamauchi couldn''t have dealt himself a better hand.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nintendo-1889', 'en', 1, 'Hanafuda card deck', 'hanafuda cards', 'Traditional Japanese flower cards with colorful artwork. Fun to play and nice to display.'),
  ('nintendo-1889', 'en', 2, 'Game Over by David Sheff', 'Game Over David Sheff Nintendo', 'The classic book on how Nintendo went from card maker to video game giant.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nintendo-1889', 'en', 1, 'Wikipedia: Nintendo', 'https://en.wikipedia.org/wiki/Nintendo'),
  ('nintendo-1889', 'en', 2, 'Britannica Money: Nintendo', 'https://www.britannica.com/topic/Nintendo-Company-Ltd'),
  ('nintendo-1889', 'en', 3, 'The Boston Globe: Hiroshi Yamauchi, 85; helped Nintendo gain gaming dominance', 'https://www.bostonglobe.com/metro/obituaries/2013/09/20/hiroshi-yamauchi-who-helped-nintendo-gain-video-game-dominance-dies/qA9RrGg8AlO8MZuDKSwcjL/story.html');
