#!/usr/bin/env bash
# Install turkmeme skill into ~/.claude/skills/
set -euo pipefail

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/turkmeme"
DEST_DIR="${HOME}/.claude/skills/turkmeme"

if [[ ! -d "$SRC_DIR" ]]; then
  echo "Error: source dir not found at $SRC_DIR" >&2
  exit 1
fi

mkdir -p "${HOME}/.claude/skills"
rm -rf "$DEST_DIR"
cp -r "$SRC_DIR" "$DEST_DIR"

echo "Installed turkmeme skill to $DEST_DIR"
echo "Use /turkmeme in Claude Code to trigger it manually."
