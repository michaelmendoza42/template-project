# Repo scaffold runbook
Last edited: 2026-05-21
Status: Active
Scope: Create a new repository from this template
Related files: `../../scripts/setup-template-repo.sh`, `../README.md`, `../../README.md`

## Purpose

Use the setup script to copy this template structure into a new repo.
The script creates a fresh `.git/`, installs the local commit template and hook configuration, rewrites the starter `README.md`, and can replace an existing destination with `--force`.

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

3. Review the generated `README.md`, confirm the authority model, then fill in `docs/glossary.md` with project-specific behavioral and technical language.
4. Create product behavior docs under `docs/product/` before expecting agents to preserve nuanced product behavior.
5. Confirm the generated repo has local git guardrails configured: `git config --get core.hooksPath` should return `.githooks`, and `git config --get commit.template` should return `.gitmessage`.
6. Run `./scripts/check-guardrails.sh` in the generated repo to verify the local guardrail setup.
7. Add project-specific docs under `docs/system/`, `docs/standards/`, or `docs/runbooks/` as needed.
8. Add nested `AGENTS.md` files only where local rules differ.
9. Replace the starter onboarding text with repo-specific guidance.

## Validation

- Destination contains `AGENTS.md`, `README.md`, `docs/`, `work/`, `scratch/`, and `warp-pipe/`.
- Destination has a fresh local `.git/` initialized for the new repo.
- Destination has `core.hooksPath = .githooks` and `commit.template = .gitmessage` configured locally.
- `scripts/check-guardrails.sh` exists, is executable, and reports `PASS` when the guardrail config is correct.
- Generated `README.md` reflects the new repo name, links `docs/glossary.md` plus `docs/standards/documentation-model.md`, and explains that human-approved decisions outrank AI inference.

## Related docs

- `../README.md`
- `../../README.md`
- `../../AGENTS.md`
- `migrating-doc-structure.md`

## Changelog

### 2026-05-21
- Updated validation to require `warp-pipe/` in scaffolded repos.

### 2026-05-20
- Updated the scaffold runbook to describe the auto-configured local commit template and hook setup.
- Added `scripts/check-guardrails.sh` to verify local guardrail configuration.
- Merged the separate product and technical glossaries into a single `docs/glossary.md` workflow.
- Updated the scaffold runbook for the new `product` / `system` / `standards` / `runbooks` / `decisions` / `work` taxonomy.
- Updated validation to check for the shared glossary path, `work/`, and local git guardrail config.

### 2026-05-17
- Updated the scaffold runbook for the explicit authority model in generated repositories.
- Added a validation check for the generated README's authority-model guidance.

### 2026-05-04
- Updated the runbook to call out both glossary files in scaffolded repos.

### 2026-05-04
- Updated the runbook for the fixed scaffold script, fresh git init, and positional repo-name usage.

### 2026-05-04
- Added the repo scaffold runbook for the new setup script.
