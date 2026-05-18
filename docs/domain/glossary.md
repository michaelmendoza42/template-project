# Glossary
Last edited: 2026-05-17
Status: Active
Scope: Shared terminology for repositories created from this template
Related files: `README.md`, `../special/documentation-model.md`, `../special/documentation-schema.md`

Use this glossary for terms that should mean the same thing across the repo.

## Terms

### AGENTS.md
The stable agent-instruction file for a repository or subtree. It contains rules that are expected to stay true across many sessions.

### AI explicit proposal
A draft policy, decision, convention, or durable suggestion written down by an AI agent. It is reviewable, but not binding until a human approves it.

### AI implicit decision
A temporary assumption, default, local implementation choice, or inferred convention made by an AI agent without explicit human approval. AI implicit decisions are disposable and may change at any time unless they conflict with human decisions.

### Canonical docs
Durable source-of-truth documentation that humans and agents can rely on repeatedly. In this template, canonical docs are the home for approved durable policy and, when clearly marked, formal proposals under review.

### Domain docs
Documentation in `docs/domain/` that records durable business rules, terminology, invariants, and integration contracts.

### Ephemeral work artifacts
Temporary documents that capture active work state, such as plans, task notes, migration slices, and disposable scratch notes. In this template they belong in `plans/`, `tasks/`, and `scratch/`.

### Human explicit decision
A direction, policy, or decision explicitly approved by a human. These decisions are binding until superseded by a newer human-approved decision.

### Human ratification
The human approval step that turns a proposal into a binding repo decision. File placement alone does not count as ratification.

### Inferred memory
Convenience context derived from chat history, tools, or agent memory. It is useful for speed, but it is never the authority for correctness, architecture, onboarding, safety, or operations.

### Promotion rule
The rule that temporary or inferred knowledge must be promoted into a canonical document and explicitly approved by a human before the team relies on it long term.

### Runbook
A repeatable operational procedure stored in `docs/runbooks/`. A runbook should be usable by someone who was not part of the original discussion.

### Scoped operational docs
Explicit instructions that apply only to a specific subtree or workflow rather than the whole repository. A nested `AGENTS.md` is the main example in this template.

### Special docs
Documentation in `docs/special/` for repository-specific policy, exceptions, or long-lived explanations that do not fit ADRs, domain docs, or runbooks.

### Warp Pipe
The repository’s intake workflow/folder (`warp-pipe/`) for newly imported assets that need AI-assisted routing into their correct long-term location.

## Related docs

- `README.md`
- `../special/documentation-model.md`
- `../special/documentation-schema.md`

## Changelog

### 2026-05-17
- Added authority-model terms for `Human explicit decision`, `Human ratification`, `AI explicit proposal`, and `AI implicit decision`.
- Clarified that canonical docs can contain clearly marked proposals, but only human-approved decisions are binding.

### 2026-05-12
- Added `Warp Pipe` as the canonical term for the repo's AI-assisted asset intake workflow.

### 2026-05-04
- Added the initial glossary covering the template repo’s core documentation and workflow terms.
