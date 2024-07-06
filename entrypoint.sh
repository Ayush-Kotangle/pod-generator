#!/bin/bash
echo "================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_ACTOR}"
git config --global --add safe.directory /github/workspace

python3 /user/bin/feed.py

git add -A && commit -m "Update Feed"

git push --set-upstream origin main 

echo "================="
