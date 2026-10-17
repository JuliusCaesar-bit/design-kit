# Inspiration sites

Use these at Phase 1. Browse with a real browser when one is available (Playwright via
`example-skills:webapp-testing`, or Chrome / built-in browser tools), otherwise WebFetch.
Take screenshots of what you reference and note exactly what to borrow.

Cloud sessions: these hosts are blocked unless the environment's network policy allows them.
If a request fails with a DNS or proxy error, tell the user which host was blocked and that they can add
`forevercomponents.com`, `designspells.com`, `refero.design` and `details.so` under Allowed domains in
the cloud environment settings. Then continue with the fallbacks at the bottom.

## Forever Components: https://forevercomponents.com/

- Use for: animated components and assets to lift into a build.
- How: browse by component type (hero, navigation, cards, text effects, backgrounds). Before copying any
  code, check that resource's license or terms and note it in `DESIGN.md`. Rebuild in the project's stack
  (React, Tailwind, GSAP) rather than pasting foreign code wholesale.

## Design Spells: https://designspells.com/

- Use for: micro-interactions and small delightful details (hover states, easter eggs, playful feedback,
  loading moments).
- How: search with the interaction you need ("button", "cursor", "scroll", "toggle", "404"), or browse the
  latest. Treat each as inspiration: describe the effect, name it with
  `emil-kowalski-skills:animation-vocabulary`, then implement it yourself with Emil's `animate` skill or GSAP.

## Refero: https://refero.design/

- Use for: references of real product UI (screens, flows, patterns) from shipped web and mobile apps.
  Great for "how do the best apps do a pricing page, onboarding, settings, dashboard".
- Access: Julius has no premium plan. Use only what the free tier shows in the browser. Do not try to get
  around the paywall or login, and do not bulk-scrape. Refero hosts screenshots of other companies'
  products: use them to learn patterns and structure, never copy a screen one to one.
- How: search by pattern or page type, open 3 to 5 examples, summarize the shared pattern and what the
  best one does differently.

## Details: https://www.details.so/inspo

- Use for: free inspiration and resources, including code for some items.
- How: browse the inspo feed and the free resources. Code marked free can be used, but check the license
  for each item, keep any required credit, and adapt it to the project's design system.

## Fallbacks when the sites are blocked

1. `taste-skill:design-taste-frontend`: its library of researched directions from 247 curated gallery sites.
2. `ui-ux-pro-max`: searchable database of styles, palettes, font pairings and product-type patterns.
3. Emil Kowalski's skills for motion ideas: `animation-vocabulary`, `find-animation-opportunities`, `apple-design`.
4. Ask the user for 2 or 3 screenshots or links of sites they like.
