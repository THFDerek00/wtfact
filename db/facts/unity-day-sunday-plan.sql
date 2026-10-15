-- WTFact-Fakt „2004 sollte der Tag der Deutschen Einheit auf einen Sonntag wandern“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('unity-day-sunday-plan', '2026-10-03T00:00:00+02:00', 'holiday', '📆', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'unity-day-sunday-plan', 'de', 'einheitstag-2004-auf-sonntag-verschieben',
  '2004 sollte der Tag der Deutschen Einheit auf einen Sonntag wandern',
  'Ein Feiertag weniger für mehr Wirtschaftswachstum: Die Bundesregierung wollte den 3. Oktober einmal kurzerhand verschieben.',
  'Im Jahr 2004 schlug Finanzminister Hans Eichel vor, den Tag der Deutschen Einheit auf den ersten Sonntag im Oktober zu verlegen, damit ein zusätzlicher Werktag die Wirtschaft ankurbelt.',
  'Heute hast du frei, weil der 3. Oktober gesetzlicher Feiertag ist. **Fast wäre er aber zum Sonntag geworden, und zwar jedes Jahr.**

## Ein Feiertag als Sparmaßnahme

Im Jahr 2004 hatte die Bundesregierung ein Problem: Die Wirtschaft wuchs zu langsam. Finanzminister Hans Eichel (SPD) kam deshalb auf eine schräge Idee. Laut dem Faktencheck-Team von CORRECTIV schlug er vor, den Tag der Deutschen Einheit auf den ersten Sonntag im Oktober zu verlegen, „damit durch einen zusätzlichen Werktag die Wirtschaft angekurbelt wird“.

Bundeskanzler Gerhard Schröder (SPD) war der gleichen Meinung. In einem Brief verteidigte er den Plan laut dem Nachrichtenportal The Local mit dem Argument, der Feiertag solle ja nicht abgeschafft, sondern nur auf den ersten Sonntag im Oktober verschoben werden.

Mehr Arbeitstage, mehr Wirtschaftsleistung, so die Rechnung. Der Haken: Ein Feiertag am Sonntag bringt niemandem einen freien Tag.

## Nach einem Tag war die Idee erledigt

Begeistert war von dem Vorschlag kaum jemand, nicht einmal die eigene Partei. Schon einen Tag später lehnte SPD-Chef Franz Müntefering den Plan ab, berichtet CORRECTIV. Der Feiertag blieb, wo er war: am 3. Oktober.

Rechtlich wäre die Sache ohnehin heikel gewesen. Der Termin steht nämlich im Einigungsvertrag zwischen der Bundesrepublik und der DDR. Dort heißt es in Artikel 2: „Der 3. Oktober ist als Tag der Deutschen Einheit gesetzlicher Feiertag.“

## Warum überhaupt der 3. Oktober?

Viele fragen sich, warum Deutschland nicht den 9. November feiert, den Tag des Mauerfalls 1989. Laut der Landeszentrale für politische Bildung Baden-Württemberg war der tatsächlich im Gespräch. Weil auf dieses Datum aber auch die Reichspogromnacht von 1938 fällt, wurde die Idee verworfen. Stattdessen nahm man den Tag, an dem die Einheit 1990 in Kraft trat.

> Die Volkskammer der DDR stimmte dem Beitritt in einer Nachtsitzung zu. Das Ergebnis wurde laut der Landeszentrale um 2:30 Uhr morgens verkündet: 294 Ja-Stimmen, 62 Nein-Stimmen, 7 Enthaltungen.

Der Feiertag, der Deutschland zusammenhält, hat also selbst nur knapp seinen Platz im Kalender behalten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('unity-day-sunday-plan', 'de', 1, 'Großer Bildband Deutschland von oben', 'Bildband Deutschland von oben', 'Luftaufnahmen von der Küste bis zu den Alpen, schwer, großformatig und schön zum Durchblättern.'),
  ('unity-day-sunday-plan', 'de', 2, 'Reliefkarte Deutschland als Wandbild', 'Reliefkarte Deutschland Wandbild', 'Zeigt Berge, Flüsse und alle 16 Bundesländer zum Anfassen und macht sich gut an jeder Wand.'),
  ('unity-day-sunday-plan', 'de', 3, 'Deutschlandfahne aus wetterfestem Stoff', 'Deutschland Fahne wetterfest genäht', 'Eine solide genähte Fahne hält deutlich länger durch als die billigen bedruckten Varianten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('unity-day-sunday-plan', 'de', 1, 'CORRECTIV: Nein, der Tag der Deutschen Einheit soll nicht abgeschafft werden', 'https://correctiv.org/faktencheck/2025/03/28/nein-der-tag-der-deutschen-einheit-soll-nicht-abgeschafft-werden/'),
  ('unity-day-sunday-plan', 'de', 2, 'The Local: Living in Germany: Newsreader''s giggles, your go-to German word and German Unity Day', 'https://www.thelocal.de/20230930/living-in-germany-newsreaders-giggles-your-go-to-german-word-and-german-unity-day'),
  ('unity-day-sunday-plan', 'de', 3, 'LpB Baden-Württemberg: Tag der Deutschen Einheit – 3. Oktober', 'https://www.lpb-bw.de/tag-der-deutschen-einheit');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'unity-day-sunday-plan', 'en', 'unity-day-2004-move-to-sunday',
  'In 2004, Germany''s government wanted to move Unity Day to a Sunday',
  'One holiday less for more economic growth: the German government once tried to shift October 3 out of the way.',
  'In 2004, German finance minister Hans Eichel proposed moving German Unity Day to the first Sunday in October so that an extra working day would boost the economy.',
  'Today Germans get the day off because October 3 is a public holiday. **But it almost became a Sunday, every single year.**

## A holiday as a budget fix

In 2004, the German government had a problem: the economy was growing too slowly. So finance minister Hans Eichel (SPD) came up with an odd idea. According to the fact-checking team at CORRECTIV, he proposed moving German Unity Day to the first Sunday in October, so that an extra working day would give the economy a boost.

Chancellor Gerhard Schröder (SPD) agreed. According to the news site The Local, he defended the plan in a letter, arguing that the holiday would not be abolished, just moved to the first Sunday of October.

More working days, more economic output, that was the math. The catch: a holiday on a Sunday gives nobody an extra day off.

## Dead within a day

Hardly anyone liked the proposal, not even the chancellor''s own party. Just one day later, SPD chairman Franz Müntefering rejected the plan, CORRECTIV reports. The holiday stayed where it was: on October 3.

Legally, it would have been tricky anyway. The date is written into the Unification Treaty between West Germany and East Germany. Article 2 says that October 3, as the Day of German Unity, is a public holiday.

## Why October 3 at all?

Many people wonder why Germany doesn''t celebrate November 9, the day the Berlin Wall fell in 1989. According to the Baden-Württemberg State Agency for Civic Education, that date was actually discussed. But because November 9 is also the date of the 1938 Reichspogromnacht, the idea was dropped. Instead, Germany picked the day unification took effect in 1990.

> East Germany''s parliament, the Volkskammer, approved unification in a night session. According to the State Agency, the result was announced at 2:30 in the morning: 294 votes in favor, 62 against, 7 abstentions.

So the holiday that holds Germany together only just held on to its own spot in the calendar.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('unity-day-sunday-plan', 'en', 1, 'Large photo book of Germany from above', 'Germany from above photo book', 'Aerial shots from the coast to the Alps, heavy, large-format and great to leaf through.'),
  ('unity-day-sunday-plan', 'en', 2, 'Raised relief map of Germany for the wall', 'Germany relief map wall', 'Shows mountains, rivers and all 16 states in 3D and looks great on any wall.'),
  ('unity-day-sunday-plan', 'en', 3, 'Weatherproof German flag', 'German flag weatherproof sewn', 'A solidly sewn flag lasts far longer than the cheap printed versions.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('unity-day-sunday-plan', 'en', 1, 'CORRECTIV: Nein, der Tag der Deutschen Einheit soll nicht abgeschafft werden', 'https://correctiv.org/faktencheck/2025/03/28/nein-der-tag-der-deutschen-einheit-soll-nicht-abgeschafft-werden/'),
  ('unity-day-sunday-plan', 'en', 2, 'The Local: Living in Germany: Newsreader''s giggles, your go-to German word and German Unity Day', 'https://www.thelocal.de/20230930/living-in-germany-newsreaders-giggles-your-go-to-german-word-and-german-unity-day'),
  ('unity-day-sunday-plan', 'en', 3, 'LpB Baden-Württemberg: Tag der Deutschen Einheit – 3. Oktober', 'https://www.lpb-bw.de/tag-der-deutschen-einheit');
