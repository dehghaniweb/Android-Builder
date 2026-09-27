@echo off
setlocal EnableExtensions EnableDelayedExpansion

title Android-Builder - Config Test

set "BASE=%~dp0"
set "CONFIG=%BASE%config.yml"

echo ==========================================
echo Android-Builder CONFIG TEST
echo ==========================================
echo.

if not exist "%CONFIG%" (
    echo [ERROR] config.yml not found.
    echo.
    pause
    exit /b 1
)

echo [OK] config.yml found.
echo.

echo ---------- CONFIG CONTENT ----------
type "%CONFIG%"
echo.
echo ---------- END CONFIG -------------
echo.

echo [OK] Config file is readable.
echo.

pause
exit /b 0
