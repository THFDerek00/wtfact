# WTFact

- Beiträge: Ton und Regeln stehen in `docs/styleguide.md`, geprüft von `scripts/check-posts.mjs`.
- Aussehen: Tokens und Regeln stehen in `docs/design-system.md`. Neue Farben, Größen, Abstände nur als Token in `src/styles/global.css` anlegen, Komponenten nutzen `var(--…)`.
- Vor jedem Commit `npm run check` ausführen. Es läuft auch automatisch vor `npm run build`.
