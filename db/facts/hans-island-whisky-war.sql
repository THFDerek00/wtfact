-- WTFact-Fakt „Kanada und Dänemark stritten 49 Jahre lang um eine winzige Insel, mit Flaggen und Schnapsflaschen“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('hans-island-whisky-war', '2026-10-29T16:00:00+01:00', 'places', '🧊', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hans-island-whisky-war', 'de', 'hans-insel-whisky-krieg',
  'Kanada und Dänemark stritten 49 Jahre lang um eine winzige Insel, mit Flaggen und Schnapsflaschen',
  'Der freundlichste Grenzstreit der Welt endete mit einer Linie quer über einen kahlen Felsen in der Arktis.',
  'Jahrzehntelang stritten Kanada und Dänemark um die winzige Hans-Insel in der Arktis, indem sie Flaggen hissten und sich gegenseitig Flaschen mit Hochprozentigem hinterließen, bis sie die Insel 2022 einfach mit einer etwa einen Kilometer langen Landgrenze teilten.',
  'Bei den meisten Grenzstreits gibt es wütende Reden. Bei diesem gab es einen Flaschenöffner.

## Ein Felsen, auf den sich keiner einigen konnte

Die Hans-Insel ist ein kahler, unbewohnter Felsen von etwa 1,3 Quadratkilometern. Sie liegt mitten im Kennedy-Kanal der Nares-Straße, zwischen der kanadischen Ellesmere-Insel und dem Nordwesten Grönlands, das zum Königreich Dänemark gehört. Wertvolle Bodenschätze sind dort nicht bekannt.

1973 einigten sich die beiden Länder auf eine Seegrenze mitten durch die Meerenge, genau zwischen den Küsten. Nur ein Problem: Die Hans-Insel lag im Weg, und niemand konnte sich einigen, wem sie gehört. Also verschob man die Frage.

## Flaggen, Schnaps und Whisky

1984 besuchte Dänemarks Minister für Grönland-Angelegenheiten, Tom Høyem, die Insel, hisste eine dänische Flagge und ließ eine Flasche Schnaps mit einer Notiz zurück: „Willkommen auf der dänischen Insel.“ Kanadier antworteten später mit ihrer eigenen Flagge und einer Flasche kanadischem Whisky (manche Berichte sagen: Brandy). Über die Jahre tauschten beide Seiten immer wieder Flaggen und Flaschen. Die Medien nannten das den „Whisky-Krieg“.

Ein bisschen angespannt wurde es trotzdem. 2005 landete Kanadas Verteidigungsminister Bill Graham unangekündigt auf der Insel, Dänemark legte offiziell Protest ein. Beide Länder schickten auch Kriegsschiffe, ein echter Kampf drohte aber nie. Im selben Jahr begannen die Gespräche.

## Eine Grenze mitten durch

Am 14. Juni 2022, nach 49 Jahren ohne Lösung, einigten sich Kanada und Dänemark darauf, die Insel zu teilen. Die neue Linie folgt einer natürlichen Schlucht und ist nur etwa einen Kilometer lang. Laut WorldAtlas bekam Grönland rund 60 Prozent der Insel und Kanada rund 40 Prozent. Bei der Unterzeichnung tauschten die Außenminister ein letztes Mal Flaschen aus. Das dänische Parlament ratifizierte den Vertrag im Dezember 2023.

> Bonusfakt: Auf Grönländisch heißt die Insel Tartupaluk, das bedeutet „nierenförmig“.

Grönland, die größte Insel der Erde, bekam dadurch seine allererste Landgrenze, und Kanada einen Landnachbarn, der nicht die USA ist.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hans-island-whisky-war', 'de', 1, 'Rubbel-Weltkarte als Poster', 'Rubbel Weltkarte Poster', 'Große Wandkarte, auf der du jedes besuchte Land freirubbeln kannst.'),
  ('hans-island-whisky-war', 'de', 2, 'Leuchtglobus mit politischer Karte', 'Leuchtglobus politische Karte', 'Ein Tischglobus, der Ländergrenzen zeigt und gleichzeitig Lampe ist.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hans-island-whisky-war', 'de', 1, 'Anchorage Daily News: Canada and Denmark reach deal to end 49-year feud over Arctic rock island', 'https://www.adn.com/nation-world/2022/06/15/canada-and-denmark-reach-deal-to-end-49-year-feud-over-arctic-rock-island/'),
  ('hans-island-whisky-war', 'de', 2, 'WorldAtlas: Canada, Denmark, and the Arctic''s Strangest Territorial Dispute The Whisky War', 'https://www.worldatlas.com/geography/the-whisky-war-of-hans-island.html'),
  ('hans-island-whisky-war', 'de', 3, 'BNN Bloomberg: Canada and Denmark End Arctic ''Whiskey War'' With New Land Border', 'https://www.bnnbloomberg.ca/canada-and-denmark-end-arctic-whiskey-war-with-new-land-border-1.1778827');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hans-island-whisky-war', 'en', 'hans-island-whisky-war',
  'Canada and Denmark argued over a tiny island for 49 years, with flags and bottles of booze',
  'The friendliest border dispute in the world ended with a line straight across a bare Arctic rock.',
  'For decades, Canada and Denmark disputed tiny Hans Island in the Arctic by planting flags and leaving each other bottles of liquor, until in 2022 they simply split it with a land border about one kilometre long.',
  'Most border disputes involve angry speeches. This one involved a bottle opener.

## A rock nobody could agree on

Hans Island is a bare, uninhabited rock of about 1.3 square kilometres. It sits in the middle of the Kennedy Channel of the Nares Strait, between Canada''s Ellesmere Island and northwestern Greenland, which belongs to the Kingdom of Denmark. There are no known valuable minerals on it.

In 1973, the two countries agreed on a sea border right through the strait, halfway between the coasts. Just one problem: Hans Island was in the way, and nobody could agree who owned it. So they postponed the question.

## Flags, schnapps and whisky

In 1984, Denmark''s minister for Greenland affairs, Tom Høyem, visited the island, raised a Danish flag and left a bottle of schnapps with a note: "Welcome to the Danish island." Canadians later answered with their own flag and a bottle of Canadian whisky (some reports say brandy). Over the years, both sides kept swapping flags and bottles. The media called it the "whisky war".

It did get a bit tense. In 2005, Canada''s defence minister Bill Graham landed on the island unannounced, and Denmark lodged a formal complaint. Both countries also sent warships, but there was never a risk of an actual fight. That same year, the two sides started talking.

## A border across the middle

On 14 June 2022, after 49 years without an answer, Canada and Denmark agreed to divide the island. The new line follows a natural ravine and is only about a kilometre long. According to WorldAtlas, Greenland got about 60 percent of the island and Canada about 40 percent. At the signing, the foreign ministers swapped bottles one last time. Denmark''s parliament ratified the deal in December 2023.

> Bonus fact: In Greenlandic, the island is called Tartupaluk, which means "kidney-shaped".

Greenland, the largest island on Earth, got its first ever land border out of the deal, and Canada got a land neighbour other than the United States.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hans-island-whisky-war', 'en', 1, 'Scratch-off world map poster', 'scratch off world map poster', 'Big wall map where you can mark every country you have visited.'),
  ('hans-island-whisky-war', 'en', 2, 'Illuminated political globe', 'illuminated political globe', 'A desk globe that shows country borders and doubles as a lamp.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hans-island-whisky-war', 'en', 1, 'Anchorage Daily News: Canada and Denmark reach deal to end 49-year feud over Arctic rock island', 'https://www.adn.com/nation-world/2022/06/15/canada-and-denmark-reach-deal-to-end-49-year-feud-over-arctic-rock-island/'),
  ('hans-island-whisky-war', 'en', 2, 'WorldAtlas: Canada, Denmark, and the Arctic''s Strangest Territorial Dispute The Whisky War', 'https://www.worldatlas.com/geography/the-whisky-war-of-hans-island.html'),
  ('hans-island-whisky-war', 'en', 3, 'BNN Bloomberg: Canada and Denmark End Arctic ''Whiskey War'' With New Land Border', 'https://www.bnnbloomberg.ca/canada-and-denmark-end-arctic-whiskey-war-with-new-land-border-1.1778827');
