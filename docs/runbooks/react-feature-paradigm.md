# React Feature Paradigm
Last edited: 2026-05-11
Status: Active
Scope: Feature implementation guidance for repositories scaffolded from this template
Related files: `../../README.md`, `./repo-scaffold.md`

This runbook defines the default implementation paradigm for product features in projects created from this template.

## Decision

Use React.js as the default paradigm for building new frontend features unless a project-specific ADR or explicit user direction states otherwise.

## Expectations

- New UI features should be implemented as React components.
- Feature behavior should be organized around React state, props, and composition patterns.
- Non-React implementations for features should be treated as exceptions and documented.

## Validation

Before marking feature work complete, confirm:

- The feature follows React component architecture.
- Any divergence from React is explicitly justified in project docs or task notes.

## Related docs

- `../../README.md`
- `./repo-scaffold.md`
- `../special/documentation-model.md`

## Changelog

### 2026-05-11
- Added the canonical runbook defining React.js as the default paradigm for feature implementation.
