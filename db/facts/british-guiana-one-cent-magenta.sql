-- WTFact-Fakt „Eine Briefmarke für einen Cent wurde für 8,3 Millionen Dollar verkauft“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('british-guiana-one-cent-magenta', '2026-10-23T10:00:00+02:00', 'money', '✉️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'british-guiana-one-cent-magenta', 'de', 'british-guiana-ein-cent-magenta',
  'Eine Briefmarke für einen Cent wurde für 8,3 Millionen Dollar verkauft',
  'Achteckig, verschmiert, bekritzelt. Und die wertvollste Briefmarke der Welt.',
  'Die „British Guiana 1c Magenta“ von 1856 ist die einzige ihrer Art. 2021 kaufte sie der Händler Stanley Gibbons für rund 8,3 Millionen Dollar.',
  'Schön ist sie nicht. Sie ist trüb dunkelrot, achteckig zugeschnitten und mit Tinte bekritzelt. Trotzdem nennen Sammler sie die „Mona Lisa der Briefmarken“.

## Ein Cent mit Geschichte

Die „British Guiana 1c Magenta“ stammt aus dem Jahr 1856 und kommt aus der damaligen britischen Kolonie Britisch-Guayana in Südamerika. Laut „Euronews“ ist sie die einzige ihrer Art. Es gibt also genau ein Exemplar auf der ganzen Welt.

Ihr Weg durch die Geschichte ist fast so seltsam wie ihr Preis. Laut NPR wurde sie von einem 12-jährigen Jungen entdeckt. 1920 beschlagnahmte Frankreich sie als Reparation von Deutschland. Später gehörte sie dem US-Erben John du Pont, der sie sogar noch besaß, als er im Gefängnis saß.

## Teurer und wieder billiger

2014 wurde die Marke bei Sotheby’s für 9,5 Millionen Dollar versteigert. Käufer war der Schuhdesigner Stuart Weitzman. 2021 brachte er sie erneut bei Sotheby’s unter den Hammer, erwartet wurden rund 15 Millionen Dollar.

Am Ende zahlte der Briefmarkenhändler Stanley Gibbons laut „Euronews“ insgesamt rund 8,3 Millionen Dollar, also umgerechnet etwa 6,3 Millionen britische Pfund. Weniger als beim letzten Mal, aber immer noch genug, um sie zur wertvollsten Briefmarke der Welt zu machen.

> Bonusfakt: Nach dem Kauf stellte Stanley Gibbons die Marke in London aus, damit jeder sie einmal mit eigenen Augen sehen kann.

Zur Einordnung: Ein Cent auf der Marke, 8,3 Millionen Dollar an der Kasse. Kaum ein anderes Stück Papier hat eine so absurde Wertsteigerung hinter sich.

Wer also zu Hause eine Kiste mit alten Briefen hat, darf ruhig mal genauer hinsehen. Die Chancen sind winzig, aber ein Junge mit 12 Jahren hatte auch kein Glück erwartet.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('british-guiana-one-cent-magenta', 'de', 1, 'Briefmarken-Einsteigerset mit Album', 'Briefmarken Sammelset Einsteiger Album', 'Alles, um mit dem Briefmarkensammeln anzufangen.'),
  ('british-guiana-one-cent-magenta', 'de', 2, 'Lupe für Sammler', 'Sammlerlupe beleuchtet', 'Zeigt jedes Detail auf Marken, Münzen und Scheinen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('british-guiana-one-cent-magenta', 'de', 1, 'Euronews: The ‘Mona Lisa’ of stamps, worth $8 million, goes on display in London', 'https://www.euronews.com/2021/11/10/the-mona-lisa-of-stamps-worth-8-million-goes-on-display-in-london'),
  ('british-guiana-one-cent-magenta', 'de', 2, 'NPR: Sotheby’s To Auction Rare Stamp That Last Sold For $9.5 Million', 'https://www.npr.org/2021/06/07/1003872824/sothebys-to-auction-rare-stamp-that-last-sold-for-9-5-million');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'british-guiana-one-cent-magenta', 'en', 'british-guiana-one-cent-magenta',
  'A one-cent stamp sold for 8.3 million dollars',
  'Eight-sided, smudged, scribbled on. And the most valuable stamp in the world.',
  'The "British Guiana 1c Magenta" from 1856 is the only one of its kind. In 2021, the dealer Stanley Gibbons bought it for about 8.3 million dollars.',
  'It isn’t pretty. It’s a murky dark red, cut into an octagon and scribbled on in ink. Collectors still call it the "Mona Lisa of stamps".

## One cent with a history

The "British Guiana 1c Magenta" dates from 1856 and comes from what was then the British colony of British Guiana in South America. According to Euronews, it is the only one of its kind. There is exactly one copy in the whole world.

Its path through history is almost as strange as its price. According to NPR, it was unearthed by a 12-year-old boy. In 1920, France seized it as reparations from Germany. Later it belonged to US heir John du Pont, who still owned it while he was in prison.

## More expensive, then cheaper

In 2014, the stamp sold at Sotheby’s for 9.5 million dollars. The buyer was shoe designer Stuart Weitzman. In 2021, he put it up for auction at Sotheby’s again, with an expected price of around 15 million dollars.

In the end, according to Euronews, stamp dealer Stanley Gibbons paid a total of about 8.3 million dollars, roughly 6.3 million British pounds. Less than last time, but still enough to make it the most valuable stamp in the world.

> Bonus fact: After buying it, Stanley Gibbons put the stamp on display in London so anyone could see it with their own eyes.

For perspective: one cent printed on the stamp, 8.3 million dollars at the till. Hardly any other piece of paper has gone through such an absurd jump in value.

So if you have a box of old letters at home, it’s worth a closer look. The odds are tiny, but a 12-year-old boy wasn’t expecting much luck either.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('british-guiana-one-cent-magenta', 'en', 1, 'Stamp collecting starter kit with album', 'stamp collecting starter kit album', 'Everything you need to start collecting stamps.'),
  ('british-guiana-one-cent-magenta', 'en', 2, 'Collector’s magnifier', 'illuminated magnifier collectors', 'Shows every detail on stamps, coins and bills.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('british-guiana-one-cent-magenta', 'en', 1, 'Euronews: The ‘Mona Lisa’ of stamps, worth $8 million, goes on display in London', 'https://www.euronews.com/2021/11/10/the-mona-lisa-of-stamps-worth-8-million-goes-on-display-in-london'),
  ('british-guiana-one-cent-magenta', 'en', 2, 'NPR: Sotheby’s To Auction Rare Stamp That Last Sold For $9.5 Million', 'https://www.npr.org/2021/06/07/1003872824/sothebys-to-auction-rare-stamp-that-last-sold-for-9-5-million');
