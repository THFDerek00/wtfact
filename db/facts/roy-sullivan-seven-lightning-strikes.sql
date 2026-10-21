-- WTFact-Fakt „Dieser Parkranger wurde 7 Mal vom Blitz getroffen und überlebte jedes Mal“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('roy-sullivan-seven-lightning-strikes', '2026-10-21T21:00:00+02:00', 'records', '⚡', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'roy-sullivan-seven-lightning-strikes', 'de', 'roy-sullivan-sieben-blitze',
  'Dieser Parkranger wurde 7 Mal vom Blitz getroffen und überlebte jedes Mal',
  'Einmal vom Blitz getroffen zu werden, ist schon extrem selten. Roy Sullivan hat es siebenmal geschafft.',
  'Roy Sullivan, Ranger im Shenandoah-Nationalpark in den USA, wurde zwischen 1942 und 1977 sieben Mal vom Blitz getroffen. Laut Guinness World Records ist das ein Rekord.',
  'Die Chance, vom Blitz getroffen zu werden, ist winzig. Die meisten Menschen erleben das nie. Roy Sullivan aus dem US-Bundesstaat Virginia erlebte es sieben Mal.

## Ein Ranger mit Pech und Glück

Roy Sullivan arbeitete als Ranger im Shenandoah-Nationalpark in Virginia. Laut Guinness World Records wurde er zwischen 1942 und 1977 insgesamt 7 Mal von einem Blitz getroffen und überlebte jeden einzelnen Einschlag. Damit hält er den Rekord für die meisten überlebten Blitzeinschläge.

Sein Beruf spielte dabei sicher eine Rolle. Als Ranger war Sullivan viel draußen unterwegs, oft in den Bergen und auch bei schlechtem Wetter. Wo Gewitter häufig sind, steigt eben auch das Risiko.

## Sieben Treffer in 35 Jahren

Laut Guinness traf ihn der erste Blitz 1942 am rechten Bein, als er aus einem brennenden Wachturm floh. Er verlor dabei den Nagel seines großen Zehs. 1969 erwischte es ihn beim Fahren in seinem Truck, die Augenbrauen verbrannten und seine Armbanduhr ging kaputt.

1970 traf ihn ein Blitz im Garten, 1972 in einem Wachhäuschen bei der Arbeit. Dabei fingen seine Haare Feuer, und 1973 im Auto passierte genau das noch einmal. 1976 traf es ihn bei einem Spaziergang, 1977 schließlich beim Angeln auf einem Boot.

> Bonusfakt: Wegen seiner Geschichte bekam Sullivan laut Mental Floss den Spitznamen „Spark Ranger“, eine Anspielung auf das englische Wort für Funke.

Warum ausgerechnet er? Eine eindeutige Antwort gibt es nicht. Viel Zeit im Freien, Arbeit in Gewittergebieten und eine große Portion Pech kamen wohl zusammen. Dass er jedes Mal überlebte, war dagegen eine große Portion Glück.

Wer bei Gewitter draußen ist, sollte also besser Schutz suchen. Nicht jeder hat so viel Glück wie Roy Sullivan.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('roy-sullivan-seven-lightning-strikes', 'de', 1, 'Experimentierkasten Elektrizität', 'Experimentierkasten Elektrizität Kinder', 'Erklärt Strom und Elektrizität mit sicheren Experimenten.'),
  ('roy-sullivan-seven-lightning-strikes', 'de', 2, 'Buch über Wetter und Gewitter', 'Buch Wetter Gewitter Blitze', 'Wie Blitze entstehen und wie man sich bei Gewitter schützt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('roy-sullivan-seven-lightning-strikes', 'de', 1, 'Guinness World Records: Incredible story of man who survived being struck by lightning SEVEN times', 'https://www.guinnessworldrecords.com/news/2023/1/incredible-story-of-man-who-survived-being-struck-by-lightning-seven-times-733932'),
  ('roy-sullivan-seven-lightning-strikes', 'de', 2, 'Mental Floss: Meet the Man Struck By Lightning 7 Times', 'https://www.mentalfloss.com/science/weather/meet-man-struck-lightning-7-times');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'roy-sullivan-seven-lightning-strikes', 'en', 'roy-sullivan-seven-lightning-strikes',
  'This park ranger was struck by lightning 7 times and survived every one',
  'Getting struck by lightning once is already extremely rare. Roy Sullivan managed it seven times.',
  'Roy Sullivan, a ranger in Shenandoah National Park in the US, was struck by lightning seven times between 1942 and 1977. According to Guinness World Records, that’s a record.',
  'The chance of being struck by lightning is tiny. Most people never experience it. Roy Sullivan from the US state of Virginia experienced it seven times.

## A ranger with bad luck and good luck

Roy Sullivan worked as a ranger in Shenandoah National Park in Virginia. According to Guinness World Records, he was struck by lightning 7 times between 1942 and 1977 and survived every single strike. That gives him the record for the most lightning strikes survived.

His job surely played a role. As a ranger, Sullivan spent a lot of time outdoors, often in the mountains and in bad weather. Where thunderstorms are common, the risk goes up.

## Seven hits in 35 years

According to Guinness, the first strike hit him in the right leg in 1942 as he fled a burning watchtower. He lost the nail on his big toe. In 1969, it got him while driving his truck, burning off his eyebrows and destroying his wristwatch.

In 1970, lightning hit him in his garden, and in 1972 in a guardhouse at work. His hair caught fire, and in 1973, in his car, the same thing happened again. In 1976 it struck him on a walk, and finally in 1977 on a fishing trip in a boat.

> Bonus fact: According to Mental Floss, his story earned Sullivan the nickname "Spark Ranger".

Why him? There’s no clear answer. Lots of time outdoors, work in a storm-prone area and a big helping of bad luck probably came together. Surviving every time, on the other hand, took a big helping of good luck.

So if you’re outside during a thunderstorm, better find shelter. Not everyone is as lucky as Roy Sullivan.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('roy-sullivan-seven-lightning-strikes', 'en', 1, 'Electricity science kit', 'electricity science kit for kids', 'Explains electricity with safe experiments.'),
  ('roy-sullivan-seven-lightning-strikes', 'en', 2, 'Book about weather and thunderstorms', 'book weather thunderstorms lightning', 'How lightning forms and how to stay safe in a storm.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('roy-sullivan-seven-lightning-strikes', 'en', 1, 'Guinness World Records: Incredible story of man who survived being struck by lightning SEVEN times', 'https://www.guinnessworldrecords.com/news/2023/1/incredible-story-of-man-who-survived-being-struck-by-lightning-seven-times-733932'),
  ('roy-sullivan-seven-lightning-strikes', 'en', 2, 'Mental Floss: Meet the Man Struck By Lightning 7 Times', 'https://www.mentalfloss.com/science/weather/meet-man-struck-lightning-7-times');
