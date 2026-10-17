# Quality checklist (Phase 6)

Run before calling a page done. Fix and re-check until every box is ticked.

## Visual
- [ ] Screenshots at 375, 768 and 1440 px reviewed (and dark mode if supported)
- [ ] Nothing reads as a template: hero, sections and cards have a clear point of view
- [ ] Type scale and spacing follow `DESIGN.md` tokens, no one-off values
- [ ] Images are real, sharp, correctly cropped, with `next/image` sizes set
- [ ] No em dashes in any copy

## Interaction and motion
- [ ] Every interactive element has hover, focus-visible, active and disabled states
- [ ] Motion uses transform and opacity, durations and easings from tokens
- [ ] `prefers-reduced-motion` turns off or simplifies all non-essential motion
- [ ] No layout shift from animations or late-loading fonts

## Accessibility (WCAG 2.2 AA)
- [ ] `accesslint:accessibility-scan` clean on every page
- [ ] Keyboard only: logical tab order, visible focus, no traps, skip link
- [ ] Contrast at least 4.5:1 for body text, 3:1 for large text and UI parts
- [ ] Alt text on meaningful images, empty alt on decorative ones
- [ ] Form fields have labels, errors are announced and described

## Robustness
- [ ] `emil-kowalski-skills:break-ui` run: long text, empty states, errors, loading, slow network
- [ ] Works without JavaScript for core content where possible

## Performance and SEO
- [ ] LCP under 2.5 s, CLS under 0.1, no unused heavy libraries
- [ ] Title, description, Open Graph image per page; `sitemap.xml`, `robots.txt`
- [ ] One h1 per page, semantic landmarks, hreflang for EN and DE
