#!/bin/bash

versions=$(curl -fsSL \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/volta-cli/volta/releases | \
  grep -o '"tag_name": *"[^"]*"' | \
  grep -o '"[^"]*"$' | \
  tr -d '"' | \
  sed 's/^v//')

# Convert the versions into a JSON array
json_array=$(echo "$versions" | awk '{printf "\"%s\", ", $0}' | sed 's/, $//')

# Print the JSON array
echo "[$json_array]"
