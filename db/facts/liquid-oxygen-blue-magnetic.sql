-- WTFact-Fakt „Flüssiger Sauerstoff ist hellblau und bleibt an Magneten hängen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('liquid-oxygen-blue-magnetic', '2026-10-21T12:00:00+02:00', 'science', '🧲', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'liquid-oxygen-blue-magnetic', 'de', 'fluessiger-sauerstoff-blau-und-magnetisch',
  'Flüssiger Sauerstoff ist hellblau und bleibt an Magneten hängen',
  'Das Gas, das du atmest, ist unsichtbar. Kühlst du es ab, bis es flüssig wird, bekommt es eine Farbe und eine seltsame Anziehungskraft.',
  'Flüssiger Sauerstoff ist hellblau und bleibt zwischen den Polen eines starken Magneten hängen, während flüssiger Stickstoff einfach durchläuft.',
  'Sauerstoff ist das unscheinbarste Zeug, von dem du abhängst: keine Farbe, kein Geruch, einfach Luft. Kühlst du ihn aber auf minus 183 Grad Celsius ab, wird er flüssig und zeigt plötzlich zwei versteckte Talente.

## Er ist blau

Im Glaskolben ist flüssiger Sauerstoff hellblau. Flüssiger Stickstoff, der bei minus 196 Grad siedet, bleibt direkt daneben farblos.

Der Grund ist ziemlich schräg. Laut den Chemie-Versuchsblättern der Purdue University absorbiert flüssiger Sauerstoff rotes Licht mit einer Wellenlänge von 630 Nanometern. Und zwar im Team: Ein einziges Photon regt zwei Sauerstoffmoleküle gleichzeitig an. Dadurch fehlt dem Licht etwas Rot, und übrig bleibt Blau.

Im Gas um dich herum passiert das fast nie, weil zwei Moleküle selten nah genug beieinander sind, wenn ein Photon ankommt. Flüssiger Sauerstoff packt dieselbe Menge in viel weniger Platz, etwa 800-mal weniger Volumen als das Gas. Plötzlich sind die Moleküle nah genug für den Trick.

## Er bleibt am Magneten hängen

Das zweite Talent ist noch seltsamer. Gießt du flüssigen Stickstoff zwischen die Pole eines starken Magneten, läuft er einfach durch. Flüssiger Sauerstoff dagegen sammelt sich im Spalt und bleibt dort hängen. Bei einem Vorlesungsversuch in Harvard kann ein Schwall flüssiger Sauerstoff 30 oder 40 Sekunden lang im Magnetfeld schweben, während er verdampft.

Das nennt man Paramagnetismus. Farbe und Magnetliebe haben dieselbe Ursache: zwei ungepaarte Elektronen im äußeren Orbital des Moleküls. Stickstoff hat so etwas nicht, also passiert nichts.

> Bonusfakt: Sauerstoff ist nicht das einzige Gas mit dieser Kombi. Laut dem Imperial College London ist verflüssigtes Stickstoffmonoxid eine tiefblaue Flüssigkeit und ebenfalls paramagnetisch.

Der Sauerstoff in deiner Lunge ist also heimlich eine blaue Flüssigkeit, die Magnete festhalten können. Er braucht nur sehr viel Kälte, um das zu zeigen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('liquid-oxygen-blue-magnetic', 'de', 1, 'Neodym-Magnet-Set', 'Neodym Magnete Set stark', 'Kleine, aber richtig starke Magnete für Schreibtisch-Experimente und Notizen am Kühlschrank.'),
  ('liquid-oxygen-blue-magnetic', 'de', 2, 'Periodensystem-Poster', 'Periodensystem Poster groß', 'Ein großes, übersichtliches Poster, das jede Wand zum Chemie-Spickzettel macht.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('liquid-oxygen-blue-magnetic', 'de', 1, 'Harvard Natural Sciences Lecture Demonstrations: Paramagnetism of Oxygen', 'https://sciencedemonstrations.fas.harvard.edu/presentations/paramagnetism-oxygen'),
  ('liquid-oxygen-blue-magnetic', 'de', 2, 'Purdue University: Liquid Oxygen---Paramagnetism and Color', 'https://chemed.chem.purdue.edu/genchem/demosheets/8.6.html'),
  ('liquid-oxygen-blue-magnetic', 'de', 3, 'Imperial College London: Demonstration 30', 'https://www.ch.ic.ac.uk/delights/texts/Demonstration_30.htm');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'liquid-oxygen-blue-magnetic', 'en', 'liquid-oxygen-blue-sticks-to-magnets',
  'Liquid oxygen is pale blue and sticks to magnets',
  'The gas you breathe is invisible. Cool it down until it turns liquid and it gets a color and a strange attraction.',
  'Liquid oxygen is pale blue and gets caught between the poles of a strong magnet, while liquid nitrogen simply runs through.',
  'Oxygen is the most boring-looking thing you''ll ever depend on: no color, no smell, just air. But cool it to minus 183 degrees Celsius, where it turns liquid, and it suddenly shows two hidden talents.

## It''s blue

In a glass flask, liquid oxygen is pale blue. Liquid nitrogen, which boils at minus 196 degrees, stays colorless right next to it.

The reason is unusually weird. According to Purdue''s chemistry demo notes, liquid oxygen absorbs red light at a wavelength of 630 nanometers. And it does it as a team: a single photon excites two oxygen molecules at the same time. That''s what removes some red from the light and leaves you with blue.

In the gas around you, this trick almost never happens, because two molecules rarely sit close enough together when a photon arrives. Liquid oxygen packs the same amount into a much smaller space, about 800 times less volume than the gas. Suddenly the molecules are close enough to pull it off.

## It sticks to magnets

The second talent is even stranger. Pour liquid nitrogen between the poles of a strong magnet and it just runs through. Pour liquid oxygen there and it collects in the gap and hangs on. In Harvard''s lecture demonstration, a slosh of liquid oxygen can stay suspended in the magnetic field for 30 or 40 seconds while it boils away.

This is called paramagnetism. Both oxygen''s color and its love of magnets come from the same source: two unpaired electrons in the molecule''s outer orbital. Nitrogen has none of that, so nothing happens.

> Bonus fact: Oxygen isn''t the only gas with this combo. According to Imperial College London, liquefied nitric oxide is a deep blue liquid and is paramagnetic as well.

So the oxygen in your lungs is secretly a blue liquid that magnets can grab. It just needs a lot of cold to show it.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('liquid-oxygen-blue-magnetic', 'en', 1, 'Neodymium magnet set', 'neodymium magnet set strong', 'Small but seriously strong magnets for desk experiments and fridge notes.'),
  ('liquid-oxygen-blue-magnetic', 'en', 2, 'Periodic table poster', 'periodic table poster large', 'A big, clear poster that turns any wall into a chemistry cheat sheet.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('liquid-oxygen-blue-magnetic', 'en', 1, 'Harvard Natural Sciences Lecture Demonstrations: Paramagnetism of Oxygen', 'https://sciencedemonstrations.fas.harvard.edu/presentations/paramagnetism-oxygen'),
  ('liquid-oxygen-blue-magnetic', 'en', 2, 'Purdue University: Liquid Oxygen---Paramagnetism and Color', 'https://chemed.chem.purdue.edu/genchem/demosheets/8.6.html'),
  ('liquid-oxygen-blue-magnetic', 'en', 3, 'Imperial College London: Demonstration 30', 'https://www.ch.ic.ac.uk/delights/texts/Demonstration_30.htm');
