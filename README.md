# Template Project
Last edited: 2026-05-17

Starter governance template for React/web-app repositories that separates durable policy from temporary work state and makes decision authority explicit.

## Overview

This repository is a starter layout for React/web-app projects that separate:

1. **Canonical docs** — stable source-of-truth policy and knowledge
2. **Scoped operational docs** — local rules near the code they govern
3. **Ephemeral work artifacts** — temporary plans, migration notes, and task state
4. **Inferred memory** — useful convenience, never authority

It also makes the authority model explicit:

- **Human decisions** bind until a human replaces them.
- **AI proposals** are drafts until approved.
- **AI assumptions** may change anytime unless they conflict with human decisions.
- **Location alone does not create authority.**

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
- React.js is the default implementation paradigm for new feature work in repositories scaffolded from this template.
- Human-approved policy, ADRs, domain rules, and runbooks outrank AI-authored drafts and inferred conventions.
- A document becomes binding because a human approved it, not merely because it lives under `docs/`.
- Add nested `AGENTS.md` files only when a subtree needs local rules that are not globally true.
- `plans/active/` and `tasks/` hold temporary work state. Label it clearly and promote durable learnings into canonical docs.
- `scratch/` is disposable. Do not treat it as source of truth.
- Tool memory, chat history, and inferred preferences are convenience only. If something matters to correctness, onboarding, architecture, or safety, write it down explicitly.

## Promotion rule

If a temporary note or AI inference becomes important enough to rely on repeatedly, promote it to one of:

- `AGENTS.md`
- `docs/adr/`
- `docs/domain/`
- `docs/runbooks/`
- `docs/special/`

Promotion chooses the durable home. Human approval is what makes the promoted decision binding.

## Agent instructions

This template uses `AGENTS.md` as the repository's stable agent instruction file.

## Related docs

- `docs/README.md`
- `docs/domain/glossary.md`
- `docs/domain/technical-glossary.md`
- `docs/runbooks/repo-scaffold.md`
- `docs/runbooks/react-feature-paradigm.md`
- `docs/special/documentation-model.md`
- `docs/special/documentation-schema.md`

## Changelog

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
