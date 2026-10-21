-- WTFact-Fakt „Der größte Mensch aller Zeiten war 2,72 Meter groß“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('robert-wadlow-tallest-man', '2026-10-22T19:00:00+02:00', 'records', '📏', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'robert-wadlow-tallest-man', 'de', 'robert-wadlow-groesster-mensch',
  'Der größte Mensch aller Zeiten war 2,72 Meter groß',
  'Seine Schuhe waren fast einen halben Meter lang. Ein Paar kostete damals ein kleines Vermögen.',
  'Robert Wadlow aus Alton im US-Bundesstaat Illinois maß 2,72 Meter. Laut Guinness World Records ist er der größte Mensch, dessen Größe zweifelsfrei belegt ist.',
  'Ein Basketballkorb hängt auf 3,05 Metern. Robert Wadlow hätte ihn fast im Stehen berührt, ohne zu springen. Er war der größte Mensch, der je zuverlässig vermessen wurde.

## 2,72 Meter

Robert Pershing Wadlow wurde am 22. Februar 1918 in Alton im US-Bundesstaat Illinois geboren. Laut Guinness World Records erreichte er eine Körpergröße von 2,72 Metern. Bis heute hat niemand diesen Rekord gebrochen.

Als Baby war Wadlow noch ganz normal groß. Doch er wuchs und wuchs und hörte nicht mehr auf. Schuld war seine Hirnanhangdrüse, die viel zu aktiv war.

## Riesige Füße, riesige Hände

Laut Guinness trug Wadlow Schuhe in der US-Größe 37AA. Ein Schuh war rund 47 Zentimeter lang. Seine Armspannweite betrug 2,88 Meter, also fast drei Meter von Fingerspitze zu Fingerspitze.

Schuhe in dieser Größe gab es natürlich nicht im Laden. Sie mussten extra angefertigt werden. Laut ScienceAlert kostete ein Paar damals 100 US-Dollar, für die damalige Zeit eine Menge Geld.

> Bonusfakt: Laut Guinness trug Wadlow schon mit neun Jahren seinen Vater, der 1,80 Meter groß war, die Treppe des Elternhauses hinauf.

Auch seine Hände waren Rekord. Laut Guinness maßen sie vom Handgelenk bis zur Spitze des Mittelfingers 32,4 Zentimeter. Mit 17 Jahren war er bereits 2,45 Meter groß, ebenfalls ein Rekord für Jugendliche.

Laut ScienceAlert war Wadlow als „sanfter Riese“ bekannt und verdiente Geld mit öffentlichen Auftritten. Dass sein Wachstum von einer überaktiven Hirnanhangdrüse kam, erfuhr er mit zwölf Jahren.

Wer sich 2,72 Meter einmal vorstellen will: Das ist ungefähr eine normale Zimmerdecke. Die meisten Menschen hätten ihm nur bis zur Brust gereicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('robert-wadlow-tallest-man', 'de', 1, 'Guinness World Records Buch', 'Guinness World Records Buch', 'Mit Wadlow und vielen anderen Rekordhaltern.'),
  ('robert-wadlow-tallest-man', 'de', 2, 'Messlatte für die Kinderzimmerwand', 'Messlatte Kinder Wand Holz', 'Damit lässt sich das eigene Wachstum verfolgen, wenn auch nicht bis 2,72 Meter.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('robert-wadlow-tallest-man', 'de', 1, 'Guinness World Records: Tallest man ever', 'https://guinnessworldrecords.com/world-records/tallest-man-ever'),
  ('robert-wadlow-tallest-man', 'de', 2, 'ScienceAlert: It’s The Birthday of The Tallest Man Who Ever Lived', 'https://www.sciencealert.com/it-s-the-birthday-of-the-tallest-man-who-ever-lived');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'robert-wadlow-tallest-man', 'en', 'robert-wadlow-tallest-man',
  'The tallest person of all time was 2.72 meters tall',
  'His shoes were almost half a meter long. A pair cost a small fortune back then.',
  'Robert Wadlow from Alton, Illinois, measured 2.72 meters (8 feet 11.1 inches). According to Guinness World Records, he’s the tallest person whose height is beyond doubt.',
  'A basketball hoop hangs at 3.05 meters. Robert Wadlow could nearly have touched it standing still, without jumping. He was the tallest person ever reliably measured.

## 2.72 meters

Robert Pershing Wadlow was born on February 22, 1918, in Alton, Illinois. According to Guinness World Records, he reached a height of 2.72 meters (8 feet 11.1 inches). Nobody has broken that record to this day.

As a baby, Wadlow was a normal size. But he grew and grew and never stopped. The cause was his pituitary gland, which was far too active.

## Huge feet, huge hands

According to Guinness, Wadlow wore US shoe size 37AA. One shoe was about 47 centimeters (18.5 inches) long. His arm span was 2.88 meters, almost three meters from fingertip to fingertip.

Of course, you couldn’t buy shoes that size in a store. They had to be specially made. According to ScienceAlert, a pair cost 100 US dollars back then, a lot of money for the time.

> Bonus fact: According to Guinness, at age nine Wadlow carried his father, who was 1.8 meters tall, up the stairs of the family home.

His hands set a record too. According to Guinness, they measured 32.4 centimeters from the wrist to the tip of the middle finger. At 17, he was already 2.45 meters tall, also a record for a teenager.

According to ScienceAlert, Wadlow was known as a "gentle giant" and earned money from public appearances. He learned at age 12 that an overactive pituitary gland was behind his growth.

If you want to picture 2.72 meters: that’s about the height of a normal ceiling. Most people would only have reached his chest.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('robert-wadlow-tallest-man', 'en', 1, 'Guinness World Records book', 'Guinness World Records book', 'Featuring Wadlow and lots of other record holders.'),
  ('robert-wadlow-tallest-man', 'en', 2, 'Growth chart for the kids’ room', 'wooden growth chart kids wall', 'Tracks your own growth, though probably not up to 2.72 meters.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('robert-wadlow-tallest-man', 'en', 1, 'Guinness World Records: Tallest man ever', 'https://guinnessworldrecords.com/world-records/tallest-man-ever'),
  ('robert-wadlow-tallest-man', 'en', 2, 'ScienceAlert: It’s The Birthday of The Tallest Man Who Ever Lived', 'https://www.sciencealert.com/it-s-the-birthday-of-the-tallest-man-who-ever-lived');
