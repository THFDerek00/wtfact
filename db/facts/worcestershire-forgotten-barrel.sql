-- WTFact-Fakt „Worcestershire-Soße soll als missglückte Mischung entstanden sein, die 18 Monate im Keller vergessen wurde“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('worcestershire-forgotten-barrel', '2026-11-02T12:00:00+01:00', 'food', '🍶', 0, 2);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'worcestershire-forgotten-barrel', 'de', 'worcestershire-sosse-vergessenes-fass',
  'Worcestershire-Soße soll als missglückte Mischung entstanden sein, die 18 Monate im Keller vergessen wurde',
  'Zwei Chemiker rührten eine Soße an, die keiner mochte, stellten sie weg und hatten, so die Legende, plötzlich einen Hit.',
  'Laut der bekannten Entstehungsgeschichte ließen die Chemiker John Lea und William Perrins eine Soße, die ihrem Auftraggeber nicht schmeckte, im Keller stehen, vergaßen sie etwa 18 Monate lang und stellten dann fest, dass die Reifung sie verbessert hatte.',
  'Worcestershire-Soße hat einen Namen, an dem sich viele die Zunge brechen, und einen würzig-herzhaften Kick. Ihre Entstehungsgeschichte ist noch schräger: Wenn die Legende stimmt, gibt es die Soße nur, weil zwei Chemiker einen Fehlschlag vergessen haben.

## Eine Soße, die keiner mochte

Im England des frühen 19. Jahrhunderts waren sogenannte „Store Sauces“ in Mode, also Würzsoßen, die man in der Vorratskammer aufbewahren konnte. Laut Britannica bat ein ehemaliger Gouverneur von Bengalen zwei Chemiker in Worcester, John Wheeley Lea und William Henry Perrins, eine Soße nach einem Rezept anzurühren, das er aus Indien mitgebracht hatte.

Das ging schief. Britannica schreibt, das Ergebnis habe dem Auftraggeber nicht gefallen. In der Version, die Julia Fine im History News Network zitiert, war die Mischung so feurig, dass den beiden die Augen tränten. Laut Tasting Table hatte der erste Versuch einen strengen, unangenehmen Geruch und Geschmack.

## Vergessen, dann berühmt

Der Geschichte nach landete das Fass im Keller, und alle vergaßen es. Als Lea und Perrins es etwa 18 Monate später wieder probierten, hatte die Reifung es verbessert. Tasting Table beschreibt den wiederentdeckten Geschmack als angenehm, komplex und fermentiert. Britannica nennt für die Urfassung Tamarinde, Sojasoße, Knoblauch, rote Zwiebeln, Sardellen und Gewürze.

Danach lief das Geschäft. Laut History News Network hatten die beiden bis 1845 eine Fabrik in Worcester und verkauften bis 1855 über 30.000 Flaschen im Jahr. Tasting Table ergänzt, dass die Soße 1839 in die USA exportiert wurde und heute in über 130 Ländern verkauft wird.

> Bonusfakt: Laut Tasting Table konnten sich Lea und Perrins nie eine Marke auf die Soße selbst sichern, deshalb kamen schnell Nachahmer. Immerhin bekam die Firma 1904 einen Royal Warrant, also den Titel als Hoflieferant.

## Vielleicht nur gutes Marketing

Der Haken: Beweisen kann die Kellergeschichte niemand. Das History News Network weist darauf hin, dass Kleinanzeigen von 1840 nur einen namenlosen „Adligen“ erwähnen und erst ein Zeitschriftenartikel von 1867 einen Lord Sandys nennt, wobei verschiedene Artikel sogar auf zwei verschiedene Männer zeigen. Ein Archäologe nennt die Geschichte „company lore“, also Firmenfolklore, und ein Sprecher von Lea & Perrins räumte ein, sie sei womöglich „not God''s own truth“, also nicht die reine Wahrheit.

