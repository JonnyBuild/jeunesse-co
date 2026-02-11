import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://jeunesseandco.ch',
  base: '/',
  compressHTML: true,
  build: { inlineStylesheets: 'auto' },
  vite: {
    build: {
      minify: 'esbuild',
      cssMinify: true,
      rollupOptions: { output: { manualChunks: { gsap: ['gsap', 'gsap/ScrollTrigger'] } } }
    }
  }
});
