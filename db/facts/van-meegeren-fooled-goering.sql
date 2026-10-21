-- WTFact-Fakt „Ein Fälscher verkaufte Hermann Göring einen falschen Vermeer“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('van-meegeren-fooled-goering', '2026-10-21T21:00:00+02:00', 'art', '🖼️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'van-meegeren-fooled-goering', 'de', 'van-meegeren-faelschte-fuer-goering',
  'Ein Fälscher verkaufte Hermann Göring einen falschen Vermeer',
  'Nach dem Krieg drohte ihm die Todesstrafe. Retten konnte er sich nur, indem er vor Zeugen noch einen Vermeer malte.',
  'Der Niederländer Han van Meegeren verkaufte dem NS-Politiker Hermann Göring ein angebliches Gemälde von Johannes Vermeer. Um nicht als Verräter verurteilt zu werden, musste er beweisen, dass er es selbst gemalt hatte.',
  'Wer einem Nazi ein nationales Kunstwerk verkauft, gilt als Verräter. Es sei denn, das Kunstwerk ist eine Fälschung. Genau mit diesem Argument rettete sich der Maler Han van Meegeren nach dem Zweiten Weltkrieg.

## Ein Vermeer für Göring

Han van Meegeren war ein niederländischer Maler, dessen eigene Bilder kaum jemand haben wollte. Also malte er im Stil des berühmten Johannes Vermeer aus dem 17. Jahrhundert und gab die Werke als neu entdeckte Originale aus.

Das klappte erstaunlich gut. Laut History Hit verkaufte er das Bild „Christus und die Ehebrecherin“ an Hermann Göring, einen der mächtigsten Männer im nationalsozialistischen Deutschland. Göring zahlte über 1,5 Millionen Gulden.

Ein anderes Werk, „Das Mahl in Emmaus“, verkaufte van Meegeren laut History Hit für 520.000 Gulden. Experten feierten es damals als einen der wichtigsten Vermeers überhaupt.

## Beweis vor Zeugen

1945, nach Kriegsende, fanden alliierte Soldaten Görings Kunstsammlung in einem Salzbergwerk. Darunter war auch der angebliche Vermeer. Die Spur führte zu van Meegeren, und er wurde verhaftet. Ihm drohte eine Anklage wegen Kollaboration, weil er niederländisches Kulturgut an den Feind verkauft hatte.

Van Meegeren hatte nur einen Ausweg: Er gestand, dass er das Bild selbst gemalt hatte. Glauben wollte ihm das zunächst niemand. Laut der Website Museum of Hoaxes malte er deshalb in Haft vor Zeugen einen neuen „Vermeer“, um es zu beweisen.

> Bonusfakt: Am Ende wurde van Meegeren nicht als Verräter verurteilt, sondern laut History Hit wegen Fälschung zu einem Jahr Haft. Absitzen musste er sie laut Museum of Hoaxes nie, denn er starb vorher.

Für viele Menschen in den Niederlanden wurde er dadurch zu einer Art Volksheld. Er hatte schließlich einen der mächtigsten Nazis hereingelegt.

Görings Kunstsammlung bekam so ein ziemlich peinliches Prunkstück. Und van Meegeren schaffte es, mit einer Fälschung berühmter zu werden als mit allen echten Bildern, die er je gemalt hat.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('van-meegeren-fooled-goering', 'de', 1, 'Buch über berühmte Kunstfälscher', 'Buch Kunstfälscher Fälschung Geschichte', 'Erzählt die spannendsten Geschichten über gefälschte Meisterwerke.'),
  ('van-meegeren-fooled-goering', 'de', 2, 'Malset Ölfarben für Einsteiger', 'Ölfarben Set Einsteiger Leinwand', 'Zum Ausprobieren im Stil der alten Meister, ganz legal.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('van-meegeren-fooled-goering', 'de', 1, 'History Hit: Nazi Sympathiser or National Hero? The Strange Story of Han van Meegeren', 'https://www.historyhit.com/nazi-sympathiser-or-national-hero-the-strange-story-of-han-van-meegeren/'),
  ('van-meegeren-fooled-goering', 'de', 2, 'Museum of Hoaxes: Han van Meegeren (1947)', 'https://hoaxes.org/archive/permalink/han_van_meegeren');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'van-meegeren-fooled-goering', 'en', 'van-meegeren-fooled-goering',
  'A forger sold Hermann Göring a fake Vermeer',
  'After the war, he was facing treason charges. He got out of it by painting another Vermeer in front of witnesses.',
  'Dutchman Han van Meegeren sold Nazi leader Hermann Göring a supposed painting by Johannes Vermeer. To avoid being convicted as a traitor, he had to prove he had painted it himself.',
  'Selling a national treasure to a Nazi makes you a traitor. Unless the treasure is a fake. That’s exactly the argument the painter Han van Meegeren used to save himself after World War II.

## A Vermeer for Göring

Han van Meegeren was a Dutch painter whose own pictures hardly anyone wanted. So he painted in the style of the famous 17th-century artist Johannes Vermeer and passed the works off as newly discovered originals.

It worked surprisingly well. According to History Hit, he sold the painting "Christ and the Adulteress" to Hermann Göring, one of the most powerful men in Nazi Germany. Göring paid over 1.5 million guilders.

According to History Hit, van Meegeren sold another work, "The Supper at Emmaus", for 520,000 guilders. Experts at the time celebrated it as one of the most important Vermeers ever.

## Proof in front of witnesses

In 1945, after the war ended, Allied soldiers found Göring’s art collection in a salt mine. The supposed Vermeer was among it. The trail led to van Meegeren, and he was arrested. He was facing charges of collaboration for selling Dutch cultural property to the enemy.

Van Meegeren had only one way out: he confessed that he had painted the picture himself. At first, nobody wanted to believe him. According to the Museum of Hoaxes, he therefore painted a new "Vermeer" in custody, in front of witnesses, to prove it.

> Bonus fact: In the end, van Meegeren wasn’t convicted as a traitor. According to History Hit, he got one year in prison for forgery. According to the Museum of Hoaxes, he never served it, because he died first.

For many people in the Netherlands, that made him a sort of folk hero. After all, he had fooled one of the most powerful Nazis.

Göring’s art collection ended up with a rather embarrassing showpiece. And van Meegeren became more famous for a fake than for any of the real paintings he ever made.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('van-meegeren-fooled-goering', 'en', 1, 'Book about famous art forgers', 'book famous art forgers', 'Tells the most gripping stories about faked masterpieces.'),
  ('van-meegeren-fooled-goering', 'en', 2, 'Beginner oil paint set', 'beginner oil paint set canvas', 'For trying the style of the old masters, completely legally.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('van-meegeren-fooled-goering', 'en', 1, 'History Hit: Nazi Sympathiser or National Hero? The Strange Story of Han van Meegeren', 'https://www.historyhit.com/nazi-sympathiser-or-national-hero-the-strange-story-of-han-van-meegeren/'),
  ('van-meegeren-fooled-goering', 'en', 2, 'Museum of Hoaxes: Han van Meegeren (1947)', 'https://hoaxes.org/archive/permalink/han_van_meegeren');
