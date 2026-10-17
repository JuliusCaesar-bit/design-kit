#!/usr/bin/env bash
# Paste this into Claude Code on the web: environment menu (session title bar) > Edit > Setup script.
# Every new cloud session in that environment then starts with the full design kit installed.
# Requires the design-kit repo to be public (cloud setup runs before any repo access is granted).
set -u
export PATH="$PATH:/opt/node22/bin"
TMP=$(mktemp -d)
git clone -q --depth 1 https://github.com/JuliusCaesar-bit/design-kit "$TMP/design-kit" \
  && bash "$TMP/design-kit/setup/install.sh" \
  || echo "design-kit setup skipped (repo unreachable)"
exit 0
