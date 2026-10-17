# Design Kit

Julius's Claude Code plugin marketplace for UX/UI work: one master skill, **UX/UI Design**
(`/ux-ui-design`), plus 60+ specialist design, animation, component and accessibility skills.
Impeccable (https://github.com/pbakaus/impeccable) is the direction and quality layer inside the
pipeline: PRODUCT.md, visual world, craft floor, detect, audit, critique and polish.

## Use it

Start any website or app project with:

```
/ux-ui-design
```

or just say "UX/UI Design" or "build a website". The skill runs the full pipeline: brief, inspiration
research, art direction, design system, shadcn/ui build, motion, accessibility and QA, deploy.

## Install

**Mac (once, works in every project):**

```bash
git clone https://github.com/JuliusCaesar-bit/design-kit ~/design-kit && bash ~/design-kit/setup/install.sh
```

Then restart Claude Code. Same thing with slash commands inside Claude Code:

```
/plugin marketplace add anthropics/skills
/plugin marketplace add JuliusCaesar-bit/design-kit
/plugin install document-skills@anthropic-agent-skills
/plugin install ux-ui-design@design-kit
```

(the script installs all of them in one go).

**Claude Code on the web (every cloud session):** paste `setup/cloud-setup-script.sh` into the cloud
environment's Setup script. To let Claude browse the inspiration sites in the cloud, add
`forevercomponents.com`, `designspells.com`, `refero.design` and `details.so` under Allowed domains.

**Update everything:** `claude plugin marketplace update` (or run `install.sh` again).

## What's inside

| Plugin | Source | What it does |
|---|---|---|
| ux-ui-design | this repo | Master workflow, skill routing, inspiration sites, QA checklist, DESIGN.md template |
| taste-skill | Leonxlnx/taste-skill | Anti-slop art direction, researched directions, style variants, redesign |
| gsap-skills | greensock/gsap-skills | Official GSAP: core, timelines, ScrollTrigger, plugins, React, performance |
| emil-kowalski-skills | emilkowalski/skills | All 15 skills: apple-design, animate, polish, break-ui, review-animations and more |
| vercel-agent-skills | vercel-labs/agent-skills | Web design guidelines, React best practices, view transitions, deploy, optimize |
| shadcn | shadcn-ui/ui | Official shadcn skill plus the shadcn MCP server (live access to the whole registry) |
| accesslint | AccessLint/skills | WCAG 2.2 scan, audit, fix, regression diff, plus the AccessLint MCP server |
| bencium-* , design-audit, typography | bencium/bencium-marketplace | UX designer modes, visual audits, typography rules |
| ui-ux-pro-max | nextlevelbuilder/ui-ux-pro-max-skill | Styles, palettes, font pairings database (already synced from claude.ai) |
| document-skills, example-skills, claude-api | anthropics/skills | Office files, frontend-design, webapp-testing, theme-factory, Claude API |

Inspiration sites used by the master skill: Forever Components, Design Spells, Refero (free tier only),
Details. See `plugins/ux-ui-design/skills/ux-ui-design/references/inspiration-sites.md`.

Most third-party skills are pulled from their original repositories at install time. shadcn, AccessLint and
the Bencium plugins are vendored copies for reliable installs; see `THIRD_PARTY.md` for sources and licenses.
