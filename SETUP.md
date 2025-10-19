# Enterprise Static Website - Setup Instructions

## Prerequisites

Before running this project, you need to install Node.js and npm:

### Windows:
1. Download Node.js from https://nodejs.org/
2. Run the installer and follow the setup wizard
3. Restart your terminal/PowerShell

### Verify Installation:
```bash
node --version
npm --version
```

## Quick Start

Once Node.js is installed, run these commands:

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Deploy to GitHub Pages
npm run deploy
```

## Development Server

The development server will start on `http://localhost:5173` by default.

## Project Features

✅ React + Vite + TypeScript
✅ Tailwind CSS styling
✅ Framer Motion animations
✅ Internationalization (EN/ES)
✅ CMS-like JSON content
✅ Responsive design
✅ GitHub Pages ready

## Troubleshooting

If you encounter any issues:

1. **Clear npm cache**: `npm cache clean --force`
2. **Delete node_modules**: `rm -rf node_modules` (or `rmdir /s node_modules` on Windows)
3. **Reinstall**: `npm install`
4. **Check Node version**: Ensure you have Node.js 16+ installed

## File Structure

```
src/
├── components/     # Reusable components
├── pages/         # Page components
├── data/          # JSON content files
├── locales/       # Translation files
└── i18n.ts        # i18n configuration
```

The project is ready to run once Node.js is installed!
