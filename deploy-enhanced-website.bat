@echo off
echo.
echo ========================================
echo 🚀 ENHANCED WEBSITE DEPLOYMENT
echo ========================================
echo.

echo [INFO] Deploying enhanced TAS Software website
echo [FEATURES] SaaS, Web Dev, Digital Marketing, Automation, AI Consulting
echo [TECH] Modern responsive design with JSON content management
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
echo [2/4] Adding enhanced website files...
git add .
git commit -m "Enhanced website with modern features and JSON content management

- Updated for software company (SaaS, Web Dev, Digital Marketing, Automation, AI Consulting)
- Added JSON content management system
- Implemented modern responsive design
- Added mobile-first approach
- Enhanced with latest tech stack
- Optimized for GitHub Pages deployment"

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
echo 🎉 ENHANCED WEBSITE DEPLOYED!
echo.
echo 📋 Website Features:
echo.
echo ✅ Modern responsive design (mobile-first)
echo ✅ JSON content management system
echo ✅ SaaS, Web Dev, Digital Marketing, Automation, AI Consulting
echo ✅ Latest tech stack (React, Vue.js, Node.js, AWS, etc.)
echo ✅ Mobile responsive (Android/iOS/Desktop)
echo ✅ GitHub Pages compatible
echo.
echo 🌐 Your enhanced website is live at:
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
echo ========================================
echo Enhanced website deployment completed! 🚀
echo ========================================
echo.
pause
