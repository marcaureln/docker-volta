#!/bin/bash

latest_version=$(curl -fsSL \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/volta-cli/volta/releases?per_page=1 | \
  tac | tac | \
  grep -m 1 -o '"tag_name": *"[^"]*"' | \
  grep -o '"[^"]*"$' | \
  tr -d '"' | \
  sed 's/^v//')

if [ $? -eq 0 ]; then
  # Replace the version in latest.txt
  echo "$latest_version" > latest.txt

  # Append the latest version to the top of releases.txt
  { echo "$latest_version"; cat releases.txt; } > temp.txt && mv temp.txt releases.txt

  echo "Successfully updated latest.txt and releases.txt."
  exit 0
else
  echo "Failed to fetch the latest release tag." >&2
  exit 1
fi
