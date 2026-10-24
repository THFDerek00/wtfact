-- WTFact-Fakt „1834 setzte das Verbrennen alter Kerbhölzer das britische Parlament in Brand“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('tally-sticks-burned-parliament', '2026-10-29T12:00:00+01:00', 'money', '🔥', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tally-sticks-burned-parliament', 'de', 'kerbhoelzer-brannten-parlament-nieder',
  '1834 setzte das Verbrennen alter Kerbhölzer das britische Parlament in Brand',
  'Englands Regierung hat jahrhundertelang auf eingekerbten Stöcken Buch geführt, und ihre Entsorgung ging spektakulär schief.',
  'Am 16. Oktober 1834 verbrannten Arbeiter etwa zwei Karrenladungen ausgedienter Kerbhölzer des Schatzamts in den Öfen unter dem House of Lords, und die überhitzten Abzüge setzten den Palace of Westminster in Brand.',
  'Bevor es Tabellen und Kassenbücher aus Papier gab, behielt die englische Regierung ihr Geld mit Stöcken im Blick. Als sie die endlich wegwarf, war auch ihr Parlament weg.

## Geld zum Durchbrechen

Kerbhölzer, auf Englisch „tally sticks“, waren die Quittungen des Exchequer, des Schatzamts, für Staatseinnahmen, und zwar mindestens seit dem 12. Jahrhundert. Meist war so ein Kerbholz aus Weidenholz. Eingeschnittene Kerben hielten eine Zahlung oder Schuld fest, dann wurde der Stock der Länge nach gespalten. Die Krone behielt eine Hälfte, den „stock“, die andere Seite bekam den „foil“.

Der Trick: Wegen der Maserung passten die beiden Hälften nur zueinander. Ein passendes Gegenstück zu fälschen war praktisch unmöglich, das System war also erstaunlich fälschungssicher.

Ein Gesetz von 1782 schrieb vor, Buch auf Papier zu führen, ganz durchgesetzt war das aber erst 1826. Papier hatte gewonnen, die alten Stöcke stapelten sich. Übrig blieben etwa zwei Karrenladungen.

## Weg mit den Belegen

1834 sollte der Bauverwalter Richard Weobley sie loswerden. Statt sie den Bediensteten als Brennholz zu überlassen, ließ er sie in den Öfen unter dem House of Lords verbrennen. Am 16. Oktober schoben zwei Arbeiter, Joshua Cross und Patrick Furlong, den ganzen Tag lang Stöcke ins Feuer.

Die Öfen waren für Kohle gebaut, die heiß mit kleiner Flamme brennt. Trockenes Holz brennt mit hoher Flamme. Die Abzüge überhitzten, ihre Kupferverkleidung schmolz und das Holz hinter den Wänden fing Feuer. Gegen 18 Uhr sah man die ersten Flammen, um 18:30 Uhr schoss ein Feuerball durchs Dach, der angeblich bis Windsor Castle zu sehen war.

Am Morgen war das House of Lords zerstört und das House of Commons schwer beschädigt. Westminster Hall und der Jewel Tower blieben stehen, und niemand kam ums Leben. Eine offizielle Untersuchung nannte später das Verbrennen der Kerbhölzer als Ursache. Der Maler J. M. W. Turner hielt den Brand später auf zwei Gemälden fest.

> Bonusfakt: Das Feuer vernichtete auch die offiziellen Normale für Yard und Pfund, also Großbritanniens amtliche Referenzmaße für Länge und Gewicht.

Der Palace of Westminster, den du heute von Fotos kennst, steht also nur, weil jemand die alten Quittungen der Regierung aufgeräumt hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tally-sticks-burned-parliament', 'de', 1, 'Illustriertes Buch zur Geschichte des Geldes', 'Geschichte des Geldes Buch illustriert', 'Zeigt, wie Menschen vor Münzen und Karten bezahlt und abgerechnet haben.'),
  ('tally-sticks-burned-parliament', 'de', 2, '3D-Puzzle Palace of Westminster', '3D Puzzle Palace of Westminster Big Ben', 'Damit baust du das berühmte Gebäude auf dem Schreibtisch nach, ganz ohne Ofen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tally-sticks-burned-parliament', 'de', 1, 'UK Parliament: Tally Sticks', 'https://www.parliament.uk/about/living-heritage/building/palace/estatehistory/from-the-parliamentary-collections/fire-of-westminster/tallysticks/'),
  ('tally-sticks-burned-parliament', 'de', 2, 'Amusing Planet: The Burning of The Parliament, 1834', 'https://www.amusingplanet.com/2026/04/the-burning-of-parliament-1834.html'),
  ('tally-sticks-burned-parliament', 'de', 3, 'Wikipedia: Burning of Parliament', 'https://en.wikipedia.org/wiki/Burning_of_Parliament');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'tally-sticks-burned-parliament', 'en', 'tally-sticks-burned-down-parliament',
  'In 1834, burning old wooden receipts set the British Parliament on fire',
  'England''s government kept its accounts on notched sticks for centuries, and getting rid of them went spectacularly wrong.',
  'On 16 October 1834, workmen burned about two cartloads of obsolete Exchequer tally sticks in the furnaces under the House of Lords, and the overheated flues set the Palace of Westminster on fire.',
  'Before spreadsheets and paper ledgers, the English government kept track of its money with sticks. When it finally threw them away, it lost its Parliament too.

## Money you could snap in half

Tally sticks were the Exchequer''s receipts for government income, in use since at least the 12th century. A tally was usually a piece of willow. Notches cut into it recorded a payment or a debt, and then the stick was split lengthwise. The Crown kept one half, the stock, and the other party got the foil.

The trick: the grain of the wood meant the two halves only fit each other. Faking a matching half was practically impossible, which made the system surprisingly forgery-proof.

An act from 1782 ordered that records be kept on paper, but it only took full effect in 1826. Paper won, and the old sticks piled up. About two cartloads were left over.

## Burning the evidence

In 1834, the Clerk of Works, Richard Weobley, had to get rid of them. Instead of giving the wood away to staff as fuel, he had them burned in the furnaces beneath the House of Lords. On 16 October, two workmen, Joshua Cross and Patrick Furlong, fed the sticks into the fires all day.

Those furnaces were built for coal, which burns hot with a small flame. Dry wood burns with a tall flame. The flues overheated, their copper lining melted and the woodwork behind the walls caught fire. Flames were spotted at around 6 p.m., and by 6:30 a fireball burst through the roof, reportedly visible from Windsor Castle.

By morning, the House of Lords was destroyed and the House of Commons badly damaged. Westminster Hall and the Jewel Tower survived, and nobody died. An official inquiry later named the burning of the tallies as the cause. The painter J. M. W. Turner later made two paintings of the fire.

> Bonus fact: The fire also destroyed the official standard yard and standard pound, Britain''s official reference measures for length and weight.

So the Palace of Westminster you see in photos today exists because someone cleaned out the government''s old receipts.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('tally-sticks-burned-parliament', 'en', 1, 'Illustrated history of money book', 'history of money illustrated book', 'Explains how people paid and kept accounts before coins and cards.'),
  ('tally-sticks-burned-parliament', 'en', 2, 'Palace of Westminster 3D puzzle', 'Palace of Westminster 3D puzzle', 'Lets you rebuild the famous building on your desk, no furnace needed.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('tally-sticks-burned-parliament', 'en', 1, 'UK Parliament: Tally Sticks', 'https://www.parliament.uk/about/living-heritage/building/palace/estatehistory/from-the-parliamentary-collections/fire-of-westminster/tallysticks/'),
  ('tally-sticks-burned-parliament', 'en', 2, 'Amusing Planet: The Burning of The Parliament, 1834', 'https://www.amusingplanet.com/2026/04/the-burning-of-parliament-1834.html'),
  ('tally-sticks-burned-parliament', 'en', 3, 'Wikipedia: Burning of Parliament', 'https://en.wikipedia.org/wiki/Burning_of_Parliament');
