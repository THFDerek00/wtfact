-- Datenbank für Wisch-Bewertungen und die Montags-Abstimmung (Cloudflare D1).
-- Einmal in der D1-Konsole ausführen oder: npx wrangler d1 execute wtfact --remote --file db/schema.sql
-- `voter` ist eine zufällige Kennung, die der Browser beim ersten Bewerten erzeugt. Keine IP, kein Name.

CREATE TABLE IF NOT EXISTS ratings (
  fact_key   TEXT NOT NULL,
  voter      TEXT NOT NULL,
  verdict    TEXT NOT NULL CHECK (verdict IN ('like', 'meh')),
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  PRIMARY KEY (fact_key, voter)
);

-- poll = Datum des Abstimmungs-Montags (JJJJ-MM-TT). Eine Stimme pro Kennung und Montag, änderbar bis Mitternacht.
CREATE TABLE IF NOT EXISTS votes (
  poll       TEXT NOT NULL,
  voter      TEXT NOT NULL,
  fact_key   TEXT NOT NULL,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  PRIMARY KEY (poll, voter)
);
CREATE INDEX IF NOT EXISTS votes_by_poll ON votes (poll, fact_key);
