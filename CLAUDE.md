# WTFact

- Beiträge: Ton und Regeln stehen in `docs/styleguide.md`, geprüft von `scripts/check-posts.mjs`.
- Inhalte (Fakten, Gold-Fakten) stehen in SQLite (`scripts/facts-db.mjs`, Schema `db/facts-schema.sql`). In git liegt eine SQL-Datei pro Fakt in `db/facts/` bzw. `db/gold/`. Keine Markdown-Beiträge mehr anlegen; Datenbank direkt bearbeitet → `npm run db:dump`.
- Aussehen: Tokens und Regeln stehen in `docs/design-system.md`. Neue Farben, Größen, Abstände nur als Token in `src/styles/global.css` anlegen, Komponenten nutzen `var(--…)`.
- Vor jedem Commit `npm run check` ausführen. Es läuft auch automatisch vor `npm run build`.
