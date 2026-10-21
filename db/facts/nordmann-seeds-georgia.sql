-- WTFact-Fakt „Rund 80 Prozent der Nordmanntannen in Europa wachsen aus Samen aus Georgien“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('nordmann-seeds-georgia', '2026-12-21T00:00:00+01:00', 'nature', '🌲', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nordmann-seeds-georgia', 'de', 'nordmanntanne-samen-aus-georgien',
  'Rund 80 Prozent der Nordmanntannen in Europa wachsen aus Samen aus Georgien',
  'Dein Weihnachtsbaum hat wahrscheinlich Wurzeln im Kaukasus. Und jemand ist dafür sehr hoch geklettert.',
  'Die Samen für rund 80 Prozent der in Europa gezogenen Nordmanntannen stammen aus Westgeorgien, wo Pflücker die Zapfen in über 30 Metern Höhe von wilden Bäumen holen.',
  'Die Nordmanntanne ist der Lieblingsbaum für Weihnachten. Sie nadelt kaum und hat weiche, dunkelgrüne Zweige. Gewachsen ist dein Baum vermutlich auf einer Plantage in Dänemark oder Deutschland. Seine Herkunft liegt aber viel weiter weg.

## Ein Baum aus dem Kaukasus

Die Nordmanntanne stammt ursprünglich aus dem Kaukasus. Und genau dorthin führt fast jeder Weihnachtsbaum zurück. Laut einer Recherche, die von Journalismfund Europe gefördert wurde, wachsen 80 Prozent der in Europa gezogenen Nordmanntannen aus Samen, die in Westgeorgien gesammelt werden. Die Pflücker kommen vor allem aus der Bergregion Racha.

Die Mengen sind gewaltig. Laut National Geographic werden in Europa jedes Jahr etwa 45 Millionen Nordmanntannen gezogen. Die Baumschulen bevorzugen dafür Samen von wilden Bäumen, weil sie besonders gute Bäume ergeben.

## Gepflückt in schwindelnder Höhe

Das Problem: Die Zapfen hängen ganz oben in den Wipfeln alter Tannen. Laut National Geographic klettern die Pflücker mehr als 30 Meter hoch, oft ohne Seil und Helm. Die Arbeit ist gefährlich, und schlecht bezahlt ist sie auch. Laut National Geographic verdienen die meisten Pflücker nur etwa 21 Cent pro Pfund Zapfen.

Es gibt Gegenbeispiele. Das dänische Unternehmen Fair Trees zahlt laut National Geographic deutlich mehr, etwa 90 Cent pro Pfund, und stellt Seile, Helme und eine Versicherung. Seine Pflücker müssen die Sicherung auch benutzen.

> Bonusfakt: An der Ernte und dem Export der Samen nach Europa sind laut Journalismfund Europe georgische und europäische Firmen beteiligt, die meisten davon aus Dänemark.

Wenn du dieses Jahr eine Nordmanntanne schmückst, hat ihre Geschichte sehr wahrscheinlich in einem georgischen Bergwald angefangen.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nordmann-seeds-georgia', 'de', 1, 'Christbaumständer mit Wassertank', 'Christbaumständer Wassertank stabil', 'Hält den Baum lange frisch und sicher aufrecht.'),
  ('nordmann-seeds-georgia', 'de', 2, 'Reiseführer Georgien', 'Reiseführer Georgien Kaukasus', 'Für alle, die die Heimat der Nordmanntanne sehen wollen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nordmann-seeds-georgia', 'de', 1, 'National Geographic: Gravity-Defying Villagers Risk Their Lives for Christmas Trees', 'https://www.nationalgeographic.com/science/article/georgia-mountains-christmas-tree-harvesting-fair-trees-danger'),
  ('nordmann-seeds-georgia', 'de', 2, 'Journalismfund Europe: The bitter seeds of Christmas', 'https://www.journalismfund.eu/bitter-seeds-of-christmas');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'nordmann-seeds-georgia', 'en', 'nordmann-fir-seeds-from-georgia',
  'About 80 percent of Europe''s Nordmann firs grow from seeds from Georgia',
  'Your Christmas tree probably has roots in the Caucasus. And someone climbed very high for it.',
  'The seeds for about 80 percent of the Nordmann firs grown in Europe come from western Georgia, where pickers gather cones from wild trees more than 30 meters up.',
  'The Nordmann fir is Europe''s favorite Christmas tree. It hardly drops its needles and has soft, dark green branches. Your tree probably grew on a plantation in Denmark or Germany. But its origins lie much farther away.

## A tree from the Caucasus

The Nordmann fir originally comes from the Caucasus. And that''s exactly where almost every Christmas tree leads back to. According to an investigation supported by Journalismfund Europe, 80 percent of the Nordmann firs grown in Europe come from seeds collected in western Georgia. The pickers come mainly from the mountain region of Racha.

The numbers are huge. According to National Geographic, about 45 million Nordmann firs are grown in Europe every year. Nurseries prefer seeds from wild trees, because they produce especially good trees.

## Picked at dizzying heights

The problem: the cones hang right at the top of old firs. According to National Geographic, pickers climb more than 100 feet, over 30 meters, often without ropes or helmets. The work is dangerous, and it''s badly paid too. National Geographic says most pickers earn only about 21 cents per pound of cones.

There are exceptions. The Danish company Fair Trees pays much more, about 90 cents per pound according to National Geographic, and provides ropes, helmets and insurance. Its pickers are required to use the safety gear.

> Bonus fact: According to Journalismfund Europe, Georgian and European companies, mostly Danish, are involved in harvesting the seeds and exporting them to Europe.

If you decorate a Nordmann fir this year, its story very likely began in a mountain forest in Georgia.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('nordmann-seeds-georgia', 'en', 1, 'Christmas tree stand with water tank', 'christmas tree stand water reservoir sturdy', 'Keeps the tree fresh and safely upright for longer.'),
  ('nordmann-seeds-georgia', 'en', 2, 'Georgia travel guide', 'Georgia Caucasus travel guide', 'For anyone who wants to visit the home of the Nordmann fir.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('nordmann-seeds-georgia', 'en', 1, 'National Geographic: Gravity-Defying Villagers Risk Their Lives for Christmas Trees', 'https://www.nationalgeographic.com/science/article/georgia-mountains-christmas-tree-harvesting-fair-trees-danger'),
  ('nordmann-seeds-georgia', 'en', 2, 'Journalismfund Europe: The bitter seeds of Christmas', 'https://www.journalismfund.eu/bitter-seeds-of-christmas');
