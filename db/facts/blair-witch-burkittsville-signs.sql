-- WTFact-Fakt „Die Blair-Hexe gab es nie, trotzdem klauten Fans jahrelang die Ortsschilder des echten Dorfs“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('blair-witch-burkittsville-signs', '2026-11-07T16:00:00+01:00', 'horror', '🌲', 0, 3);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'blair-witch-burkittsville-signs', 'de', 'blair-witch-dorf-ortsschilder',
  'Die Blair-Hexe gab es nie, trotzdem klauten Fans jahrelang die Ortsschilder des echten Dorfs',
  'Ein Horrorfilm verkaufte eine erfundene Legende so gut, dass ein kleiner Ort in Maryland jahrelang mit Souvenirjägern zu kämpfen hatte.',
  'Die Legende der Blair-Hexe wurde für einen Film von 1999 erfunden, trotzdem nahmen Besucher rund zehn Jahre lang die Ortsschilder des echten Dorfs Burkittsville in Maryland mit.',
  '1999 kam ein Horrorfilm ins Kino, der eine schlichte Behauptung aufstellte: 1994 sind drei Filmstudierende in den Wäldern bei Burkittsville in Maryland verschwunden, während sie eine Doku über eine örtliche Legende drehten, die Blair-Hexe. Was du siehst, soll das Material sein, das von ihnen übrig blieb.

## Der eigentliche Spuk war die Website

Co-Regisseur Eduardo Sánchez, der Einzige im Team, der Websites bauen konnte, richtete blairwitch.com ein. Dort gab es Vermisstenplakate, Fotos der zurückgelassenen Sachen, eine Zeitleiste mit seltsamen Ereignissen aus der Ortsgeschichte und Interviews mit Ermittlern. Die drei Hauptdarsteller durften keine Presse machen, und die IMDb führte sie sogar als verstorben.

Auch die Hexe bekam eine Vorgeschichte: Elly Kedward, der Hexerei beschuldigt und 1785 aus ihrem Dorf verbannt. Viele Besucher hielten die Legende für echt. Die Hexe und ihre Legende waren komplett erfunden.

Das hat funktioniert. Laut dem Museum of Hoaxes lag das Produktionsbudget bei rund 500.000 Dollar, eingespielt hat der Film weltweit über 248 Millionen.

## Das Dorf, das den Besuch abbekam

Burkittsville dagegen gibt es wirklich. CBS News beschrieb es als Dorf mit 214 Einwohnern, einer Hauptstraße und weder Restaurant noch Tankstelle. Nach dem Film überrannten Schaulustige den Ort und nahmen Straßen- und Friedhofsschilder mit. Laut der Bürgermeisterin hatten Patrouillen wegen des Films schon die Hälfte des Notfallbudgets von 3.000 Dollar aufgebraucht. Ernst nahm die Legende im Ort niemand.

Die Souvenirjagd hörte nicht auf. Rund zehn Jahre lang verschwanden die Ortsschilder, selbst nachdem der Ort Holz- gegen Metallschilder getauscht hatte. 2009 stellte Burkittsville schließlich auf ein neues Design um, blau mit weißer Schrift und roten Sternen, in der Hoffnung, dass die neuen Schilder nicht mehr geklaut werden.

> Bonusfakt: Rat holte sich die damalige Bürgermeisterin bei Verantwortlichen in Amityville im Bundesstaat New York, einem Ort, der das wegen seines eigenen Horrorhits „The Amityville Horror“ schon kannte.

