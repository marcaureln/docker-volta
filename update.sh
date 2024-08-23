#!/bin/bash

curl -fsSL \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/volta-cli/volta/releases?per_page=1 | \
  grep -m 1 -o '"tag_name": *"[^"]*"' | \
  grep -o '"[^"]*"$' | \
  tr -d '"' | \
  sed 's/^v//' \
  > latest.txt

if [ $? -eq 0 ]; then
  exit 0
else
  echo "Failed to fetch the latest release tag." >&2
  exit 1
fi
