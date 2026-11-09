@echo off
setlocal
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
  echo Khong tim thay Python. Hay cai Python va chon "Add Python to PATH".
  pause
  exit /b 1
)

start "B1 Web - giu cua so nay mo" /D "%~dp0" cmd /k python -m http.server 8000 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8000/"