Eine Hexe, die nie gelebt hat, hielt ein echtes Dorf ein Jahrzehnt lang auf Trab. Nicht schlecht für eine Website.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('blair-witch-burkittsville-signs', 'de', 1, 'The Blair Witch Project Blu-ray', 'Blair Witch Project Blu-ray', 'Der Found-Footage-Klassiker für einen düsteren Filmabend.'),
  ('blair-witch-burkittsville-signs', 'de', 2, 'Buch zur Geschichte des Horrorfilms', 'Geschichte des Horrorfilms Buch', 'Ein Überblick, wie das Horrorkino sein Publikum über die Jahrzehnte erschreckt hat.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('blair-witch-burkittsville-signs', 'de', 1, 'Museum of Hoaxes: The Blair Witch Project (1999)', 'https://hoaxes.org/archive/permalink/the_blair_witch_project'),
  ('blair-witch-burkittsville-signs', 'de', 2, 'Mental Floss: See the Website That Convinced People ''The Blair Witch Project'' Was Real in 1999', 'https://www.mentalfloss.com/posts/see-original-the-blair-witch-project-website'),
  ('blair-witch-burkittsville-signs', 'de', 3, 'CBS News: In Burkittsville, Life''s A Witch', 'https://www.cbsnews.com/news/in-burkittsville-lifes-a-witch'),
  ('blair-witch-burkittsville-signs', 'de', 4, 'NBC Washington: Town Remakes Signs to Deter Blair Witch Thieves', 'https://nbcwashington.com/news/local/town-remakes-signs-to-deter-blair-witch-thieves/1876850');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'blair-witch-burkittsville-signs', 'en', 'blair-witch-town-signs',
  'The Blair Witch never existed, but fans kept stealing the real village''s signs',
  'A horror film sold an invented legend so well that a tiny town in Maryland had to deal with souvenir hunters for years.',
  'The Blair Witch legend was invented for a 1999 film, yet visitors took the welcome signs of the real village of Burkittsville, Maryland, for about ten years.',
  'In 1999, a horror film opened with a simple claim: in 1994, three student filmmakers disappeared in the woods near Burkittsville, Maryland, while making a documentary about a local legend, the Blair Witch. What you see on screen is supposed to be the footage they left behind.

## The website did the haunting

Co-director Eduardo Sánchez, the only person on the team who could build websites, set up blairwitch.com. It offered missing-person flyers, photos of the students'' abandoned belongings, a timeline of strange events in local history and interviews with investigators. The three lead actors were kept away from the press, and IMDb even listed them as deceased.

The witch got a backstory too: Elly Kedward, accused of witchcraft and banished from her village in 1785. Many visitors believed the legend was real. Both the witch and her legend were entirely made up.

It worked. According to the Museum of Hoaxes, the film''s production budget was around 500,000 dollars, and it grossed more than 248 million worldwide.

## The village that got the visitors

Burkittsville, however, is real. CBS News described it as a village of 214 people with one main street and no restaurants or gas station. After the film, curiosity seekers overran the place and took road and cemetery signs. The mayor said patrols linked to the film had already used up half of the village''s 3,000 dollar contingency fund. Nobody in town took the legend seriously.

The souvenir hunting didn''t stop. Visitors kept taking the welcome signs for about ten years, even after the town swapped wooden signs for metal ones. In 2009, Burkittsville finally switched to a new design in blue with white letters and red stars, hoping the new signs would finally stop the thefts.

> Bonus fact: For advice, the mayor at the time turned to officials in Amityville, New York, a town that knew all about this from its own horror hit, "The Amityville Horror".

A witch who never lived kept a real village busy for a decade. Not bad for a website.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('blair-witch-burkittsville-signs', 'en', 1, 'The Blair Witch Project Blu-ray', 'Blair Witch Project Blu-ray', 'The original found-footage film for a dark movie night.'),
  ('blair-witch-burkittsville-signs', 'en', 2, 'Book on the history of horror films', 'history of horror films book', 'An overview of how horror cinema scared audiences over the decades.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('blair-witch-burkittsville-signs', 'en', 1, 'Museum of Hoaxes: The Blair Witch Project (1999)', 'https://hoaxes.org/archive/permalink/the_blair_witch_project'),
  ('blair-witch-burkittsville-signs', 'en', 2, 'Mental Floss: See the Website That Convinced People ''The Blair Witch Project'' Was Real in 1999', 'https://www.mentalfloss.com/posts/see-original-the-blair-witch-project-website'),
  ('blair-witch-burkittsville-signs', 'en', 3, 'CBS News: In Burkittsville, Life''s A Witch', 'https://www.cbsnews.com/news/in-burkittsville-lifes-a-witch'),
  ('blair-witch-burkittsville-signs', 'en', 4, 'NBC Washington: Town Remakes Signs to Deter Blair Witch Thieves', 'https://nbcwashington.com/news/local/town-remakes-signs-to-deter-blair-witch-thieves/1876850');
