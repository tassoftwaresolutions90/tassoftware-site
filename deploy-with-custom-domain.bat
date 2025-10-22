@echo off
echo.
echo ========================================
echo 🚀 DEPLOY UPDATED WEBSITE + CUSTOM DOMAIN
echo ========================================
echo.

echo [INFO] This script will:
echo 1. Deploy the updated website with mobile navigation
echo 2. Guide you through custom domain setup
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

REM Add and commit the updated HTML file
echo [2/4] Adding updated website files...
git add index.html
git add .
git commit -m "Add mobile navigation and fix mobile menu"

REM Push to main branch
echo [3/4] Deploying to GitHub Pages...
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
echo 🎉 WEBSITE UPDATED WITH MOBILE NAVIGATION!
echo.
echo 📋 Next steps for CUSTOM DOMAIN:
echo.
echo 1. Go to: https://github.com/tassoftwaresolutions90/tassoftware-site/settings/pages
echo 2. Under "Custom domain", enter: tassoftware.online
echo 3. Check "Enforce HTTPS"
echo 4. Click "Save"
echo.
echo 5. Go to your domain provider (where you bought tassoftware.online)
echo 6. Add these DNS records:
echo.
echo    Type: A, Name: @, Value: 185.199.108.153
echo    Type: A, Name: @, Value: 185.199.109.153
echo    Type: A, Name: @, Value: 185.199.110.153
echo    Type: A, Name: @, Value: 185.199.111.153
echo    Type: CNAME, Name: www, Value: tassoftwaresolutions90.github.io
echo.
echo 7. Wait 5-10 minutes for DNS to propagate
echo 8. Test your website at: https://tassoftware.online
echo.
echo 🌐 Your website will be live at both:
echo - GitHub Pages: https://tassoftwaresolutions90.github.io/tassoftware-site/
echo - Custom Domain: https://tassoftware.online (after DNS setup)
echo.
echo ========================================
echo Mobile navigation fixed! 🚀
echo Custom domain setup ready! 🌐
echo ========================================
echo.
pause
