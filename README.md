# 🚀 TAS Software - Enterprise Technology Solutions

A modern, responsive website for TAS Software, a technology company specializing in SaaS development, web applications, digital marketing, automation, and AI consulting services.

## ✨ Features

- **Modern Design**: Clean, professional, enterprise-grade design
- **Fully Responsive**: Optimized for all devices (mobile, tablet, desktop)
- **JSON Content Management**: Update content without touching code
- **Fast Loading**: Optimized performance with modern CSS and JavaScript
- **GitHub Pages Ready**: Static site deployment with custom domain support
- **Mobile-First**: Touch-friendly navigation and responsive layouts

## 🛠 Tech Stack

- **Frontend**: Pure HTML5, CSS3, JavaScript (ES6+)
- **Styling**: Modern CSS with Grid, Flexbox, Custom Properties
- **Content**: JSON-based content management system
- **Deployment**: GitHub Pages with custom domain support
- **Performance**: Optimized assets, lazy loading, smooth animations

## 📁 Project Structure

```
TAS/
├── index.html              # Main website file
├── data/                   # JSON content files
│   ├── content.json        # Main website content
│   ├── services.json       # Services information
│   ├── projects.json       # Portfolio projects
│   ├── team.json          # Team members
│   └── testimonials.json   # Client testimonials
├── deploy-enhanced-website.bat  # Deployment script
├── CONTENT_MANAGEMENT_GUIDE.md  # Content management guide
└── README.md              # This file
```

## 🚀 Quick Start

### 1. Deploy to GitHub Pages

```bash
# Run the deployment script
deploy-enhanced-website.bat
```

### 2. Update Content

Edit JSON files in the `data/` directory:
- `content.json` - Main website content
- `services.json` - Services details
- `projects.json` - Portfolio projects
- `team.json` - Team members
- `testimonials.json` - Client testimonials

### 3. Custom Domain Setup

1. Go to GitHub repository settings
2. Navigate to Pages section
3. Set custom domain to `tassoftware.online`
4. Configure DNS records with your domain provider

## 📝 Content Management

### Update Company Information
```json
// data/content.json
{
  "hero": {
    "title": "Your Company Title",
    "description": "Your company description"
  },
  "about": {
    "title": "About Section",
    "description": "About your company"
  }
}
```

### Add New Service
```json
// data/services.json
{
  "id": "new-service",
  "title": "Service Name",
  "description": "Service description",
  "icon": "🚀",
  "features": ["Feature 1", "Feature 2"],
  "technologies": ["React", "Node.js", "AWS"]
}
```

### Add Team Member
```json
// data/team.json
{
  "id": "member-id",
  "name": "Member Name",
  "role": "Job Title",
  "bio": "Member bio",
  "expertise": ["Skill 1", "Skill 2"]
}
```

## 🎨 Customization

### Change Colors
Edit CSS variables in `index.html`:
```css
:root {
  --primary-color: #2563eb;      /* Main brand color */
  --secondary-color: #7c3aed;    /* Secondary color */
  --accent-color: #06b6d4;       /* Accent color */
}
```

### Update Icons
Replace emoji icons in JSON files:
- ☁️ for SaaS
- 🌐 for Web Development
- 📱 for Digital Marketing
- 🤖 for Automation
- 🧠 for AI Consulting
- 🔧 for Technology Consulting

## 📱 Responsive Design

- **Mobile**: Touch-friendly navigation, optimized layouts
- **Tablet**: Perfect medium screen experience
- **Desktop**: Large screen optimization with grid layouts
- **All Devices**: Responsive typography and spacing

## 🚀 Deployment

### GitHub Pages
1. Push changes to main branch
2. GitHub Pages automatically deploys
3. Website available at: `https://username.github.io/repository-name`

### Custom Domain
1. Set custom domain in GitHub Pages settings
2. Configure DNS records with domain provider
3. Enable HTTPS for secure connection

## 📊 Performance Features

- **Fast Loading**: Optimized CSS and JavaScript
- **Smooth Animations**: CSS transitions and transforms
- **Mobile Optimized**: Touch-friendly interactions
- **SEO Ready**: Proper meta tags and semantic HTML
- **Accessibility**: Screen reader friendly, keyboard navigation

## 🔧 Development

### Local Development
1. Open `index.html` in browser
2. Edit JSON files in `data/` directory
3. Refresh browser to see changes
4. Deploy with deployment script

### Content Updates
1. Edit JSON files in `data/` directory
2. Run `deploy-enhanced-website.bat`
3. Changes go live in 2-5 minutes

## 📞 Support

For questions or support:
- 📧 Email: hello@tassoftware.online
- 📞 Phone: +1 (555) 123-4567
- 🌐 Website: https://tassoftware.online

## 📄 License

© 2025 TAS Software. All rights reserved.

---

**Built with ❤️ for modern businesses**