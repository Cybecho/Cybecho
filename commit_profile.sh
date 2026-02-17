#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

TARGET_BRANCH="${GITHUB_REF_NAME:-main}"
if git show-ref --verify --quiet "refs/heads/${TARGET_BRANCH}"; then
  git checkout "$TARGET_BRANCH"
elif git show-ref --verify --quiet "refs/remotes/origin/${TARGET_BRANCH}"; then
  git checkout -B "$TARGET_BRANCH" "origin/${TARGET_BRANCH}"
fi

git add README.md table.html spooky/table.html imgList.txt

if git diff --cached --quiet; then
  echo "No staged changes; skip commit."
  exit 0
fi

git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git commit -m "chore: automated readme gallery update $(date -u +'%Y-%m-%d %H:%M:%S UTC')"
git push
