@echo off
echo 🚀 Starting deployment to tassoftware.online...

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js first.
    echo Download from: https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js found
node --version

REM Install dependencies
echo 📦 Installing dependencies...
npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install dependencies
    pause
    exit /b 1
)

echo ✅ Dependencies installed successfully

REM Build the project
echo 🔨 Building project for production...
npm run build
if %errorlevel% neq 0 (
    echo ❌ Build failed
    pause
    exit /b 1
)

echo ✅ Build completed successfully

REM Check if gh-pages is installed
npm list gh-pages >nul 2>&1
if %errorlevel% neq 0 (
    echo 📦 Installing gh-pages...
    npm install --save-dev gh-pages
)

REM Deploy to GitHub Pages
echo 🚀 Deploying to GitHub Pages...
npm run deploy
if %errorlevel% equ 0 (
    echo 🎉 Deployment successful!
    echo 🌐 Your website will be available at: https://tassoftware.online
    echo ⏰ Please wait 5-10 minutes for DNS propagation
    echo.
    echo 📋 Next steps:
    echo 1. Go to your GitHub repository
    echo 2. Settings → Pages
    echo 3. Set custom domain to: tassoftware.online
    echo 4. Enable 'Enforce HTTPS'
    echo 5. Configure DNS records as shown in DEPLOYMENT_GUIDE.md
) else (
    echo ❌ Deployment failed
)

pause
