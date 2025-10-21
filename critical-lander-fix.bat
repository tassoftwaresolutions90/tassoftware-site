@echo off
echo.
echo ========================================
echo 🚨 CRITICAL FIX: Remove /lander Issue
echo ========================================
echo.

echo [CRITICAL] The /lander path indicates deployment failure!
echo [INFO] This script will help diagnose and fix the issue
echo.

echo 📋 IMMEDIATE DIAGNOSTIC STEPS:
echo.
echo 1. TEST GITHUB PAGES URL FIRST
echo    - Go to: https://tassoftwaresolutions90.github.io/tassoftware-site/
echo    - This should show your React website
echo    - If it doesn't work, deployment failed
echo.
echo 2. CHECK GITHUB ACTIONS STATUS
echo    - Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/actions
echo    - Look for "Deploy to GitHub Pages" workflow
echo    - Check if it completed successfully
echo    - If failed, click "Run workflow"
echo.
echo 3. CHECK PAGES SETTINGS
echo    - Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo    - Source should be "GitHub Actions"
echo    - Custom domain should be "tassoftware.online" (NO /lander)
echo.
echo 4. CHECK DOMAIN PROVIDER
echo    - Look for redirects from tassoftware.online to /lander
echo    - Remove any such redirects
echo    - Add DNS records (see below)
echo.
echo 5. DNS RECORDS TO ADD
echo    Type: A, Name: @, Value: 185.199.108.153
echo    Type: A, Name: @, Value: 185.199.109.153
echo    Type: A, Name: @, Value: 185.199.110.153
echo    Type: A, Name: @, Value: 185.199.111.153
echo    Type: CNAME, Name: www, Value: tassoftwaresolutions90.github.io
echo.
echo Press any key to continue with local checks...
pause

REM Check if Node.js is installed
echo.
echo [1/3] Checking Node.js installation...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed!
    echo.
    echo This is why the website is not deployed.
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
echo [2/3] Installing dependencies...
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
echo [3/3] Building project for production...
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

echo 🎯 CRITICAL DIAGNOSIS COMPLETE
echo.
echo 📋 IMMEDIATE ACTION REQUIRED:
echo.
echo 1. TEST GITHUB PAGES URL:
echo    https://tassoftwaresolutions90.github.io/tassoftware-site/
echo    (This should show your React website)
echo.
echo 2. IF GITHUB PAGES URL DOESN'T WORK:
echo    - Go to Actions: https://github.com/tassoftwaresolutions90/tassoftware-site/actions
echo    - Click "Run workflow" on "Deploy to GitHub Pages"
echo    - Wait for completion
echo.
echo 3. IF GITHUB PAGES URL WORKS BUT CUSTOM DOMAIN DOESN'T:
echo    - Check Pages settings: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo    - Custom domain should be "tassoftware.online" (NO /lander)
echo    - Add DNS records to your domain provider
echo    - Remove any /lander redirects
echo.
echo 4. WAIT FOR DNS PROPAGATION (5-10 minutes)
echo.
echo 5. TEST FINAL URL: https://tassoftware.online/
echo.
echo 🚨 CRITICAL: The /lander path indicates deployment failure!
echo Fix the GitHub Pages deployment first, then the domain will work.
echo.
echo ========================================
echo Critical diagnosis complete! 🚨
echo ========================================
echo.
pause
