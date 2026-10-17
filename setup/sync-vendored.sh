#!/usr/bin/env bash
# Refreshes the vendored plugins from their upstream repos. Run from anywhere, then commit the changes.
set -euo pipefail
KIT="$(cd "$(dirname "$0")/.." && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "${TMP:?}"' EXIT

git clone -q --depth 1 https://github.com/bencium/bencium-marketplace "$TMP/bencium"
for d in bencium-controlled-ux-designer bencium-innovative-ux-designer bencium-impact-designer design-audit typography; do
  rsync -a --delete --exclude LICENSE "$TMP/bencium/$d/" "$KIT/plugins/$d/"
  cp "$TMP/bencium/LICENSE" "$KIT/plugins/$d/LICENSE"
done

git clone -q --depth 1 https://github.com/AccessLint/skills "$TMP/accesslint"
rsync -a --delete "$TMP/accesslint/plugins/accesslint/" "$KIT/plugins/accesslint/"

git clone -q --depth 1 --filter=blob:none --sparse https://github.com/shadcn-ui/ui "$TMP/shadcn"
git -C "$TMP/shadcn" sparse-checkout set skills
rsync -a --delete "$TMP/shadcn/skills/" "$KIT/plugins/shadcn/skills/"
cp "$TMP/shadcn/LICENSE.md" "$KIT/plugins/shadcn/LICENSE.md"

echo "Vendored plugins refreshed. Bump versions in plugin.json files, then commit and push."
