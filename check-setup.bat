@echo off
echo ========================================
echo Job ^& Networking Portal Setup Checker
echo ========================================
echo.

echo Checking prerequisites...
echo.

REM Check Node.js
echo [1/5] Checking Node.js...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js not found. Please install Node.js 18+
    echo Download from: https://nodejs.org/
) else (
    node --version
    echo ✅ Node.js found
)
echo.

REM Check Go
echo [2/5] Checking Go...
go version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Go not found. Please install Go 1.21+
    echo Download from: https://golang.org/dl/
) else (
    go version
    echo ✅ Go found
)
echo.

REM Check Python
echo [3/5] Checking Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python not found. Please install Python 3.9+
    echo Download from: https://python.org/
) else (
    python --version
    echo ✅ Python found
)
echo.

REM Check MongoDB
echo [4/5] Checking MongoDB...
mongod --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  MongoDB not found locally. You can use MongoDB Atlas instead.
    echo Sign up at: https://www.mongodb.com/cloud/atlas
) else (
    echo ✅ MongoDB found
)
echo.

REM Check Git
echo [5/5] Checking Git...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git not found. Please install Git
    echo Download from: https://git-scm.com/
) else (
    git --version
    echo ✅ Git found
)
echo.

echo ========================================
echo Setup Recommendations:
echo ========================================
echo.
echo 1. Install missing prerequisites
echo 2. Install Phantom Wallet browser extension
echo 3. Run: npm install (in frontend folder)
echo 4. Run: go mod download (in backend folder)
echo 5. Create Python venv: python -m venv venv (in ai folder)
echo 6. Copy .env.example to .env in each folder
echo 7. Update .env files with your configuration
echo.
echo For detailed instructions, see QUICKSTART.md
echo.
pause
