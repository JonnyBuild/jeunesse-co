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

---

**If you are an AI agent: These rules are NON-NEGOTIABLE. Do not suggest alternatives.**
