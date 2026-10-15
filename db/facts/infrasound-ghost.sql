-- WTFact-Fakt „Der Laborgeist war ein Ventilator mit 19 Hertz“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('infrasound-ghost', '2026-10-15T22:06:36+02:00', 'horror', '👻', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'infrasound-ghost', 'de', 'laborgeist-19-hertz',
  'Der Laborgeist war ein Ventilator mit 19 Hertz',
  'Ein Ingenieur sah im Labor einen dunklen Schatten. Schuld war am Ende ein Ton, den niemand hören konnte.',
  'Ein angeblich spukendes Labor ließ sich auf einen Ventilator zurückführen, der Infraschall von etwa 19 Hertz erzeugte.',
  'Ein Labor, in dem sich alle unwohl fühlen. Kalte Schauer, ein beklemmendes Gefühl, und dann bewegt sich etwas am Rand deines Blickfelds. **Der britische Ingenieur Vic Tandy hat genau das erlebt.** Und statt eines Geists fand er einen Ventilator.

## Ein Schatten im Augenwinkel

Tandy arbeitete Anfang der 1980er-Jahre im Forschungslabor einer Firma für Medizintechnik. Kolleginnen und Kollegen erzählten, dass es dort spuke. Eines Abends sah Tandy nach eigenen Angaben eine dunkle Gestalt aus dem Augenwinkel. Als er den Kopf drehte, war sie weg.

Am nächsten Tag polierte Tandy, ein begeisterter Fechter, sein Schwert. Obwohl es fest im Schraubstock steckte, fing die Klinge von allein an zu vibrieren. Sein Verdacht: Im Raum schwang eine stehende Schallwelle, zu tief, um sie zu hören.

## Der Täter steckte in der Wand

Die Quelle war laut Tandy ein neu eingebauter Abluftventilator. Er erzeugte **Infraschall mit etwa 19 Hertz**, also unterhalb dessen, was das menschliche Ohr bewusst wahrnimmt. Als der Ventilator abgeschaltet wurde, war es laut Tandy, „als ob eine riesige Last abfiel“.

1998 veröffentlichte Tandy den Fall zusammen mit dem Psychologen Tony Lawrence unter dem Titel „The Ghost in the Machine“ im Journal of the Society for Psychical Research. Ihre Idee: Schwingungen um 19 Hertz könnten unter anderem Unbehagen und Schauer auslösen. Nach Tandys Vermutung kann diese Frequenz sogar den Augapfel mitschwingen lassen, was Schatten im Augenwinkel erklären würde.

Ein Haken bleibt: Die 19 Hertz wurden berechnet, nicht direkt gemessen. Die Psi Encyclopedia der Society for Psychical Research weist ausdrücklich auf diese Lücke hin.

## Das Konzert mit dem unsichtbaren Ton

2003 testete ein britisches Team um den Psychologen Richard Wiseman die Idee bei einem Konzert in London. Rund 750 Leute hörten vier Musikstücke, manche davon mit beigemischtem Infraschall aus einem 7 Meter langen Rohr. Niemand wusste, welche.

Ergebnis: Etwa 22 Prozent berichteten bei den Stücken mit Infraschall häufiger von ungewöhnlichen Gefühlen, etwa Unruhe, Traurigkeit oder Schauer über den Rücken.

> Tandy wurde später zum Geisterjäger in eigener Sache: 2001 untersuchte er einen angeblich spukenden Keller in Coventry und fand dort ebenfalls auffällig viel Infraschall.

Manchmal ist das Unheimlichste im Raum eben die Haustechnik.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('infrasound-ghost', 'de', 1, 'Paranormalität von Richard Wiseman', 'Richard Wiseman Paranormalität Buch', 'Ein Psychologe erklärt mit viel Humor, warum unser Gehirn Geister, Gedankenleser und Spuk so gern glaubt.'),
  ('infrasound-ghost', 'de', 2, 'Geist-Nachtlicht für den Schreibtisch', 'Geist Nachtlicht LED', 'Ein kleiner leuchtender Geist, der gemütlich statt gruselig ist. Hübsche Deko für Halloween und den Rest des Jahres.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('infrasound-ghost', 'de', 1, 'Psi Encyclopedia: Infrasound', 'https://psi-encyclopedia.spr.ac.uk/articles/infrasound/'),
  ('infrasound-ghost', 'de', 2, 'Smithsonian Magazine: Five Scientific Explanations for Spooky Sensations', 'https://www.smithsonianmag.com/smart-news/five-scientific-explanations-spooky-sensations-180973436'),
  ('infrasound-ghost', 'de', 3, 'NBC News: Infrasound linked to spooky effects', 'https://www.nbcnews.com/news/amp/wbna3077192'),
  ('infrasound-ghost', 'de', 4, 'Wikipedia: Vic Tandy', 'https://en.wikipedia.org/wiki/Vic_Tandy');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'infrasound-ghost', 'en', 'lab-ghost-19-hertz',
  'The lab ghost was a 19 hertz fan',
  'An engineer saw a dark shadow in his lab. The culprit turned out to be a sound nobody could hear.',
  'A supposedly haunted lab was traced back to a fan producing infrasound at around 19 hertz.',
  'A lab where everyone feels uneasy. Cold shivers, a heavy feeling, and then something moves at the edge of your vision. **British engineer Vic Tandy lived through exactly that.** And instead of a ghost, he found a fan.

## A shadow in the corner of his eye

In the early 1980s, Tandy worked in the research lab of a medical equipment company. His colleagues said the place was haunted. One evening, Tandy said he saw a dark figure out of the corner of his eye. When he turned his head, it was gone.

The next day Tandy, a keen fencer, was polishing his sword. Even clamped tight in a vice, the blade started vibrating all by itself. His suspicion: a standing sound wave was bouncing around the room, too low to hear.

## The culprit was in the wall

According to Tandy, the source was a newly installed extractor fan. It produced **infrasound at around 19 hertz**, below what human ears consciously pick up. When the fan was finally switched off, Tandy said, "it was as if a huge weight was lifted."

In 1998, Tandy and psychologist Tony Lawrence published the case as "The Ghost in the Machine" in the Journal of the Society for Psychical Research. Their idea: vibrations around 19 hertz could trigger unease and shivers, among other things. Tandy even suspected that this frequency can make the eyeball resonate, which would explain shadows in the corner of your eye.

One catch remains: the 19 hertz were calculated, not directly measured. The Psi Encyclopedia of the Society for Psychical Research points out this gap explicitly.

## The concert with the invisible note

In 2003, a British team including psychologist Richard Wiseman tested the idea at a concert in London. Around 750 people listened to four pieces of music, some of them mixed with infrasound from a 7 meter long pipe. Nobody knew which ones.

The result: about 22 percent reported more unusual feelings during the infrasound pieces, such as unease, sorrow or chills down the spine.

> Tandy later turned ghost hunter himself: in 2001 he investigated a supposedly haunted cellar in Coventry and found unusually high levels of infrasound there too.

Sometimes the creepiest thing in the room is just the ventilation system.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('infrasound-ghost', 'en', 1, 'Paranormality by Richard Wiseman', 'Paranormality Richard Wiseman book', 'A psychologist explains with plenty of humor why our brains love to believe in ghosts, mind readers and hauntings.'),
  ('infrasound-ghost', 'en', 2, 'Ghost night light for your desk', 'ghost night light LED', 'A small glowing ghost that''s cozy rather than creepy. Cute decor for Halloween and the rest of the year.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('infrasound-ghost', 'en', 1, 'Psi Encyclopedia: Infrasound', 'https://psi-encyclopedia.spr.ac.uk/articles/infrasound/'),
  ('infrasound-ghost', 'en', 2, 'Smithsonian Magazine: Five Scientific Explanations for Spooky Sensations', 'https://www.smithsonianmag.com/smart-news/five-scientific-explanations-spooky-sensations-180973436'),
  ('infrasound-ghost', 'en', 3, 'NBC News: Infrasound linked to spooky effects', 'https://www.nbcnews.com/news/amp/wbna3077192'),
  ('infrasound-ghost', 'en', 4, 'Wikipedia: Vic Tandy', 'https://en.wikipedia.org/wiki/Vic_Tandy');
