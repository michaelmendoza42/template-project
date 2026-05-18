# Repo scaffold runbook
Last edited: 2026-05-17
Status: Active
Scope: Create a new repository from this template
Related files: `../../scripts/setup-template-repo.sh`, `../README.md`, `../../README.md`

## Purpose

Use the setup script to copy this template structure into a new repo.
The script creates a fresh `.git/`, rewrites the starter `README.md`, and can replace an existing destination with `--force`.

## Steps

1. Choose the destination path for the new repo.
2. Run the scaffold script from this repo:

   ```bash
   ./scripts/setup-template-repo.sh /path/to/new-repo my-repo
   ```

   or:

   ```bash
   ./scripts/setup-template-repo.sh /path/to/new-repo --name my-repo
   ```

3. Review the generated `README.md`, confirm the authority model, then fill in `docs/domain/glossary.md` and `docs/domain/technical-glossary.md` with project-specific language.
4. Initialize or connect the destination repo to the correct remote.
5. Add any subtree `AGENTS.md` files only where local rules differ.

## Validation

- Destination contains `AGENTS.md`, `README.md`, `docs/`, `plans/`, `tasks/`, and `scratch/`.
- Destination has a fresh local `.git/` initialized for the new repo.
- Generated `README.md` reflects the new repo name, links both glossary files plus `docs/special/documentation-model.md`, and explains that human-approved decisions outrank AI inference.

## Related docs

- `../README.md`
- `../../README.md`
- `../../AGENTS.md`

## Changelog

### 2026-05-17
- Updated the scaffold runbook for the explicit authority model in generated repositories.
- Added a validation check for the generated README's authority-model guidance.

### 2026-05-04
- Updated the runbook to call out both glossary files in scaffolded repos.

### 2026-05-04
- Updated the runbook for the fixed scaffold script, fresh git init, and positional repo-name usage.

### 2026-05-04
- Added the repo scaffold runbook for the new setup script.
