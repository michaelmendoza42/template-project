# Template Project
Last edited: 2026-04-30

Starter layout for projects that separate durable policy from temporary work state.

## Overview

This repository is a starter layout for projects that separate:

1. **Canonical docs** — stable source-of-truth policy and knowledge
2. **Scoped operational docs** — local rules near the code they govern
3. **Ephemeral work artifacts** — temporary plans, migration notes, and task state
4. **Inferred memory** — useful convenience, never authority

## Repo layout

```text
.
├── AGENTS.md
├── README.md
├── docs/
│   ├── README.md
│   ├── adr/
│   ├── domain/
│   ├── runbooks/
│   ├── special/
│   └── templates/
├── plans/
│   ├── active/
│   └── archived/
├── tasks/
└── scratch/
```

## Conventions

- `README.md` is for human onboarding.
- `AGENTS.md` holds stable agent-operational rules that matter in most sessions.
- `docs/adr/`, `docs/domain/`, `docs/runbooks/`, and `docs/special/` are canonical.
- Add nested `AGENTS.md` files only when a subtree needs local rules that are not globally true.
- `plans/active/` and `tasks/` hold temporary work state. Label it clearly and promote durable learnings into canonical docs.
- `scratch/` is disposable. Do not treat it as source of truth.
- Tool memory, chat history, and inferred preferences are convenience only. If something matters to correctness, onboarding, architecture, or safety, write it down explicitly.

## Promotion rule

If a temporary note becomes important enough to rely on repeatedly, promote it to one of:

- `AGENTS.md`
- `docs/adr/`
- `docs/domain/`
- `docs/runbooks/`
- `docs/special/`

## Agent instructions

This template uses `AGENTS.md` as the repository's stable agent instruction file.

## Related docs

- `docs/README.md`
- `docs/special/documentation-model.md`
- `docs/special/documentation-schema.md`

## Changelog

### 2026-04-30
- Added documentation-schema support to the template and linked the canonical docs for formatting and structure.

### 2026-04-30
- Initial template README describing the documentation tiers, repo layout, conventions, and promotion rule.
