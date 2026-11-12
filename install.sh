#!/usr/bin/env bash
# Symlink every script in bin/ into ~/.local/bin (backs up any existing non-symlink file).
set -euo pipefail
SRC="$(cd "$(dirname "$0")/bin" && pwd)"
DEST="$HOME/.local/bin"
mkdir -p "$DEST"
for f in "$SRC"/*; do
  n="$(basename "$f")"
  if [ -e "$DEST/$n" ] && [ ! -L "$DEST/$n" ]; then mv "$DEST/$n" "$DEST/$n.bak.$(date +%s)"; fi
  ln -sfn "$f" "$DEST/$n"
  echo "linked $n"
done
