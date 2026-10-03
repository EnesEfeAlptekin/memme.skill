#!/usr/bin/env bash
# Smoke test for install.sh — verifies each target copies to a fake HOME.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FAKE_HOME="$(mktemp -d)"
trap 'rm -rf "$FAKE_HOME"' EXIT

run_case() {
  local target="$1"
  shift
  local expect_dirs=("$@")

  rm -rf "${FAKE_HOME}/.claude"
  HOME="$FAKE_HOME" "${REPO_DIR}/install.sh" "$target" >/dev/null

  for dir in "${expect_dirs[@]}"; do
    if [[ ! -f "${FAKE_HOME}/.claude/skills/${dir}/SKILL.md" ]]; then
      echo "FAIL: ${target} -> missing ${dir}/SKILL.md" >&2
      exit 1
    fi
  done
  echo "PASS: install.sh ${target}"
}

run_case "turkmeme" "turkmeme"
run_case "turkmeme-lite" "turkmeme-lite"
run_case "all" "turkmeme" "turkmeme-lite"

echo "All install.sh tests passed."
