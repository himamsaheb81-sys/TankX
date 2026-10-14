@echo off
title TankX.com - Single Server Enterprise System [Port 3000]
color 0B
cls

echo =======================================================================
echo               TANKX.COM UNIFIED SINGLE SERVER (PORT 3000)
echo    Frontend UI and Backend API Gateway on a Single Server (Port 3000)
echo =======================================================================
echo.

:: Check Node.js
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed or not in PATH!
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

cd /d "%~dp0"

:: Ensure production frontend bundle is available
if not exist "client\.next\server\app\index.html" (
    echo [*] Compiling TankX production frontend bundle...
    call npm --prefix client run build
)

echo [*] Starting TankX.com Internal UI Renderer (Port 3001)...
start "TankX.com Internal Renderer" /min cmd /k "npm --prefix client run dev"

ping 127.0.0.1 -n 4 >nul

echo [*] Starting TankX.com Unified Single Server (Port 3000)...
start "TankX.com Unified Server Engine [Port 3000]" cmd /k "node server/index.js"

echo [*] Waiting for TankX.com Single Server to initialize...
ping 127.0.0.1 -n 5 >nul

echo [*] Opening TankX.com Single Server in your browser...
start http://localhost:3000

echo.
echo =======================================================================
echo  [ONLINE] TankX.com Single Unified Server is LIVE on Port 3000! [CODE: 0]
echo.
echo  - Unified Server URL:     http://localhost:3000
echo  - Domain URL:             http://TankX.com:3000 (or http://TankX.com)
echo  - Backend REST API:       http://localhost:3000/api/health
echo  - Real-Time WebSocket:    ws://localhost:3000
echo =======================================================================
echo.
echo Keep this window open. To shut down TankX.com, run 'Stop-TankX.bat'.
echo.
pause
