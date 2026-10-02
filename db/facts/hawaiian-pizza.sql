-- WTFact-Fakt „Pizza Hawaii kommt nicht aus Hawaii, sondern aus Kanada“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('hawaiian-pizza', '2026-09-11', 'weird', '🍍', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hawaiian-pizza', 'de', 'pizza-hawaii-kanada',
  'Pizza Hawaii kommt nicht aus Hawaii, sondern aus Kanada',
  'Ein griechischer Einwanderer legte 1962 in Ontario Dosenananas auf eine Pizza. Den Namen lieferte die Konservendose.',
  'Die Pizza Hawaii wurde 1962 in Kanada erfunden, von einem Griechen, und der Name stammt von einer Ananas-Marke.',
  'Ananas auf Pizza: Kaum ein Belag spaltet Freundeskreise so zuverlässig. Aber egal, auf welcher Seite du stehst, eine Sache stimmt beim Namen nicht. **Die Pizza Hawaii hat mit Hawaii praktisch nichts zu tun.** Erfunden wurde sie in Kanada.

## Ein Grieche in Ontario

Sam Panopoulos wurde 1934 in Griechenland geboren und kam 1954 mit 20 Jahren nach Kanada. Zusammen mit seinen Brüdern betrieb er das Satellite Restaurant in Chatham in der Provinz Ontario. Und die Brüder probierten in der Küche gern Neues aus.

**1962 legte Panopoulos zum ersten Mal Dosenananas auf eine Pizza.** Seine Begründung, zitiert von ABC News: „Wir haben es einfach draufgelegt, nur zum Spaß, um zu sehen, wie es schmeckt. Wir waren jung im Geschäft und haben viel experimentiert.“

Inspiriert war die Idee unter anderem von der kanadisch-chinesischen Küche, in der Süßes und Saures ständig kombiniert werden. Warum also nicht auch auf Pizza?

## Der Name kam von der Dose

Und Hawaii? Das stand schlicht auf der Verpackung. Panopoulos bezog seine Ananas von der Hawaiian Pineapple Company und benannte die Pizza nach der Marke. Mit hawaiianischer Küche hatte die Kreation nichts zu tun.

Anfangs war die Kundschaft skeptisch, die Kombination kam nicht sofort gut an. Erst nach und nach setzte sie sich in der Gegend durch und ging später um die ganze Welt.

## Eine Pizza, die Geschichte schrieb

Das US-Magazin Time setzte die Hawaii 2014 sogar auf Platz 1 seiner Liste der „13 Most Influential Pizzas of All Time“. Geliebt wird sie trotzdem nicht von allen.

> Laut einer YouGov-Umfrage von 2019 zählten 12 Prozent der US-Amerikaner Ananas zu ihren drei liebsten Pizzabelägen, aber 24 Prozent zu ihren unbeliebtesten.

Panopoulos verkaufte das Restaurant 1980 und starb 2017. Seine Erfindung lebt in Tiefkühltruhen und Pizzerien auf der ganzen Welt weiter, und mit ihr der ewige Streit. Am Ende bleibt nur eine Frage, die niemand je klären wird: Ananas, ja oder nein?'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hawaiian-pizza', 'de', 1, 'Pizzastein für den Backofen', 'Pizzastein Backofen rund', 'Speichert die Hitze und macht den Boden knusprig wie aus dem Steinofen. Egal, was du drauflegst.'),
  ('hawaiian-pizza', 'de', 2, 'Kochbuch für Pizza aus dem eigenen Ofen', 'Pizza Kochbuch Teig selber machen', 'Erklärt Teig, Gehzeiten und Belag Schritt für Schritt. Damit wird die Tiefkühlpizza überflüssig.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hawaiian-pizza', 'de', 1, 'Wikipedia: Hawaiian pizza', 'https://en.wikipedia.org/wiki/Hawaiian_pizza'),
  ('hawaiian-pizza', 'de', 2, 'Wikipedia: Sam Panopoulos', 'https://en.wikipedia.org/wiki/Sam_Panopoulos'),
  ('hawaiian-pizza', 'de', 3, 'ABC News: Hawaiian pizza inventor Sam Panopoulos dies aged 83', 'https://www.abc.net.au/news/2017-06-10/hawaiian-pizza-investor-sam-panopoulos-dies/8607108'),
  ('hawaiian-pizza', 'de', 4, 'TIME: The Man Who Invented Hawaiian Pizza Has Died', 'https://time.com/4814056/hawaiian-pizza-pineapple-sam-panopoulos-death/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'hawaiian-pizza', 'en', 'hawaiian-pizza-canada',
  'Hawaiian pizza isn''t from Hawaii. It''s from Canada',
  'In 1962, a Greek immigrant in Ontario put canned pineapple on a pizza. The name came straight off the can.',
  'Hawaiian pizza was invented in Canada in 1962 by a Greek immigrant, and its name comes from a pineapple brand.',
  'Pineapple on pizza: few toppings split a friend group faster. But whichever side you''re on, the name is misleading. **Hawaiian pizza has basically nothing to do with Hawaii.** It was invented in Canada.

## A Greek guy in Ontario

Sam Panopoulos was born in Greece in 1934 and moved to Canada in 1954, at age 20. Together with his brothers, he ran the Satellite Restaurant in Chatham, Ontario. And the brothers loved trying new things in the kitchen.

**In 1962, Panopoulos put canned pineapple on a pizza for the first time.** His explanation, as quoted by ABC News: "We just put it on, just for the fun of it, see how it was going to taste. We were young in the business and we were doing a lot of experiments."

Part of the inspiration came from Canadian Chinese food, which mixes sweet and sour flavors all the time. So why not on pizza?

## The name came from the can

And Hawaii? That was just on the label. Panopoulos got his pineapple from the Hawaiian Pineapple Company and named the pizza after the brand. Hawaiian cooking had nothing to do with it.

At first, customers weren''t sold, and the combo didn''t catch on right away. It slowly won over the locals and eventually went global.

## A pizza that made history

In 2014, Time magazine even ranked it number 1 on its list of "The 13 Most Influential Pizzas of All Time." That doesn''t mean everyone loves it.

> In a 2019 YouGov survey, 12 percent of Americans put pineapple among their top three pizza toppings, while 24 percent ranked it among their least favorites.

Panopoulos sold the restaurant in 1980 and died in 2017. His invention lives on in freezers and pizzerias all over the world, and so does the argument. One question will never be settled: pineapple, yes or no?'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('hawaiian-pizza', 'en', 1, 'Pizza stone for the oven', 'pizza stone for oven round', 'Holds the heat and gives you a crispy crust like a stone oven. No matter what you put on top.'),
  ('hawaiian-pizza', 'en', 2, 'Homemade pizza cookbook', 'homemade pizza cookbook dough', 'Walks you through dough, rise times and toppings step by step. Say goodbye to frozen pizza.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('hawaiian-pizza', 'en', 1, 'Wikipedia: Hawaiian pizza', 'https://en.wikipedia.org/wiki/Hawaiian_pizza'),
  ('hawaiian-pizza', 'en', 2, 'Wikipedia: Sam Panopoulos', 'https://en.wikipedia.org/wiki/Sam_Panopoulos'),
  ('hawaiian-pizza', 'en', 3, 'ABC News: Hawaiian pizza inventor Sam Panopoulos dies aged 83', 'https://www.abc.net.au/news/2017-06-10/hawaiian-pizza-investor-sam-panopoulos-dies/8607108'),
  ('hawaiian-pizza', 'en', 4, 'TIME: The Man Who Invented Hawaiian Pizza Has Died', 'https://time.com/4814056/hawaiian-pizza-pineapple-sam-panopoulos-death/');
