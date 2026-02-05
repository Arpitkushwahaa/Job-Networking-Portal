@echo off
echo Starting Job ^& Networking Portal Development Environment...
echo.

REM Start Backend
echo Starting Backend...
start cmd /k "cd backend && go run cmd/main.go"

REM Wait a bit for backend to start
timeout /t 3 /nobreak

REM Start AI Service
echo Starting AI Service...
start cmd /k "cd ai && venv\Scripts\activate && python app.py"

REM Wait a bit for AI service to start
timeout /t 3 /nobreak

REM Start Frontend
echo Starting Frontend...
start cmd /k "cd frontend && npm start"

echo.
echo All services started!
echo.
echo Frontend: http://localhost:3000
echo Backend: http://localhost:8080
echo AI Service: http://localhost:5000
echo.
echo Close the command windows to stop the services.
pause
