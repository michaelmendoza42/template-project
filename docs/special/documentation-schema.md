# Repository Documentation Schema
Last edited: 2026-05-17
Status: Active
Scope: Canonical and reference Markdown docs in this template repo (`README.md`, `docs/**`, and similar human-facing reference docs)
Related files: `documentation-model.md`, `../templates/`

This document defines the standard structure for the docs that should stay human-readable, durable, and easy to scan.

## Scope and exclusions

In scope by default:

- root `README.md`
- files under `docs/`
- other human-facing reference READMEs a project may add later

Out of scope by default:

- `AGENTS.md`
- `plans/**`
- `tasks/**`
- `scratch/**`
- vendored, generated, or third-party content

Those excluded areas use their own formats unless a project explicitly opts them into this schema.

## Baseline schema

Every in-scope Markdown file should include:

1. `# Title` — a single top-level heading.
2. `Last edited: YYYY-MM-DD` — placed immediately under the title.
3. Optional metadata lines such as `Status`, `Owner`, `Scope`, `Related files`, `Decision owner`, `Drafted by`, or `Approved by`.
4. Main body content.
5. `## Changelog` — always the final top-level section.
6. Reverse-chronological changelog entries with newest first.

## Date format

Use ISO `YYYY-MM-DD`.

## Changelog entry format

```md
## Changelog

### 2026-04-30
- Short bullet describing what changed.
- Another bullet if needed.

### 2026-04-18
- Earlier change.
```

Rules:

- Newest entries go first.
- Each dated entry is an `### YYYY-MM-DD` subheading.
- Changelog bullets should describe document-level changes.
- If the main body is itself a chronological log, keep that log in the body and still add a separate document changelog at the bottom.

## Doc types

### Reference READMEs

Recommended sections:

- brief description
- overview or key concepts
- usage or folder purpose
- related docs
- changelog

### ADR-style docs

Recommended sections:

- status metadata
- decision owner / approval metadata when authority matters
- context
- decision
- consequences
- alternatives considered
- follow-up
- changelog

### Domain or policy docs

Recommended sections:

- status or scope metadata when useful
- key concepts or rules
- examples or constraints
- related docs
- changelog

### Runbooks

Recommended sections:

- status metadata when useful
- purpose or problem
- steps
- validation or rollback
- related docs
- changelog

## Authoring checklist

When creating or editing an in-scope doc:

- [ ] Update `Last edited:` to today's date.
- [ ] Add a new `### YYYY-MM-DD` entry at the top of `## Changelog`.
- [ ] Keep the newest changelog entry first.
- [ ] Keep `## Changelog` as the final top-level section.
- [ ] Preserve category-specific sections where they add clarity.

## Templates

Copy/paste starters live in `docs/templates/`:

- `docs/templates/general.md`
- `docs/templates/decision.md`
- `docs/templates/readme.md`
- `docs/templates/runbook.md`

## Changelog

### 2026-05-17
- Added authority-related metadata examples such as `Decision owner`, `Drafted by`, and `Approved by`.
- Clarified that ADR-style docs should record approval metadata when authority matters.

### 2026-04-30
- Added the template repo's documentation schema, scoped only to canonical and reference docs.
