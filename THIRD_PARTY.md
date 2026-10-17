# Third-party skills

Some plugins are copied into this repo (vendored) so they install reliably on every machine.
Each keeps its original license file. Refresh them from upstream with `bash setup/sync-vendored.sh`.

| Plugin folder | Upstream | License |
|---|---|---|
| plugins/shadcn | https://github.com/shadcn-ui/ui (skills/) | MIT, see plugins/shadcn/LICENSE.md |
| plugins/accesslint | https://github.com/AccessLint/skills (plugins/accesslint) | MIT (declared in its plugin.json) |
| plugins/bencium-controlled-ux-designer | https://github.com/bencium/bencium-marketplace | MIT, see LICENSE in folder |
| plugins/bencium-innovative-ux-designer | https://github.com/bencium/bencium-marketplace | MIT, see LICENSE in folder |
| plugins/bencium-impact-designer | https://github.com/bencium/bencium-marketplace | MIT, see LICENSE in folder |
| plugins/design-audit | https://github.com/bencium/bencium-marketplace | MIT, see LICENSE in folder |
| plugins/typography | https://github.com/bencium/bencium-marketplace | MIT, see LICENSE in folder |

All other third-party plugins (impeccable from its own marketplace pbakaus/impeccable, taste-skill, gsap-skills, emil-kowalski-skills, vercel-agent-skills,
ui-ux-pro-max, Anthropic skills) are pulled straight from their own repositories at install time.
