-- WTFact-Fakt „Warum der Sekundenzeiger kurz stehen bleibt, wenn du auf die Uhr schaust“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).

INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('stopped-clock-illusion', NULL, 'mind', '⏰', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stopped-clock-illusion', 'de', 'sekundenzeiger-bleibt-stehen-chronostase',
  'Warum der Sekundenzeiger kurz stehen bleibt, wenn du auf die Uhr schaust',
  'Die erste Sekunde dauert gefühlt ewig. Schuld ist nicht die Uhr, sondern ein Schnitt in deinem Kopf.',
  'Wenn du schnell auf eine Uhr blickst, wirkt die erste Sekunde länger als die folgenden, weil dein Gehirn die Zeit deiner Augenbewegung nachträglich mit dem neuen Bild auffüllt.',
  'Du schaust auf eine Uhr mit tickendem Sekundenzeiger, und für einen Moment scheint er festzuhängen. Die erste Sekunde zieht sich spürbar länger als die danach. Hat die Uhr gezögert? Nein. Dein Gehirn.

## Die Stehende-Uhr-Täuschung

Der Effekt hat einen Namen: Chronostase. 2001 beschrieb ihn ein Team um Kielan Yarrow vom Institute of Neurology in London in der Fachzeitschrift Nature. In der Studie heißt es: Wenn Menschen mit einer schnellen Augenbewegung auf eine lautlos tickende Uhr schauen, kann der Sekundenzeiger länger als normal zu brauchen scheinen.

HealthDay hat beschrieben, wie das Experiment ablief. Freiwillige fixierten ein Kreuz auf einer Seite eines Bildschirms und schauten dann zu einem digitalen Sekundenzähler auf der anderen Seite. Der Zähler zeigte zufällig 0,5 bis 1,5 Sekunden lang eine „1“ und zählte dann normal weiter. Die Teilnehmenden sollten sagen, ob ihnen dieser erste Abschnitt länger vorkam als die übrigen. Und je länger die Augenbewegung dauerte, desto stärker wurde die Täuschung.

## Dein Gehirn schneidet nach

Die Erklärung ist erstaunlich elegant. Während einer schnellen Augenbewegung, einer sogenannten Sakkade, siehst du kaum etwas. Der Psychologe Bruce Bridgeman sagte HealthDay, dass das Sehen dabei für etwa eine 20stel Sekunde praktisch aussetzt. Statt dir eine verwackelte Lücke zu zeigen, füllt dein Gehirn sie auf: Es tut so, als wäre das, was du nach der Landung siehst, schon die ganze Zeit da gewesen.

Genau diese Rückdatierung streckt die erste Sekunde. In der Nature-Studie schlagen die Autoren vor, dass das Gehirn die Wahrnehmung des neuen Ziels zeitlich nach hinten verlängert, bis kurz vor die Augenbewegung. Je länger die Bewegung, desto länger scheint die Uhr stillzustehen.

Laut den Forschern passiert das bei jeder einzelnen Augenbewegung. Du bemerkst es nur, wenn dir etwas wie eine tickende Uhr einen Vergleich liefert.

> Bonusfakt: Laut HealthDay bewegst du deine Augen etwa dreimal pro Sekunde, dein Gehirn flickt dein Bild von der Welt also den ganzen Tag lang.

Die Zeit bleibt nicht stehen, wenn du auf die Uhr schaust. Dein Gehirn spult nur kurz zurück.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stopped-clock-illusion', 'de', 1, 'Lautlose Wanduhr mit Sekundenzeiger', 'Wanduhr lautlos Sekundenzeiger', 'Tickt nicht, läuft leise und ist gut ablesbar, auch aus der Ferne.'),
  ('stopped-clock-illusion', 'de', 2, 'Sachbuch über Zeitwahrnehmung', 'Buch Zeitwahrnehmung Gehirn', 'Erklärt, warum sich manche Minuten ziehen und andere verfliegen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stopped-clock-illusion', 'de', 1, 'City Research Online: Illusory perceptions of space and time preserve cross-saccadic perceptual continuity', 'https://openaccess.city.ac.uk/id/eprint/333/'),
  ('stopped-clock-illusion', 'de', 2, 'HealthDay: Why a Watched Clock Won’t Tick', 'https://www.healthday.com/health-news/eye-care/why-a-watched-clock-won-t-tick-404771.html');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'stopped-clock-illusion', 'en', 'stopped-clock-illusion-second-hand-freezes',
  'Why the second hand seems to freeze when you glance at a clock',
  'That first second feels endless. The clock isn’t to blame, an edit inside your head is.',
  'When you quickly glance at a clock, the first second seems longer than the ones after it, because your brain backfills the time of your eye movement with the new image.',
  'You glance at a clock with a ticking second hand, and for a moment it seems stuck. The first second drags on noticeably longer than the ones after it. Did the clock hesitate? No. Your brain did.

## The stopped clock illusion

The effect has a name: chronostasis. In 2001, a team led by Kielan Yarrow at the Institute of Neurology in London described it in the journal Nature. The paper says that when people make a quick eye movement toward a silently ticking clock, the second hand can seem to take longer than normal to move.

HealthDay described how the experiment worked. Volunteers stared at a cross on one side of a screen, then moved their eyes to a digital seconds counter on the other side. The counter showed a "1" for a random 0.5 to 1.5 seconds and then counted on normally. Participants had to say whether that first interval felt longer than the rest. And the longer the eye movement, the stronger the illusion became.

## Your brain edits the tape

The explanation is surprisingly neat. During a quick eye movement, called a saccade, you see very little. Psychologist Bruce Bridgeman told HealthDay that vision is essentially absent for about a 20th of a second during one. Instead of showing you a blurry gap, your brain fills it in: it acts as if what you see after your eyes land had been there all along.

That backdating is what stretches the first second. In the Nature paper, the authors propose that the brain extends the perception of the new target backwards in time to just before the eye movement. The longer the movement, the longer the clock seems to stand still.

According to the researchers, this happens with every single eye movement. You only notice it when something like a ticking clock gives you a point of comparison.

> Bonus fact: According to HealthDay, you move your eyes about three times a second, so your brain is patching up your view of the world all day long.

Time doesn''t stop when you look at the clock. Your brain just rewinds a little.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('stopped-clock-illusion', 'en', 1, 'Silent wall clock with second hand', 'silent wall clock non ticking', 'Doesn’t tick, runs quietly and is easy to read from across the room.'),
  ('stopped-clock-illusion', 'en', 2, 'Popular science book on time perception', 'book time perception brain', 'Explains why some minutes drag on and others fly by.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('stopped-clock-illusion', 'en', 1, 'City Research Online: Illusory perceptions of space and time preserve cross-saccadic perceptual continuity', 'https://openaccess.city.ac.uk/id/eprint/333/'),
  ('stopped-clock-illusion', 'en', 2, 'HealthDay: Why a Watched Clock Won’t Tick', 'https://www.healthday.com/health-news/eye-care/why-a-watched-clock-won-t-tick-404771.html');
