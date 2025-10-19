#!/bin/bash
# Deployment script for tassoftware.online

echo "🚀 Starting deployment to tassoftware.online..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    echo "Download from: https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js found: $(node --version)"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo "✅ Dependencies installed successfully"

# Build the project
echo "🔨 Building project for production..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Build failed"
    exit 1
fi

echo "✅ Build completed successfully"

# Check if gh-pages is installed
if ! npm list gh-pages &> /dev/null; then
    echo "📦 Installing gh-pages..."
    npm install --save-dev gh-pages
fi

# Deploy to GitHub Pages
echo "🚀 Deploying to GitHub Pages..."
npm run deploy

if [ $? -eq 0 ]; then
    echo "🎉 Deployment successful!"
    echo "🌐 Your website will be available at: https://tassoftware.online"
    echo "⏰ Please wait 5-10 minutes for DNS propagation"
    echo ""
    echo "📋 Next steps:"
    echo "1. Go to your GitHub repository"
    echo "2. Settings → Pages"
    echo "3. Set custom domain to: tassoftware.online"
    echo "4. Enable 'Enforce HTTPS'"
    echo "5. Configure DNS records as shown in DEPLOYMENT_GUIDE.md"
else
    echo "❌ Deployment failed"
    exit 1
fi
