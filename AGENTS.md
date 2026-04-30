# AGENTS.md

## Start here

- Read `README.md` for repo layout and onboarding.
- Treat `docs/adr/`, `docs/domain/`, `docs/runbooks/`, and `docs/special/` as canonical documentation.
- Use the nearest nested `AGENTS.md` when a subtree defines additional local rules.

## Documentation model

This repo uses four tiers:

1. **Canonical docs** — durable source of truth
2. **Scoped operational docs** — local rules for a subtree or workflow
3. **Ephemeral work artifacts** — temporary plans, task notes, migration state
4. **Inferred memory** — convenience only, never authority

## Working rules

- Keep this file short. Only put rules here that matter in nearly every session.
- Put subtree-specific exceptions in a nested `AGENTS.md` close to the relevant code.
- Put temporary planning in `plans/active/` and `tasks/`.
- Mark temporary docs with:
  - `Status`
  - `Owner`
  - `Expires when`
  - `Promote to`
- Promote anything important to correctness, onboarding, architecture, safety, or long-term operations into canonical docs before relying on it.
- Do not treat tool memory, chat history, or scratch notes as the source of truth.
- Prefer minimal, targeted changes.
- When editing `README.md` or files under `docs/`, follow `docs/special/documentation-schema.md`.
- Do not force that schema onto `AGENTS.md`, `plans/`, `tasks/`, or `scratch/` unless the user asks.
- Validate the changed area before claiming completion.
- Do not edit generated files directly; change the generator or source inputs instead.

## Where decisions live

- Architecture decisions: `docs/adr/`
- Domain invariants and contracts: `docs/domain/`
- Repeatable operational procedures: `docs/runbooks/`
- Project-specific policy and exceptions: `docs/special/`
