---
name: ux-ui-design
description: "UX/UI Design: Julius's master design workflow for every new website, landing page, web app, dashboard or redesign. Run it at the start of any new project or when the user says 'UX/UI Design', 'design this', 'build a website', 'make it look premium' or 'redesign'. It runs the full pipeline: brief, inspiration research (Forever Components, Design Spells, Refero, Details), art direction, design system, shadcn/ui build, GSAP and Emil Kowalski motion, accessibility and QA, and ships to Vercel, calling the right specialist skill (taste-skill, frontend-design, ui-ux-pro-max, Emil Kowalski, GSAP, shadcn, Vercel, AccessLint, Bencium) at each step."
---

# UX/UI Design

The single entry point for design work. Your job is to run the pipeline below in order, pull in the
specialist skills named at each phase, and leave the project with a written design system and a
built, tested, accessible UI that does not look AI-generated.

Specialist skills are namespaced by plugin in the skill list (for example
`taste-skill:design-taste-frontend`, `emil-kowalski-skills:apple-design`, `gsap-skills:gsap-scrolltrigger`).
Invoke them with the Skill tool when the phase calls for them. If one is not installed in the current
environment, say so in one line and apply its principles from this file and `references/` instead.
Never stop the pipeline because a helper is missing.

Full routing table: `references/skill-map.md`. Inspiration sources: `references/inspiration-sites.md`.
Ship checklist: `references/quality-checklist.md`. Design system template: `references/design-md-template.md`.

## Phase 0: Brief (keep it fast)

If the user has not given these, ask in one message, max 5 questions, each with a proposed default
so they can answer "defaults":

1. What is it and who is it for (audience, market, language: EN, DE or both)?
2. The one action a visitor should take (book a call, buy, sign up, contact).
3. Three brand adjectives and one site they love (or "surprise me").
4. Pages or sections needed.
5. Stack. Default: Next.js App Router, TypeScript, Tailwind, shadcn/ui, GSAP, Lucide, deployed on Vercel.
   If the project lives in Lovable (Vite + React + shadcn), keep that stack.

Existing project? Read the codebase first and run `taste-skill:redesign-existing-projects` and
`design-audit:design-audit` to find what to keep before proposing anything new.

## Phase 1: Inspiration research

Goal: 6 to 10 concrete references, each with a note on exactly what to borrow (layout, type pairing,
color, a specific interaction or animation). No vague "clean and modern".

1. Open the sources in `references/inspiration-sites.md` with whatever browsing is available
   (a real browser via Playwright or Chrome tools first, WebFetch second). Search them with the
   project's keywords and industry.
2. Use `taste-skill:design-taste-frontend` for its researched direction library (247 curated gallery
   sites) and `ui-ux-pro-max` to search styles, palettes and font pairings for the product type.
3. For motion ideas, browse Design Spells and Forever Components, then name each effect precisely with
   `emil-kowalski-skills:animation-vocabulary`.
4. If the sites are unreachable (cloud network policy), say which host was blocked, tell the user they
   can allow it in the environment's network settings, and continue with steps 2 and 3.

Write the references into the project's `DESIGN.md` moodboard section with links.

## Phase 2: Art direction

1. Generate 2 or 3 genuinely different directions, not variations of one. Use
   `taste-skill:design-taste-frontend` and `example-skills:frontend-design`. For a bolder, typography-led
   exploration use `bencium-innovative-ux-designer`; for a client who wants control over every visual
   decision use `bencium-controlled-ux-designer`. For a fast visual comparison use
   `emil-kowalski-skills:prototype`.
2. Style variants when the brief points that way: `taste-skill:minimalist-ui` (editorial, calm),
   `taste-skill:high-end-visual-design` (agency premium), `taste-skill:industrial-brutalist-ui` (raw, Swiss).
   For Apple-like fluid, physical motion and polish: `emil-kowalski-skills:apple-design`.
3. Present the directions in a short table (idea, type, palette, signature moment) and let the user pick.
   Default recommendation for Julius's brands: refined, understated, premium, credible. No hype.

## Phase 3: Design system

Fill in `references/design-md-template.md` as `DESIGN.md` in the project root, then encode it:

