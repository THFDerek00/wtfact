-- WTFact-Fakt „155 Menschen, null Triebwerke: Wie alle eine Landung auf dem Hudson River überlebten“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('hudson-river-ditching', '2026-10-17T08:00:00+02:00', 'survival', '🛬', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hudson-river-ditching', 'de', 'flugzeug-landet-auf-dem-hudson',
  '155 Menschen, null Triebwerke: Wie alle eine Landung auf dem Hudson River überlebten',
  'Gänse legten über New York beide Triebwerke lahm, und Pendlerfähren wurden zur Rettungsflotte.',
  'Im Januar 2009 verlor US-Airways-Flug 1549 durch einen Schwarm Kanadagänse beide Triebwerke, setzte etwa dreieinhalb Minuten später auf dem Hudson River auf, und alle 155 Menschen an Bord überlebten.',
  'Ein Triebwerk direkt nach dem Start zu verlieren, ist der Albtraum jeder Pilotin und jedes Piloten. Beide zu verlieren, in weniger als 1.000 Metern Höhe über New York, klingt nach dem Ende der Geschichte. Für die 155 Menschen an Bord von US-Airways-Flug 1549 war es der Anfang einer der berühmtesten Rettungen der Luftfahrtgeschichte.

## Gänse gegen Düsentriebwerke

Am 15. Januar 2009 startete ein Airbus A320 vom New Yorker Flughafen LaGuardia Richtung Charlotte. Keine zwei Minuten später, im Steigflug auf etwa 2.800 Fuß (rund 850 Meter), flog er in einen Schwarm Kanadagänse. Laut der US-Luftfahrtbehörde FAA gerieten in jedes Triebwerk mindestens zwei Gänse mit jeweils etwa 3,6 Kilogramm. Beide Triebwerke verloren fast ihren gesamten Schub.

Die Notfall-Checkliste für einen Ausfall beider Triebwerke war für große Höhen gedacht, nicht für einen Jet so knapp über der Stadt. Kapitän Chesley „Sully“ Sullenberger kam zu dem Schluss, dass das Flugzeug keinen Flughafen sicher erreichen würde. Als die Flugsicherung ihm eine Landebahn in Teterboro anbot, war seine Antwort kurz: „We can''t do it.“ (Das schaffen wir nicht.)

## Ein Fluss als Landebahn

Etwa dreieinhalb Minuten nach dem Vogelschlag setzte der Jet auf dem Hudson River auf, rund 14 Kilometer von LaGuardia entfernt. Das Wasser hatte rund 5 Grad Celsius. Die Menschen kletterten auf die Tragflächen, und die vorderen Notrutschen wurden abgekoppelt und, wie vorgesehen, als Rettungsflöße genutzt.

Dann wurde die Stadt selbst zum Rettungsteam. Pendlerfähren der Reederei New York Waterway waren als Erste da: Die erste Fähre erreichte das Flugzeug innerhalb von drei Minuten nach der Notwasserung, sechs weitere kamen innerhalb von zehn Minuten. Nach etwa 20 Minuten waren alle gerettet. Alle 155 Menschen, 150 Passagiere und fünf Crewmitglieder, überlebten.

> Bonusfakt: Der gesamte Flug, vom Start bis zum Aufsetzen auf dem Fluss, dauerte fünf Minuten und acht Sekunden.

Die Untersuchung danach nahm genau unter die Lupe, wie Flugzeuge für Notwasserungen zugelassen werden und wie Crews dafür trainieren. Die FAA hielt außerdem fest, dass nur etwa 20 Prozent der Schwimmwesten an Bord überhaupt benutzt wurden. Ein Gänseschwarm, ein eiskalter Fluss und eine Flotte von Pendlerfähren: Mehr Besetzung brauchte diese Rettung nicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hudson-river-ditching', 'de', 1, 'Sully auf Blu-ray', 'Sully Blu-ray Tom Hanks', 'Clint Eastwoods Film über die Hudson-Landung, mit Tom Hanks.'),
  ('hudson-river-ditching', 'de', 2, 'Airbus-A320-Modellflugzeug', 'Airbus A320 Modellflugzeug 1:200', 'Ein detailliertes Schreibtischmodell des Flugzeugtyps, der auf dem Fluss landete.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hudson-river-ditching', 'de', 1, 'Federal Aviation Administration: Airbus SAS A320-214', 'https://www.faa.gov/lessonslearned/transportairplane/accidents/N160US'),
  ('hudson-river-ditching', 'de', 2, 'CBS News: Sully''s story as first told to 60 Minutes', 'https://www.cbsnews.com/news/sully-miracle-on-the-hudson-60-minutes/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hudson-river-ditching', 'en', 'plane-landed-on-hudson-river',
  '155 people, zero engines: how everyone survived a jet landing on the Hudson River',
  'Geese knocked out both engines over New York, and commuter ferries turned into the rescue fleet.',
  'In January 2009, US Airways Flight 1549 lost both engines to a flock of Canada geese, touched down on the Hudson River about three and a half minutes later, and all 155 people on board survived.',
  'Losing one engine right after takeoff is a pilot''s nightmare. Losing both, at under 3,000 feet above New York City, sounds like the end of the story. For the 155 people on US Airways Flight 1549, it was the start of one of the most famous rescues in aviation history.

## Geese versus jet engines

On January 15, 2009, an Airbus A320 took off from LaGuardia Airport, bound for Charlotte. Less than two minutes later, climbing through about 2,800 feet, it flew into a flock of Canada geese. According to the FAA, at least two geese weighing roughly eight pounds (about 3.6 kilograms) each went into each engine core. Both engines lost almost all of their thrust.

The emergency checklist for a double engine failure was written for high altitude, not for a jet this low. Captain Chesley "Sully" Sullenberger concluded that the plane would not safely reach any airport. When air traffic control offered him a runway at Teterboro, his answer was short: "We can''t do it."

## A runway made of river

About three and a half minutes after the bird strike, the jet touched down on the Hudson River, about 8.5 miles (around 14 kilometers) from LaGuardia. The water was around 5 degrees Celsius (41 °F). People climbed out onto the wings, and the front slides were detached and used as rafts, just as they were designed to be.

Then the city itself turned into the rescue team. Commuter ferries from New York Waterway were first on the scene: the first one reached the plane within three minutes of the ditching, and six more arrived within ten minutes. Within about 20 minutes, everyone had been rescued. All 155 people, 150 passengers and five crew members, survived.

> Bonus fact: The entire flight, from takeoff to touchdown on the river, lasted five minutes and eight seconds.

The investigation that followed dug deep into how planes are certified for ditching and how crews train for it. The FAA also noted that only about 20 percent of the life vests on board were actually used. A flock of geese, a cold river and a fleet of commuter ferries: that was the whole cast of this rescue.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hudson-river-ditching', 'en', 1, 'Sully movie on Blu-ray', 'Sully Blu-ray Tom Hanks', 'Clint Eastwood''s film about the Hudson landing, starring Tom Hanks.'),
  ('hudson-river-ditching', 'en', 2, 'Airbus A320 model airplane', 'Airbus A320 model airplane 1:200', 'A detailed desk model of the jet type that landed on the river.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hudson-river-ditching', 'en', 1, 'Federal Aviation Administration: Airbus SAS A320-214', 'https://www.faa.gov/lessonslearned/transportairplane/accidents/N160US'),
  ('hudson-river-ditching', 'en', 2, 'CBS News: Sully''s story as first told to 60 Minutes', 'https://www.cbsnews.com/news/sully-miracle-on-the-hudson-60-minutes/');
