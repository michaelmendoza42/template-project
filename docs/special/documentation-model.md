# Repository Documentation Model
Last edited: 2026-04-30
Status: Active
Scope: Repository-wide documentation policy
Related files: `documentation-schema.md`, `../README.md`

This repository separates documentation into four tiers so stable policy does not get mixed with temporary work state.

## 1. Canonical docs

Canonical docs are the source of truth.

Store them in:

- `README.md`
- `AGENTS.md`
- `docs/adr/`
- `docs/domain/`
- `docs/runbooks/`
- `docs/special/`

Canonical docs should contain things the team expects to be true enough to rely on repeatedly.

Examples:

- architecture decisions
- domain invariants
- safety constraints
- integration contracts
- build, test, and deploy procedures
- stable repo conventions

## 2. Scoped operational docs

Scoped docs are still explicit, but only apply in one subtree or workflow.

Examples:

- `apps/web/AGENTS.md`
- `services/payments/AGENTS.md`
- workflow-specific instructions near a tool or script

Add a nested `AGENTS.md` when local rules differ from the repo default.

## 3. Ephemeral work artifacts

These documents are intentionally temporary.

Store them in:

- `plans/active/`
- `plans/archived/`
- `tasks/`
- `scratch/` for disposable notes

Use them for:

- migration slices
- refactor staging notes
- active rollout plans
- checkpoint state for long-running work
- task-level execution notes

Every temporary document should declare:

- `Status`
- `Owner`
- `Expires when`
- `Promote to`

## 4. Inferred memory

Inferred memory includes tool-learned preferences, chat context, or temporary assumptions.

Use it only as a convenience.

Never treat inferred memory as authority for:

- correctness
- onboarding
- architecture
- safety
- operational procedure

If it matters, write it down explicitly.

## Promotion rule

Nothing inferred becomes policy until it is promoted into a canonical document.

When a temporary plan or recurring assumption becomes important, move it into the right durable home:

- `AGENTS.md` for stable agent-operational rules
- `docs/adr/` for architecture decisions
- `docs/domain/` for invariants and contracts
- `docs/runbooks/` for repeatable procedures
- `docs/special/` for project-specific policy and special cases

## Anti-patterns

Avoid these failure modes:

- turning `AGENTS.md` into a junk drawer
- mixing stale task notes with repo policy
- keeping migration strategy only in chat history
- relying on inferred memory for anything safety-critical
- leaving temporary docs unlabelled so they look permanent

## Changelog

### 2026-04-30
- Reformatted this policy doc to match the repo documentation schema and linked it to the schema file.

### 2026-04-30
- Initial version defining the canonical, scoped, ephemeral, and inferred documentation tiers.
