#!/bin/bash
set -euo pipefail

# Only run setup in remote Claude Code environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

echo "V3TTA website session starting..."

# Install html-tidy if not present (for HTML validation/linting)
if ! command -v tidy &>/dev/null; then
  echo "Installing tidy (HTML linter)..."
  apt-get install -y -q tidy 2>/dev/null || true
fi

echo "Session ready."
