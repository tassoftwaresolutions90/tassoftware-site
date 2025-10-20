@echo off
echo.
echo ========================================
echo 🚀 Create gh-pages Branch & Deploy
echo ========================================
echo.

echo [INFO] Your GitHub Pages is configured but gh-pages branch doesn't exist
echo [INFO] This script will create the gh-pages branch and deploy your website
echo.

REM Check if Node.js is installed
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

REM Deploy to GitHub Pages (this will create gh-pages branch)
echo [5/5] Creating gh-pages branch and deploying...
npm run deploy
if %errorlevel% neq 0 (
    echo ❌ Deployment failed
    echo.
    echo Please check:
    echo 1. You have push permissions to the repository
    echo 2. Repository is public or you have GitHub Pro
    echo 3. GitHub Pages is enabled in repository settings
    echo.
    pause
    exit /b 1
)

echo ✅ Deployment successful!
echo.
echo 🎉 GH-PAGES BRANCH CREATED!
echo.
echo 📋 Next steps:
echo.
echo 1. Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo 2. Under "Source", select "Deploy from a branch"
echo 3. Select "gh-pages" branch
echo 4. Select "/ (root)" folder
echo 5. Click "Save"
echo.
echo 6. Add DNS records to your domain provider:
echo    Type: A, Name: @, Value: 185.199.108.153
echo    Type: A, Name: @, Value: 185.199.109.153
echo    Type: A, Name: @, Value: 185.199.110.153
echo    Type: A, Name: @, Value: 185.199.111.153
echo    Type: CNAME, Name: www, Value: tassoftwaresolutions90.github.io
echo.
echo 7. Wait 5-10 minutes for DNS propagation
echo 8. Enable "Enforce HTTPS" in Pages settings
echo.
echo 🌐 Your website will be available at: https://tassoftware.online/
echo.
echo ========================================
echo Deployment completed successfully! 🚀
echo ========================================
echo.
pause
