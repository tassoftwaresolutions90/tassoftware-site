@echo off
echo.
echo ========================================
echo 🚀 TAS Software - Manual Deployment
echo ========================================
echo.

echo [INFO] This script will deploy your website using gh-pages
echo [INFO] Make sure GitHub Pages is enabled first!
echo.
echo 📋 STEP 1: Enable GitHub Pages
echo.
echo 1. Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo 2. Under "Source", select "Deploy from a branch"
echo 3. Select "gh-pages" branch
echo 4. Select "/ (root)" folder
echo 5. Click "Save"
echo.
echo Press any key after enabling GitHub Pages...
pause

REM Check if Node.js is installed
echo.
echo [1/5] Checking Node.js installation...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed!
    echo.
    echo Please install Node.js first:
    echo 1. Go to https://nodejs.org/
    echo 2. Download and install the LTS version
    echo 3. Restart this script
    echo.
    pause
    exit /b 1
)

echo ✅ Node.js found: 
node --version
echo.

REM Install dependencies
echo [2/5] Installing dependencies...
npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install dependencies
    echo.
    echo Try running: npm cache clean --force
    pause
    exit /b 1
)
echo ✅ Dependencies installed successfully
echo.

REM Build the project
echo [3/5] Building project for production...
npm run build
if %errorlevel% neq 0 (
    echo ❌ Build failed
    echo.
    echo Common fixes:
    echo 1. Check for TypeScript errors
    echo 2. Verify all JSON files are valid
    echo 3. Clear npm cache: npm cache clean --force
    pause
    exit /b 1
)
echo ✅ Build completed successfully
echo.

REM Check if gh-pages is installed
echo [4/5] Checking gh-pages installation...
npm list gh-pages >nul 2>&1
if %errorlevel% neq 0 (
    echo 📦 Installing gh-pages...
    npm install --save-dev gh-pages
)
echo ✅ gh-pages ready
echo.

REM Deploy to GitHub Pages
echo [5/5] Deploying to GitHub Pages...
npm run deploy
if %errorlevel% neq 0 (
    echo ❌ Deployment failed
    echo.
    echo Please check:
    echo 1. GitHub Pages is enabled (Settings → Pages)
    echo 2. Source is set to "Deploy from a branch"
    echo 3. Branch is set to "gh-pages"
    echo 4. You have push permissions to the repository
    echo 5. Repository is public or you have GitHub Pro
    echo.
    pause
    exit /b 1
)

echo ✅ Deployment successful!
echo.
echo 🎉 DEPLOYMENT COMPLETE!
echo.
echo 📋 Next steps:
echo.
echo 1. Wait 2-5 minutes for GitHub Pages to update
echo 2. Visit your site at: https://tassoftwaresolutions90.github.io/tassoftware-site
echo 3. Configure custom domain: tassoftware.online
echo 4. Set up DNS records as shown in documentation
echo.
echo 🌐 Your website will be available shortly!
echo.
echo ========================================
echo Deployment completed successfully! 🚀
echo ========================================
echo.
pause
