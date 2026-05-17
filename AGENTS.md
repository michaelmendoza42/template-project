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

## Reuse, discoverability, and hardening

- Prefer reuse over new one-off code.
- Before adding a new component, hook, utility, type, API wrapper, style pattern, or test helper, first check whether an existing equivalent can be reused or extended.
- Avoid copy/paste implementation when the same behavior already exists elsewhere. If similar behavior appears in multiple places, extract the smallest appropriate shared unit.
- If reuse is unnecessarily difficult because relevant code is hard to find, make a small targeted discoverability improvement as part of the change. Acceptable improvements include clearer naming, re-exports, updating nearby docs, consolidating shared helpers into a more obvious location, updating imports to use the canonical shared module, or adding a short note pointing to the canonical implementation.
- When fixing bugs or regressions, prefer identifying and fixing the root cause instead of only patching symptoms. Add small preventive hardening that matches the risk and touched area when appropriate, such as tests, guards, validation, clearer contracts, or cleanup.
- Do not create broad abstractions, large structural refactors, or speculative hardening just to remove superficial duplication, improve discoverability, or future-proof code. Keep abstractions and structural improvements small and boring. Symptom-level mitigation is acceptable for immediate containment when needed, but call out any remaining root cause or follow-up clearly.
- After implementation, review the diff for repeated logic, repeated UI structure, repeated styles, repeated test setup, avoidable discoverability problems, and whether the underlying failure mode remains unaddressed; refactor or explain why they remain.
- For non-trivial changes, include a brief reuse/discoverability/hardening note in the final handoff:
  - searched: X
  - reused or extended: Y
  - created new: Z because ...
  - improved discoverability by: ...
  - hardened by / root cause addressed: ...

- When editing `README.md` or files under `docs/`, follow `docs/special/documentation-schema.md`.
- Do not force that schema onto `AGENTS.md`, `plans/`, `tasks/`, or `scratch/` unless the user asks.
- Validate the changed area before claiming completion.
- Do not edit generated files directly; change the generator or source inputs instead.

## Where decisions live

- Architecture decisions: `docs/adr/`
- Domain invariants and contracts: `docs/domain/`
- Repeatable operational procedures: `docs/runbooks/`
- Project-specific policy and exceptions: `docs/special/`
