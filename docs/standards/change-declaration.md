# Change Declaration Standard
Last edited: 2026-05-21
Status: Active
Scope: Local git commit declarations for behavior-sensitive repositories scaffolded from this template
Related files: `testing.md`, `documentation-model.md`, `../../.gitmessage`, `../../.githooks/commit-msg`, `../../scripts/check-guardrails.sh`, `../../.github/workflows/template-guardrails.yml`

This standard defines the commit-level declaration fields used by the local git guardrails in repositories created from this template.

## Purpose

The repo should not guess whether a change is behavior-changing.

Instead, the committer declares intent in the commit message, and the local `commit-msg` hook validates that the staged change matches that declaration.

## Required fields

Every normal commit should fill these fields from the shared commit template:

- `Change-Type: behavior | internal | docs | refactor`
- `Behavior-Doc: docs/product/... | n/a`
- `Tests-Updated: yes | no | n/a`
- `Approval: explicit | n/a`
- `Approval-Source: path-or-note | n/a`

## Field meanings

### `Change-Type`

- `behavior` — implements or changes human-approved product behavior
- `internal` — implementation-only change that should not change approved behavior
- `docs` — documentation-only or documentation-primary change
- `refactor` — structural change intended to preserve behavior

### `Behavior-Doc`

Use the canonical product behavior doc that governs the change.

Rules:

- behavior commits must reference a staged `docs/product/...` behavior doc
- non-behavior commits may use `n/a`
- if a non-behavior commit still updates a behavior doc intentionally, it may reference that doc for clarity

### `Tests-Updated`

- `yes` — staged test files changed in this commit
- `no` — tests were considered but did not need changes
- `n/a` — not relevant for this commit type

### `Approval`

- `explicit` — a human explicitly approved the behavior change or approved editing an already-approved behavior doc
- `n/a` — no explicit behavior approval is being claimed in this commit

### `Approval-Source`

Use the artifact or note that records where the approval came from.

Allowed forms:

- a real repo path such as `work/tasks/...` or `docs/product/...`
- a note-like value such as `chat:2026-05-20 behavior approved by Michael`
- another short local reference such as `note:...` or `task:...`

Rules:

- if `Approval: explicit`, `Approval-Source` cannot be `n/a`
- behavior commits must provide `Approval-Source`
- edits to already-approved behavior docs must provide `Approval-Source`

## Hook behavior

The local `commit-msg` hook enforces these rules:

- placeholder values in the commit template must be replaced
- `behavior` commits must stage the referenced behavior doc in `docs/product/`
- `behavior` commits must stage tests in the same change
- `behavior` commits must declare `Tests-Updated: yes`
- `behavior` commits must declare `Approval: explicit`
- `behavior` commits must provide `Approval-Source`
- staged behavior docs under `docs/product/` must include `Status`, `Approved by`, and `Change policy`
- editing an already-approved behavior doc requires `Approval: explicit`
- `Approval-Source` must point to an existing file or use `chat:`, `note:`, or `task:` notation

## CI boundary

This template repo also keeps a narrow CI backstop in `.github/workflows/template-guardrails.yml`.

That workflow validates template-level regressions such as scaffold drift and stale taxonomy references, but it does not reproduce the full staged-file semantics of the local `commit-msg` hook.

Scaffolded repos therefore still rely on the local commit template and hook unless they add their own CI enforcement.

## Practical guidance

Use this system to make intent visible and checkable.

Do not use it to hide uncertainty.

If a change might affect approved behavior and you are not sure whether the human approved that change, stop and get clarification before committing it as `behavior`.

Do not treat `Approval: explicit` as a checkbox. The point of `Approval-Source` is to make the approval artifact discoverable later.

## Related docs

- `testing.md`
- `documentation-model.md`
- `../runbooks/repo-scaffold.md`
- `../../scripts/check-guardrails.sh`
- `../../.github/workflows/template-guardrails.yml`

## Changelog

### 2026-05-21
- Documented the boundary between local commit-hook enforcement and the template repo CI backstop.

### 2026-05-20
- Added `Approval-Source` so explicit approval claims must point to an artifact or note.
- Added the declaration-based local git guardrail standard for commit templates and commit-msg validation.
