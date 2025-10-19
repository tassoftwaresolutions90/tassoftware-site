# 🚀 TAS Software - Enterprise Static Website

A modern, enterprise-grade static website built with React, Vite, Tailwind CSS, and Framer Motion. Features CMS-like content management through JSON files, internationalization (i18n), and smooth animations.

## ✨ Features

- **🎨 Modern Tech Stack**: React 18 + Vite + TypeScript + Tailwind CSS
- **🎭 Smooth Animations**: Framer Motion for professional animations and transitions
- **🌍 Internationalization**: English and Spanish support with react-i18next
- **📄 CMS-like Content**: Dynamic content loaded from JSON files (no backend required)
- **📱 Responsive Design**: Mobile-first approach with Tailwind CSS
- **🚀 GitHub Pages Ready**: Fully static and deployable to GitHub Pages
- **⚡ Performance Optimized**: Fast loading with Vite's optimized build process

## 🚀 Quick Start

### Prerequisites
- Node.js (v16 or higher) - [Download here](https://nodejs.org/)

### Installation & Deployment

#### Option 1: Automated Deployment (Recommended)
```bash
# Windows users - Double-click this file:
deploy-to-github.bat

# Or run manually:
npm install
npm run build
npm run deploy
```

#### Option 2: Manual Steps
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

## 📁 Project Structure

```
src/
├── components/          # Reusable UI components
│   ├── Header.tsx      # Navigation header with language switcher
│   ├── Footer.tsx      # Site footer with links and contact info
│   └── LanguageSwitcher.tsx
├── pages/              # Page components
│   ├── Home.tsx        # Landing page with hero and previews
│   ├── Services.tsx    # Services showcase
│   ├── About.tsx       # Team and company information
│   ├── Projects.tsx   # Portfolio with filtering
│   └── Contact.tsx     # Contact form and information
├── data/               # JSON content files (CMS-like)
│   ├── services.json   # Services data
│   ├── team.json       # Team member information
│   ├── projects.json   # Portfolio projects
│   └── testimonials.json
├── locales/            # Translation files
│   ├── en.json         # English translations
│   └── es.json         # Spanish translations
├── i18n.ts            # i18n configuration
├── App.tsx            # Main app component with routing
└── main.tsx           # Application entry point
```

## 📝 Content Management

**No coding required!** All content is managed through JSON files:

### Quick Content Updates:
- **Services**: Edit `src/data/services.json`
- **Team**: Edit `src/data/team.json`
- **Projects**: Edit `src/data/projects.json`
- **Testimonials**: Edit `src/data/testimonials.json`
- **Translations**: Edit `src/locales/en.json` and `src/locales/es.json`

### Detailed Guide:
📖 **[CONTENT_MANAGEMENT.md](CONTENT_MANAGEMENT.md)** - Complete guide for updating all website content

## 🌐 Deployment

### GitHub Pages Deployment:
📖 **[GITHUB_PAGES_DEPLOYMENT.md](GITHUB_PAGES_DEPLOYMENT.md)** - Step-by-step deployment guide

### Custom Domain Setup:
- **Domain**: `tassoftware.online`
- **SSL**: Automatic HTTPS certificate
- **Performance**: Optimized for fast loading

## 🎯 Pages & Features

- **🏠 Home** – Hero section, services preview, testimonials
- **🛠 Services** – Detailed service offerings with features
- **👥 About** – Team profiles with social links
- **💼 Projects** – Portfolio with category filtering
- **📞 Contact** – Contact form and business information

## 🔧 Configuration

### Environment Setup:
- **Development**: `npm run dev` (http://localhost:5173)
- **Production**: `npm run build` + `npm run deploy`
- **Preview**: `npm run preview`

### Customization:
- **Branding**: Update company name in `Header.tsx` and `Footer.tsx`
- **Colors**: Modify Tailwind config in `tailwind.config.js`
- **Animations**: Adjust Framer Motion settings in components
- **Content**: Edit JSON files in `src/data/` and `src/locales/`

## 📊 Performance Features

- **Code Splitting**: Automatic with Vite
- **Image Optimization**: Responsive images with proper sizing
- **CSS Optimization**: Tailwind CSS purging
- **JavaScript Minification**: Production builds
- **Caching**: Proper cache headers for static assets

## 🌍 Internationalization

- **Languages**: English (en) and Spanish (es)
- **Language Switcher**: Persistent in header
- **Translation Files**: Easy to add new languages
- **RTL Support**: Ready for right-to-left languages

## 🔄 Automatic Deployment

GitHub Actions workflow included for automatic deployment:
- **Trigger**: Push to main branch
- **Process**: Build → Deploy to GitHub Pages
- **Result**: Live website in 2-5 minutes

## 📞 Support & Documentation

### Documentation Files:
- 📖 **[CONTENT_MANAGEMENT.md](CONTENT_MANAGEMENT.md)** - How to update content
- 📖 **[GITHUB_PAGES_DEPLOYMENT.md](GITHUB_PAGES_DEPLOYMENT.md)** - Deployment guide
- 📖 **[QUICK_DEPLOY.md](QUICK_DEPLOY.md)** - Quick deployment reference
- 📖 **[POSTCSS_FIX.md](POSTCSS_FIX.md)** - Configuration fixes applied

### Troubleshooting:
- **Build Issues**: Check Node.js version (16+)
- **Deployment Issues**: Verify GitHub repository permissions
- **Content Issues**: Validate JSON syntax
- **Performance Issues**: Check image optimization

## 🎉 Success Checklist

After deployment, verify:
- [ ] Website loads at GitHub Pages URL
- [ ] All pages work correctly (`/`, `/services`, `/about`, `/projects`, `/contact`)
- [ ] Images load properly
- [ ] Language switcher works (EN/ES)
- [ ] Contact form functions
- [ ] Mobile responsive design
- [ ] Custom domain works (`tassoftware.online`)
- [ ] HTTPS certificate active
- [ ] GitHub Actions workflow successful

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

**Built with ❤️ for TAS Software**

🚀 **Ready to deploy to tassoftware.online!**
