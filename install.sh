#!/usr/bin/env bash
# Install turkmeme skill(s) into ~/.claude/skills/
# Usage: ./install.sh [turkmeme|turkmeme-lite|all]
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-turkmeme}"

install_skill() {
  local name="$1"
  local src="${BASE_DIR}/${name}"
  local dest="${HOME}/.claude/skills/${name}"

  if [[ ! -d "$src" ]]; then
    echo "Error: source dir not found at $src" >&2
    exit 1
  fi

  mkdir -p "${HOME}/.claude/skills"
  rm -rf "$dest"
  cp -r "$src" "$dest"
  echo "Installed $name to $dest"
}

case "$TARGET" in
  turkmeme)
    install_skill turkmeme
    echo "Use /turkmeme in Claude Code to trigger it manually."
    ;;
  turkmeme-lite)
    install_skill turkmeme-lite
    echo "Use /turkmeme-lite in Claude Code to trigger it manually."
    ;;
  all)
    install_skill turkmeme
    install_skill turkmeme-lite
    echo "Use /turkmeme or /turkmeme-lite in Claude Code to trigger manually."
    ;;
  *)
    echo "Error: unknown target '$TARGET'. Use turkmeme, turkmeme-lite, or all." >&2
    exit 1
    ;;
esac
