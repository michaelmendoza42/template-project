# Docs
Last edited: 2026-05-20

This directory holds canonical project documentation.

## Folders

- `product/` — intended product behavior, rules, invariants, and shared product language
- `system/` — architecture, boundaries, technical reference, and internal implementation language
- `standards/` — repository-wide policy, testing rules, structure, and conventions
- `runbooks/` — repeatable operational procedures
- `decisions/` — optional, sparse records of consequential tradeoffs
- `templates/` — copy/paste starters for canonical docs and temporary work docs

## Rule of thumb

If a fact matters to correctness, onboarding, architecture, safety, or repeatable operations, it belongs somewhere under `docs/` or in `AGENTS.md`.

If a note is still temporary, keep it in `work/` until it is ready to be promoted.

## Related docs

- `product/README.md`
- `system/README.md`
- `standards/README.md`
- `runbooks/README.md`
- `decisions/README.md`
- `standards/doc-routing.md`
- `standards/documentation-model.md`
- `standards/documentation-schema.md`

## Changelog

### 2026-05-20
- Linked the canonical documentation routing standard from the docs index.
- Replaced the old `adr` / `domain` / `special` map with the behavior-first `product` / `system` / `standards` / `runbooks` / `decisions` taxonomy.
- Updated the docs rule of thumb to route temporary work into `work/`.

### 2026-04-30
- Added the documentation schema and templates as part of the canonical docs structure.

### 2026-04-30
- Initial docs index covering folder purpose and the promotion rule.
