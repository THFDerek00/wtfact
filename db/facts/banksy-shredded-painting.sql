-- WTFact-Fakt „Ein Banksy zerstörte sich bei der Auktion selbst und war danach 18 Mal so viel wert“
-- Eine Datei pro Fakt. Wird von npm run db:build in db/wtfact.sqlite geladen (Schema: db/facts-schema.sql).
INSERT INTO facts (key, date, category, emoji, draft, slot) VALUES
  ('banksy-shredded-painting', '2026-10-22T10:00:00+02:00', 'art', '✂️', 0, 0);

-- de
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'banksy-shredded-painting', 'de', 'banksy-geschreddertes-bild',
  'Ein Banksy zerstörte sich bei der Auktion selbst und war danach 18 Mal so viel wert',
  'Kaum war der Hammer gefallen, rutschte das Bild durch einen Schredder im Rahmen. Drei Jahre später kam die Überraschung.',
  '2018 wurde Banksys „Girl with Balloon“ für rund 1,04 Millionen Pfund versteigert und schredderte sich direkt danach halb selbst. 2021 brachte das zerstörte Werk über 18 Millionen Pfund.',
  'Normalerweise verliert ein Kunstwerk an Wert, wenn es kaputtgeht. Bei Banksy ist das anders. Sein bekanntestes Bild wurde durch seine eigene Zerstörung erst richtig wertvoll.

## Der Schredder im Rahmen

Im Oktober 2018 wurde in London das Bild „Girl with Balloon“ des anonymen Straßenkünstlers Banksy versteigert. Der Zuschlag lag bei rund 1,04 Millionen Pfund. Doch kaum war der Hammer gefallen, passierte etwas, womit niemand gerechnet hatte.

Das Bild rutschte nach unten aus dem Rahmen, und zwar in Streifen. Im Rahmen war ein Schredder versteckt. Er zerschnitt das Bild etwa zur Hälfte, dann blieb er stecken. Das Publikum im Saal war fassungslos.

## Aus Kaputt wird Kunst

Der Kauf wurde trotzdem abgeschlossen. Banksy gab dem halb geschredderten Bild einen neuen Namen: „Love is in the Bin“, also „Die Liebe ist im Mülleimer“.

Drei Jahre später, im Oktober 2021, kam es erneut unter den Hammer. Laut dem Shropshire Star erzielte es diesmal 18.582.000 Pfund. Laut NBC Los Angeles entspricht das rund 25,4 Millionen US-Dollar.

Damit war das Bild rund 18 Mal so viel wert wie beim ersten Verkauf. Der Schredder hatte es nicht zerstört, sondern zu einem der berühmtesten Kunstwerke der Gegenwart gemacht.

> Bonusfakt: Wer Banksy wirklich ist, weiß die Öffentlichkeit bis heute nicht sicher. Der Künstler hält seine Identität geheim und zeigt sich nie offen.

Viele sehen die Aktion als Kommentar auf den Kunstmarkt, auf dem Bilder oft vor allem als teure Geldanlage gekauft werden. Ausgerechnet dieser Markt hat die Aktion dann mit einem Rekordpreis belohnt.

Wer also zu Hause ein Bild versehentlich zerreißt, sollte sich nicht zu früh freuen. Bei den meisten Bildern klappt der Banksy-Trick leider nicht.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('banksy-shredded-painting', 'de', 1, 'Buch über Banksy', 'Buch Banksy Street Art', 'Die bekanntesten Werke des anonymen Künstlers im Überblick.'),
  ('banksy-shredded-painting', 'de', 2, 'Schablonen-Set für Street Art', 'Schablonen Set Sprühfarbe Street Art', 'Für eigene Kunstwerke im Stil der Straße, natürlich auf erlaubten Flächen.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('banksy-shredded-painting', 'de', 1, 'NBC Los Angeles: Shredded Banksy Artwork Sells for $25.4 Million at Auction', 'https://www.nbclosangeles.com/entertainment/entertainment-news/shredded-banksy-artwork-sells-for-25-4-million-at-auction/2714245/'),
  ('banksy-shredded-painting', 'de', 2, 'Shropshire Star: Partially shredded Banksy painting sells for more than £18m', 'https://www.shropshirestar.com/news/uk-news/2021/10/14/partially-shredded-banksy-painting-sells-for-more-than-18m/');

-- en
INSERT INTO texts (fact, lang, slug, title, teaser, hook, body) VALUES (
  'banksy-shredded-painting', 'en', 'banksy-shredded-painting',
  'A Banksy destroyed itself at auction and was then worth 18 times as much',
  'The moment the hammer fell, the painting slid through a shredder hidden in its frame. Three years later came the twist.',
  'In 2018, Banksy’s "Girl with Balloon" sold for about £1.04 million and then half-shredded itself. In 2021, the damaged work fetched more than £18 million.',
  'Usually, a work of art loses value when it gets destroyed. Banksy is different. His best-known picture only became truly valuable through its own destruction.

## The shredder in the frame

In October 2018, a painting by the anonymous street artist Banksy, "Girl with Balloon", went up for auction in London. The winning bid was about £1.04 million. But the moment the hammer came down, something happened that nobody expected.

The painting slid down out of its frame, in strips. A shredder was hidden in the frame. It cut the picture about halfway, then jammed. The audience in the room was stunned.

## From broken to art

The sale went through anyway. Banksy gave the half-shredded painting a new name: "Love is in the Bin".

Three years later, in October 2021, it went under the hammer again. According to the Shropshire Star, it fetched £18,582,000 this time. According to NBC Los Angeles, that’s about 25.4 million US dollars.

That made the painting worth about 18 times as much as at the first sale. The shredder hadn’t destroyed it, it had turned it into one of the most famous artworks of our time.

> Bonus fact: To this day, the public doesn’t know for sure who Banksy really is. The artist keeps their identity secret and never appears openly.

Many see the stunt as a comment on the art market, where paintings are often bought mainly as expensive investments. And it was that very market that rewarded the stunt with a record price.

So if you accidentally tear a picture at home, don’t celebrate too soon. Sadly, the Banksy trick doesn’t work for most paintings.'
);

INSERT INTO products (fact, lang, pos, name, query, why) VALUES
  ('banksy-shredded-painting', 'en', 1, 'Book about Banksy', 'book Banksy street art', 'The anonymous artist’s best-known works at a glance.'),
  ('banksy-shredded-painting', 'en', 2, 'Street art stencil set', 'street art stencil set spray paint', 'For your own street-style art, on walls where it’s allowed, of course.');

INSERT INTO sources (fact, lang, pos, label, url) VALUES
  ('banksy-shredded-painting', 'en', 1, 'NBC Los Angeles: Shredded Banksy Artwork Sells for $25.4 Million at Auction', 'https://www.nbclosangeles.com/entertainment/entertainment-news/shredded-banksy-artwork-sells-for-25-4-million-at-auction/2714245/'),
  ('banksy-shredded-painting', 'en', 2, 'Shropshire Star: Partially shredded Banksy painting sells for more than £18m', 'https://www.shropshirestar.com/news/uk-news/2021/10/14/partially-shredded-banksy-painting-sells-for-more-than-18m/');
