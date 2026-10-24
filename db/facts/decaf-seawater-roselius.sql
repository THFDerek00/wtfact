-- WTFact-Fakt „Entkoffeinierter Kaffee begann angeblich mit Bohnen, die in Meerwasser getränkt waren“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('decaf-seawater-roselius', '2026-10-25T16:00:00+01:00', 'food', '☕', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'decaf-seawater-roselius', 'de', 'entkoffeiniert-dank-meerwasser',
  'Entkoffeinierter Kaffee begann angeblich mit Bohnen, die in Meerwasser getränkt waren',
  'Ein Bremer Kaffeehändler bemerkte, dass nasse Bohnen ihren Kick verloren hatten, und machte aus dem Missgeschick eine Marke.',
  'Der Bremer Kaffeehändler Ludwig Roselius soll das Entkoffeinieren entdeckt haben, als eine Ladung Kaffeebohnen in Meerwasser getränkt wurde und dabei viel Koffein verlor.',
  'Entkoffeinierter Kaffee klingt nach einer modernen Erfindung für Leute, die um Mitternacht noch einen Latte wollen. Tatsächlich ist er mehr als 100 Jahre alt und begann, wenn die Geschichte stimmt, mit einem Transportunglück.

## Zuerst wollte Goethe es wissen

Bevor jemand Koffein entfernen konnte, musste es erst mal jemand finden. Laut Lavazza schenkte Johann Wolfgang von Goethe dem Chemiker Friedlieb Ferdinand Runge 1819 eine Schachtel Kaffeebohnen und bat ihn herauszufinden, warum Kaffee ihn wach hielt. 1820 isolierte Runge das Koffein. Ein Produkt machte er daraus aber nicht.

## Die durchweichte Lieferung

Das kam rund 85 Jahre später. Ludwig Roselius, ein Kaffeehändler aus Bremen, steckte dahinter. Der Geschichte nach wurde eine Ladung seiner Bohnen auf dem Transport in Meerwasser getränkt. Die nassen Bohnen hatten viel von ihrem Koffein verloren.

Beim Geschmack sind sich die Quellen nicht einig: Manche schreiben, er habe sich bis auf einen leicht salzigen Ton kaum verändert, Lavazza sagt, er habe gelitten. So oder so erkannte Roselius die Idee dahinter. Sein Verfahren dämpfte die Bohnen, behandelte sie mit Salzwasser und zog dann mit dem Lösungsmittel Benzol das restliche Koffein heraus. Benzol wird heute nicht mehr verwendet. Die Jahreszahlen schwanken je nach Quelle leicht, aber um 1905 und 1906 ließ er das Verfahren patentieren.

## Eine Marke mit Rettungsring

Roselius verkaufte seinen Kaffee über die Kaffee-Handels-Aktiengesellschaft, besser bekannt unter der Abkürzung Kaffee HAG. Außerdem lief er unter dem Markennamen Sanka, vom französischen „sans caféine“, also „ohne Koffein“.

> Bonus-Fakt: Das berühmte Rettungsring-Logo von Kaffee HAG entwarfen Alfred Runge und Eduard Scotland. Die Geschichte des Entkoffeinierten hat also zwei Runges: Einer fand das Koffein, einer gestaltete das Logo des Kaffees ohne.

Moderner koffeinfreier Kaffee entsteht anders. Barista Magazine beschreibt den Swiss Water Process, erstmals 1985 erprobt, der statt Benzol mit Wasser und Aktivkohlefiltern arbeitet.

Die Tasse, mit der du schlafen kannst, begann also mit einem Dichter, der es nicht konnte, und einer Kiste Bohnen, die unfreiwillig baden ging.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('decaf-seawater-roselius', 'de', 1, 'French Press', 'French Press Kaffeebereiter Glas', 'Simpel, ohne Kapseln und für jeden Kaffee geeignet, auch koffeinfreien.'),
  ('decaf-seawater-roselius', 'de', 2, 'Manuelle Kaffeemühle', 'Handkaffeemühle Keramikmahlwerk', 'Mahlt die Bohnen frisch von Hand, leise und ohne Steckdose.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('decaf-seawater-roselius', 'de', 1, 'Barista Magazine: Deconstructing Decaf: The (Second) Rise of Caffeine-Free Coffee', 'https://www.baristamagazine.com/deconstructing-decaf-the-second-rise-of-caffeine-free-coffee/'),
  ('decaf-seawater-roselius', 'de', 2, 'Lavazza: Decaf coffee: the history, the process and the variants', 'https://www.lavazza.co.uk/en/coffee-secrets/decaf-coffee-history-process-variants'),
  ('decaf-seawater-roselius', 'de', 3, 'Today I Found Out: How do They Make Decaf Coffee and Tea and Non-Alcoholic Beer and Wine?', 'https://www.todayifoundout.com/index.php/2024/12/how-do-they-make-decaf-coffee-and-tea-and-non-alcoholic-beer-and-wine/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'decaf-seawater-roselius', 'en', 'decaf-began-with-seawater-beans',
  'Decaf coffee reportedly started with a shipment of beans soaked in seawater',
  'A coffee merchant from Bremen noticed that wet beans had lost their kick, and turned an accident into a brand.',
  'German coffee merchant Ludwig Roselius reportedly discovered decaffeination when a shipment of coffee beans got soaked in seawater and lost much of its caffeine.',
  'Decaf sounds like a modern invention for people who want a latte at midnight. In fact it goes back more than 100 years, and, if the story is right, to a shipping accident.

## First, Goethe wanted answers

Before anyone could remove caffeine, someone had to find it. According to Lavazza, the poet Johann Wolfgang von Goethe gave chemist Friedlieb Ferdinand Runge a box of coffee beans in 1819 and asked him to find out why coffee kept him awake. In 1820 Runge isolated caffeine. He did not turn it into a product, though.

## The soggy shipment

That came about 85 years later. Ludwig Roselius, a coffee merchant from Bremen, was the man behind it. As the story goes, a shipment of his beans got soaked in seawater in transit. The wet beans had lost much of their caffeine.

The sources disagree on the taste: some say the flavor barely changed apart from a slight saltiness, while Lavazza says it was affected. Either way, Roselius saw the idea behind it. His process steamed the beans, treated them with salt water and then used benzene as a solvent to pull out the remaining caffeine. Benzene is no longer used today. The dates vary slightly between sources, but around 1905 and 1906 he patented the method.

## A brand with a lifebuoy

Roselius sold his coffee through the Kaffee-Handels-Aktiengesellschaft, better known by its short name Kaffee HAG. It was also sold under the brand name Sanka, from the French „sans caféine“, meaning „without caffeine“.

> Bonus fact: The famous lifebuoy logo of Kaffee HAG was designed by Alfred Runge and Eduard Scotland. So the decaf story has two Runges: one found caffeine, one designed the logo of the coffee without it.

Modern decaf works differently. Barista Magazine describes the Swiss Water Process, piloted in 1985, which uses water and activated carbon filters instead of benzene.

So the cup that lets you sleep began with a poet who could not, and a box of beans that went for an unplanned swim.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('decaf-seawater-roselius', 'en', 1, 'French press coffee maker', 'French press coffee maker glass', 'Simple, no capsules, and it works with any coffee, decaf included.'),
  ('decaf-seawater-roselius', 'en', 2, 'Manual coffee grinder', 'manual coffee grinder ceramic burr', 'Grinds beans fresh by hand, quietly and without a plug.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('decaf-seawater-roselius', 'en', 1, 'Barista Magazine: Deconstructing Decaf: The (Second) Rise of Caffeine-Free Coffee', 'https://www.baristamagazine.com/deconstructing-decaf-the-second-rise-of-caffeine-free-coffee/'),
  ('decaf-seawater-roselius', 'en', 2, 'Lavazza: Decaf coffee: the history, the process and the variants', 'https://www.lavazza.co.uk/en/coffee-secrets/decaf-coffee-history-process-variants'),
  ('decaf-seawater-roselius', 'en', 3, 'Today I Found Out: How do They Make Decaf Coffee and Tea and Non-Alcoholic Beer and Wine?', 'https://www.todayifoundout.com/index.php/2024/12/how-do-they-make-decaf-coffee-and-tea-and-non-alcoholic-beer-and-wine/');
