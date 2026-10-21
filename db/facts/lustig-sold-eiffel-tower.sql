-- WTFact-Fakt „Ein Betrüger verkaufte den Eiffelturm, und zwar zweimal“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('lustig-sold-eiffel-tower', '2026-10-22T19:00:00+02:00', 'crime', '🗼', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lustig-sold-eiffel-tower', 'de', 'lustig-verkaufte-eiffelturm',
  'Ein Betrüger verkaufte den Eiffelturm, und zwar zweimal',
  'Gefälschtes Briefpapier, ein Hotelzimmer, ein paar Schrotthändler. Mehr brauchte Victor Lustig nicht.',
  '1925 gab sich der Hochstapler Victor Lustig als Regierungsbeamter aus und verkaufte den Eiffelturm an einen Schrotthändler. Der schämte sich zu sehr, um zur Polizei zu gehen, also versuchte Lustig es gleich noch einmal.',
  'Den Eiffelturm kann man nicht kaufen. Das wissen wir heute. Ein Pariser Schrotthändler wusste es 1925 offenbar nicht, und Victor Lustig wusste das auszunutzen.

## Eine Zeitungsmeldung als Geschäftsidee

Im Mai 1925 las Lustig, ein Hochstapler, der sich gern „Graf“ nannte, in einer Pariser Zeitung einen Artikel: Der Eiffelturm sei in schlechtem Zustand, die Instandhaltung teuer. Für Lustig klang das nach einer Chance.

Er ließ Briefpapier fälschen, das ihn als hohen Beamten des Ministeriums für Post und Telegrafie auswies. Dann lud er Schrotthändler zu einem vertraulichen Treffen in ein Hotel ein. Laut „Mental Floss“ waren es fünf. Seine Geschichte: Die Regierung wolle den Turm abreißen und das Metall verkaufen, natürlich streng geheim, um keinen Aufruhr in der Stadt auszulösen.

## Zu peinlich für die Polizei

Den Zuschlag bekam ein Händler namens André Poisson. Er bezahlte, und obendrein zahlte er Lustig noch ein Bestechungsgeld, damit der Deal auch sicher klappte. Dann war Lustig weg, abgesetzt nach Österreich.

Und Poisson? Ging nicht zur Polizei. Er schämte sich zu sehr, dass er auf so einen Trick hereingefallen war.

Lustig wartete und las Zeitung. Als keine Meldung über den Betrug kam, kehrte er nach Paris zurück und zog dieselbe Masche noch einmal ab, diesmal mit anderen Schrotthändlern. Dieses Mal ging das Opfer zur Polizei, die Geschichte landete in der Presse, und Lustig floh in die USA.

> Bonusfakt: In den USA wurde Lustig später wegen Falschgeld verhaftet. Der Mann, der den Eiffelturm verkauft hatte, stolperte am Ende über gefälschte Dollarscheine.

Lustig hat das berühmteste Bauwerk Frankreichs zweimal verkauft, ohne es je zu besitzen. Der Turm hat davon nicht einmal etwas gemerkt.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lustig-sold-eiffel-tower', 'de', 1, 'Sachbuch über berühmte Hochstapler', 'Buch berühmte Hochstapler Betrüger Geschichte', 'Die dreistesten Schwindler der Geschichte in einem Band.'),
  ('lustig-sold-eiffel-tower', 'de', 2, 'Eiffelturm-Modellbausatz', 'Eiffelturm Modellbausatz', 'Ein Eiffelturm, der dir ganz legal gehört.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lustig-sold-eiffel-tower', 'de', 1, 'Mental Floss: Smooth Operator: How Con Man “Count” Victor Lustig Sold The Eiffel Tower—Twice', 'https://www.mentalfloss.com/crime/smooth-operator-how-victor-lustig-sold-eiffel-tower'),
  ('lustig-sold-eiffel-tower', 'de', 2, 'Ripley’s Believe It or Not!: The Charlatan Count Who Sold the Eiffel Tower', 'https://www.ripleys.com/stories/sold-eiffel-tower');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'lustig-sold-eiffel-tower', 'en', 'lustig-sold-eiffel-tower',
  'A con man sold the Eiffel Tower, twice',
  'Fake stationery, a hotel suite and a few scrap dealers. That’s all Victor Lustig needed.',
  'In 1925, con man Victor Lustig posed as a government official and sold the Eiffel Tower to a scrap dealer. The victim was too embarrassed to go to the police, so Lustig tried it again.',
  'You can’t buy the Eiffel Tower. We know that today. A Parisian scrap dealer apparently didn’t know it in 1925, and Victor Lustig knew how to use that.

## A news story as a business plan

In May 1925, Lustig, a con man who liked to call himself "Count", read an article in a Paris newspaper: the Eiffel Tower was in poor shape and expensive to maintain. To Lustig, that sounded like an opportunity.

He had stationery forged that identified him as a senior official at the ministry of posts and telegraphs. Then he invited scrap dealers to a confidential meeting at a hotel. According to Mental Floss, there were five of them. His story: the government wanted to tear down the tower and sell off the metal, all top secret, of course, to avoid a public uproar.

## Too embarrassing for the police

The winning bid went to a dealer named André Poisson. He paid, and on top of that he paid Lustig a bribe to make sure the deal went through. Then Lustig was gone, off to Austria.

And Poisson? He didn’t go to the police. He was too embarrassed that he had fallen for such a trick.

Lustig waited and read the papers. When no story about the fraud appeared, he went back to Paris and ran the same scam again, this time on other scrap dealers. This time the victim did go to the police, the story hit the press, and Lustig fled to the United States.

> Bonus fact: In the US, Lustig was later arrested for counterfeiting. The man who sold the Eiffel Tower was eventually tripped up by fake dollar bills.

Lustig sold France’s most famous landmark twice without ever owning it. The tower didn’t even notice.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('lustig-sold-eiffel-tower', 'en', 1, 'Book about famous con artists', 'book famous con artists history', 'The boldest swindlers in history in one volume.'),
  ('lustig-sold-eiffel-tower', 'en', 2, 'Eiffel Tower model kit', 'Eiffel Tower model kit', 'An Eiffel Tower that actually belongs to you.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('lustig-sold-eiffel-tower', 'en', 1, 'Mental Floss: Smooth Operator: How Con Man “Count” Victor Lustig Sold The Eiffel Tower—Twice', 'https://www.mentalfloss.com/crime/smooth-operator-how-victor-lustig-sold-eiffel-tower'),
  ('lustig-sold-eiffel-tower', 'en', 2, 'Ripley’s Believe It or Not!: The Charlatan Count Who Sold the Eiffel Tower', 'https://www.ripleys.com/stories/sold-eiffel-tower');
