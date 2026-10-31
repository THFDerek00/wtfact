-- WTFact-Fakt „Die Azteken zahlten mit Kakaobohnen, und Fälscher machten sie aus Wachs und Schlamm nach“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('aztec-cacao-counterfeit-beans', '2026-11-06T08:00:00+01:00', 'money', '🫘', 0, 1);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'aztec-cacao-counterfeit-beans', 'de', 'azteken-kakaobohnen-falschgeld',
  'Die Azteken zahlten mit Kakaobohnen, und Fälscher machten sie aus Wachs und Schlamm nach',
  'Schokogeld klingt nach Witz. Die Fälscher nahmen es sehr ernst.',
  'Bei den Azteken waren Kakaobohnen Geld, und Fälscher formten falsche aus Ton oder Wachs oder höhlten echte Bohnen aus und füllten sie mit Schlamm oder Sand.',
  'Geld, das auf Bäumen wächst? Bei den Azteken war das ziemlich genau so. Lange bevor es Schokolade als Tafel gab, waren Kakaobohnen Kleingeld.

## Ein Kaninchen für 30 Bohnen

Laut der World History Encyclopedia wurden Kakaobohnen oft als Tribut von unterworfenen Völkern verlangt und dienten den Azteken sogar als Zahlungsmittel. Eine Bohne reichte für eine Tomate, 30 Bohnen für ein Kaninchen und 200 Bohnen für einen Truthahn.

Das MoneyMuseum nennt eine Preisliste von 1545 mit ähnlichen Zahlen: eine Bohne für eine große Tomate, 3 Bohnen für einen in Maisblätter gewickelten Fisch und 200 Bohnen für einen Truthahn. Mental Floss legt noch nach: 3 Bohnen für eine unreife Avocado, 20 Bohnen für einen Träger, der deine Waren schleppt. Für größere Geschäfte, etwa ein Kanu oder einen Kriegerschild, nahm man Quachtli, lange weiße Stoffbahnen. Eine einfache war 65 Bohnen wert, eine aufwendige 300.

## Falschgeld zum Anbeißen

Wo es Geld gibt, gibt es Fälscher. Laut Mental Floss formten sie falsche Bohnen aus Asche, Ton, Amaranth-Teig, Wachs oder Avocadokernen, manche bemalten sie, damit sie echt aussahen. Andere höhlten echte Bohnen aus und füllten sie mit Schlamm oder Sand. Die Vorsichtigsten mischten einfach ein paar Fälschungen unter einen Haufen echter Bohnen und hofften, dass niemand jede einzelne prüft.

Für den Betrug gab es sogar ein eigenes Wort. Ein spanisch-englisches Glossar auf dem Newman Numismatic Portal führt „quauhpatloxtli“ als aztekisches Wort für gefälschte Kakaobohnen: aus Ton oder Wachs geformt oder ausgebohrt und mit Schlamm gefüllt. Auch die World History Encyclopedia erwähnt ausgehöhlte Bohnen, die mit einem Ersatz wie Sand gefüllt wurden.

> Bonusfakt: Mit dem Aztekenreich im 16. Jahrhundert verschwand das Kakaogeld nicht. Laut MoneyMuseum wurden einzelne Bohnen in den Anbaugebieten noch bis ins 19. Jahrhundert als Kleingeld benutzt.

