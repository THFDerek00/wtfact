-- WTFact-Fakt „Für das Ost-Ampelmännchen gründeten Fans nach der Einheit ein Rettungskomitee“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('ampelmann-rescued', '2026-10-03T11:51:32+02:00', 'weird', '🚦', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ampelmann-rescued', 'de', 'ampelmaennchen-rettungskomitee',
  'Für das Ost-Ampelmännchen gründeten Fans nach der Einheit ein Rettungskomitee',
  'Nach 1990 sollte der kleine Mann mit Hut aus den Ampeln verschwinden. Dann kam ein Komitee, und das Ampelmännchen blieb.',
  'Das ostdeutsche Ampelmännchen, 1961 vom Verkehrspsychologen Karl Peglau entworfen, sollte nach der Einheit ersetzt werden, ein „Komitee zur Rettung der Ampelmännchen“ setzte 1997 durch, dass es bleiben darf.',
  'Ein Verkehrszeichen, für das Menschen auf die Barrikaden gehen? Klingt absurd, ist aber passiert. **Als das ostdeutsche Ampelmännchen nach der Einheit verschwinden sollte, gründeten Bürger aus Ost und West ein „Komitee zur Rettung der Ampelmännchen“, und sie gewannen.**

## Ein Psychologe malt ein Männchen mit Hut

Erfunden hat das Ampelmännchen kein Designer, sondern ein Verkehrspsychologe. Laut German History in Documents and Images bekam Karl Peglau 1961 vom Verkehrsministerium der DDR den Auftrag, Signale für Fußgängerampeln zu entwerfen. Laut DDR Museum stellte er am 13. Oktober 1961 seinen ersten Entwurf vor.

Die Idee: Farbe allein reicht nicht. Eine Figur mit eindeutiger Form sollte Fußgänger aufmerksamer machen, vor allem Kinder. Das sollte Unfälle verhindern.

Kurios: Peglau hatte Bedenken wegen des Huts. Laut DDR Museum fürchtete er, der Hut könnte als „bürgerlich-kapitalistisches Symbol“ gelten. Durchgekommen ist der Entwurf trotzdem. 1969 leuchteten die Ampelmännchen zuerst in Ost-Berlin, später in der ganzen DDR.

## Nach 1990: weg damit?

Nach der Einheit sollten die Ostsignale gegen westdeutsche Varianten ausgetauscht werden. Der Designer Markus Heckhausen sammelte ausrangierte Ampelmännchen und baute daraus Leuchten. Das brachte viel Aufmerksamkeit, und daraus entstand das Rettungskomitee.

1997 hatte es Erfolg: Das Ampelmännchen durfte nicht nur bleiben, sondern wird bei neuen Ampeln in den ostdeutschen Bundesländern sogar bevorzugt eingesetzt. Im selben Jahr gründete Heckhausen die Firma AMPELMANN, die aus der Figur eine ganze Reihe von Fanartikeln machte.

> In den 1980er-Jahren hatten die Ampelmännchen sogar eigene Zeichentrickfolgen, die im DDR-Fernsehen innerhalb von „Unser Sandmännchen“ liefen.

Und weil es 1997 nicht genug Ampel-Neuigkeiten geben konnte, kam laut DDR Museum auch noch die Ampelfrau dazu, gezeichnet von Hans-Jürgen Ellenberger.

Ein kleines Männchen mit Hut hat also etwas geschafft, was vielen größeren Dingen aus der DDR nicht gelungen ist: Es ist geblieben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ampelmann-rescued', 'de', 1, 'Ampelmännchen-Lampe für den Schreibtisch', 'Ampelmännchen Lampe', 'Leuchtet rot oder grün und ist ein Hingucker in jedem Zimmer.'),
  ('ampelmann-rescued', 'de', 2, 'Ampelmännchen-Ausstechformen', 'Ampelmännchen Ausstechform', 'Für Plätzchen, die wie das Kultmännchen aussehen, ob gehend oder stehend.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ampelmann-rescued', 'de', 1, 'DDR Museum: The East German traffic light man', 'https://www.ddr-museum.de/en/blog/2016/what-remains-of-the-gdr-the-east-german-traffic-light-man'),
  ('ampelmann-rescued', 'de', 2, 'German History in Documents and Images: Ostdeutsches Ampelmännchen', 'https://germanhistorydocs.org/de/ein-neues-deutschland-1990-2023/ostdeutsches-ampelmaennchen');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'ampelmann-rescued', 'en', 'ampelmann-rescue-committee',
  'Fans set up a rescue committee for the East German traffic light man after reunification',
  'After 1990, the little man with the hat was supposed to vanish from the traffic lights. Then came a committee, and he stayed.',
  'The East German traffic light man, designed in 1961 by traffic psychologist Karl Peglau, was supposed to be replaced after reunification, but a "Committee to Save the Traffic Light Men" won the right for him to stay in 1997.',
  'A traffic signal that people campaign for? Sounds absurd, but it happened. **When the East German "Ampelmännchen", the little traffic light man, was about to disappear after reunification, citizens from East and West founded a "Committee to Save the Traffic Light Men", and they won.**

## A psychologist draws a man with a hat

The Ampelmännchen wasn''t invented by a designer but by a traffic psychologist. According to German History in Documents and Images, Karl Peglau was asked by East Germany''s transport ministry in 1961 to design signals for pedestrian lights. According to the DDR Museum in Berlin, he presented his first design on October 13, 1961.

The idea: colour alone isn''t enough. A figure with a clear shape would make pedestrians more aware, especially children, and help prevent accidents.

The strange part: Peglau was worried about the hat. According to the DDR Museum, he feared it could be seen as a "bourgeois-capitalist symbol". The design got through anyway. In 1969 the traffic light men lit up first in East Berlin, later across all of East Germany.

## After 1990: get rid of it?

After reunification, the eastern signals were supposed to be swapped for West German versions. Designer Markus Heckhausen collected discarded traffic light men and turned them into lamps. That got a lot of attention, and the rescue committee grew out of it.

In 1997 it succeeded: the Ampelmännchen was allowed to stay and is even preferred for new traffic lights in the eastern German states. That same year, Heckhausen founded the company AMPELMANN, which turned the figure into a whole range of merchandise.

> In the 1980s, the traffic light men even had their own cartoon episodes, shown on East German TV as part of the children''s program "Unser Sandmännchen".

As if 1997 hadn''t brought enough traffic light news, the DDR Museum says a traffic light woman was added that year too, drawn by Hans-Jürgen Ellenberger.

So a little man with a hat managed something that many bigger things from East Germany didn''t: he stayed.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('ampelmann-rescued', 'en', 1, 'Ampelmann traffic light lamp', 'Ampelmann lamp', 'Glows red or green and is an eye-catcher in any room.'),
  ('ampelmann-rescued', 'en', 2, 'Ampelmann cookie cutters', 'Ampelmann cookie cutter', 'For cookies shaped like the cult figure, walking or standing.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('ampelmann-rescued', 'en', 1, 'DDR Museum: The East German traffic light man', 'https://www.ddr-museum.de/en/blog/2016/what-remains-of-the-gdr-the-east-german-traffic-light-man'),
  ('ampelmann-rescued', 'en', 2, 'German History in Documents and Images: Ostdeutsches Ampelmännchen', 'https://germanhistorydocs.org/de/ein-neues-deutschland-1990-2023/ostdeutsches-ampelmaennchen');
