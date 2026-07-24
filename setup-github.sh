#!/bin/bash
set -euo pipefail

REPO_URL="https://github.com/najmostert/Second-Book.git"
BRANCH="main"

cd "$(dirname "$0")"

if ! command -v git >/dev/null 2>&1; then
  echo "Error: git is not installed."
  echo "Install Xcode Command Line Tools, then run this script again:"
  echo "  xcode-select --install"
  exit 1
fi

if [ ! -d .git ]; then
  git init -b "$BRANCH"
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REPO_URL"
else
  git remote add origin "$REPO_URL"
fi

git add -A
git status

if git diff --cached --quiet; then
  echo "Nothing new to commit."
else
  git commit -m "$(cat <<'EOF'
Initial commit: Second Book project structure and manuscripts.

EOF
)"
fi

echo ""
echo "Pushing to $REPO_URL ..."
git push -u origin "$BRANCH"

echo ""
echo "Done. Repository: https://github.com/najmostert/Second-Book"
