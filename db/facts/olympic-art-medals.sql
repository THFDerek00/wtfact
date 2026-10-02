-- WTFact-Fakt „Bis 1948 gab es bei Olympia Medaillen für Kunst“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('olympic-art-medals', '2026-09-15', 'sport', '🎨', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'olympic-art-medals', 'de', 'olympia-medaillen-fuer-kunst',
  'Bis 1948 gab es bei Olympia Medaillen für Kunst',
  'Gold für ein Gedicht, Silber für ein Gemälde: Fast 40 Jahre lang war Kunst eine olympische Disziplin.',
  'Von 1912 bis 1948 vergab Olympia echte Medaillen für Malerei, Bildhauerei, Architektur, Literatur und Musik.',
  'Stell dir vor, du gewinnst olympisches Gold, ohne einen Meter zu laufen. Dafür mit einem Pinsel, einem Gedicht oder einem Bauplan. Klingt nach Satire, war aber jahrzehntelang offizielles Programm: **Von 1912 bis 1948 gab es bei den Olympischen Spielen Medaillen für Kunst.**

## Der Gründer wollte Muskeln und Musen

Die Idee kam von Pierre de Coubertin, dem Gründer der modernen Spiele. Für ihn gehörten Sport und Kunst zusammen, so wie im antiken Griechenland. Also gab es fünf Kategorien: **Architektur, Literatur, Musik, Malerei und Bildhauerei**. Einzige Bedingung: Das Werk musste vom Sport inspiriert sein.

Das Schrägste daran: Coubertin selbst holte 1912 Gold in Literatur, mit seiner „Ode an den Sport“. Eingereicht hatte er sie allerdings unter zwei Pseudonymen, nicht unter seinem eigenen Namen.

Die erste Goldmedaille für Kunst überhaupt ging 1912 an den US-Amerikaner Walter Winans für eine Bronzeskulptur namens „An American Trotter“, ein Pferd mit Wagen. Winans gehört zu den wenigen Menschen, die bei Olympia sowohl im Sport als auch in der Kunst angetreten sind.

## Vom Nischenevent zur Massenausstellung

Am Anfang war das Interesse überschaubar: 1912 reichten nur etwa 35 Künstlerinnen und Künstler Werke ein. 1928 in Amsterdam waren es dann schon rund 1.100 Werke. Und die Kunstausstellung der Spiele 1932 in Los Angeles zog fast 400.000 Besucher an.

> Die letzte Silbermedaille im Kunstwettbewerb gewann 1948 der Brite John Copley. Er war damals 73 Jahre alt.

## Warum es heute keine Kunstmedaillen mehr gibt

Das Problem war ausgerechnet der Amateurgedanke. Olympia sollte damals nur für Amateure sein, aber fast alle Teilnehmenden in den Kunstwettbewerben waren Profis, die mit ihrer Kunst Geld verdienten. Nach 1948 war deshalb Schluss. Die Wettbewerbe wurden durch Kunstausstellungen ohne Medaillen ersetzt.

Insgesamt waren rund 150 Medaillen für Kunst vergeben worden. Laut Smithsonian Magazine wurden sie später aus den offiziellen olympischen Medaillenspiegeln gestrichen. Es gibt also Olympiasieger, die in keiner heutigen Medaillenstatistik mehr auftauchen.

Irgendwo hängt also ein Gemälde mit olympischem Gold, und kaum jemand weiß davon.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('olympic-art-medals', 'de', 1, 'Bildband zur Geschichte der Olympischen Spiele', 'Olympische Spiele Geschichte Bildband', 'Viele historische Fotos und Plakate, gut zum Blättern und Staunen.'),
  ('olympic-art-medals', 'de', 2, 'Vintage-Poster im Olympia-Stil', 'Vintage Poster Olympia Kunstdruck', 'Retro-Sportgrafik fürs Zimmer, sieht an der Wand nach Museum aus.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('olympic-art-medals', 'de', 1, 'Smithsonian Magazine: When the Olympics Gave Out Medals for Art', 'https://www.smithsonianmag.com/arts-culture/when-the-olympics-gave-out-medals-for-art-6878965/'),
  ('olympic-art-medals', 'de', 2, 'Olympedia: Art Competitions', 'https://www.olympedia.org/sports/ART'),
  ('olympic-art-medals', 'de', 3, 'Artnet News: Art Bites: Art Used to Be an Olympic Sport', 'https://news.artnet.com/art-world/art-bites-olympic-art-competitions-2432359');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'olympic-art-medals', 'en', 'olympic-medals-for-art',
  'Until 1948, you could win an Olympic medal for art',
  'Gold for a poem, silver for a painting: for almost 40 years, art was an Olympic event.',
  'From 1912 to 1948, the Olympics handed out real medals for painting, sculpture, architecture, literature and music.',
  'Imagine winning Olympic gold without running a single meter. Instead, you use a paintbrush, a poem or a building plan. Sounds like satire, but it was the official program for decades: **from 1912 to 1948, the Olympic Games awarded medals for art.**

## The founder wanted muscles and muses

The idea came from Pierre de Coubertin, founder of the modern Games. To him, sport and art belonged together, just like in ancient Greece. So there were five categories: **architecture, literature, music, painting and sculpture**. The only rule: the work had to be inspired by sport.

The best part: Coubertin himself won gold in literature in 1912 with his "Ode to Sport". He didn''t enter it under his own name, though. He used two pseudonyms.

The very first art gold went to American Walter Winans in 1912 for a bronze sculpture called "An American Trotter", a horse pulling a chariot. Winans is one of the few people who competed at the Olympics in both sport and art.

## From niche event to blockbuster show

Interest started small: in 1912, only about 35 artists submitted work. By 1928 in Amsterdam, there were around 1,100 entries. And the art exhibition at the 1932 Games in Los Angeles drew nearly 400,000 visitors.

> The last silver medal in the art competitions went to British artist John Copley in 1948. He was 73 years old at the time.

## Why there are no art medals today

The problem was the amateur rule. Back then, the Olympics were meant for amateurs only, but almost everyone in the art competitions was a professional who made a living from their work. So after 1948, the contests were dropped and replaced by art exhibitions without medals.

In total, around 150 art medals had been handed out. According to Smithsonian Magazine, they were later struck from the official Olympic medal records. So there are Olympic champions who don''t show up in any medal table today.

Somewhere out there hangs a painting with an Olympic gold medal, and hardly anyone knows.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('olympic-art-medals', 'en', 1, 'Illustrated history of the Olympic Games', 'Olympic Games history illustrated book', 'Packed with historic photos and posters, great for flipping through.'),
  ('olympic-art-medals', 'en', 2, 'Vintage Olympic-style poster print', 'vintage Olympic poster art print', 'Retro sports graphics that make any wall look like a museum.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('olympic-art-medals', 'en', 1, 'Smithsonian Magazine: When the Olympics Gave Out Medals for Art', 'https://www.smithsonianmag.com/arts-culture/when-the-olympics-gave-out-medals-for-art-6878965/'),
  ('olympic-art-medals', 'en', 2, 'Olympedia: Art Competitions', 'https://www.olympedia.org/sports/ART'),
  ('olympic-art-medals', 'en', 3, 'Artnet News: Art Bites: Art Used to Be an Olympic Sport', 'https://news.artnet.com/art-world/art-bites-olympic-art-competitions-2432359');
