# Architecture Decision Records
Last edited: 2026-05-17

Use this folder for architecture decisions that are stable enough to rely on, or for formal ADR proposals that are clearly marked as drafts.

## Naming

Create files like:

- `ADR-0001-short-title.md`
- `ADR-0002-short-title.md`

## Status and authority

Use explicit status metadata:

- `Status: Proposed` — draft only, not binding yet
- `Status: Approved` — human-approved and binding
- `Status: Superseded` — kept for history, but no longer current

A file living in `docs/adr/` does not become binding just because it exists there.
Human approval is what turns an ADR into repo policy.

## When to write an ADR

Write an ADR when a decision affects:

- system structure
- integration boundaries
- storage or API contracts
- security or safety posture
- migration direction
- long-lived technical constraints

## What does not belong here

Do not use ADRs for:

- one-off task notes
- speculative future ideas with no concrete decision under review
- temporary debugging context
- draft plans that may disappear next week

## Related docs

- `ADR-0000-template.md`
- `../special/documentation-model.md`
- `../special/documentation-schema.md`

## Changelog

### 2026-05-17
- Clarified the difference between proposed, approved, and superseded ADRs.
- Documented that human approval, not file placement alone, makes an ADR binding.

### 2026-04-30
- Reformatted this README to match the repo documentation schema and linked the ADR template.

### 2026-04-30
- Initial ADR folder guidance covering naming, usage criteria, and exclusions.
