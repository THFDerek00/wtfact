-- WTFact-Fakt „Deine Atemwege haben Bitter-Geschmacksrezeptoren, und Bitteres lässt sie entspannen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bitter-taste-receptors-airways', '2026-10-11T16:00:00+02:00', 'body', '🫁', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bitter-taste-receptors-airways', 'de', 'deine-atemwege-haben-bitter-rezeptoren',
  'Deine Atemwege haben Bitter-Geschmacksrezeptoren, und Bitteres lässt sie entspannen',
  'Die Sensoren, mit denen deine Zunge Bitteres erkennt, sitzen auch tief in deiner Lunge. Nur schicken sie deinem Gehirn nie einen Geschmack.',
  '2010 berichteten Forschende der University of Maryland School of Medicine von funktionierenden Bitter-Geschmacksrezeptoren auf der glatten Muskulatur der Atemwege, und Bitterstoffe ließen diese Muskeln entspannen statt verkrampfen.',
  'Bitter ist die Alarmglocke deiner Zunge. Viele giftige Stoffe schmecken bitter, also ist Bitteres auszuspucken keine schlechte Überlebensstrategie. Umso seltsamer, dass dieselbe Art Sensor auch an einer Stelle sitzt, die nie mit Essen in Berührung kommt: in deiner Lunge.

## Eine Entdeckung aus Versehen

2010 veröffentlichte ein Team um den Lungenfacharzt Stephen Liggett von der University of Maryland School of Medicine eine Studie in Nature Medicine. Hauptautor Deepak Deshpande und Kollegen hatten funktionierende Bitter-Geschmacksrezeptoren auf der glatten Muskulatur der Atemwege gefunden, also auf dem Muskel, der die Röhren, durch die du atmest, eng und weit stellt. Laut Medical News Today stießen sie zufällig darauf, als sie eigentlich andere Rezeptoren im Lungenmuskel untersuchten.

Anders als auf deiner Zunge sind diese Rezeptoren nicht in Geschmacksknospen gebündelt. Und sie schicken kein Geschmackssignal an dein Gehirn. Deine Lunge schmeckt also nicht wirklich etwas. Sie reagiert.

## Das Gegenteil von dem, was alle erwartet hatten

Die Forschenden rechneten damit, dass Bitterstoffe den Atemwegsmuskel anspannen und zusammenziehen würden, als eine Art Warnreaktion, berichtet Scientific American. Das wäre logisch gewesen, wenn bitter Gefahr bedeutet. Stattdessen entspannte sich der Muskel, und die Atemwege wurden weiter.

„Es stellte sich heraus, dass die Bitterstoffe genau andersherum wirkten, als wir dachten“, sagte Liggett laut Medical News Today. In Tests an Mäusen mit Asthma entspannten Bitterstoffe wie Chinin, Chloroquin und der Süßstoff Saccharin die Atemwege.

> Bonusfakt: Bitter-Sensoren sitzen auch auf den winzigen Flimmerhärchen, den Zilien, die deine Atemwege auskleiden. Ein Team der University of Iowa berichtete 2009: Erkennen diese Rezeptoren einen Bitterstoff, schlagen die Zilien schneller und befördern ihn hinaus, ganz ohne Hilfe deiner Nerven.

