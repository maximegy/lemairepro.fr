#!/usr/bin/env bash

# Display available updates to Academic.
cd themes/academic
git fetch
echo "Display commits changelogs"
git log --pretty=oneline --abbrev-commit --decorate HEAD..origin/master
cd ../../

# Update Academic.
echo "Update Academic"
git submodule update --remote --merge
