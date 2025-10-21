@echo off
echo.
echo ========================================
echo 🚀 SIMPLE DEPLOYMENT - Single HTML File
echo ========================================
echo.

echo [INFO] This script will deploy a simple HTML website to GitHub Pages
echo [INFO] No complex build process - just a single HTML file
echo.

REM Check if git is available
echo [1/4] Checking Git installation...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed!
    echo.
    echo Please install Git first:
    echo 1. Go to https://git-scm.com/downloads
    echo 2. Download and install Git
    echo 3. Restart this script
    echo.
    pause
    exit /b 1
)

echo ✅ Git found: 
git --version
echo.

REM Initialize git repository if not already done
echo [2/4] Checking Git repository...
if not exist ".git" (
    echo 📦 Initializing Git repository...
    git init
    git remote add origin https://github.com/tassoftwaresolutions90/tassoftware-site.git
)

REM Add and commit the HTML file
echo [3/4] Adding files to Git...
git add index.html
git add .
git commit -m "Deploy simple HTML website"

REM Push to main branch
echo [4/4] Deploying to GitHub Pages...
git push origin main
if %errorlevel% neq 0 (
    echo ❌ Push failed!
    echo.
    echo Please check:
    echo 1. You have push permissions to the repository
    echo 2. Repository URL is correct
    echo 3. You're logged into GitHub
    echo.
    pause
    exit /b 1
)

echo ✅ Deployment successful!
echo.
echo 🎉 WEBSITE DEPLOYED!
echo.
echo 📋 Next steps:
echo.
echo 1. Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo 2. Under "Source", select "Deploy from a branch"
echo 3. Select "main" branch
echo 4. Select "/ (root)" folder
echo 5. Click "Save"
echo.
echo 6. Wait 2-5 minutes for GitHub Pages to update
echo 7. Test your website at: https://tassoftwaresolutions90.github.io/tassoftware-site/
echo.
echo 🌐 Your simple website will be live shortly!
echo.
echo ========================================
echo Simple deployment completed! 🚀
echo ========================================
echo.
pause
