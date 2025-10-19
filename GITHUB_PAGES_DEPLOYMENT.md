# 🚀 GitHub Pages Deployment Guide

## 📋 Prerequisites

Before deploying, ensure you have:
- ✅ Node.js installed (v16 or higher)
- ✅ Git repository on GitHub
- ✅ GitHub account with Pages enabled
- ✅ Custom domain: `tassoftware.online` (optional)

## 🔧 Step-by-Step Deployment

### Step 1: Prepare Your Repository

1. **Create a new repository on GitHub:**
   - Go to GitHub.com
   - Click "New repository"
   - Name: `tassoftware-website` (or your preferred name)
   - Make it public
   - Don't initialize with README (we already have files)

2. **Connect your local project to GitHub:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Enterprise static website"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/tassoftware-website.git
   git push -u origin main
   ```

### Step 2: Install Dependencies & Build

```bash
# Install all dependencies
npm install

# Build the project for production
npm run build

# Verify build was successful
# Check that 'dist' folder was created with files
```

### Step 3: Deploy to GitHub Pages

#### Option A: Using gh-pages (Recommended)
```bash
# Install gh-pages if not already installed
npm install --save-dev gh-pages

# Deploy to GitHub Pages
npm run deploy
```

#### Option B: Manual Deployment
```bash
# Build the project
npm run build

# Copy contents of 'dist' folder to a new 'docs' folder
# Push the 'docs' folder to your repository
# Configure GitHub Pages to use 'docs' folder as source
```

### Step 4: Configure GitHub Pages

1. **Go to your GitHub repository**
2. **Click "Settings" tab**
3. **Scroll down to "Pages" section**
4. **Configure source:**
   - Source: "Deploy from a branch"
   - Branch: "gh-pages" (if using gh-pages) or "main" (if using docs)
   - Folder: "/ (root)" or "/docs"

5. **Set up custom domain (optional):**
   - Custom domain: `tassoftware.online`
   - Check "Enforce HTTPS"

### Step 5: Configure DNS (For Custom Domain)

If using custom domain `tassoftware.online`, add these DNS records:

```
Type: A
Name: @
Value: 185.199.108.153

Type: A
Name: @
Value: 185.199.109.153

Type: A
Name: @
Value: 185.199.110.153

Type: A
Name: @
Value: 185.199.111.153

Type: CNAME
Name: www
Value: YOUR_USERNAME.github.io
```

## 🔄 Automatic Deployment Setup

### GitHub Actions Workflow

The project includes automatic deployment via GitHub Actions:

1. **Workflow file:** `.github/workflows/deploy.yml`
2. **Triggers:** Push to main branch
3. **Actions:** Build → Deploy to GitHub Pages

### To enable automatic deployment:

1. **Push your code to GitHub:**
   ```bash
   git add .
   git commit -m "Add GitHub Actions workflow"
   git push origin main
   ```

2. **Check Actions tab in GitHub:**
   - Go to your repository
   - Click "Actions" tab
   - Verify the workflow runs successfully

3. **Future updates:**
   - Just push changes to main branch
   - GitHub Actions will automatically build and deploy
   - No manual intervention needed

## 📁 Project Structure After Deployment

```
Your Repository/
├── .github/workflows/    # GitHub Actions
├── src/                  # Source code
│   ├── components/       # React components
│   ├── pages/           # Page components
│   ├── data/            # JSON content files
│   └── locales/         # Translation files
├── public/              # Static assets
├── dist/                # Built files (after npm run build)
├── package.json         # Dependencies and scripts
├── README.md           # Project documentation
└── CONTENT_MANAGEMENT.md # Content editing guide
```

## 🎯 Expected Results

After successful deployment:

- **GitHub Pages URL:** `https://YOUR_USERNAME.github.io/REPOSITORY_NAME`
- **Custom Domain:** `https://tassoftware.online` (if configured)
- **SSL Certificate:** Automatic HTTPS
- **Performance:** Fast loading with optimized build

## 🔧 Troubleshooting

### Common Issues:

#### 1. **Build fails:**
```bash
# Clear cache and reinstall
npm cache clean --force
rm -rf node_modules
npm install
npm run build
```

#### 2. **Deployment fails:**
- Check GitHub repository permissions
- Verify gh-pages is installed: `npm list gh-pages`
- Check GitHub Pages settings

#### 3. **Custom domain not working:**
- Wait 5-10 minutes for DNS propagation
- Check DNS settings with domain provider
- Verify GitHub Pages custom domain settings

#### 4. **Images not loading:**
- Check image URLs in JSON files
- Ensure images are publicly accessible
- Use HTTPS URLs

### Debug Commands:

```bash
# Check Node.js version
node --version

# Check npm version
npm --version

# Verify dependencies
npm list

# Test build locally
npm run build
npm run preview

# Check for errors
npm run lint
```

## 📊 Performance Optimization

### Built-in optimizations:
- ✅ **Code splitting:** Automatic with Vite
- ✅ **Image optimization:** Responsive images
- ✅ **CSS optimization:** Tailwind CSS purging
- ✅ **JavaScript minification:** Production builds
- ✅ **Caching:** Proper cache headers

### Additional optimizations:
- Use WebP images when possible
- Compress images before uploading
- Monitor Core Web Vitals
- Use CDN for static assets

## 🔄 Content Updates

### To update content after deployment:

1. **Edit JSON files** in `src/data/` and `src/locales/`
2. **Test locally** (optional):
   ```bash
   npm run dev
   ```
3. **Build and deploy**:
   ```bash
   npm run build
   npm run deploy
   ```

### For automatic updates:
- Push changes to main branch
- GitHub Actions will handle the rest

## 📞 Support

If you encounter issues:

1. **Check the logs** in GitHub Actions
2. **Verify file permissions** in repository
3. **Test locally first** with `npm run dev`
4. **Check browser console** for errors
5. **Review GitHub Pages documentation**

## 🎉 Success Checklist

After deployment, verify:
- [ ] Website loads at GitHub Pages URL
- [ ] All pages work correctly
- [ ] Images load properly
- [ ] Language switcher works
- [ ] Contact form functions
- [ ] Mobile responsive design
- [ ] Custom domain works (if configured)
- [ ] HTTPS certificate active
- [ ] GitHub Actions workflow successful

---

**Your enterprise website is now live on GitHub Pages!** 🚀

For content updates, refer to `CONTENT_MANAGEMENT.md`
