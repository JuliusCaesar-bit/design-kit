#!/usr/bin/env bash
# Installs Julius's design kit for every project (user scope).
# Mac / Linux:  bash setup/install.sh
# Cloud:        paste setup/cloud-setup-script.sh into the environment's Setup script.
set -u

if ! command -v claude >/dev/null 2>&1; then
  echo "Claude Code CLI not found. Install it first: https://code.claude.com/docs" >&2
  exit 1
fi

add_marketplace() {
  claude plugin marketplace add "$1" >/dev/null 2>&1 \
    && echo "ok    marketplace $1" \
    || echo "skip  marketplace $1 (already added or unreachable)"
}

install_plugin() {
  local out
  if out=$(claude plugin install "$1" --scope user 2>&1); then
    echo "ok    $1"
  else
    echo "FAIL  $1: $(printf '%s' "$out" | tail -n 2 | tr '\n' ' ')" >&2
    FAILED=1
  fi
}

FAILED=0

add_marketplace anthropics/skills
add_marketplace JuliusCaesar-bit/design-kit

# Pull the latest version of both marketplaces before installing.
claude plugin marketplace update anthropic-agent-skills >/dev/null 2>&1 || true
claude plugin marketplace update design-kit >/dev/null 2>&1 || true

# Anthropic official skills
for p in document-skills example-skills claude-api; do
  install_plugin "$p@anthropic-agent-skills"
done

# Design kit
for p in ux-ui-design taste-skill gsap-skills accesslint emil-kowalski-skills vercel-agent-skills \
         shadcn bencium-controlled-ux-designer bencium-innovative-ux-designer bencium-impact-designer \
         design-audit typography; do
  install_plugin "$p@design-kit"
done

# UI UX Pro Max is already synced from Julius's claude.ai account. On a machine without it, run:
#   claude plugin install ui-ux-pro-max@design-kit --scope user

if [ "$FAILED" -eq 0 ]; then
  echo "Done. Restart Claude Code (or open a new session), then type /ux-ui-design."
else
  echo "Finished with failures above. Check your network and run the script again." >&2
fi
exit 0
