-- WTFact-Fakt „Im All werden Astronauten bis zu 3 Prozent größer“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('astronauts-taller', '2026-09-10', 'body', '🧑‍🚀', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'astronauts-taller', 'de', 'astronauten-wachsen-im-all',
  'Im All werden Astronauten bis zu 3 Prozent größer',
  'Ohne Schwerkraft streckt sich die Wirbelsäule. Zurück auf der Erde ist der Zuwachs allerdings schnell wieder weg.',
  'Auf der Raumstation wachsen Astronauten um bis zu 3 Prozent, weil die Schwerkraft ihre Wirbelsäule nicht mehr zusammendrückt.',
  'Wer schon immer ein paar Zentimeter größer sein wollte, hat eine Option: ab ins All. Klingt nach Witz, ist aber gut dokumentiert. **Astronauten auf Langzeitmissionen werden laut NASA bis zu 3 Prozent größer.**

## Die Wirbelsäule macht Pause

Auf der Erde drückt die Schwerkraft rund um die Uhr auf deine Wirbelsäule. Im Orbit fällt dieser Druck weg. Das Skelett streckt sich, und die Wirbelsäule wird länger. Laut Wikipedia ist dieser Effekt nach etwa einem Monat voll ausgeprägt, der Zuwachs liegt dort bei rund 2,5 Zentimetern.

Zum Vergleich: Bei jemandem mit 1,80 Metern entsprechen 3 Prozent gut 5 Zentimetern. Schon bei den Skylab-Missionen maß die NASA Größenzunahmen von bis zu 3 Prozent.

Noch stärker verändert sich übrigens die **Sitzhöhe**. Ein NASA-Bericht nennt etwa 6 Prozent mehr im Sitzen, aber nur etwa 3 Prozent mehr Körpergröße insgesamt. Nicht jeder Körperteil wächst also gleich stark mit.

## Der Spaß ist nur geliehen

Zurück auf der Erde schrumpfen die Astronauten wieder auf ihre normale Größe. Und das ist nicht immer angenehm: Viele haben bei der Umstellung auf die Schwerkraft **Rücken- und Bauchschmerzen**, weil sich Muskeln und Gewebe im All ohne Belastung ausdehnen konnten.

Die NASA wollte genauer wissen, was da im Rücken passiert. Bei einer Untersuchung auf der Raumstation wurden 6 Crewmitglieder nach 30, 90 und 150 Tagen im All per Ultraschall an der Wirbelsäule untersucht. Es war das erste Mal, dass man die Wirbelsäule im Weltraum auf diese Weise beobachtet hat. Vorher und nachher gab es zum Vergleich Ultraschall- und MRT-Aufnahmen auf der Erde.

> Ultraschall hat für solche Studien einen großen Vorteil: Man kann den Körper in Bewegung beobachten, ganz ohne Strahlenbelastung.

## Wichtig für Raumanzüge und Sitze

Für Raumfahrtagenturen ist das mehr als eine Kuriosität. Raumanzüge, Sitze und Arbeitsplätze müssen zu einem Körper passen, der sich im Orbit verändert. Ein Anzug, der am Starttag perfekt sitzt, kann ein paar Wochen später zwicken.

Größer werden im Schlaf hat bisher niemand geschafft. Im Orbit klappt es, nur leider mit Rückgaberecht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('astronauts-taller', 'de', 1, 'Bildband über die Internationale Raumstation', 'Bildband Internationale Raumstation ISS', 'Großformatige Fotos aus dem Inneren der ISS und vom Blick auf die Erde. Perfekt zum Durchblättern.'),
  ('astronauts-taller', 'de', 2, 'LEGO-Bauset Raumstation', 'LEGO Internationale Raumstation Bauset', 'Ein detailreiches Modell der Station mit Solarpaneelen zum Ausrichten. Macht sich gut auf dem Schreibtisch.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('astronauts-taller', 'de', 1, 'NASA: Spinal Ultrasound Investigation', 'https://www.nasa.gov/image-article/spinal-ultrasound-investigation/'),
  ('astronauts-taller', 'de', 2, 'NASA Technical Reports Server: Quantification of In-Flight Physical Changes: Anthropometry and Neutral Body Posture', 'https://ntrs.nasa.gov/citations/20150020939'),
  ('astronauts-taller', 'de', 3, 'ScienceDaily: Spinal ultrasounds seeking why astronauts grow taller in space', 'https://www.sciencedaily.com/releases/2013/01/130103090639.htm'),
  ('astronauts-taller', 'de', 4, 'Wikipedia: Effect of spaceflight on the human body', 'https://en.wikipedia.org/wiki/Effect_of_spaceflight_on_the_human_body');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'astronauts-taller', 'en', 'astronauts-grow-taller-in-space',
  'Astronauts get up to 3 percent taller in space',
  'Without gravity, the spine stretches out. Back on Earth, though, the extra height disappears fast.',
  'On the space station, astronauts grow up to 3 percent taller because gravity stops squeezing their spine.',
  'If you''ve always wanted to be a little taller, there''s one option: go to space. Sounds like a joke, but it''s well documented. **According to NASA, astronauts on long missions grow up to 3 percent taller.**

## Your spine takes a break

On Earth, gravity presses down on your spine around the clock. In orbit, that pressure is gone. The skeleton stretches out and the spine gets longer. According to Wikipedia, the effect is complete after about a month, with a gain of roughly 1 inch.

For comparison: for someone who''s 6 feet tall, 3 percent is a bit over 2 inches. NASA already measured height gains of up to 3 percent on its Skylab missions.

Your **seated height** changes even more. A NASA report found about 6 percent growth in seated height, but only about 3 percent in overall stature. So not every part of the body stretches equally.

## It''s only a loan

Back on Earth, astronauts shrink back to their normal height. And that isn''t always comfortable: many get **back and abdominal pain** while readjusting to gravity, because muscles and tissue could stretch freely in space.

NASA wanted to know exactly what''s going on back there. In one study on the space station, 6 crew members got spinal ultrasound scans at 30, 90 and 150 days into their flight. It was the first time anyone had used ultrasound to look at spine changes in space. They also had ultrasound and MRI scans on Earth before and after, for comparison.

> Ultrasound has a big advantage for this kind of research: you can watch the body in motion, with no radiation involved.

## A real problem for spacesuits and seats

For space agencies, this is more than a fun fact. Spacesuits, seats and workstations have to fit a body that changes shape in orbit. A suit that fits perfectly on launch day might pinch a few weeks later.

Nobody has figured out how to grow taller in their sleep. In orbit it works, just with a mandatory return policy.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('astronauts-taller', 'en', 1, 'Photo book about the International Space Station', 'International Space Station photo book', 'Big, gorgeous photos from inside the ISS and of Earth from orbit. Perfect for flipping through.'),
  ('astronauts-taller', 'en', 2, 'LEGO International Space Station set', 'LEGO International Space Station set', 'A detailed model of the station with adjustable solar panels. Looks great on a desk.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('astronauts-taller', 'en', 1, 'NASA: Spinal Ultrasound Investigation', 'https://www.nasa.gov/image-article/spinal-ultrasound-investigation/'),
  ('astronauts-taller', 'en', 2, 'NASA Technical Reports Server: Quantification of In-Flight Physical Changes: Anthropometry and Neutral Body Posture', 'https://ntrs.nasa.gov/citations/20150020939'),
  ('astronauts-taller', 'en', 3, 'ScienceDaily: Spinal ultrasounds seeking why astronauts grow taller in space', 'https://www.sciencedaily.com/releases/2013/01/130103090639.htm'),
  ('astronauts-taller', 'en', 4, 'Wikipedia: Effect of spaceflight on the human body', 'https://en.wikipedia.org/wiki/Effect_of_spaceflight_on_the_human_body');
