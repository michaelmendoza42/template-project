# Template Project
Last edited: 2026-05-20

Starter governance template for behavior-first product repositories. It separates durable product truth from system reference, repo standards, operational procedures, and temporary execution work.

## Overview

This repository is organized around five questions:

1. What should the product do?
2. How is the system shaped to do that?
3. What standards govern the repository?
4. How do we operate or validate it safely?
5. What work is active right now?

It also keeps the authority model explicit:

- **Human decisions** bind until a human replaces them.
- **AI proposals** are drafts until a human approves them.
- **AI assumptions** may change anytime unless they conflict with human decisions.
- **Location alone does not create authority.**

## Repo layout

```text
.
├── .githooks/
├── .gitmessage
├── AGENTS.md
├── README.md
├── docs/
│   ├── README.md
│   ├── decisions/
│   ├── product/
│   ├── runbooks/
│   ├── standards/
│   ├── system/
│   └── templates/
├── work/
│   ├── archived/
│   ├── plans/
│   └── tasks/
├── scratch/
├── scripts/
└── warp-pipe/
```

## Conventions

- `README.md` is for human onboarding.
- `AGENTS.md` holds stable agent-operational rules that matter in most sessions.
- `.gitmessage` and `.githooks/commit-msg` provide local declaration-based commit guardrails.
- `docs/product/` is the primary canonical home for human-approved behavior and product rules.
- `docs/system/` holds durable architecture and implementation-shaping reference.
- `docs/standards/` holds repository-wide rules and conventions.
- `docs/runbooks/` holds executable procedures.
- `docs/decisions/` is optional and should stay sparse.
- `work/` holds temporary plans, tasks, migration notes, and other execution state.
- `scratch/` is disposable and never authoritative.

## Promotion rule

If a temporary note or AI inference becomes important enough to rely on repeatedly, promote it to one of:

- `AGENTS.md`
- `docs/product/`
- `docs/system/`
- `docs/standards/`
- `docs/runbooks/`
- `docs/decisions/`

Promotion chooses the durable home. Human approval is what makes the promoted decision binding.

## Related docs

- `docs/README.md`
- `docs/glossary.md`
- `docs/runbooks/repo-scaffold.md`
- `docs/runbooks/migrating-doc-structure.md`
- `docs/standards/change-declaration.md`
- `docs/standards/documentation-model.md`
- `docs/standards/documentation-schema.md`
- `docs/standards/testing.md`

## Changelog

### 2026-05-20
- Added declaration-based local git guardrails with `.gitmessage` and `.githooks/commit-msg`.
- Linked the new change-declaration standard from the root README.
- Reorganized the template around `product`, `system`, `standards`, `runbooks`, `decisions`, and `work`.
- Made behavior authority and temporary work separation explicit in the root layout and conventions.

### 2026-05-18
- Audit update: documented `scripts/` and `warp-pipe/` in the template layout.
- Clarified what `setup-template-repo.sh` copies versus template-local areas that do not ship to scaffolded repos.

### 2026-05-17
- Clarified that this template is a React/web-app-first governance template rather than a full app starter.
- Made the authority model explicit: human-approved decisions are binding, AI-authored proposals require human approval, and AI implicit decisions remain revisable.

### 2026-05-11
- Declared React.js as the default feature-development paradigm for repositories created from this template.
- Added a link to the React feature paradigm runbook.

### 2026-05-04
- Linked both domain glossaries from the root README for easier discovery in new repos.

### 2026-04-30
- Added documentation-schema support to the template and linked the canonical docs for formatting and structure.

### 2026-04-30
- Initial template README describing the documentation tiers, repo layout, conventions, and promotion rule.
