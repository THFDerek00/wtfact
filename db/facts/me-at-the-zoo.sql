-- WTFact-Fakt „Das erste YouTube-Video dauert 19 Sekunden und handelt von Elefantenrüsseln“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft) VALUES
  ('me-at-the-zoo', '2026-09-03', 'tech', '🐘', 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'me-at-the-zoo', 'de', 'erstes-youtube-video',
  'Das erste YouTube-Video dauert 19 Sekunden und handelt von Elefantenrüsseln',
  'Am Anfang von unzähligen Stunden Video stand ein Typ im Zoo, der Rüssel ziemlich cool fand.',
  'Das allererste YouTube-Video heißt „Me at the zoo“, ist 19 Sekunden lang und zeigt einen Mitgründer vor zwei Elefanten.',
  'Heute landen auf YouTube Musikvideos, Tutorials, Livestreams und Videoessays, die länger sind als Kinofilme. Aber angefangen hat alles mit einem Clip, der kürzer ist als die meisten Werbespots.

## 19 Sekunden Weltgeschichte

Am **23. April 2005** lud Jawed Karim, einer der drei Gründer von YouTube, das erste Video auf die Plattform. Titel: „Me at the zoo“. Länge: **19 Sekunden**.

Zu sehen ist Karim im Zoo von San Diego. Hinter ihm stehen zwei Elefanten. Er sagt sinngemäß: „Okay, hier sind wir also vor den, äh, Elefanten. Das Coole an denen ist, dass sie richtig, richtig, richtig lange Rüssel haben.“ Viel mehr passiert nicht. Kein Schnitt, kein Intro, kein „Abonniert meinen Kanal“.

## Wer filmte, wer gründete

Gefilmt hat Karims Schulfreund Yakov Lapitsky. Laut TIME wurde der später Professor für Chemie- und Umwelttechnik an der University of Toledo in den USA. Ein Kameramann mit ziemlich ungewöhnlichem Lebenslauf.

YouTube selbst war 2005 von **Chad Hurley, Steve Chen und Jawed Karim** gegründet worden, die vorher alle bei PayPal gearbeitet hatten.

## Vom Testclip zum Kulturgut

Das Video ist bis heute online. Laut Wikipedia hat es inzwischen **mehr als 400 Millionen Aufrufe**. Das Magazin Business Insider kürte es sogar zum wichtigsten YouTube-Video aller Zeiten. Nicht wegen der Elefanten, sondern weil es zeigt, wie unspektakulär eine Revolution beginnen kann.

> Der Zoo von San Diego kommentierte das Video 2020 selbst. Laut Wikipedia wurde daraus der Kommentar mit den meisten Likes auf der ganzen Plattform.

Unzählige Stunden Content später bleibt die wichtigste Erkenntnis von YouTube übrigens unwidersprochen: Elefanten haben wirklich sehr lange Rüssel.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('me-at-the-zoo', 'de', 1, 'Smartphone-Stativ mit Bluetooth-Fernauslöser', 'Smartphone Stativ Bluetooth Fernauslöser', 'Für alle, die ihr eigenes erstes Video drehen wollen, ohne dass jemand die Kamera halten muss.'),
  ('me-at-the-zoo', 'de', 2, 'Elefant als Plüschtier', 'Elefant Plüschtier groß', 'Kuschelig, mit ordentlich langem Rüssel. Ein Klassiker für jedes Alter.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('me-at-the-zoo', 'de', 1, 'Wikipedia: Me at the zoo', 'https://en.wikipedia.org/wiki/Me_at_the_zoo'),
  ('me-at-the-zoo', 'de', 2, 'TIME: The First YouTube Video Was Uploaded 9 Years Ago Today', 'https://time.com/72892/the-first-youtube-video-was-uploaded-9-years-ago-today/'),
  ('me-at-the-zoo', 'de', 3, 'Smithsonian Magazine: Watch the First-Ever Video Uploaded to YouTube, a Grainy 19-Second Clip Called ''Me at the Zoo''', 'https://www.smithsonianmag.com/smart-news/watch-the-first-ever-video-uploaded-to-youtube-a-grainy-19-second-clip-called-me-at-the-zoo-180988225/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'me-at-the-zoo', 'en', 'first-youtube-video',
  'The first YouTube video is 19 seconds long and all about elephant trunks',
  'Countless hours of video started with a guy at the zoo who thought trunks were pretty cool.',
  'The very first YouTube video is called "Me at the zoo," runs 19 seconds and shows a co-founder in front of two elephants.',
  'Today YouTube is full of music videos, tutorials, livestreams and video essays longer than feature films. But it all started with a clip shorter than most commercials.

## 19 seconds of history

On **April 23, 2005**, Jawed Karim, one of YouTube''s three founders, uploaded the platform''s first video. Title: "Me at the zoo." Length: **19 seconds**.

It shows Karim at the San Diego Zoo with two elephants behind him. He says: "Alright, so here we are in front of the, uh, elephants, and the cool thing about these guys is that they have really, really, really long trunks." Not much else happens. No editing, no intro, no "smash that subscribe button."

## Who filmed it, who founded it

The camera was in the hands of Karim''s high school friend Yakov Lapitsky. According to TIME, he later became a professor of chemical and environmental engineering at the University of Toledo. Not your typical camera operator résumé.

YouTube itself was founded in 2005 by **Chad Hurley, Steve Chen and Jawed Karim**, who had all worked at PayPal before.

## From test clip to cultural artifact

The video is still online. According to Wikipedia, it now has **more than 400 million views**. Business Insider even named it the most important YouTube video of all time. Not because of the elephants, but because it shows how unremarkably a revolution can begin.

> The San Diego Zoo commented on the video itself in 2020. According to Wikipedia, that became the most-liked comment on the entire platform.

Countless hours of content later, YouTube''s first big insight still holds up: elephants really do have very long trunks.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('me-at-the-zoo', 'en', 1, 'Phone tripod with Bluetooth remote', 'phone tripod with bluetooth remote', 'For anyone who wants to shoot their own first video without needing someone to hold the camera.'),
  ('me-at-the-zoo', 'en', 2, 'Elephant plush toy', 'elephant plush stuffed animal', 'Cuddly, with a properly long trunk. A classic for any age.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('me-at-the-zoo', 'en', 1, 'Wikipedia: Me at the zoo', 'https://en.wikipedia.org/wiki/Me_at_the_zoo'),
  ('me-at-the-zoo', 'en', 2, 'TIME: The First YouTube Video Was Uploaded 9 Years Ago Today', 'https://time.com/72892/the-first-youtube-video-was-uploaded-9-years-ago-today/'),
  ('me-at-the-zoo', 'en', 3, 'Smithsonian Magazine: Watch the First-Ever Video Uploaded to YouTube, a Grainy 19-Second Clip Called ''Me at the Zoo''', 'https://www.smithsonianmag.com/smart-news/watch-the-first-ever-video-uploaded-to-youtube-a-grainy-19-second-clip-called-me-at-the-zoo-180988225/');
