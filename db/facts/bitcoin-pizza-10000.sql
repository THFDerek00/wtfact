-- WTFact-Fakt „Jemand bezahlte 2 Pizzen mit 10.000 Bitcoin“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('bitcoin-pizza-10000', '2026-10-21T21:00:00+02:00', 'money', '🍕', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bitcoin-pizza-10000', 'de', 'bitcoin-pizza-10000',
  'Jemand bezahlte 2 Pizzen mit 10.000 Bitcoin',
  'Damals rund 41 Dollar. Ein paar Jahre später ein Vermögen. Der Käufer bereut trotzdem nichts.',
  'Am 22. Mai 2010 bezahlte der Programmierer Laszlo Hanyecz 2 Pizzen mit 10.000 Bitcoin. Es war der erste Kauf eines echten Produkts mit Bitcoin, die Coins waren damals rund 41 Dollar wert.',
  'Die teuerste Pizzabestellung der Welt hat nicht in einem Sternerestaurant stattgefunden, sondern in einem Internetforum. Und am Ende kamen ganz normale Pizzen.

## Ein Angebot im Forum

Im Mai 2010 war Bitcoin ein Spielzeug für Nerds. Man konnte die Coins herstellen und hin- und herschicken, aber kaum etwas damit kaufen. Der US-Programmierer Laszlo Hanyecz wollte das ändern.

Er schrieb ins Forum Bitcointalk, er zahle 10.000 Bitcoin für ein paar Pizzen. Laut TechCrunch lautete sein Satz: „Ich zahle 10.000 Bitcoins für ein paar Pizzas.“ Am 22. Mai 2010 nahm jemand das Angebot an, bestellte für rund 25 Dollar 2 große Pizzen und ließ sie Hanyecz in Jacksonville liefern. Dafür bekam er die 10.000 Bitcoin.

Laut Guinness World Records war das der erste kommerzielle Bitcoin-Kauf, also das erste Mal, dass jemand mit Bitcoin ein echtes Produkt bezahlt hat. Die Coins waren damals rund 41 Dollar wert.

## Ein Kurs, der durch die Decke ging

Dann stieg Bitcoin. Und stieg. Laut TechCrunch waren die 10.000 Coins auf einem Höhepunkt 2013 schon rund sechs Millionen Dollar wert. Guinness rechnete im Februar 2022 nach und kam auf über 350 Millionen Dollar.

Hanyecz selbst sagt, er bereue den Kauf nicht. Irgendwer musste ja anfangen, Bitcoin tatsächlich auszugeben.

> Bonusfakt: Der 22. Mai wird in der Bitcoin-Szene bis heute als „Bitcoin Pizza Day“ gefeiert, mit Pizza natürlich.

Die Geschichte zeigt, wie seltsam neues Geld am Anfang ist. Niemand wusste, was ein Bitcoin wert sein sollte, also handelte man ihn eben gegen das, was man gerade wollte. In diesem Fall: Abendessen.

Rechnet man den Wert von 2022 auf zwei Pizzen um, war das eine Mahlzeit für über 175 Millionen Dollar pro Stück. Hoffentlich war ordentlich Käse drauf.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bitcoin-pizza-10000', 'de', 1, 'Pizzastein für den Backofen', 'Pizzastein Backofen', 'Macht Pizza mit knusprigem Boden zu Hause, ganz ohne Kryptowährung.'),
  ('bitcoin-pizza-10000', 'de', 2, 'Sachbuch über die Geschichte von Bitcoin', 'Buch Geschichte Bitcoin', 'Erzählt, wie aus einem Forum-Experiment eine Weltwährung wurde.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bitcoin-pizza-10000', 'de', 1, 'Guinness World Records: First commercial Bitcoin transaction', 'https://guinnessworldrecords.com/world-records/696240-first-commercial-bitcoin-transaction'),
  ('bitcoin-pizza-10000', 'de', 2, 'TechCrunch: May 22 Is Bitcoin Pizza Day', 'https://techcrunch.com/2014/05/21/may-22-is-bitcoin-pizza-day');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'bitcoin-pizza-10000', 'en', 'bitcoin-pizza-10000',
  'Someone paid 10,000 bitcoins for 2 pizzas',
  'Worth about 41 dollars back then. A fortune a few years later. The buyer still has no regrets.',
  'On May 22, 2010, programmer Laszlo Hanyecz paid 10,000 bitcoins for 2 pizzas. It was the first time bitcoin was used to buy a real product, and the coins were worth about 41 dollars at the time.',
  'The most expensive pizza order in the world didn’t happen at a fancy restaurant, it happened on an internet forum. And in the end, completely normal pizzas showed up.

## An offer on a forum

In May 2010, bitcoin was a toy for nerds. You could create the coins and send them around, but there was hardly anything you could buy with them. US programmer Laszlo Hanyecz wanted to change that.

He posted on the Bitcointalk forum that he’d pay 10,000 bitcoins for some pizza. According to TechCrunch, his words were: "I’ll pay 10,000 bitcoins for a couple of pizzas." On May 22, 2010, someone took him up on it, ordered 2 large pizzas for about 25 dollars and had them delivered to Hanyecz in Jacksonville. In return, they got the 10,000 bitcoins.

According to Guinness World Records, it was the first commercial bitcoin transaction, the first time someone paid for a real product with bitcoin. The coins were worth about 41 dollars at the time.

## A price that went through the roof

Then bitcoin rose. And rose. According to TechCrunch, the 10,000 coins were already worth about six million dollars at a peak in 2013. Guinness did the math in February 2022 and came up with more than 350 million dollars.

Hanyecz himself says he doesn’t regret the purchase. Someone had to start actually spending bitcoin.

> Bonus fact: May 22 is still celebrated as "Bitcoin Pizza Day" in the bitcoin world, with pizza, of course.

The story shows how strange new money is at the start. Nobody knew what a bitcoin should be worth, so you traded it for whatever you wanted at the time. In this case: dinner.

At 2022 prices, that works out to more than 175 million dollars per pizza. Hopefully there was plenty of cheese.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('bitcoin-pizza-10000', 'en', 1, 'Pizza stone for the oven', 'pizza stone oven', 'Makes crispy-crust pizza at home, no cryptocurrency required.'),
  ('bitcoin-pizza-10000', 'en', 2, 'Book about the history of bitcoin', 'book history of bitcoin', 'Tells how a forum experiment turned into a global currency.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('bitcoin-pizza-10000', 'en', 1, 'Guinness World Records: First commercial Bitcoin transaction', 'https://guinnessworldrecords.com/world-records/696240-first-commercial-bitcoin-transaction'),
  ('bitcoin-pizza-10000', 'en', 2, 'TechCrunch: May 22 Is Bitcoin Pizza Day', 'https://techcrunch.com/2014/05/21/may-22-is-bitcoin-pizza-day');
