@echo off
title Stop TankX Servers
color 0C
cls

echo =======================================================================
echo               STOPPING TANKX ENTERPRISE SERVICES
echo =======================================================================
echo.

echo [*] Terminating node processes on Port 3000 and Port 3001...

powershell -NoProfile -Command "Get-NetTCPConnection -LocalPort 3000, 3001 -State Listen -ErrorAction SilentlyContinue | ForEach-Object { try { Stop-Process -Id $_.OwningProcess -Force -ErrorAction SilentlyContinue; Write-Host ('[*] Stopped process on Port ' + $_.LocalPort + ' (PID: ' + $_.OwningProcess + ')') } catch {} }"

echo.
echo [DONE] TankX services stopped successfully.
echo.
pause
