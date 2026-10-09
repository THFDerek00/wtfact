-- Inhalte von WTFact: alle Fakten (Beiträge) und die Gold-Fakten aus dem Science Jumper.
-- SQLite, gleiche Sprache wie Cloudflare D1. Die Datei db/wtfact.sqlite wird beim Prüfen und Bauen
-- aus diesem Schema und den SQL-Dateien in db/facts/ und db/gold/ neu erzeugt (scripts/facts-db.mjs).
-- Gespeichert wird in git die Textform (eine Datei pro Fakt), damit jeder Fakt im PR lesbar bleibt.

-- Ein Fakt mit allem, was in beiden Sprachen gleich ist.
CREATE TABLE facts (
  key      TEXT PRIMARY KEY,                -- verbindet DE und EN, z. B. 'bananas-berries'
  date     TEXT,                            -- Erscheinungszeit, 'JJJJ-MM-TT' oder ISO mit Uhrzeit und Zeitzone.
                                            -- NULL = im Pool: geschrieben, aber noch nicht eingeplant (Dashboard „Veröffentlichungen“)
  category TEXT NOT NULL,                   -- siehe CATEGORIES in src/config.ts
  emoji    TEXT NOT NULL,
  draft    INTEGER NOT NULL DEFAULT 0 CHECK (draft IN (0, 1)),  -- 1 nimmt den Fakt von der Seite, ohne ihn zu löschen
  slot     INTEGER CHECK (slot BETWEEN 0 AND 3)  -- im Dashboard eingeplant: 1 bis 3 = feste Zeit des Tages, 0 = Sonderveröffentlichung
);

-- Text eines Fakts in einer Sprache. body ist der Artikeltext mit Markdown-Auszeichnung (## Überschrift, > Zitat, **fett**).
CREATE TABLE texts (
  fact   TEXT NOT NULL REFERENCES facts (key) ON DELETE CASCADE,
  lang   TEXT NOT NULL CHECK (lang IN ('de', 'en')),
  slug   TEXT NOT NULL,                     -- Adresse: /de/<slug>/
  title  TEXT NOT NULL,
  teaser TEXT NOT NULL,
  hook   TEXT NOT NULL,                     -- der Fakt in einem Satz, für Karten und Social-Bilder
  body   TEXT NOT NULL,
  PRIMARY KEY (fact, lang),
  UNIQUE (lang, slug)
);

-- Amazon-Produkte. query ist der Suchbegriff für den Link (sicherer als erfundene ASINs).
CREATE TABLE products (
  fact  TEXT NOT NULL,
  lang  TEXT NOT NULL,
  pos   INTEGER NOT NULL,
  name  TEXT NOT NULL,
  query TEXT NOT NULL,
  why   TEXT NOT NULL,
  PRIMARY KEY (fact, lang, pos),
  FOREIGN KEY (fact, lang) REFERENCES texts (fact, lang) ON DELETE CASCADE
);

-- Quellen je Sprache (z. B. de.wikipedia.org und en.wikipedia.org).
CREATE TABLE sources (
  fact  TEXT NOT NULL,
  lang  TEXT NOT NULL,
  pos   INTEGER NOT NULL,
  label TEXT NOT NULL,
  url   TEXT NOT NULL,
  PRIMARY KEY (fact, lang, pos),
  FOREIGN KEY (fact, lang) REFERENCES texts (fact, lang) ON DELETE CASCADE
);

-- Gold-Fakten im Science Jumper, freigeschaltet ab einem Highscore von `points`.
CREATE TABLE gold_facts (
  id       TEXT PRIMARY KEY,
  points   INTEGER NOT NULL UNIQUE,
  category TEXT NOT NULL,
  emoji    TEXT NOT NULL
);

CREATE TABLE gold_texts (
  gold  TEXT NOT NULL REFERENCES gold_facts (id) ON DELETE CASCADE,
  lang  TEXT NOT NULL CHECK (lang IN ('de', 'en')),
  title TEXT NOT NULL,
  text  TEXT NOT NULL,
  PRIMARY KEY (gold, lang)
);

-- Gold-Fakten haben eine Quellenliste für beide Sprachen.
CREATE TABLE gold_sources (
  gold  TEXT NOT NULL REFERENCES gold_facts (id) ON DELETE CASCADE,
  pos   INTEGER NOT NULL,
  label TEXT NOT NULL,
  url   TEXT NOT NULL,
  PRIMARY KEY (gold, pos)
);

-- Ein ausgesuchtes Produkt pro Gold-Fakt und Sprache (Amazon-Partnerlink, Wunsch von Eric, 2026-10-09):
-- besonders passend und hochwertig, mit eigenem Emoji für die Werbefläche auf der Gold-Fakt-Seite.
CREATE TABLE gold_products (
  gold  TEXT NOT NULL REFERENCES gold_facts (id) ON DELETE CASCADE,
  lang  TEXT NOT NULL CHECK (lang IN ('de', 'en')),
  name  TEXT NOT NULL,
  query TEXT NOT NULL,
  why   TEXT NOT NULL,
  emoji TEXT NOT NULL,
  PRIMARY KEY (gold, lang)
);

-- Prüfsumme der SQL-Dateien beim letzten Aufbau. So merkt db:build, wenn jemand die
-- Datenbank direkt bearbeitet und noch nicht mit db:dump zurückgeschrieben hat.
CREATE TABLE meta (
  name  TEXT PRIMARY KEY,
  value TEXT NOT NULL
);
