-- WTFact-Fakt „Jeanne Calment wurde 122 Jahre alt und überlebte sogar den Käufer ihrer Wohnung“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('jeanne-calment-122-years', '2026-10-23T10:00:00+02:00', 'records', '🎂', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'jeanne-calment-122-years', 'de', 'jeanne-calment-122-jahre',
  'Jeanne Calment wurde 122 Jahre alt und überlebte sogar den Käufer ihrer Wohnung',
  'Ein Anwalt kaufte ihre Wohnung auf Rente und wartete. Und wartete. Und wartete.',
  'Die Französin Jeanne Calment lebte 122 Jahre und 164 Tage. Laut Guinness World Records ist sie der älteste Mensch, dessen Alter zweifelsfrei belegt ist.',
  'Wer 1875 geboren wurde, kam in eine Welt ohne Autos, Flugzeuge und Radio. Jeanne Calment erlebte all das und noch viel mehr. Sie wurde 122 Jahre alt.

## Ein Leben über drei Jahrhunderte

Jeanne Calment wurde 1875 im französischen Arles geboren und starb dort 1997. Laut Guinness World Records lebte sie 122 Jahre und 164 Tage. Damit ist sie bis heute der älteste Mensch, dessen Alter offiziell bestätigt ist.

Laut Guinness traf sie als junge Frau sogar den Maler Vincent van Gogh, als er in Arles lebte. Und sie war ziemlich sportlich: Fahrrad fuhr sie laut Guinness noch, bis sie 100 war.

## Das schlechteste Geschäft der Welt

Berühmt ist Jeanne Calment auch wegen eines Deals. In Frankreich gibt es eine besondere Art, eine Wohnung zu kaufen, die „Viager“. Der Käufer zahlt dem Besitzer eine monatliche Rente, der Besitzer darf bis zu seinem Tod in der Wohnung bleiben. Danach gehört sie dem Käufer.

1965 schloss Calment einen solchen Vertrag mit dem damals 47-jährigen Anwalt André-François Raffray. Laut Guinness zahlte er ihr 2.500 Francs im Monat. Calment war damals 90 Jahre alt, das Geschäft schien also bald vorbei zu sein.

Doch es kam anders. Raffray zahlte und zahlte. Er starb 1995, zwei Jahre vor Calment. Laut „The Local“ hatte er bis dahin mehr als das Doppelte des Wohnungswerts gezahlt.

> Bonusfakt: Laut „The Local“ ist die Viager in Frankreich bis heute beliebt. Viele Wohnungen werden ganz offiziell „en viager“ angeboten.

Raffray hat die Wohnung, für die er so viel bezahlt hat, nie selbst bewohnt. Calment überlebte ihn um zwei Jahre.

Ihr Alter von 122 Jahren hat seitdem niemand erreicht. Und der Fall Raffray gilt bis heute als eines der unglücklichsten Immobiliengeschäfte aller Zeiten.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('jeanne-calment-122-years', 'de', 1, 'Guinness World Records Buch', 'Guinness World Records Buch', 'Noch mehr Rekorde rund um Menschen, die alles übertreffen.'),
  ('jeanne-calment-122-years', 'de', 2, 'Reiseführer Provence', 'Reiseführer Provence Arles', 'Für einen Besuch in Arles, der Heimat von Jeanne Calment.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('jeanne-calment-122-years', 'de', 1, 'Guinness World Records: Oldest person ever: 122-year-old Jeanne Calment’s extraordinary life', 'https://guinnessworldrecords.com/news/2024/2/oldest-person-ever-122-year-old-jeanne-calments-extraordinary-life-765016'),
  ('jeanne-calment-122-years', 'de', 2, 'The Local France: Can you really buy an ‘occupied’ property in France and then wait for the owner to die?', 'https://www.thelocal.fr/20240610/can-you-really-buy-an-occupied-property-in-france-and-then-wait-for-the-owner-to-die');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'jeanne-calment-122-years', 'en', 'jeanne-calment-122-years',
  'Jeanne Calment lived to 122 and even outlived the man who bought her apartment',
  'A lawyer bought her apartment on an annuity and waited. And waited. And waited.',
  'Frenchwoman Jeanne Calment lived 122 years and 164 days. According to Guinness World Records, she’s the oldest person whose age is beyond doubt.',
  'Anyone born in 1875 came into a world without cars, planes or radio. Jeanne Calment saw all of that arrive and much more. She lived to 122.

## A life across three centuries

Jeanne Calment was born in 1875 in Arles, France, and died there in 1997. According to Guinness World Records, she lived 122 years and 164 days. That still makes her the oldest person whose age has been officially confirmed.

According to Guinness, as a young woman she even met the painter Vincent van Gogh when he lived in Arles. And she was pretty active: according to Guinness, she rode a bike until she was 100.

## The worst deal in the world

Jeanne Calment is also famous for a deal. In France, there’s a special way to buy a home called a "viager". The buyer pays the owner a monthly income, and the owner gets to stay in the home until they die. After that, it belongs to the buyer.

In 1965, Calment signed such a contract with the lawyer André-François Raffray, then 47. According to Guinness, he paid her 2,500 francs a month. Calment was 90 at the time, so the deal seemed likely to end soon.

It didn’t. Raffray paid and paid. He died in 1995, two years before Calment. According to The Local, by then he had paid more than double the apartment’s value.

> Bonus fact: According to The Local, the viager is still popular in France. Plenty of homes are advertised "en viager".

Raffray never lived in the apartment he paid so much for. Calment outlived him by two years.

Nobody has reached her age of 122 since. And the Raffray case is still considered one of the unluckiest property deals of all time.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('jeanne-calment-122-years', 'en', 1, 'Guinness World Records book', 'Guinness World Records book', 'Even more records about people who outdo everyone.'),
  ('jeanne-calment-122-years', 'en', 2, 'Provence travel guide', 'Provence Arles travel guide', 'For a visit to Arles, Jeanne Calment’s hometown.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('jeanne-calment-122-years', 'en', 1, 'Guinness World Records: Oldest person ever: 122-year-old Jeanne Calment’s extraordinary life', 'https://guinnessworldrecords.com/news/2024/2/oldest-person-ever-122-year-old-jeanne-calments-extraordinary-life-765016'),
  ('jeanne-calment-122-years', 'en', 2, 'The Local France: Can you really buy an ‘occupied’ property in France and then wait for the owner to die?', 'https://www.thelocal.fr/20240610/can-you-really-buy-an-occupied-property-in-france-and-then-wait-for-the-owner-to-die');
