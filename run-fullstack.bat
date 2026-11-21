@echo off
title Smart Crop Advisor - Full Stack Launcher
echo ========================================================
echo         Launching Smart Crop Advisor Full Stack
echo ========================================================
echo.
echo 1. Starting Backend API (0.0.0.0:8000) ...
start "Smart Crop Advisor - Backend" cmd /k "cd /d %~dp0backend && call .venv\Scripts\activate.bat && uvicorn app.main:app --reload --host 0.0.0.0 --port 8000"

echo 2. Starting Frontend Web App (0.0.0.0:5173) ...
start "Smart Crop Advisor - Frontend" cmd /k "cd /d %~dp0frontend && npm run dev -- --host"

echo.
echo Both servers are starting up in separate windows!
echo - PC Website:      http://localhost:5173
echo - Phone Link:      Check the Frontend window for your Network URL (e.g. http://10.96.78.229:5173)
echo - Backend Docs:    http://localhost:8000/docs
echo ========================================================
ping 127.0.0.1 -n 4 >nul
