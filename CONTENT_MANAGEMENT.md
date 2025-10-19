# 📝 Content Management Guide

## 🎯 Overview
This website uses JSON files for all dynamic content, making it easy to update without touching any code. All content changes are made by editing JSON files in the `src/data/` and `src/locales/` directories.

## 📁 File Structure for Content Management

```
src/
├── data/                    # Dynamic content files
│   ├── services.json       # Services page content
│   ├── team.json          # About page team members
│   ├── projects.json      # Projects page portfolio
│   └── testimonials.json  # Client testimonials
├── locales/               # Translation files
│   ├── en.json           # English translations
│   └── es.json           # Spanish translations
└── components/           # Static components (don't edit unless needed)
```

## 🔧 How to Update Content

### 1. **Services Page** (`src/data/services.json`)

**What it controls:** The Services page content, service cards, and features.

**To add a new service:**
```json
{
  "id": 5,
  "title": "Your New Service",
  "description": "Description of your new service...",
  "icon": "icon-name",
  "features": [
    "Feature 1",
    "Feature 2",
    "Feature 3"
  ]
}
```

**To edit existing services:**
- Change `title` for service name
- Change `description` for service description
- Modify `features` array for service features
- Available icons: `globe`, `smartphone`, `users`, `cloud`, `code`, `database`, `shield`, `rocket`

**Example:**
```json
[
  {
    "id": 1,
    "title": "Web Development",
    "description": "Modern, responsive websites built with React and Next.js",
    "icon": "globe",
    "features": [
      "Responsive Design",
      "SEO Optimization", 
      "Performance Optimization",
      "Cross-browser Compatibility"
    ]
  }
]
```

### 2. **Team Page** (`src/data/team.json`)

**What it controls:** The About page team member profiles.

**To add a new team member:**
```json
{
  "id": 5,
  "name": "John Doe",
  "position": "Senior Developer",
  "bio": "Brief bio about the team member...",
  "image": "https://example.com/image.jpg",
  "social": {
    "linkedin": "https://linkedin.com/in/johndoe",
    "github": "https://github.com/johndoe",
    "twitter": "https://twitter.com/johndoe"
  }
}
```

**To edit existing team members:**
- Change `name` for person's name
- Change `position` for their job title
- Change `bio` for their description
- Change `image` URL for their photo
- Update `social` links (linkedin, github, twitter, dribbble)

**Image Requirements:**
- Use square images (400x400px recommended)
- Use reliable image hosting (Unsplash, your own server)
- Example: `https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=400&fit=crop&crop=face`

### 3. **Projects Page** (`src/data/projects.json`)

**What it controls:** The Projects page portfolio items.

**To add a new project:**
```json
{
  "id": 7,
  "title": "Your Project Name",
  "description": "Description of your project...",
  "image": "https://example.com/project-image.jpg",
  "technologies": ["React", "Node.js", "MongoDB"],
  "category": "Web Development",
  "liveUrl": "https://yourproject.com",
  "githubUrl": "https://github.com/yourusername/project",
  "featured": true
}
```

**To edit existing projects:**
- Change `title` for project name
- Change `description` for project description
- Change `image` URL for project screenshot
- Update `technologies` array for tech stack
- Change `category` for project type
- Update `liveUrl` for live demo link
- Update `githubUrl` for source code link
- Set `featured: true` to highlight important projects

**Categories:** Web Development, Mobile Development, Cloud Solutions, Data Science, Healthcare, IoT

### 4. **Testimonials** (`src/data/testimonials.json`)

**What it controls:** Client testimonials on the Home page.

**To add a new testimonial:**
```json
{
  "id": 7,
  "name": "Client Name",
  "position": "CEO, Company Name",
  "content": "Testimonial text here...",
  "rating": 5,
  "image": "https://example.com/client-photo.jpg"
}
```

**To edit existing testimonials:**
- Change `name` for client name
- Change `position` for their job title and company
- Change `content` for testimonial text
- Set `rating` (1-5 stars)
- Change `image` URL for client photo

### 5. **Translations** (`src/locales/`)

**What it controls:** All text content on the website.

**Files to edit:**
- `en.json` - English text
- `es.json` - Spanish text

**To add new text:**
```json
{
  "newSection": {
    "title": "New Section Title",
    "subtitle": "New section subtitle",
    "description": "New section description"
  }
}
```

**To edit existing text:**
- Find the key in the JSON file
- Change the value to your new text
- Keep the same structure for both languages

**Example:**
```json
{
  "hero": {
    "title": "Your Company Name",
    "subtitle": "Your company tagline",
    "cta": "Get Started",
    "learnMore": "Learn More"
  }
}
```

## 🎨 Visual Content Guidelines

### **Images:**
- **Team photos**: 400x400px, square format
- **Project screenshots**: 600x400px, landscape format
- **Use reliable hosting**: Unsplash, your own server
- **Optimize for web**: Compress images before uploading

### **Text Content:**
- **Keep descriptions concise**: 1-2 sentences maximum
- **Use professional language**: Match your brand tone
- **Be specific**: Include concrete details and benefits
- **Proofread**: Check for spelling and grammar errors

### **Social Links:**
- **LinkedIn**: Professional profiles only
- **GitHub**: For developers and technical team members
- **Twitter**: Optional, for public-facing team members
- **Dribbble**: For designers only

## 🔄 How to Apply Changes

### **After editing JSON files:**

1. **Save the files**
2. **Run the development server** (if testing locally):
   ```bash
   npm run dev
   ```
3. **Build and deploy**:
   ```bash
   npm run build
   npm run deploy
   ```

### **For GitHub Pages deployment:**
- **Push changes to GitHub**
- **GitHub Actions will automatically deploy**
- **Changes go live in 2-5 minutes**

## 📋 Content Checklist

### **Before going live, check:**
- [ ] All JSON files have valid syntax
- [ ] All images load correctly
- [ ] All links work properly
- [ ] Text is proofread
- [ ] Both English and Spanish translations are updated
- [ ] Contact information is correct
- [ ] Social media links are valid

### **Regular maintenance:**
- [ ] Update team members when staff changes
- [ ] Add new projects as they're completed
- [ ] Update testimonials with new client feedback
- [ ] Refresh service descriptions quarterly
- [ ] Check all external links monthly

## 🚨 Common Issues & Solutions

### **Images not loading:**
- Check image URLs are correct
- Ensure images are publicly accessible
- Use HTTPS URLs for security

### **Text not updating:**
- Check JSON syntax (use a JSON validator)
- Ensure you're editing the correct language file
- Clear browser cache after deployment

### **Links not working:**
- Verify URLs are complete and correct
- Test links in a new browser tab
- Check for typos in URLs

## 📞 Need Help?

If you encounter issues:
1. **Check JSON syntax** with an online validator
2. **Test locally first** with `npm run dev`
3. **Check browser console** for error messages
4. **Verify file paths** are correct

---

**Remember:** All content changes are made through JSON files - no coding knowledge required! 🎉