Die Bitter-Sensoren in deiner Brust sind also nicht fürs Abendessen da, sondern für deine Atemwege. Deine Zunge bekommt nur den ganzen Ruhm ab.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bitter-taste-receptors-airways', 'de', 1, 'Anatomisches Lungenmodell', 'Lungenmodell Anatomie', 'Ein Modell für den Schreibtisch, das zeigt, wie sich die Atemwege in der Lunge verzweigen.'),
  ('bitter-taste-receptors-airways', 'de', 2, 'Buch über die Wissenschaft des Geschmacks', 'Buch Wissenschaft Geschmack Aroma', 'Erklärt, wie Zunge und Nase aus Molekülen Geschmack machen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bitter-taste-receptors-airways', 'de', 1, 'Medical News Today: Bitter Taste Receptors In The Lungs Could Revolutionize Asthma Treatment', 'https://www.medicalnewstoday.com/articles/205671'),
  ('bitter-taste-receptors-airways', 'de', 2, 'Scientific American: Receptors for Taste Found in the Lungs', 'https://www.scientificamerican.com/podcast/episode/receptors-for-taste-found-in-lungs-10-10-25'),
  ('bitter-taste-receptors-airways', 'de', 3, 'ScienceDaily: Airway Cells Use ''Tasting'' Mechanism To Detect And Clear Harmful Substances', 'https://www.sciencedaily.com/releases/2009/07/090724144530.htm');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bitter-taste-receptors-airways', 'en', 'your-airways-have-bitter-taste-receptors',
  'Your airways have bitter taste receptors, and bitter makes them relax',
  'The sensors your tongue uses to detect bitterness also sit deep in your lungs. They just never send a taste to your brain.',
  'In 2010, researchers at the University of Maryland School of Medicine reported working bitter taste receptors on the smooth muscle of the airways, and bitter compounds made those muscles relax instead of tighten.',
  'Bitter is your tongue''s alarm bell. Many toxic substances taste bitter, so spitting out bitter stuff is a decent survival strategy. That''s why it''s odd that the same kind of sensor also sits somewhere that never touches food: your lungs.

## A discovery by accident

In 2010, a team led by lung specialist Stephen Liggett at the University of Maryland School of Medicine published a study in Nature Medicine. Principal author Deepak Deshpande and colleagues had found working bitter taste receptors on the smooth muscle of the airways, the muscle that tightens and relaxes the tubes you breathe through. According to Medical News Today, they stumbled on them by accident while studying other receptors in lung muscle.

Unlike on your tongue, these receptors aren''t bundled into taste buds. And they don''t send a taste signal to your brain. So your lungs don''t actually taste anything. They react.

## The opposite of what everyone expected

The researchers figured that bitter compounds would make the airway muscle tense up and contract, as a kind of warning reaction, Scientific American reports. That would have made sense if bitter means danger. Instead, the muscle relaxed and the airways opened up.

"It turns out that the bitter compounds worked the opposite way from what we thought", Liggett said, as quoted by Medical News Today. In tests on mice with asthma, bitter substances including quinine, chloroquine and the sweetener saccharin relaxed the airways.

> Bonus fact: Bitter sensors also sit on the tiny hairs called cilia that line your airways. A University of Iowa team reported in 2009 that when these receptors detect a bitter compound, the cilia beat faster to sweep it out, without any help from your nerves.

So the bitter sensors in your chest don''t serve dinner, they serve your airways. Your tongue just gets all the credit.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bitter-taste-receptors-airways', 'en', 1, 'Anatomical lung model', 'human lung anatomical model', 'A desk-sized model that shows how the airways branch inside the lungs.'),
  ('bitter-taste-receptors-airways', 'en', 2, 'Book about the science of taste', 'science of taste and flavor book', 'Explains how your tongue and nose turn molecules into flavor.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bitter-taste-receptors-airways', 'en', 1, 'Medical News Today: Bitter Taste Receptors In The Lungs Could Revolutionize Asthma Treatment', 'https://www.medicalnewstoday.com/articles/205671'),
  ('bitter-taste-receptors-airways', 'en', 2, 'Scientific American: Receptors for Taste Found in the Lungs', 'https://www.scientificamerican.com/podcast/episode/receptors-for-taste-found-in-lungs-10-10-25'),
  ('bitter-taste-receptors-airways', 'en', 3, 'ScienceDaily: Airway Cells Use ''Tasting'' Mechanism To Detect And Clear Harmful Substances', 'https://www.sciencedaily.com/releases/2009/07/090724144530.htm');
