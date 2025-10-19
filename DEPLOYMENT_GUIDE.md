# 🚀 Deployment Guide for tassoftware.online

## 📋 Prerequisites

1. **Node.js installed** (v16 or higher)
2. **Git repository** on GitHub
3. **Custom domain**: `tassoftware.online`
4. **GitHub account** with Pages enabled

## 🔧 Configuration Updates Made

I've updated the configuration for your custom domain:

### ✅ Changes Applied:
- **Vite config**: Changed `base` from `/enterprise-static-website/` to `/`
- **React Router**: Changed `basename` from `/enterprise-static-website` to `/`
- **Ready for custom domain deployment**

## 🚀 Deployment Steps

### Step 1: Build the Project
```bash
# Install dependencies (if not already done)
npm install

# Build for production
npm run build
```

### Step 2: Deploy to GitHub Pages

#### Option A: Using gh-pages package (Recommended)
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

# Copy dist folder contents to your web server
# Upload all files from dist/ to your domain's public_html or www folder.
```

### Step 3: Configure Custom Domain

#### For GitHub Pages:
1. **Go to your GitHub repository**
2. **Settings** → **Pages**
3. **Custom domain**: Enter `tassoftware.online`
4. **Enforce HTTPS**: ✅ Check this box
5. **Save**

#### DNS Configuration:
Add these DNS records to your domain provider:

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
Value: yourusername.github.io
```

### Step 4: Verify Deployment

1. **Wait 5-10 minutes** for DNS propagation
2. **Visit**: `https://tassoftware.online`
3. **Test all pages**:
   - Home: `https://tassoftware.online/`
   - Services: `https://tassoftware.online/services`
   - About: `https://tassoftware.online/about`
   - Projects: `https://tassoftware.online/projects`
   - Contact: `https://tassoftware.online/contact`

## 🔄 Automatic Deployment (GitHub Actions)

The project includes GitHub Actions for automatic deployment:

### Setup:
1. **Push code to main branch**
2. **GitHub Actions will automatically build and deploy**
3. **No manual intervention needed**

### Workflow File: `.github/workflows/deploy.yml`
- Triggers on push to main branch
- Builds the project
- Deploys to GitHub Pages
- Ready for your custom domain

## 📁 File Structure After Build

```
dist/
├── index.html          # Main HTML file
├── assets/
│   ├── index-[hash].js # JavaScript bundle
│   ├── index-[hash].css # CSS bundle
│   └── [images]         # Optimized images
└── [other static files]
```

## 🎯 Expected Results

After deployment, your website will have:

- ✅ **Custom Domain**: `https://tassoftware.online`
- ✅ **SSL Certificate**: Automatic HTTPS
- ✅ **Fast Loading**: Optimized build
- ✅ **SEO Ready**: Proper meta tags
- ✅ **Mobile Responsive**: Works on all devices
- ✅ **Animations**: Smooth Framer Motion effects
- ✅ **i18n**: English/Spanish language switching
- ✅ **CMS Content**: JSON-driven dynamic content

## 🔧 Troubleshooting

### If deployment fails:
1. **Check Node.js version**: `node --version` (should be 16+)
2. **Clear npm cache**: `npm cache clean --force`
3. **Reinstall dependencies**: `rm -rf node_modules && npm install`
4. **Check build**: `npm run build` (should complete without errors)

### If domain doesn't work:
1. **Wait for DNS propagation** (up to 24 hours)
2. **Check DNS settings** with your domain provider
3. **Verify GitHub Pages settings**
4. **Test with**: `https://yourusername.github.io` first

## 📞 Support

If you encounter any issues:
1. Check the browser console for errors
2. Verify all files uploaded correctly
3. Test with a different browser
4. Check GitHub Pages status page

---

**Your enterprise website is ready for deployment to tassoftware.online!** 🎉
