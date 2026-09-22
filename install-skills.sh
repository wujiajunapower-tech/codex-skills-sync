#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
destination="${HOME}/.agents/skills"
mkdir -p "$destination"

for source in "$repo_root/skills/local" "$repo_root/skills/user"; do
  if [[ -d "$source" ]]; then
    cp -R "$source"/. "$destination"/
  fi
done

echo "Installed local and user Skill snapshots to $destination"