Lange bevor jemand Pralinen mit billiger Füllung streckte, hat man schon Schlamm als Bargeld ausgegeben.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('aztec-cacao-counterfeit-beans', 'de', 1, 'Buch zur Geschichte des Geldes', 'Geschichte des Geldes Buch', 'Führt dich von Muscheln und Bohnen bis zu Münzen und Scheinen.'),
  ('aztec-cacao-counterfeit-beans', 'de', 2, 'Rohe Kakaobohnen', 'Kakaobohnen roh ganz', 'So hältst du das ursprüngliche Kleingeld in der Hand und kannst es selbst rösten.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('aztec-cacao-counterfeit-beans', 'de', 1, 'World History Encyclopedia: Chocolate in Mesoamerica', 'https://www.worldhistory.org/Chocolate_in_Mesoamerica/'),
  ('aztec-cacao-counterfeit-beans', 'de', 2, 'Mental Floss: Counterfeit Chocolate: Not Just A Thing of the Past', 'https://www.mentalfloss.com/food/candy/counterfeit-chocolate-not-just-thing-past'),
  ('aztec-cacao-counterfeit-beans', 'de', 3, 'MoneyMuseum: Latin America, Cocoa Beans', 'https://moneymuseum.com/en/coins?&id=1738'),
  ('aztec-cacao-counterfeit-beans', 'de', 4, 'Newman Numismatic Portal: Quauhpatloxtli', 'https://nnp.wustl.edu/library/dictionarydetail/519565');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'aztec-cacao-counterfeit-beans', 'en', 'aztec-cacao-bean-counterfeiters',
  'The Aztecs paid with cacao beans, and counterfeiters faked them with wax and mud',
  'Chocolate money sounds like a joke. The forgers took it very seriously.',
  'In the Aztec world, cacao beans worked as money, and forgers made fake ones from clay or wax or hollowed out real beans and filled them with mud or sand.',
  'Money that grows on trees? For the Aztecs, it pretty much did. Long before chocolate came in bars, cacao beans were small change.

## A rabbit for 30 beans

According to the World History Encyclopedia, cacao beans were often demanded as tribute from subject peoples and were even used as a form of currency by the Aztecs. One bean could buy a tomato, 30 beans a rabbit and 200 beans a turkey.

The MoneyMuseum cites a price list from 1545 with similar numbers: one bean for a large tomato, 3 beans for a fish wrapped in corn leaves and 200 beans for a turkey. Mental Floss adds a few more: 3 beans for an unripe avocado, 20 beans to hire a laborer to carry your goods. For bigger deals, like a canoe or a warrior''s shield, people switched to quachtli, long white cloths. A simple one was worth 65 beans, an elaborate one 300.

## Fake money, chocolate edition

Wherever there is money, there are counterfeiters. According to Mental Floss, forgers shaped fake beans out of ash, clay, amaranth dough, wax or avocado pits, and some painted them to look like the real thing. Others hollowed out real beans and filled them with mud or sand. The most careful ones simply mixed a few fakes into a pile of real beans and hoped nobody checked every single one.

The scam even had its own word. A Spanish-English glossary on the Newman Numismatic Portal lists "quauhpatloxtli" as an Aztec word for counterfeit cacao beans: molded from clay or wax, or drilled out and filled with mud. The World History Encyclopedia also mentions hollowed beans refilled with a substitute such as sand.

> Bonus fact: Cacao money didn''t disappear with the Aztec Empire in the 16th century. According to the MoneyMuseum, single beans were still used as small change in the regions where cacao grows until the 19th century.

Long before anyone cheated with cheap filling in a praline, people were passing off mud as cash.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('aztec-cacao-counterfeit-beans', 'en', 1, 'Book on the history of money', 'history of money book', 'Takes you from shells and beans to coins, notes and beyond.'),
  ('aztec-cacao-counterfeit-beans', 'en', 2, 'Raw cacao beans', 'raw cacao beans whole', 'Lets you hold the original small change in your hand and roast it yourself.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('aztec-cacao-counterfeit-beans', 'en', 1, 'World History Encyclopedia: Chocolate in Mesoamerica', 'https://www.worldhistory.org/Chocolate_in_Mesoamerica/'),
  ('aztec-cacao-counterfeit-beans', 'en', 2, 'Mental Floss: Counterfeit Chocolate: Not Just A Thing of the Past', 'https://www.mentalfloss.com/food/candy/counterfeit-chocolate-not-just-thing-past'),
  ('aztec-cacao-counterfeit-beans', 'en', 3, 'MoneyMuseum: Latin America, Cocoa Beans', 'https://moneymuseum.com/en/coins?&id=1738'),
  ('aztec-cacao-counterfeit-beans', 'en', 4, 'Newman Numismatic Portal: Quauhpatloxtli', 'https://nnp.wustl.edu/library/dictionarydetail/519565');
