-- WTFact-Fakt „2015 war das Wort des Jahres kein Wort, sondern ein Emoji“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('emoji-word-of-the-year', '2026-08-24', 'language', '😂', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'emoji-word-of-the-year', 'de', 'emoji-wort-des-jahres-2015',
  '2015 war das Wort des Jahres kein Wort, sondern ein Emoji',
  'Oxford Dictionaries kürte das Gesicht mit den Freudentränen. Nicht alle fanden das zum Lachen.',
  'Oxford Dictionaries wählte 2015 zum ersten Mal ein Bildzeichen zum Wort des Jahres: das Emoji „Gesicht mit Freudentränen“.',
  'Jedes Jahr kürt Oxford Dictionaries ein „Wort des Jahres“, das zeigen soll, was die Menschen bewegt hat. 2013 war es „selfie“, 2014 „vape“. Und 2015? **Gar kein Wort.** Sondern ein gelbes Gesicht, das vor Lachen weint.

## Das Emoji des Jahres

Gemeint ist das Emoji mit dem offiziellen Namen „Face with Tears of Joy“, auf Deutsch „Gesicht mit Freudentränen“. Für die Auswahl hatte sich Oxford mit SwiftKey zusammengetan, dem Unternehmen hinter einer bekannten Tastatur-App fürs Handy. Die Auswertung zeigte: In Großbritannien machte dieses eine Emoji **20 Prozent aller genutzten Emojis** aus, in den USA 17 Prozent.

Laut Oxford spiegelte es „das Ethos, die Stimmung und die Themen von 2015“ am besten wider. Es war das erste Mal, dass die Wahl auf ein Bildzeichen statt auf ein Wort fiel.

## Ist das überhaupt ein Wort?

Nicht alle waren begeistert. Kritiker fragten, ob ein Emoji überhaupt als Wort zählen kann. Oxford selbst setzte „word“ in Anführungszeichen und stellte klar, dass es keine Pläne gebe, Emojis ins Wörterbuch aufzunehmen.

Die Konkurrenz auf der Shortlist war eine bunte Mischung aus ernst und albern: „Brexit“, „refugee“, „sharing economy“, „Dark Web“, „ad blocker“, „lumbersexual“, „on fleek“ und das „they“ als Pronomen für eine einzelne Person. Am Ende schlug ein lachendes Gesicht sie alle.

> Das Emoji ist älter als sein großer Auftritt: Seit 2010 steckt es im Unicode-Standard, ursprünglich stammte es von japanischen Mobilfunkanbietern.

## Vom Hit zum Auslaufmodell

Die Ironie der Geschichte: Ausgerechnet das Emoji des Jahres galt Anfang der 2020er-Jahre bei vielen aus der Generation Z als uncool. Statt Freudentränen schickten sie lieber das laut heulende Gesicht oder einen Totenkopf, um zu zeigen, dass sie sich kaputtlachen. Bei vielen Millennials blieb das Freudentränen-Gesicht aber weiter im Einsatz.

Ein Wort des Jahres, das man nicht aussprechen kann. Passender hätte 2015 kaum enden können.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('emoji-word-of-the-year', 'de', 1, 'Emoji-Kissen', 'Emoji Kissen lachend', 'Weich, rund und knallgelb. Bringt gute Laune aufs Sofa, ganz ohne Akku.'),
  ('emoji-word-of-the-year', 'de', 2, '„The Emoji Code“ von Vyvyan Evans', 'The Emoji Code Vyvyan Evans', 'Ein Linguist erklärt auf Englisch, warum Emojis mehr sind als Deko und wie sie unsere Nachrichten verändern.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('emoji-word-of-the-year', 'de', 1, 'Wikipedia: Face with Tears of Joy emoji', 'https://en.wikipedia.org/wiki/Face_with_Tears_of_Joy_emoji'),
  ('emoji-word-of-the-year', 'de', 2, 'NBC News: It''ll Make You Laugh! It''ll Make You Cry! It''s the Oxford Word of the Year!', 'https://www.nbcnews.com/pop-culture/pop-culture-news/itll-make-you-laugh-itll-make-you-cry-its-oxford-n464516'),
  ('emoji-word-of-the-year', 'de', 3, 'CBC News: Oxford Dictionaries selects ''tears of joy'' emoji as ''word'' of the year 😂', 'https://amp.cbc.ca/news/trending/oxford-dictionaries-word-year-emoji-tears-joy-1.3322428');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'emoji-word-of-the-year', 'en', 'emoji-word-of-the-year-2015',
  'In 2015, the Word of the Year wasn''t a word. It was an emoji',
  'Oxford Dictionaries crowned the face with tears of joy. Not everyone was laughing.',
  'In 2015, Oxford Dictionaries picked a pictograph as its Word of the Year for the first time: the ‘Face with Tears of Joy’ emoji.',
  'Every year, Oxford Dictionaries picks a "Word of the Year" meant to capture what people were talking about. In 2013 it was "selfie," in 2014 "vape." And in 2015? **Not a word at all.** It was a yellow face crying with laughter.

## The emoji of the year

We''re talking about the emoji officially named "Face with Tears of Joy." To make its pick, Oxford teamed up with SwiftKey, the company behind a popular phone keyboard app. The data showed that in the UK, this single emoji made up **20 percent of all emojis used**, and in the US, 17 percent.

According to Oxford, it best reflected "the ethos, mood, and preoccupations of 2015." It was the first time the honor went to a pictograph instead of a word.

## Does that even count as a word?

Not everyone was thrilled. Critics asked whether an emoji could count as a word at all. Oxford itself put "word" in quotation marks and made clear it had no plans to add emojis to the dictionary.

The shortlist was a colorful mix of serious and silly: "Brexit," "refugee," "sharing economy," "Dark Web," "ad blocker," "lumbersexual," "on fleek" and singular "they." In the end, a laughing face beat them all.

> The emoji is older than its big moment: it has been part of the Unicode standard since 2010 and originally came from Japanese mobile carriers.

## From hit to has-been

Here''s the irony: in the early 2020s, plenty of Gen Z users started seeing the Word of the Year emoji as dated. Instead of tears of joy, they''d rather send the loudly crying face or a skull to show they were dying of laughter. Many millennials, meanwhile, kept right on using it.

A Word of the Year you can''t even pronounce. Honestly, that''s the most 2015 thing ever.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('emoji-word-of-the-year', 'en', 1, 'Emoji pillow', 'laughing emoji pillow', 'Soft, round and bright yellow. Brings good vibes to your couch, no battery required.'),
  ('emoji-word-of-the-year', 'en', 2, 'The Emoji Code by Vyvyan Evans', 'The Emoji Code Vyvyan Evans', 'A linguist explains why emojis are more than decoration and how they''re changing the way we text.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('emoji-word-of-the-year', 'en', 1, 'Wikipedia: Face with Tears of Joy emoji', 'https://en.wikipedia.org/wiki/Face_with_Tears_of_Joy_emoji'),
  ('emoji-word-of-the-year', 'en', 2, 'NBC News: It''ll Make You Laugh! It''ll Make You Cry! It''s the Oxford Word of the Year!', 'https://www.nbcnews.com/pop-culture/pop-culture-news/itll-make-you-laugh-itll-make-you-cry-its-oxford-n464516'),
  ('emoji-word-of-the-year', 'en', 3, 'CBC News: Oxford Dictionaries selects ''tears of joy'' emoji as ''word'' of the year 😂', 'https://amp.cbc.ca/news/trending/oxford-dictionaries-word-year-emoji-tears-joy-1.3322428');