- Tokens as CSS variables (color, type scale, spacing, radius, shadow, motion durations and easings),
  wired into Tailwind and the shadcn theme. Use `ckm:design-system` for the token architecture.
- Typography: `typography:ui-typography`, one display face plus one text face via `next/font`.
- Color: check every text and background pair for WCAG 2.2 AA contrast before moving on.

## Phase 4: Build with shadcn/ui

1. Load the `shadcn:shadcn` skill. Use the shadcn MCP server (installed with the shadcn plugin) to
   search the registry, blocks and third-party registries before writing a component by hand.
2. New project: `npx shadcn@latest init`, then `npx shadcn@latest add --all` so every component is
   available (only imported components end up in the bundle). Existing project: add on demand.
3. Restyle components to the design system. Never ship the default shadcn look unchanged.
4. Code quality: `vercel-agent-skills:react-best-practices` and `vercel-agent-skills:composition-patterns`.
   Library choices (toasts, OTP, number inputs, charts): `emil-kowalski-skills:pick-ui-library`.
5. Copy: `vercel-agent-skills:writing-guidelines` and `design:ux-copy`. Write in the user's voice,
   concise and credible.

## Phase 5: Motion

1. Find where motion helps and where it does not: `emil-kowalski-skills:find-animation-opportunities`.
2. Build micro-interactions with `emil-kowalski-skills:animate` and `emil-kowalski-skills:emil-design-eng`.
3. Scroll, timelines, pinning, text reveals: GSAP via `gsap-skills:gsap-react` (useGSAP),
   `gsap-skills:gsap-scrolltrigger`, `gsap-skills:gsap-timeline`, `gsap-skills:gsap-plugins`.
   Page transitions: `vercel-agent-skills:react-view-transitions`.
4. Performance: `emil-kowalski-skills:animation-performance` and `gsap-skills:gsap-performance`.
   Animate transform and opacity only, honor `prefers-reduced-motion` everywhere.
5. Review the result with `emil-kowalski-skills:review-animations`.

## Phase 6: Quality gates (do not skip)

Run every item in `references/quality-checklist.md`. The core gates:

- Accessibility: `accesslint:accessibility-scan` per page, `accesslint:accessibility-audit` before
  launch, fix with `accesslint:accessibility-fix`. Cross-check with `design:accessibility-review`.
- Stress test: `emil-kowalski-skills:break-ui` (long names, empty states, errors, slow network).
- Guidelines: `vercel-agent-skills:web-design-guidelines` on the changed files.
- Visual QA: `example-skills:webapp-testing` to screenshot every page at 375, 768 and 1440 px, light
  and dark if supported. Look at the screenshots and fix what looks off. Repeat until clean.
- Mobile feel: `emil-kowalski-skills:mobile-native`.
- Final critique: `design-audit:design-audit` or `design:design-critique`.

## Phase 7: Ship

- SEO basics: metadata, Open Graph images, `sitemap.xml`, `robots.txt`, semantic headings, hreflang
  for EN and DE versions.
- Deploy: `vercel-agent-skills:deploy-to-vercel`, then `vercel-agent-skills:vercel-optimize`.
- Hand over: a short summary of what was built, the live URL, and what to do next.

## House rules (always)

- Never use the long dash (em dash) in UI copy, prompts or documents. Use commas, colons or full stops.
  This overrides any typography skill that suggests em dashes.
- No AI-slop tells: default purple or blue gradients, Inter everywhere, emoji as icons, centered-everything
  hero with three identical feature cards, glassmorphism without a reason, fake testimonials or logos.
- Mobile first, designed at 375 px before desktop.
- WCAG 2.2 AA minimum. Target LCP under 2.5 s and CLS under 0.1.
- Inspiration is for learning, not copying. Do not reproduce another brand's design one to one. Respect
  each site's terms and each code resource's license (see `references/inspiration-sites.md`).
- Swiss and luxury clients: understated, precise, generous whitespace, real photography over stock clichés.

## Deliverables checklist

- [ ] `DESIGN.md` with moodboard, chosen direction, tokens, type, motion rules
- [ ] Built pages using shadcn/ui restyled to the system
- [ ] Motion pass with reduced-motion fallback
- [ ] Accessibility scan clean, screenshots at 3 breakpoints reviewed
- [ ] Deployed preview URL
