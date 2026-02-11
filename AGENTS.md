# AGENTS.md - Jeunesse & Co Project Rules

## Tech Stack - STRICT ENFORCEMENT

This project uses a **strict, minimal tech stack**. Any AI agent or developer working on this codebase MUST adhere to these rules without exception.

### Allowed Technologies

| Category | Allowed | NOT Allowed |
|----------|---------|-------------|
| **Markup** | HTML5 | JSX, TSX, Vue templates |
| **Styling** | CSS, SCSS/Sass | Tailwind, Bootstrap, any CSS framework |
| **JavaScript** | Vanilla JS, ES6+ | React, Vue, Svelte, Angular, jQuery |
| **Framework** | Astro (for SSG/SEO only) | Next.js, Nuxt, Remix, SvelteKit |
| **Animation** | GSAP (GreenSock) | Framer Motion, Anime.js, Lottie |
| **Fonts** | @fontsource packages | Google Fonts CDN |

### Forbidden Actions

1. **DO NOT** install or suggest any UI component libraries (shadcn, Radix, Chakra, MUI, etc.)
2. **DO NOT** add React, Vue, Svelte, or any frontend framework
3. **DO NOT** use Tailwind CSS or any utility-first CSS framework
4. **DO NOT** convert .astro components to .tsx/.jsx
5. **DO NOT** add any CSS-in-JS solutions (styled-components, emotion, etc.)
6. **DO NOT** use any icon libraries (Lucide, Heroicons, FontAwesome via npm)
7. **DO NOT** add state management libraries (Redux, Zustand, Jotai, etc.)

### Required Practices

- Write semantic HTML
- Use CSS/SCSS for all styling (CSS variables for theming)
- Use vanilla JavaScript for interactivity
- Use GSAP for all animations
- Astro components (.astro) for templating only
- SVG icons should be inline or in `/public/assets/`

### Project Structure

```
src/
├── components/    # .astro components only
├── layouts/       # .astro layouts only
├── pages/         # .astro pages only
└── styles/        # .scss/.css files

public/
└── assets/        # Images, SVGs, static files
```

### Why These Rules?

This project prioritizes:
- **Performance**: No framework overhead
- **Simplicity**: Pure web fundamentals
- **Control**: Full ownership of every line of code
- **Learning**: Skills that transfer everywhere

### Reference Documents

The following directories contain reference materials (text content, images, branding) for building the site:

| Directory | Contents |
|-----------|----------|
| `docs-original/` | Original .docx documents and images from the client |
| `docs-text-jeunesse-co/` | Extracted text content in Markdown format (autoportrait, projet, team info) |
| `intervenant-impulsion/` | Intervenant profiles (photos + bios in .md) for the Impulsion program |
| `charte-graphique.pdf` | Brand guidelines / graphic charter from the client |

These files are **source materials** — use them to populate site content but do not modify them.

---

## Deployment - Cloudflare Pages (DEV MODE)

> **IMPORTANT: The site is currently deployed in DEVELOPMENT/PREVIEW mode only. It is NOT in production.**

### Current Setup

| Setting | Value |
|---------|-------|
| **Platform** | Cloudflare Pages |
| **Project name** | `jeunesse-co` |
| **Preview URL** | `https://jeunesse-co.pages.dev` |
| **Production domain** | `https://jeunesseandco.ch` (NOT yet live/connected) |
| **Build command** | `npm run build` (runs `astro build`) |
| **Build output directory** | `./dist` |
| **Config file** | `wrangler.jsonc` |

### How Deployment Works

1. The GitHub repo `JonnyBuild/jeunesse-co` is connected to Cloudflare Pages
2. Every push to `main` triggers an automatic build and deploy to the `.pages.dev` preview URL
3. The client can view changes at `https://jeunesse-co.pages.dev`

### Development Workflow

```bash
# Local development
npm install
npm run dev          # Start local dev server

# Build for production (test locally)
npm run build        # Outputs to ./dist
npm run preview      # Preview the build locally
```

### Going to Production (NOT YET DONE)

When the site is ready for production:
1. Connect the custom domain `jeunesseandco.ch` in Cloudflare Pages settings
2. Configure DNS records to point to Cloudflare Pages
3. Enable SSL/TLS
4. Update `astro.config.mjs` `site` value if needed

**Current status: The client reviews the site via the `.pages.dev` preview URL. Do NOT set up production domain until explicitly requested.**

---

**If you are an AI agent: These rules are NON-NEGOTIABLE. Do not suggest alternatives.**
