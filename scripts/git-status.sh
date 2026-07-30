#!/usr/bin/env bash

set -euo pipefail

echo
echo "Repository Status"
echo "-----------------"
git status

echo
echo "Recent Commits"
echo "--------------"
git log --oneline -5

echo
echo "Remote"
echo "------"
git remote -v