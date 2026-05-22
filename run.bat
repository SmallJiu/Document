@echo off

node -v >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js is not installed.
    echo Please download and install Node.js from https://nodejs.org/ or https://nodejs.cn/download/
    echo After installation, restart this script.
    pause
    exit /b 1
)

docsify serve ./

pause
