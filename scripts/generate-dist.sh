#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
skill_name="cli-tui-design-language"
src="$root/skills/$skill_name"
dist="$root/dist"

rm -rf "$dist"

copy_skill_dir() {
  local dest="$1"
  mkdir -p "$dest"
  rsync -a "$src/" "$dest/"
}

copy_skill_dir "$dist/claude-plugin/.claude/skills/$skill_name"
mkdir -p "$dist/claude-plugin/.claude-plugin"
cp "$root/.claude-plugin/plugin.json" "$dist/claude-plugin/.claude-plugin/plugin.json"
cp "$root/.claude-plugin/marketplace.json" "$dist/claude-plugin/.claude-plugin/marketplace.json"

copy_skill_dir "$dist/codex/.codex/skills/$skill_name"
copy_skill_dir "$dist/agents/.agents/skills/$skill_name"
