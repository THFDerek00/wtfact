-- WTFact-Fakt „Der Eiffelturm sollte nur 20 Jahre stehen. Gerettet hat ihn der Funk“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('eiffel-tower-radio-saved', '2026-10-08T03:58:31+02:00', 'history', '📻', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'eiffel-tower-radio-saved', 'de', 'eiffelturm-sollte-abgebaut-werden',
  'Der Eiffelturm sollte nur 20 Jahre stehen. Gerettet hat ihn der Funk',
  'Der berühmte Pariser Turm hatte ein Ablaufdatum, und eine Antenne hat es gestrichen.',
  'Gustave Eiffel bekam nur eine Genehmigung für 20 Jahre, doch weil der Turm als riesige Funkantenne so nützlich war, wurde sie um 70 Jahre verlängert.',
  'Paris ohne Eiffelturm? Kaum vorstellbar. Laut der offiziellen Website des Turms war aber genau das der Plan: **Der Eiffelturm sollte nach 20 Jahren wieder abgebaut werden.**

## Ein Bauwerk mit Ablaufdatum

Wie History.com erklärt, entstand der Turm auf dem Champ de Mars für die Weltausstellung 1889, als ihr Herzstück, und war nur als vorübergehender Bau gedacht. Gustave Eiffel bekam bloß eine Genehmigung, das Gelände 20 Jahre lang zu nutzen. Am 1. Januar 1910 sollte der Turm laut offizieller Website komplett in den Besitz der Stadt Paris übergehen. „1910 hätte der Eiffelturm abgerissen werden können!“, heißt es dort.

Eiffel wusste: Sein Turm braucht einen guten Grund, stehen zu bleiben. Also suchte er nach einem wissenschaftlichen. Laut History.com wurde die Spitze für Forschung genutzt, unter anderem für Berechnungen zur Atmosphäre.

## Gerettet vom Funk

Der eigentliche Retter war eine brandneue Technik: die drahtlose Telegrafie. 1898 stellte Eugène Ducretet die allererste Funkverbindung per Morsecode zwischen Eiffelturm und Panthéon her, rund vier Kilometer entfernt. 1899 funkte der Turm schon bis nach London.

Dann übernahm Hauptmann Gustave Ferrié vom Pionierkorps, damals 31 Jahre alt, die Versuche. Er richtete sich in einer Baracke am Fuß des Südpfeilers ein. Eiffel bezahlte eine Antenne an der Spitze, und die Reichweite wuchs und wuchs: Verbindungen zu Festungen im Osten in 400 Kilometern Entfernung und 1908 sogar bis zu 6.000 Kilometer weit. 1909 entstand unter dem Champ de Mars eine feste Funkstation.

Das gab den Ausschlag. Eiffels Konzession wurde um weitere 70 Jahre verlängert, ab dem 1. Januar 1910. Aus dem Turm auf Zeit war eine riesige Antenne geworden. Im Ersten Weltkrieg wurden von seiner Spitze aus viele deutsche Funksprüche abgefangen, und im Dezember 1921 ging Radio Eiffelturm regelmäßig auf Sendung.

> Nicht alle waren Fans. 1887 veröffentlichten Schriftsteller und Künstler in der Zeitung „Le Temps“ einen Protest gegen den „nutzlosen und monströsen Eiffelturm“, berichtet History.com.

Gebaut als Attraktion auf Zeit, gerettet von einem Stück Draht auf dem Kopf.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('eiffel-tower-radio-saved', 'de', 1, 'Eiffelturm-Modellbausatz aus Metall', 'Eiffelturm 3D Metall Modellbausatz', 'Ein filigraner Bausatz zum Selberbiegen, der danach im Regal richtig was hermacht.'),
  ('eiffel-tower-radio-saved', 'de', 2, 'Retro-Radio im Vintage-Look', 'Retro Radio Vintage Holz', 'Klingt modern, sieht aus wie aus Omas Wohnzimmer und ist ein schöner Blickfang.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('eiffel-tower-radio-saved', 'de', 1, 'Tour Eiffel: Why was the Eiffel Tower kept?', 'https://www.toureiffel.paris/en/news/130-years/how-did-radio-save-tower'),
  ('eiffel-tower-radio-saved', 'de', 2, 'History.com: How the Eiffel Tower Was Saved From Being Demolished', 'https://www.history.com/articles/eiffel-tower-survival');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'eiffel-tower-radio-saved', 'en', 'eiffel-tower-saved-by-radio',
  'The Eiffel Tower was only meant to stand for 20 years. Radio saved it',
  'Paris''s famous tower came with an expiry date, and an antenna cancelled it.',
  'Gustave Eiffel only got a 20-year permit, but because the tower was so useful as a giant radio antenna, it was extended by 70 years.',
  'Paris without the Eiffel Tower? Hard to picture. But according to the tower''s official website, that was the plan: **the Eiffel Tower was supposed to be dismantled after 20 years.**

## A building with an expiry date

History.com explains that the tower went up on the Champ de Mars for the 1889 World''s Fair, as its centerpiece, and was meant to be temporary. Gustave Eiffel only got a 20-year permit to use the land. On January 1, 1910, the official site says, the tower was set to become the full property of the City of Paris. "In 1910, the Eiffel Tower could have been demolished!" the site writes.

Eiffel knew he needed a good reason for his tower to exist. So he went looking for a scientific one. According to History.com, the top was used for research, including atmospheric calculations.

## Rescue by radio

The real lifesaver turned out to be a brand-new technology: wireless telegraphy. In 1898, Eugène Ducretet made the very first radio contact in Morse code between the Eiffel Tower and the Panthéon, about four kilometers away. In 1899, the tower was already sending signals to London.

Then Captain Gustave Ferrié of the engineering corps, 31 years old at the time, was put in charge of experiments. He set up in a shack at the foot of the south pillar. Eiffel paid for an antenna at the summit, and the range kept growing: links to eastern forts 400 kilometers away, and in 1908 even a distance of 6,000 kilometers. In 1909, a permanent station was built underneath the Champ de Mars.

That did it. Eiffel got his concession extended by another 70 years, starting January 1, 1910. The temporary tower had turned into a giant antenna. During World War I, many German messages were intercepted from its summit, and in December 1921 Radio Eiffel Tower started regular broadcasts.

> Not everyone was a fan. In 1887, writers and artists published a protest in the newspaper Le Temps against "the useless and monstrous Eiffel Tower," History.com reports.

Built as a temporary attraction, rescued by a piece of wire on its head.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('eiffel-tower-radio-saved', 'en', 1, 'Eiffel Tower 3D metal model kit', 'Eiffel Tower 3D metal model kit', 'A delicate DIY kit you bend together yourself, and it looks great on a shelf afterwards.'),
  ('eiffel-tower-radio-saved', 'en', 2, 'Vintage-style retro radio', 'vintage retro radio wood', 'Modern sound in a throwback case that makes a nice eye-catcher.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('eiffel-tower-radio-saved', 'en', 1, 'Tour Eiffel: Why was the Eiffel Tower kept?', 'https://www.toureiffel.paris/en/news/130-years/how-did-radio-save-tower'),
  ('eiffel-tower-radio-saved', 'en', 2, 'History.com: How the Eiffel Tower Was Saved From Being Demolished', 'https://www.history.com/articles/eiffel-tower-survival');
