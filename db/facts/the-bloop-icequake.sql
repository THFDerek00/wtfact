-- WTFact-Fakt „Der rätselhafte „Bloop“ aus dem Pazifik war 8 Jahre lang ein Mysterium“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('the-bloop-icequake', '2026-10-23T19:00:00+02:00', 'ocean', '🔊', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'the-bloop-icequake', 'de', 'bloop-eisbeben',
  'Der rätselhafte „Bloop“ aus dem Pazifik war 8 Jahre lang ein Mysterium',
  'Ein Geräusch, das über Tausende Kilometer zu hören war. Manche dachten an ein Seeungeheuer.',
  '1997 fingen Unterwassermikrofone im Pazifik ein lautes, tiefes Geräusch auf. Erst Jahre später fand die US-Behörde NOAA heraus, woher der „Bloop“ kam.',
  'Im Sommer 1997 hörten Forschende im Pazifik etwas, das sie sich nicht erklären konnten. Ein tiefes, anschwellendes Geräusch, das sie „Bloop“ nannten.

## Ein Geräusch quer über den Ozean

Die US-Behörde NOAA überwacht den Ozean mit Unterwassermikrofonen, sogenannten Hydrofonen. Laut NOAA wurde der Bloop von mehreren dieser Geräte aufgefangen, die mehr als 3.219 Kilometer voneinander entfernt waren. So weit reicht kaum ein Geräusch.

Laut ScienceAlert dauerte der Bloop etwa eine Minute. Er klang ähnlich wie Laute von Tieren, war aber viel lauter als alles, was man von Meerestieren kannte. Kein Wunder, dass schnell Spekulationen auftauchten: Gab es in der Tiefsee ein riesiges unbekanntes Lebewesen?

## Die Auflösung

Die Antwort war weniger gruselig, aber trotzdem spannend. Laut NOAA stammte der Bloop von einem Eisbeben. So nennt man das Geräusch, das entsteht, wenn große Eisberge brechen oder sich riesige Eisstücke von Gletschern in der Antarktis lösen.

Laut ScienceAlert kam NOAA der Sache 2005 auf die Spur, bei akustischen Messungen vor der Antarktis südlich von Südamerika. Laut ScienceAlert war die Sache spätestens 2011 endgültig geklärt. Bis dahin hatte das Rätsel rund 8 Jahre lang Fans von Seeungeheuern beschäftigt.

> Bonusfakt: Laut ScienceAlert war der Bloop eines der lautesten Unterwassergeräusche, die je aufgezeichnet wurden. Vermutet wurden vorher unter anderem Militärübungen, Schiffe, ein Riesenkalmar und Blauwale.

Schall reist im Wasser deutlich weiter als in der Luft. Deshalb können Hydrofone Ereignisse aufzeichnen, die viele Tausend Kilometer entfernt passieren, etwa Erdbeben, Wale oder eben brechendes Eis.

Ein Monster war es also nicht. Aber ein Eisberg, dessen Knacken man über einen halben Ozean hinweg hören kann, ist eigentlich auch ziemlich beeindruckend.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('the-bloop-icequake', 'de', 1, 'Hydrofon für Kinder', 'Hydrofon Unterwassermikrofon', 'Damit kann man selbst hören, was unter Wasser los ist.'),
  ('the-bloop-icequake', 'de', 2, 'Buch über Geräusche im Meer', 'Buch Klang Meer Ozean Geräusche', 'Erzählt, wie laut und vielfältig die Unterwasserwelt klingt.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('the-bloop-icequake', 'de', 1, 'NOAA Ocean Service: What is the bloop?', 'https://oceanservice.noaa.gov/facts/bloop.html'),
  ('the-bloop-icequake', 'de', 2, 'ScienceAlert: Listen to The Pacific "Bloop" Sound That Flummoxed Scientists For 8 Years', 'https://www.sciencealert.com/listen-to-the-pacific-bloop-sound-that-flummoxed-scientists-for-8-years');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'the-bloop-icequake', 'en', 'the-bloop-icequake',
  'The mysterious "Bloop" from the Pacific stayed a mystery for 8 years',
  'A sound heard across thousands of kilometers. Some people thought it was a sea monster.',
  'In 1997, underwater microphones in the Pacific picked up a loud, deep sound. Only years later did the US agency NOAA figure out where the "Bloop" came from.',
  'In the summer of 1997, researchers in the Pacific heard something they couldn’t explain. A deep, rising sound they called the "Bloop".

## A sound across the ocean

The US agency NOAA monitors the ocean with underwater microphones called hydrophones. According to NOAA, the Bloop was picked up by several of them, more than 3,219 kilometers (2,000 miles) apart. Hardly any sound travels that far.

According to ScienceAlert, the Bloop lasted about a minute. It sounded a bit like an animal, but was much louder than anything known from sea creatures. No wonder speculation started quickly: was there a giant unknown creature in the deep sea?

## The answer

The answer was less creepy but still fascinating. According to NOAA, the Bloop came from an icequake. That’s the sound made when large icebergs crack or huge chunks of ice break off glaciers in Antarctica.

According to ScienceAlert, NOAA got on the trail in 2005, during acoustic surveys in the Antarctic off South America. According to ScienceAlert, the case was closed for good by 2011. Until then, the mystery had kept sea monster fans busy for about 8 years.

> Bonus fact: According to ScienceAlert, the Bloop was one of the loudest underwater sounds ever recorded. Earlier guesses included military exercises, ships, a giant squid and blue whales.

Sound travels much further in water than in air. That’s why hydrophones can record events many thousands of kilometers away, such as earthquakes, whales or breaking ice.

So it wasn’t a monster. But an iceberg you can hear cracking across half an ocean is pretty impressive too.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('the-bloop-icequake', 'en', 1, 'Hydrophone for kids', 'hydrophone underwater microphone', 'Lets you hear for yourself what’s going on underwater.'),
  ('the-bloop-icequake', 'en', 2, 'Book about the sounds of the sea', 'book ocean sounds', 'Tells how loud and varied the underwater world sounds.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('the-bloop-icequake', 'en', 1, 'NOAA Ocean Service: What is the bloop?', 'https://oceanservice.noaa.gov/facts/bloop.html'),
  ('the-bloop-icequake', 'en', 2, 'ScienceAlert: Listen to The Pacific "Bloop" Sound That Flummoxed Scientists For 8 Years', 'https://www.sciencealert.com/listen-to-the-pacific-bloop-sound-that-flummoxed-scientists-for-8-years');
