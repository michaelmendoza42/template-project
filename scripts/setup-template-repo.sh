#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  setup-template-repo.sh <destination> [repo-name] [--force]
  setup-template-repo.sh <destination> [--name <repo-name>] [--force]

Copies this template repo into <destination>, removes copied git history,
initializes a fresh git repo, and rewrites a few starter docs for the new repo.

Options:
  --name   Repo name to use in the generated README title
  --force  Remove existing destination contents before copying
USAGE
}

err() {
  printf 'error: %s\n' "$*" >&2
  exit 1
}

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
destination="${1:-}"
repo_name=""
force=0
today="$(date +%F)"

if [[ -z "$destination" ]]; then
  usage
  exit 1
fi

shift || true
while [[ $# -gt 0 ]]; do
  case "$1" in
    --name)
      [[ $# -ge 2 ]] || err "--name needs a value"
      [[ -z "$repo_name" ]] || err "repo name already provided"
      repo_name="$2"
      shift 2
      ;;
    --force)
      force=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    --)
      shift
      break
      ;;
    -*)
      err "unknown option: $1"
      ;;
    *)
      [[ -z "$repo_name" ]] || err "unexpected extra positional argument: $1"
      repo_name="$1"
      shift
      ;;
  esac
done

[[ $# -eq 0 ]] || err "unexpected extra arguments: $*"

mkdir -p "$destination"
destination_abs="$(cd "$destination" && pwd -P)"

case "$destination_abs" in
  "$repo_root"|"$repo_root"/*)
    err "destination must be outside the template repo: $destination_abs"
    ;;
esac

if [[ -z "$repo_name" ]]; then
  repo_name="$(basename "$destination_abs")"
fi

if [[ -n "$(find "$destination_abs" -mindepth 1 -maxdepth 1 -print -quit)" ]]; then
  if [[ "$force" -ne 1 ]]; then
    err "destination is not empty: $destination_abs (use --force to replace its contents)"
  fi
  find "$destination_abs" -mindepth 1 -maxdepth 1 -exec rm -rf {} +
fi

copy_items=(.githooks .gitmessage AGENTS.md README.md docs work scratch .gitignore scripts warp-pipe)
for item in "${copy_items[@]}"; do
  src="$repo_root/$item"
  [[ -e "$src" ]] || continue
  cp -R "$src" "$destination_abs/"
done

rm -rf "$destination_abs/.git"

git -C "$destination_abs" init -q
git -C "$destination_abs" config core.hooksPath .githooks
git -C "$destination_abs" config commit.template .gitmessage

cat > "$destination_abs/README.md" <<README
# $repo_name
Last edited: $today

Starter React/web-app governance repository created from the template project.

## Overview

This repository follows the template-project layout:

- durable policy and knowledge in \`docs/\` and \`AGENTS.md\`
- temporary execution state in \`work/\` and \`scratch/\`
- human onboarding in \`README.md\`
- human-approved decisions outrank AI-authored proposals and inferred conventions

A decision becomes binding through human approval, not merely because an AI wrote it into a durable folder.

## Next steps

- Read \`docs/standards/documentation-model.md\` before letting AI agents create or revise durable docs
- Add approved product behavior under \`docs/product/\`
- Define shared behavioral and technical language in \`docs/glossary.md\`
- Confirm local git guardrails are configured: \`git config --get core.hooksPath\` → \`.githooks\`, \`git config --get commit.template\` → \`.gitmessage\`
- Add project-specific system, standards, and runbook docs as needed
- Run \`./scripts/check-guardrails.sh\` after scaffold to confirm local guardrail configuration
- Add nested \`AGENTS.md\` files only where subtree rules differ
- Replace this starter text with repo-specific onboarding

## Related docs

- \`AGENTS.md\`
- \`docs/README.md\`
- \`docs/glossary.md\`
- \`docs/standards/change-declaration.md\`
- \`docs/standards/definition-of-done.md\`
- \`docs/standards/documentation-model.md\`
- \`docs/standards/documentation-schema.md\`
- \`docs/standards/testing.md\`
- \`scripts/check-guardrails.sh\`

## Changelog

### $today
- Initialized from the template repo with the behavior-first documentation scaffold, authority model, and local commit guardrails.
README

cat > "$destination_abs/.gitignore" <<'GITIGNORE'
.DS_Store
.pi/
scratch/*
!scratch/README.md
GITIGNORE

printf 'Initialized template repo at %s\n' "$destination_abs"
