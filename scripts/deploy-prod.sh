#!/bin/bash
# Deploy to production (jeunesseandco.ch)
# This script temporarily changes the Astro config for production build

set -e

echo "🚀 Deploying to production..."

# Backup test config
cp astro.config.mjs astro.config.mjs.test

# Create production config
cat > astro.config.mjs << 'EOF'
import { defineConfig } from 'astro/config';
export default defineConfig({
  site: 'https://jeunesseandco.ch',
  base: '/',
  compressHTML: true,
  image: { service: { config: { quality: 90 } } },
  build: { inlineStylesheets: 'auto' },
  vite: { build: { minify: 'esbuild', cssMinify: true, rollupOptions: { output: { manualChunks: { gsap: ['gsap', 'gsap/ScrollTrigger'] } } } } }
});
EOF

echo "✅ Production config applied"

# Build
npm run build

echo "✅ Build complete"

# Commit and push to prod
git add -A
git commit -m "Production build for jeunesseandco.ch"
git push origin master

echo "✅ Pushed to production"

# Restore test config
mv astro.config.mjs.test astro.config.mjs
git add astro.config.mjs
git commit -m "Restore test config"
git push alfred master

echo "✅ Test config restored"
echo "🎉 Deployment complete! Site will be live in ~2 minutes."
