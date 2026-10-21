-- WTFact-Fakt „In Massachusetts kostete Weihnachtsfeiern 22 Jahre lang eine Strafe“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('massachusetts-christmas-ban', '2026-12-09T00:00:00+01:00', 'history', '🚫', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'massachusetts-christmas-ban', 'de', 'massachusetts-verbot-weihnachten',
  'In Massachusetts kostete Weihnachtsfeiern 22 Jahre lang eine Strafe',
  'Kein Festessen, kein freier Tag. Wer trotzdem feierte, musste zahlen.',
  'Von 1659 bis 1681 war Weihnachten feiern in der Kolonie Massachusetts verboten, wer es trotzdem tat, zahlte fünf Schilling Strafe.',
  'Stell dir vor, du hast am 25. Dezember frei, isst gut und wirst dafür bestraft. Genau das stand in Massachusetts im Gesetz, und zwar 22 Jahre lang.

## Die Puritaner und das Fest

Die Kolonie Massachusetts Bay wurde von Puritanern geprägt, sehr strengen Protestanten. Für sie stand Weihnachten nirgends in der Bibel, und ein genaues Geburtsdatum von Jesus nennt sie tatsächlich nicht. Das Fest galt ihnen als Erfindung, und noch schlimmer: als Anlass für Saufgelage, Lärm und Unordnung.

Im Mai 1659 machte das Parlament der Kolonie, der General Court, Ernst. Laut Mass Moments wurde bestraft, wer „irgendeinen solchen Tag wie Weihnachten“ beging, sei es durch „Arbeitsruhe, Festessen oder auf irgendeine andere Weise“. Die Strafe: fünf Schilling pro Verstoß, zu zahlen an das County.

## Druck aus London

Mit dieser Haltung war Massachusetts nicht allein. Laut History.com hatten die Puritaner auch in England nach dem Sturz von König Charles I. Weihnachten unterdrückt. Doch in England kam das Fest mit dem neuen König schnell zurück, in Neuengland hielt das Verbot länger.

Erst 1681 kippte die Kolonie das Gesetz, zusammen mit einigen anderen, auf Druck der Regierung in London. Beliebt wurde das Fest damit noch lange nicht. Laut History.com wurde Weihnachten in Massachusetts erst 1856 ein offizieller Feiertag. Die Puritaner hatten ihre Spuren hinterlassen.

> Bonusfakt: Schon die Arbeitsruhe zählte als Verstoß. Wer am 25. Dezember einfach nicht arbeitete, konnte laut dem Gesetzestext bestraft werden, auch ganz ohne Festessen.

Ausgerechnet dort, wo heute riesige Weihnachtsmärkte und Lichtershows stehen, war das Fest einmal ein Fall fürs Gericht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('massachusetts-christmas-ban', 'de', 1, 'Buch über die Geschichte Neuenglands', 'Buch Geschichte Neuengland Puritaner', 'Erzählt die Anfänge der Kolonien in Nordamerika.'),
  ('massachusetts-christmas-ban', 'de', 2, 'Buch über Weihnachtsbräuche weltweit', 'Buch Weihnachtsbräuche weltweit', 'Zeigt, wie unterschiedlich das Fest gefeiert wird und wurde.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('massachusetts-christmas-ban', 'de', 1, 'Mass Moments: Christmas Celebration Outlawed', 'https://www.massmoments.org/moment-details/christmas-celebration-outlawed.html'),
  ('massachusetts-christmas-ban', 'de', 2, 'History.com: When Massachusetts Banned Christmas', 'https://www.history.com/articles/when-massachusetts-banned-christmas');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'massachusetts-christmas-ban', 'en', 'massachusetts-banned-christmas',
  'Celebrating Christmas in Massachusetts got you fined for 22 years',
  'No feast, no day off. Anyone who celebrated anyway had to pay.',
  'From 1659 to 1681, celebrating Christmas was banned in the Massachusetts Bay Colony, and anyone caught doing it paid a five-shilling fine.',
  'Imagine taking 25 December off, eating well, and getting fined for it. That was the law in Massachusetts, for 22 years.

## The Puritans and the holiday

The Massachusetts Bay Colony was shaped by Puritans, very strict Protestants. For them, Christmas appeared nowhere in the Bible. They saw the holiday as a human invention, and worse: an excuse for drinking, noise and disorder.

In May 1659, the colony''s General Court got serious. According to Mass Moments, anyone found observing "any such day as Christmas or the like, either by forbearing of labor, feasting, or any other way" would be punished. The penalty: five shillings for each offense, paid to the county.

## Pressure from London

Massachusetts wasn''t alone in this attitude. History.com notes that the Puritans had also suppressed Christmas in England after King Charles I was overthrown. But in England the holiday came back quickly under the new king, while in New England the ban lasted longer.

Only in 1681 did the colony repeal the law, along with several others, under pressure from the government in London. That didn''t make the holiday popular overnight. According to History.com, Christmas only became a public holiday in Massachusetts in 1856. The Puritans had left their mark.

> Bonus fact: Simply taking the day off counted. Under the wording of the law, anyone who just didn''t work on 25 December could be fined, feast or no feast.

The very place that now has huge Christmas markets and light shows once treated the holiday as a matter for the courts.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('massachusetts-christmas-ban', 'en', 1, 'History of New England book', 'history of New England Puritans book', 'Tells the story of the early colonies in North America.'),
  ('massachusetts-christmas-ban', 'en', 2, 'Book on Christmas traditions around the world', 'christmas traditions around the world book', 'Shows how differently the holiday is and was celebrated.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('massachusetts-christmas-ban', 'en', 1, 'Mass Moments: Christmas Celebration Outlawed', 'https://www.massmoments.org/moment-details/christmas-celebration-outlawed.html'),
  ('massachusetts-christmas-ban', 'en', 2, 'History.com: When Massachusetts Banned Christmas', 'https://www.history.com/articles/when-massachusetts-banned-christmas');
