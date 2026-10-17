-- WTFact-Fakt „Die Andromedagalaxie ist am Himmel 6-mal so breit wie der Vollmond, du siehst nur das meiste davon nicht“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('andromeda-wider-than-moon', '2026-10-24T08:00:00+02:00', 'space', '🌌', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'andromeda-wider-than-moon', 'de', 'andromeda-breiter-als-vollmond',
  'Die Andromedagalaxie ist am Himmel 6-mal so breit wie der Vollmond, du siehst nur das meiste davon nicht',
  'Eine ganze Galaxie zieht sich über unseren Nachthimmel, und deine Augen erwischen nur einen winzigen Fleck davon.',
  'Laut NASA erscheint die Andromedagalaxie an unserem Himmel etwa 6-mal so breit wie der Vollmond, doch das meiste davon ist für das bloße Auge zu lichtschwach.',
  'Stell dir den Vollmond vor. Und jetzt etwas, das ungefähr sechsmal so breit ist, am Nachthimmel hängt und fast niemandem auffällt. Das ist die Andromedagalaxie.

## Zu blass für das ganze Bild

Andromeda, auch M31 genannt, ist rund 2,5 Millionen Lichtjahre entfernt. Sie ist die nächste große Nachbargalaxie unserer Milchstraße. Laut NASA erscheint sie am Himmel etwa 6-mal so breit wie der Vollmond. Auch ESA/Hubble schreibt, sie sei mehrfach so groß wie der Vollmond, „wenn auch viel lichtschwächer“.

Der Haken ist die Helligkeit. Das Magazin Astronomy erklärt: Mit bloßem Auge siehst du nur einen verwaschenen Fleck, etwa ein Viertelgrad breit, also ungefähr halb so breit wie der Vollmond. Die schwachen äußeren Spiralarme zeigen sich erst auf Langzeitbelichtungen. Dann ist die Galaxie gut 3 Grad breit.

## Und dann kommt der Halo

Selbst das ist noch nicht alles. 2015 kartierte ein Team um Nicolas Lehner von der University of Notre Dame mit dem Weltraumteleskop Hubble einen Halo aus dünnem, heißem Gas rund um Andromeda. Fotografieren ließ er sich nicht. Stattdessen nahm das Team das Licht von 18 Quasaren weit hinter der Galaxie und maß, wie viel davon das Gas schluckte.

Das Ergebnis: Der Halo reicht etwa eine Million Lichtjahre weit, ungefähr den halben Weg bis zur Milchstraße. Könntest du ihn mit bloßem Auge sehen, wäre er laut NASA 100-mal so breit wie der Vollmond.

> Bonusfakt: Eine spätere Studie nutzte 43 Quasare. Laut Astronomy würde sich Andromedas kompletter Halo, wenn man ihn sehen könnte, über mehr als 60 Grad erstrecken, also über mehr als ein Drittel des Himmels.

Der blasse Fleck ist nur der sichtbare Kern von etwas Gigantischem, und sein Gas reicht schon den halben Weg zu uns.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('andromeda-wider-than-moon', 'de', 1, 'Poster der Andromedagalaxie', 'Andromeda Galaxie Poster', 'Ein Deep-Sky-Foto zeigt die Spiralarme, die deine Augen nicht erfassen.'),
  ('andromeda-wider-than-moon', 'de', 2, 'Astronomie-Fernglas', 'Fernglas Astronomie 10x50', 'Große Objektive sammeln genug Licht für blasse Galaxien und Sternhaufen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('andromeda-wider-than-moon', 'de', 1, 'NASA: Hubble Finds Giant Halo Around the Andromeda Galaxy', 'https://science.nasa.gov/missions/hubble/hubble-finds-giant-halo-around-the-andromeda-galaxy/'),
  ('andromeda-wider-than-moon', 'de', 2, 'Astronomy: Warning: Objects in the cosmos are larger than they appear', 'https://www.astronomy.com/science/warning-objects-in-the-cosmos-are-larger-than-they-appear/'),
  ('andromeda-wider-than-moon', 'de', 3, 'ESA/Hubble: Wide-field view of the Andromeda Galaxy', 'https://esahubble.org/images/opo1220o');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'andromeda-wider-than-moon', 'en', 'andromeda-wider-than-full-moon',
  'The Andromeda Galaxy looks 6 times wider than the full Moon, you just can''t see most of it',
  'A whole galaxy spreads across our night sky, and your eyes only catch a tiny smudge of it.',
  'According to NASA, the Andromeda Galaxy appears about 6 times the diameter of the full Moon in our sky, but most of it is too faint for the naked eye.',
  'Picture the full Moon. Now picture something about six times as wide, hanging in the night sky, and almost nobody noticing it. That''s the Andromeda Galaxy.

## Too faint to see in full

Andromeda, also known as M31, is about 2.5 million light-years away. It''s the Milky Way''s nearest large galactic neighbor. According to NASA, it appears about 6 times the diameter of the full Moon. ESA/Hubble also describes it as several times the size of the full Moon, "although much fainter."

The catch is brightness. Astronomy magazine explains that with the naked eye, you only see a fuzzy smudge about a quarter of a degree wide, roughly half the width of the full Moon. The faint outer spiral arms only show up in long-exposure photos. Then the galaxy grows to a bit more than 3 degrees across.

## And then there''s the halo

Even that isn''t the whole thing. In 2015, a team led by Nicolas Lehner of the University of Notre Dame used the Hubble Space Telescope to map a halo of thin, hot gas around Andromeda. They couldn''t photograph it directly. Instead, they looked at the light of 18 quasars far behind the galaxy and measured how much of it the gas absorbed.

The result: the halo stretches about one million light-years from Andromeda, roughly halfway to the Milky Way. According to NASA, if you could see it with your eyes, it would span 100 times the diameter of the full Moon.

> Bonus fact: A later study used 43 quasars. According to Astronomy magazine, if you could see Andromeda''s full halo, it would stretch more than 60 degrees, over a third of the way across the sky.

That faint smudge is just the visible core of something gigantic, and its gas already reaches halfway to us.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('andromeda-wider-than-moon', 'en', 1, 'Andromeda Galaxy poster', 'Andromeda galaxy poster print', 'A deep-sky photo shows the spiral arms your eyes can''t pick up.'),
  ('andromeda-wider-than-moon', 'en', 2, 'Astronomy binoculars', 'astronomy binoculars 10x50', 'Large lenses gather enough light for faint galaxies and star clusters.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('andromeda-wider-than-moon', 'en', 1, 'NASA: Hubble Finds Giant Halo Around the Andromeda Galaxy', 'https://science.nasa.gov/missions/hubble/hubble-finds-giant-halo-around-the-andromeda-galaxy/'),
  ('andromeda-wider-than-moon', 'en', 2, 'Astronomy: Warning: Objects in the cosmos are larger than they appear', 'https://www.astronomy.com/science/warning-objects-in-the-cosmos-are-larger-than-they-appear/'),
  ('andromeda-wider-than-moon', 'en', 3, 'ESA/Hubble: Wide-field view of the Andromeda Galaxy', 'https://esahubble.org/images/opo1220o');
