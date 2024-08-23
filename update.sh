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