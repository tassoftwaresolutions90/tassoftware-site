@echo off
echo.
echo ========================================
echo 🚀 Force Deploy Website - Complete Fix
echo ========================================
echo.

echo [INFO] This script will force deploy your website to fix the accessibility issue
echo [INFO] at https://tassoftware.online/lander
echo.

echo 📋 DIAGNOSTIC STEPS:
echo.
echo 1. Check GitHub Actions Status
echo    - Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/actions
echo    - Look for "Deploy to GitHub Pages" workflow
echo    - Check if it completed successfully
echo.
echo 2. Force Deploy Using GitHub Actions
echo    - Click "Run workflow" button
echo    - Wait for completion
echo.
echo 3. Check GitHub Pages Settings
echo    - Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo    - Ensure Source is "GitHub Actions"
echo    - Custom domain should be "tassoftware.online" (without /lander)
echo.
echo 4. Add DNS Records to Your Domain Provider
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
echo [1/4] Checking Node.js installation...
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
echo [2/4] Installing dependencies...
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
echo [3/4] Building project for production...
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
echo 📋 NEXT STEPS TO FIX THE WEBSITE:
echo.
echo 1. Go to GitHub Actions: https://github.com/tassoftwaresolutions90/tassoftware-site/actions
echo 2. Click "Run workflow" on "Deploy to GitHub Pages"
echo 3. Wait for deployment to complete
echo 4. Add DNS records to your domain provider (see above)
echo 5. Wait 5-10 minutes for DNS propagation
echo 6. Test website at: https://tassoftware.online/
echo.
echo 🔧 COMMON SOLUTIONS:
echo.
echo For GitHub Actions issues:
echo - Check Actions tab for error logs
echo - Re-run the workflow
echo - Verify repository permissions
echo.
echo For DNS issues:
echo - Add the DNS records shown above
echo - Wait for DNS propagation
echo - Check domain provider settings
echo.
echo For Pages issues:
echo - Ensure Source is "GitHub Actions"
echo - Custom domain should be "tassoftware.online"
echo - Enable HTTPS after DNS is fixed
echo.
echo ========================================
echo Diagnostic complete! 🔍
echo ========================================
echo.
pause
