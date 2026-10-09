-- WTFact-Fakt „Astronauten sagen: Das Weltall riecht nach angebratenem Steak“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('space-smells-steak', '2026-10-10T17:00:00+02:00', 'space', '🥩', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'space-smells-steak', 'de', 'weltall-riecht-nach-steak-und-metall',
  'Astronauten sagen: Das Weltall riecht nach angebratenem Steak',
  'Nach einem Weltraumspaziergang bringen Astronauten einen Geruch mit, den sie nie vergessen.',
  'Astronauten beschreiben den Geruch, der nach Außeneinsätzen an Anzügen und Werkzeug hängt, als eine Mischung aus angebratenem Steak, heißem Metall und Schweißrauch.',
  'Im Weltall kannst du nichts riechen. Ohne Luft keine Nase, und ohne Helm hättest du ganz andere Probleme. Trotzdem haben viele Astronauten eine ziemlich genaue Vorstellung davon, wie es da draußen riecht.

## Der Duft nach dem Ausflug

Laut Space.com riecht es im Raumanzug selbst eher nach Plastik. Spannend wird es danach: Wenn die Astronauten nach einem Außeneinsatz zurück in die Station kommen und den Helm abnehmen, steigt ihnen ein starker, ungewöhnlicher Geruch in die Nase. Er hängt an Anzügen, Handschuhen und Werkzeugen.

Das Smithsonian Magazine zitiert eine Beschreibung, die es ziemlich gut auf den Punkt bringt: bitter, rauchig, metallisch, wie angebratenes Steak, heißes Metall und Schweißrauch in einem. Der Astronaut Don Pettit nannte es laut Space.com „ein ziemlich angenehmes, süßes metallisches Gefühl“ und erinnerte sich dabei an Schweißdämpfe aus seinen Sommerjobs während des Studiums. Kevin Ford sagte 2009 aus dem Orbit, es sei wie nichts, was er je gerochen habe, aber er werde es nie vergessen.

## Woher kommt der Geruch?

Ganz geklärt ist das nicht. Space.com nennt als mögliche Ursache Teilchen, die nach dem Kontakt mit dem fast leeren Raum an den Anzügen haften bleiben, wahrscheinlich unter anderem atomarer Sauerstoff. Der Chemiker Steven Pearce vermutet, dass die metallische Note von energiereichen Schwingungen von Ionen kommen könnte.

Das Ganze ist nicht nur ein Kuriosum. Laut Space.com hat die NASA Pearce beauftragt, den Geruch auf der Erde nachzubauen, damit Astronauten im Training schon mal wissen, was sie erwartet.

> Bonusfakt: In der Gaswolke Sagittarius B2 im Zentrum der Milchstraße haben Forschende laut Smithsonian Magazine Ethylformiat gefunden, einen Stoff, der nach Himbeeren und Rum duftet.

Das Weltall ist kalt, dunkel und lebensfeindlich. Aber es riecht nach Grillabend.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('space-smells-steak', 'de', 1, 'Astronauten-Eis aus dem Weltraum-Shop', 'Astronauteneis gefriergetrocknet', 'Gefriergetrocknetes Eis, das knuspert statt schmilzt, ein lustiges Mitbringsel für Weltraumfans.'),
  ('space-smells-steak', 'de', 2, 'Autobiografie eines Astronauten', 'Astronaut Autobiografie Buch ISS', 'Erzählt aus erster Hand, wie sich Alltag, Arbeit und Außeneinsätze im Orbit wirklich anfühlen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('space-smells-steak', 'de', 1, 'Space.com: What Does Space Smell Like?', 'https://www.space.com/16688-what-does-space-smell-like.html'),
  ('space-smells-steak', 'de', 2, 'Smithsonian Magazine: What Does Space Smell Like?', 'https://www.smithsonianmag.com/smart-news/what-does-space-smell-like-3457620/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'space-smells-steak', 'en', 'space-smells-like-seared-steak',
  'Astronauts say space smells like seared steak',
  'After a spacewalk, astronauts bring back a smell they never forget.',
  'Astronauts describe the smell that clings to suits and tools after spacewalks as a mix of seared steak, hot metal and welding fumes.',
  'You can''t smell anything in space. No air, no nose, and without a helmet you''d have much bigger problems. Still, plenty of astronauts have a pretty clear idea of what it smells like out there.

## The scent after the trip

According to Space.com, the inside of a spacesuit mostly smells plasticky. The interesting part comes later: when astronauts come back into the station after a spacewalk and take off their helmets, they notice a strong, unusual smell. It clings to their suits, gloves and tools.

Smithsonian Magazine quotes a description that sums it up nicely: bitter, smoky and metallic, like seared steak, hot metal and arc welding smoke all rolled into one. According to Space.com, astronaut Don Pettit called it "a rather pleasant sweet metallic sensation" and compared it to welding fumes he remembered from summer jobs during college. Speaking from orbit in 2009, Kevin Ford said it was like nothing he had ever smelled, but he would never forget it.

## Where does the smell come from?

Nobody knows for sure. Space.com names a possible cause: particles that stick to the suits after exposure to the near vacuum, probably including atomic oxygen. Chemist Steven Pearce suggested the metallic note might come from high-energy vibrations of ions.

This isn''t just trivia. According to Space.com, NASA hired Pearce to recreate the smell on Earth so astronauts would know what to expect during training.

> Bonus fact: According to Smithsonian Magazine, scientists found ethyl formate in Sagittarius B2, a gas cloud at the center of the Milky Way. It''s a compound that smells of raspberries and rum.

Space is cold, dark and hostile. But it smells like a barbecue.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('space-smells-steak', 'en', 1, 'Freeze-dried astronaut ice cream', 'astronaut ice cream freeze dried', 'Freeze-dried ice cream that crunches instead of melting, a fun gift for space fans.'),
  ('space-smells-steak', 'en', 2, 'Astronaut memoir', 'astronaut memoir book ISS', 'A firsthand account of what daily life, work and spacewalks in orbit really feel like.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('space-smells-steak', 'en', 1, 'Space.com: What Does Space Smell Like?', 'https://www.space.com/16688-what-does-space-smell-like.html'),
  ('space-smells-steak', 'en', 2, 'Smithsonian Magazine: What Does Space Smell Like?', 'https://www.smithsonianmag.com/smart-news/what-does-space-smell-like-3457620/');
