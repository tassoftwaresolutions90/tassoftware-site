@echo off
echo.
echo ========================================
echo 🚀 TAS SOFTWARE WEBSITE DEPLOYMENT
echo ========================================
echo.

echo [INFO] Deploying TAS Software website
echo [FEATURES] SaaS, Web Dev, Digital Marketing, Automation, AI Consulting
echo [TECH] Pure HTML with JSON content management
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

REM Add and commit all files
echo [2/4] Adding website files...
git add .
git commit -m "Update TAS Software website

- Pure HTML website with JSON content management
- Modern responsive design for all devices
- Software company services (SaaS, Web Dev, Digital Marketing, Automation, AI Consulting)
- Optimized for GitHub Pages deployment
- Clean project structure"

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
echo 🎉 WEBSITE DEPLOYED SUCCESSFULLY!
echo.
echo 📋 Website Features:
echo.
echo ✅ Pure HTML website (no build process needed)
echo ✅ Modern responsive design (mobile-first)
echo ✅ JSON content management system
echo ✅ SaaS, Web Dev, Digital Marketing, Automation, AI Consulting
echo ✅ Mobile responsive (Android/iOS/Desktop)
echo ✅ GitHub Pages compatible
echo.
echo 🌐 Your website is live at:
echo - GitHub Pages: https://tassoftwaresolutions90.github.io/tassoftware-site/
echo - Custom Domain: https://tassoftware.online
echo.
echo 📝 Content Management:
echo - Edit content in: data/content.json
echo - Update services in: data/services.json
echo - Modify projects in: data/projects.json
echo - Update team in: data/team.json
echo - Change testimonials in: data/testimonials.json
echo.
echo ⚡ GitHub Actions will automatically deploy your changes!
echo.
echo ========================================
echo Website deployment completed! 🚀
echo ========================================
echo.
pause
