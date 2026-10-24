-- WTFact-Fakt „Dass Halloween in Deutschland groß wurde, hat mit dem ausgefallenen Karneval 1991 zu tun“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('halloween-germany-carnival-1991', '2026-10-31T00:00:00+01:00', 'holiday', '🎃', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'halloween-germany-carnival-1991', 'de', 'halloween-deutschland-karneval-1991',
  'Dass Halloween in Deutschland groß wurde, hat mit dem ausgefallenen Karneval 1991 zu tun',
  'Als der Golfkrieg den Rosenmontag stoppte, fehlten der Kostümbranche die Umsätze. Ihre Lösung trägt heute einen Kürbis.',
  'Nachdem Karneval und Fasching 1991 wegen des Golfkriegs weitgehend ausgefallen waren, begannen Hersteller von Karnevalsartikeln im Verband der Spielwarenindustrie, Halloween in Deutschland zu vermarkten, um die verlorenen Umsätze aufzufangen.',
  'Kürbisse, Hexenhüte, Kinder mit „Süßes oder Saures“ an der Tür: Für viele fühlt sich Halloween an, als hätte es das schon immer gegeben. In Deutschland ist das Fest aber erst gut 30 Jahre richtig präsent. **Und dass es so groß wurde, hat ausgerechnet mit dem Karneval zu tun, der 1991 ausfiel.**

## Der Winter ohne Rosenmontag

Mitte Januar 1991 begann der Golfkrieg. Laut der Zeitung inFranken war damit schnell klar: Karneval und Fasching fallen in diesem Jahr aus. Viele Feiern und Umzüge wurden abgesagt, auch der Kölner Rosenmontagszug. Dabei lockt allein der Kölner Karneval laut The Local an den Haupttagen rund 1,2 Millionen Menschen an.

Für die Kostümbranche war das ein Problem. Laut PR-Berater Dieter Tschorn bedeutet jede Woche weniger Karnevalssaison rund fünf Prozent weniger Umsatz, so zitiert ihn The Local. Ein ganzer ausgefallener Karneval tat entsprechend weh.

## Ein Fest aus der Pressemitteilung

Die Branche suchte also einen zweiten Anlass zum Verkleiden. Nach Angaben der Abendzeitung München war die Karnevalsabsage 1991 der Auslöser für den Halloween-Rummel: Die Karnevalsbranche begann, Halloween zu vermarkten, um die verlorenen Umsätze aufzufangen. Die Fachgruppe Karneval im Verband der Spielwarenindustrie rechnete laut der Zeitung mit Millionenumsätzen. Tschorn, PR-Berater der Branche, nennt sich laut deutschland.de selbst den „Vater des deutschen Halloween“.

Wie klein das Ganze anfing, erzählte Tschorn The Local: 1994 lag der Halloween-Umsatz seiner Branche bei null. Am 4. September 1994 verschickte er die erste Pressemitteilung zu Halloween an deutsche Medien. Die griffen das Thema Jahr für Jahr auf, und Ende der 90er war Halloween laut Tschorn schon Kult. Besonders in Norddeutschland, wo kaum Karneval gefeiert wird, nutzten viele laut Berliner Kurier die neue Gelegenheit, sich zu verkleiden.

## Vom Nullsummenspiel zum Millionengeschäft

Ende Oktober 2009 wurden laut Abendzeitung 29,6 Millionen Euro mit Halloween-Artikeln umgesetzt, darunter rund 972.000 Schminksets. Sogar der Kürbis hat profitiert: Früher galt er als Arme-Leute-Essen, seit Halloween ist er als vegetarische Delikatesse gefragt.

Erfunden hat die Spielwarenbranche das Fest natürlich nicht. Der Name kommt von „All Hallows'' Eve“, dem Abend vor Allerheiligen, und laut Berliner Kurier hat sich Halloween aus Bräuchen rund um diesen Feiertag entwickelt. Für eine Verbindung zum keltischen Fest Samhain gibt es demnach keine echten Belege. Nach Deutschland geholt hat es aber vor allem eine Branche, der ein ganzer Karneval fehlte.

> Auch der Karneval hat 1991 sein Gespenst bekommen: Weil der Rosenmontagszug ausfiel, zogen in Köln Kriegsgegner und Jecken gemeinsam durch die Innenstadt. Daraus entstand laut koeln.de der Geisterzug in seiner heutigen Form.

Wenn heute Abend jemand als Skelett klingelt, steckt dahinter also auch ein abgesagter Rosenmontag.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('halloween-germany-carnival-1991', 'de', 1, 'Kürbis-Schnitzset aus Edelstahl mit Aufbewahrungstasche', 'Kürbis Schnitzset Edelstahl Profi', 'Mit stabilen Klingen, Sägen und Auskratzern gelingen auch feine Gesichter und Muster im Kürbis.'),
  ('halloween-germany-carnival-1991', 'de', 2, 'Professionelle Theaterschminke-Palette für Halloween', 'Theaterschminke Palette Halloween professionell', 'Hochpigmentierte Bühnenschminke hält eine ganze Partynacht und lässt sich sauber auftragen.'),
  ('halloween-germany-carnival-1991', 'de', 3, 'Keramik-Kürbislaterne mit LED-Licht', 'Keramik Kürbis Laterne LED Halloween Deko', 'Eine Deko, die nicht schrumpelt und jedes Jahr wieder auf die Fensterbank darf.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('halloween-germany-carnival-1991', 'de', 1, 'Abendzeitung München: Das Geschäft mit Halloween: Gruselige Profite', 'https://www.abendzeitung-muenchen.de/inhalt.geld-das-geschaeft-mit-halloween-gruselige-profite.5cc6a511-0a36-49cc-9874-e9a5dead0fbb.html'),
  ('halloween-germany-carnival-1991', 'de', 2, 'The Local Germany: How the Gulf War brought Halloween to Germany', 'https://www.thelocal.de/20161031/how-the-gulf-war-cancelled-carnival-and-brought-halloween-to-germany'),
  ('halloween-germany-carnival-1991', 'de', 3, 'Berliner Kurier: Halloween: So kam der Grusel nach Deutschland', 'https://www.berliner-kurier.de/panorama/halloween-so-kam-der-grusel-nach-deutschland-li.2153847'),
  ('halloween-germany-carnival-1991', 'de', 4, 'deutschland.de: Halloween in Germany: Events, costumes and traditions', 'https://www.deutschland.de/en/topic/culture/halloween-in-germany'),
  ('halloween-germany-carnival-1991', 'de', 5, 'inFranken.de: Ausstellung "Trotzdem Alaaf": Fastnacht in Kriegszeiten', 'https://www.infranken.de/lk/kitzingen/ausstellung-trotzdem-alaaf-fastnacht-in-kriegszeiten-art-4057920'),
  ('halloween-germany-carnival-1991', 'de', 6, 'koeln.de: Geisterzug 2026 in Köln: Zugweg, Infos und Bilder', 'https://www.koeln.de/karneval/umzuege/geisterzug-koeln/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'halloween-germany-carnival-1991', 'en', 'halloween-germany-carnival-1991',
  'Halloween''s rise in Germany has to do with the carnival that was called off in 1991',
  'When the Gulf War stopped Rosenmontag, the costume business lost its sales. Its solution now wears a pumpkin.',
  'After Karneval and Fasching were largely cancelled in 1991 because of the Gulf War, carnival goods makers in the German toy industry association started marketing Halloween in Germany to make up for lost sales.',
  'Pumpkins, witch hats, kids at the door shouting "trick or treat": Halloween can feel like it has always been around. In Germany, though, it has only really been a thing for a little over 30 years. **And the reason it got so big has to do with carnival, of all things, which was called off in 1991.**

## The winter without Rosenmontag

The Gulf War began in mid-January 1991. According to the newspaper inFranken, it quickly became clear that Karneval and Fasching would not happen that year. Many celebrations and parades were cancelled, including Cologne''s Rosenmontag parade. Cologne''s carnival alone draws about 1.2 million people on its main days, according to The Local.

For the costume business, that was a problem. According to PR consultant Dieter Tschorn, quoted by The Local, every week less of carnival season means about five percent less in sales. Losing an entire carnival hurt accordingly.

## A holiday born from a press release

So the industry went looking for a second excuse to dress up. According to the Abendzeitung München, the carnival cancellation of 1991 was what set off the Halloween hype: the carnival business started marketing Halloween to make up for lost sales. According to the paper, the carnival section of the German toy industry association was counting on sales in the millions. Tschorn, the industry''s PR consultant, calls himself the "father of German Halloween", according to deutschland.de.

Tschorn told The Local how small it all started: in 1994, his industry''s Halloween turnover was zero. On September 4, 1994, he sent the first Halloween press release to the German media. They picked up the topic year after year, and by the end of the 90s, Tschorn says, Halloween was already a cult. Especially in northern Germany, where carnival is hardly celebrated, many people jumped at the new chance to dress up, according to the Berliner Kurier.

## From zero to millions

At the end of October 2009, according to the Abendzeitung, Halloween products brought in 29.6 million euros, including about 972,000 makeup sets. Even the pumpkin benefited: once seen as food for the poor in Germany, it has been in demand as a vegetarian delicacy since Halloween arrived.

The toy industry obviously didn''t invent the holiday. The name comes from "All Hallows'' Eve", the evening before All Saints'' Day, and according to the Berliner Kurier, Halloween grew out of customs around that day. There is no real evidence for a link to the Celtic festival of Samhain, the paper says. But what brought it to Germany was mostly an industry that had lost a whole carnival.

> Carnival got its own ghost in 1991 too: because the Rosenmontag parade was cancelled, anti-war protesters and carnival revelers marched through central Cologne together. According to koeln.de, that is where the Geisterzug, the "ghost parade", in its current form comes from.

So if a skeleton rings your doorbell tonight, there''s a cancelled carnival parade behind it too.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('halloween-germany-carnival-1991', 'en', 1, 'Stainless steel pumpkin carving kit with storage case', 'professional stainless steel pumpkin carving kit', 'Sturdy blades, saws and scoops make even fine faces and patterns in a pumpkin doable.'),
  ('halloween-germany-carnival-1991', 'en', 2, 'Professional theatrical face paint palette for Halloween', 'professional theatrical face paint palette halloween', 'Highly pigmented stage makeup that applies cleanly and lasts a whole party night.'),
  ('halloween-germany-carnival-1991', 'en', 3, 'Ceramic pumpkin lantern with LED light', 'ceramic pumpkin lantern LED halloween decor', 'A decoration that never shrivels and comes back out on the windowsill every year.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('halloween-germany-carnival-1991', 'en', 1, 'Abendzeitung München: Das Geschäft mit Halloween: Gruselige Profite', 'https://www.abendzeitung-muenchen.de/inhalt.geld-das-geschaeft-mit-halloween-gruselige-profite.5cc6a511-0a36-49cc-9874-e9a5dead0fbb.html'),
  ('halloween-germany-carnival-1991', 'en', 2, 'The Local Germany: How the Gulf War brought Halloween to Germany', 'https://www.thelocal.de/20161031/how-the-gulf-war-cancelled-carnival-and-brought-halloween-to-germany'),
  ('halloween-germany-carnival-1991', 'en', 3, 'Berliner Kurier: Halloween: So kam der Grusel nach Deutschland', 'https://www.berliner-kurier.de/panorama/halloween-so-kam-der-grusel-nach-deutschland-li.2153847'),
  ('halloween-germany-carnival-1991', 'en', 4, 'deutschland.de: Halloween in Germany: Events, costumes and traditions', 'https://www.deutschland.de/en/topic/culture/halloween-in-germany'),
  ('halloween-germany-carnival-1991', 'en', 5, 'inFranken.de: Ausstellung "Trotzdem Alaaf": Fastnacht in Kriegszeiten', 'https://www.infranken.de/lk/kitzingen/ausstellung-trotzdem-alaaf-fastnacht-in-kriegszeiten-art-4057920'),
  ('halloween-germany-carnival-1991', 'en', 6, 'koeln.de: Geisterzug 2026 in Köln: Zugweg, Infos und Bilder', 'https://www.koeln.de/karneval/umzuege/geisterzug-koeln/');
