@echo off
echo.
echo ========================================
echo 🚀 TAS Software Website Deployment
echo ========================================
echo.

REM Check if Node.js is installed
echo [1/6] Checking Node.js installation...
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
echo [2/6] Installing dependencies...
npm install
if %errorlevel% neq 0 (
    echo ❌ Failed to install dependencies
    pause
    exit /b 1
)
echo ✅ Dependencies installed successfully
echo.

REM Build the project
echo [3/6] Building project for production...
npm run build
if %errorlevel% neq 0 (
    echo ❌ Build failed
    pause
    exit /b 1
)
echo ✅ Build completed successfully
echo.

REM Check if gh-pages is installed
echo [4/6] Checking gh-pages installation...
npm list gh-pages >nul 2>&1
if %errorlevel% neq 0 (
    echo 📦 Installing gh-pages...
    npm install --save-dev gh-pages
)
echo ✅ gh-pages ready
echo.

REM Deploy to GitHub Pages
echo [5/6] Deploying to GitHub Pages...
npm run deploy
if %errorlevel% neq 0 (
    echo ❌ Deployment failed
    echo.
    echo Please check:
    echo 1. You have a GitHub repository
    echo 2. You're logged into GitHub
    echo 3. You have push permissions
    pause
    exit /b 1
)
echo ✅ Deployment successful!
echo.

REM Final instructions
echo [6/6] Final setup instructions...
echo.
echo 🎉 DEPLOYMENT COMPLETE!
echo.
echo 📋 Next steps:
echo.
echo 1. Go to your GitHub repository
echo 2. Click "Settings" tab
echo 3. Scroll to "Pages" section
echo 4. Set source to "Deploy from a branch"
echo 5. Select "gh-pages" branch
echo 6. Set custom domain to: tassoftware.online
echo 7. Enable "Enforce HTTPS"
echo.
echo 🌐 Your website will be available at:
echo    https://YOUR_USERNAME.github.io/REPOSITORY_NAME
echo    https://tassoftware.online (after DNS setup)
echo.
echo ⏰ Please wait 5-10 minutes for changes to take effect
echo.
echo 📖 For content updates, see: CONTENT_MANAGEMENT.md
echo 📖 For detailed instructions, see: GITHUB_PAGES_DEPLOYMENT.md
echo.
echo ========================================
echo Deployment completed successfully! 🚀
echo ========================================
echo.
pause
