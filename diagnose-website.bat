@echo off
echo.
echo ========================================
echo 🔍 Website Deployment Diagnostic Tool
echo ========================================
echo.

echo [INFO] This tool will help diagnose why your website is not accessible
echo [INFO] at https://tassoftware.online
echo.

echo 📋 DIAGNOSTIC CHECKLIST:
echo.
echo 1. GitHub Pages Status Check
echo    - Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo    - Check if Pages is enabled
echo    - Verify source branch (should be gh-pages)
echo.
echo 2. GitHub Actions Status Check
echo    - Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/actions
echo    - Check if latest workflow succeeded
echo    - Look for any failed jobs
echo.
echo 3. Repository Permissions Check
echo    - Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/actions
echo    - Ensure Actions are enabled
echo    - Check permissions
echo.
echo 4. DNS Configuration Check
echo    - Verify DNS records are set correctly
echo    - Wait for DNS propagation (5-10 minutes)
echo.
echo Press any key to continue with local checks...
pause

REM Check if Node.js is installed
echo.
echo [1/4] Checking Node.js installation...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed!
    echo.
    echo This is likely why the website is not deployed.
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

REM Check if dependencies are installed
echo [2/4] Checking dependencies...
if not exist "node_modules" (
    echo ❌ Dependencies not installed!
    echo.
    echo Installing dependencies...
    npm install
    if %errorlevel% neq 0 (
        echo ❌ Failed to install dependencies
        pause
        exit /b 1
    )
)
echo ✅ Dependencies ready
echo.

REM Check if build works
echo [3/4] Testing build process...
npm run build
if %errorlevel% neq 0 (
    echo ❌ Build failed!
    echo.
    echo Common build issues:
    echo 1. TypeScript errors
    echo 2. Missing dependencies
    echo 3. Configuration issues
    echo.
    echo Please fix build errors before deploying
    pause
    exit /b 1
)
echo ✅ Build successful
echo.

REM Check if dist folder exists
echo [4/4] Checking build output...
if not exist "dist" (
    echo ❌ Build output not found!
    echo.
    echo The build process may have failed silently.
    echo Please check the build logs above.
    pause
    exit /b 1
)

echo ✅ Build output found in dist/ folder
echo.

echo 🎯 DIAGNOSIS COMPLETE
echo.
echo 📋 NEXT STEPS:
echo.
echo 1. If Node.js was missing: Install Node.js and restart
echo 2. If dependencies were missing: They are now installed
echo 3. If build failed: Fix the build errors shown above
echo 4. If everything passed: Deploy using npm run deploy
echo.
echo 🔧 COMMON SOLUTIONS:
echo.
echo For GitHub Pages issues:
echo - Enable Pages: Settings → Pages → Deploy from branch → gh-pages
echo - Check Actions: Settings → Actions → General → Enable Actions
echo - Make repository public: Settings → General → Danger Zone
echo.
echo For DNS issues:
echo - Add A records: 185.199.108.153, 185.199.109.153, etc.
echo - Add CNAME: www → tassoftwaresolutions90.github.io
echo - Wait 5-10 minutes for DNS propagation
echo.
echo For deployment issues:
echo - Run: npm run deploy
echo - Check GitHub Actions logs
echo - Verify Pages settings
echo.
echo ========================================
echo Diagnostic complete! 🔍
echo ========================================
echo.
pause
