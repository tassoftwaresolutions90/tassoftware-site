# Enterprise Static Website

A modern, enterprise-grade static website built with React, Vite, Tailwind CSS, and Framer Motion. Features CMS-like content management through JSON files, internationalization (i18n), and smooth animations.

## 🚀 Features

- **Modern Tech Stack**: React 18 + Vite + TypeScript + Tailwind CSS
- **Smooth Animations**: Framer Motion for professional animations and transitions
- **Internationalization**: English and Spanish support with react-i18next
- **CMS-like Content**: Dynamic content loaded from JSON files (no backend required)
- **Responsive Design**: Mobile-first approach with Tailwind CSS
- **GitHub Pages Ready**: Fully static and deployable to GitHub Pages
- **Performance Optimized**: Fast loading with Vite's optimized build process

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

## 🛠 Installation & Setup

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd enterprise-static-website
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start development server**
   ```bash
   npm run dev
   ```

4. **Build for production**
   ```bash
   npm run build
   ```

5. **Preview production build**
   ```bash
   npm run preview
   ```

## 🌐 Deployment to GitHub Pages

### Method 1: Using gh-pages package (Recommended)

1. **Install gh-pages**
   ```bash
   npm install --save-dev gh-pages
   ```

2. **Deploy to GitHub Pages**
   ```bash
   npm run deploy
   ```

3. **Enable GitHub Pages in your repository settings**
   - Go to Settings → Pages
   - Select "Deploy from a branch"
   - Choose "gh-pages" branch
   - Save settings

### Method 2: Using GitHub Actions (Alternative)

Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout
      uses: actions/checkout@v3
      
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '18'
        cache: 'npm'
        
    - name: Install dependencies
      run: npm ci
      
    - name: Build
      run: npm run build
      
    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./dist
```

## 📝 Content Management

The website uses JSON files for dynamic content, making it easy to update without modifying code:

### Services (`src/data/services.json`)
```json
[
  {
    "id": 1,
    "title": "Web Development",
    "description": "Modern, responsive websites...",
    "features": ["Responsive Design", "SEO Optimization"]
  }
]
```

### Team (`src/data/team.json`)
```json
[
  {
    "id": 1,
    "name": "John Doe",
    "position": "CEO",
    "bio": "Visionary leader...",
    "image": "https://example.com/image.jpg",
    "social": {
      "linkedin": "https://linkedin.com/in/johndoe"
    }
  }
]
```

### Projects (`src/data/projects.json`)
```json
[
  {
    "id": 1,
    "title": "E-Commerce Platform",
    "description": "Modern e-commerce solution...",
    "image": "https://example.com/project.jpg",
    "technologies": ["React", "Node.js"],
    "category": "Web Development",
    "liveUrl": "https://example.com",
    "featured": true
  }
]
```

## 🌍 Internationalization

The website supports multiple languages through react-i18next:

### Adding a New Language

1. **Create translation file** (`src/locales/fr.json`)
2. **Update i18n configuration** (`src/i18n.ts`)
3. **Add language option** to `LanguageSwitcher.tsx`

### Translation Structure
```json
{
  "nav": {
    "home": "Home",
    "services": "Services"
  },
  "hero": {
    "title": "Enterprise-Grade Solutions",
    "subtitle": "Building the future..."
  }
}
```

## 🎨 Customization

### Styling
- Uses Tailwind CSS for styling
- Custom animations defined in `tailwind.config.js`
- Component-specific styles in `src/index.css`

### Animations
- Framer Motion animations throughout the site
- Scroll-triggered animations with `whileInView`
- Hover effects and micro-interactions

### Colors & Branding
- Primary color: Blue (configurable in Tailwind config)
- Update brand name in `Header.tsx` and `Footer.tsx`
- Replace logo placeholder with your brand logo

## 📱 Responsive Design

The website is fully responsive with breakpoints:
- Mobile: `< 768px`
- Tablet: `768px - 1024px`
- Desktop: `> 1024px`

## 🔧 Configuration

### Vite Configuration (`vite.config.ts`)
```typescript
export default defineConfig({
  plugins: [react()],
  base: '/enterprise-static-website/', // Update for your repo name
  build: {
    outDir: 'dist',
    assetsDir: 'assets',
  },
})
```

### Router Configuration
The app uses React Router with GitHub Pages compatibility:
- `basename` set to repository name
- Hash routing as fallback for GitHub Pages

## 🚀 Performance Features

- **Code Splitting**: Automatic with Vite
- **Image Optimization**: Responsive images with proper sizing
- **Lazy Loading**: Components load as needed
- **Minimal Bundle**: Tree-shaking and optimization
- **Fast Refresh**: Hot module replacement in development

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📞 Support

For support or questions, please open an issue in the GitHub repository.

---

Built with ❤️ using React, Vite, and Tailwind CSS