Ob wahr oder nicht: Es ist wohl eines der wenigen Rezepte, deren geheimer Schritt angeblich darin besteht, es anderthalb Jahre zu vergessen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('worcestershire-forgotten-barrel', 'de', 1, 'Glasflaschen-Set mit Bügelverschluss', 'Glasflaschen Bügelverschluss klein Set', 'Praktisch für selbst gemachte Dressings, Marinaden und Kräuteressig.'),
  ('worcestershire-forgotten-barrel', 'de', 2, 'Fermentier-Kochbuch', 'Fermentieren Buch', 'Erklärt, wie Zeit und Mikroben aus einfachen Zutaten viel Geschmack machen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('worcestershire-forgotten-barrel', 'de', 1, 'Britannica: Worcestershire sauce', 'https://www.britannica.com/print/article/647899'),
  ('worcestershire-forgotten-barrel', 'de', 2, 'History News Network: Worcestershire Sauce and the Geographies of Empire', 'https://www.historynewsnetwork.org/article/worcestershire-sauce-and-the-geographies-of-empire'),
  ('worcestershire-forgotten-barrel', 'de', 3, 'Tasting Table: Who Were Lea & Perrins, And How Did They End Up Inventing Worcestershire Sauce?', 'https://tastingtable.com/1107287/worcestershire-sauce-was-born-from-a-funky-failure');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'worcestershire-forgotten-barrel', 'en', 'worcestershire-sauce-forgotten-barrel',
  'Worcestershire sauce supposedly began as a failed batch forgotten in a cellar for 18 months',
  'Two chemists made a sauce nobody liked, shoved it out of sight and, as the story goes, came back to a hit.',
  'According to the well-known origin story, chemists John Lea and William Perrins left a sauce their client disliked in their cellar, forgot it for about 18 months and found that aging had improved it.',
  'Worcestershire sauce has a name that trips up plenty of tongues and a tangy, savory kick. Its origin story is even stranger: if the legend is right, the sauce only exists because two chemists forgot about a failure.

## A sauce nobody liked

In early 19th-century England, so-called "store sauces" were in fashion, condiments you could keep in the pantry. According to Britannica, a retired governor of Bengal asked two chemists in Worcester, John Wheeley Lea and William Henry Perrins, to make a sauce from a recipe he had picked up in India.

It went badly. Britannica says the result failed to please their client. In the version quoted by Julia Fine in the History News Network, the mixture was so fiery that it made their eyes water. Tasting Table says the first attempt had a strong, unpleasant smell and flavor.

## Forgotten, then famous

As the story goes, the barrel ended up in the cellar, and everyone forgot about it. When Lea and Perrins tried it again about 18 months later, the aging had improved it. Tasting Table describes the rediscovered flavor as pleasant, complex and fermented. Britannica lists tamarind, soy, garlic, red onions, anchovies and spices in the original version.

Then the business took off. The History News Network reports that the pair had set up a factory in Worcester by 1845 and were selling over 30,000 bottles a year by 1855. Tasting Table adds that the sauce was exported to the U.S. in 1839 and is now sold in over 130 countries.

> Bonus fact: According to Tasting Table, Lea and Perrins could never secure a trademark on the sauce itself, so imitators soon followed. The company did receive a Royal Warrant in 1904.

## Maybe just good marketing

Here''s the catch: nobody can prove the cellar story. The History News Network points out that classified ads from 1840 mention only an unnamed "nobleman", and that a magazine article from 1867 was the one to name a Lord Sandys, with different articles even pointing to two different men. An archaeologist calls the tale "company lore", and a Lea and Perrins spokesman admitted it "may not be God''s own truth".

True or not, it''s a rare recipe whose secret step is supposedly forgetting about it for a year and a half.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('worcestershire-forgotten-barrel', 'en', 1, 'Glass sauce bottles with stoppers', 'glass sauce bottles with stoppers set', 'Handy for homemade dressings, marinades and infused vinegars.'),
  ('worcestershire-forgotten-barrel', 'en', 2, 'Fermentation cookbook', 'fermentation cookbook', 'Explains how time and microbes turn simple ingredients into big flavor.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('worcestershire-forgotten-barrel', 'en', 1, 'Britannica: Worcestershire sauce', 'https://www.britannica.com/print/article/647899'),
  ('worcestershire-forgotten-barrel', 'en', 2, 'History News Network: Worcestershire Sauce and the Geographies of Empire', 'https://www.historynewsnetwork.org/article/worcestershire-sauce-and-the-geographies-of-empire'),
  ('worcestershire-forgotten-barrel', 'en', 3, 'Tasting Table: Who Were Lea & Perrins, And How Did They End Up Inventing Worcestershire Sauce?', 'https://tastingtable.com/1107287/worcestershire-sauce-was-born-from-a-funky-failure');
