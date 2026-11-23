@echo off
setlocal
"%~dp0qwen_inpaint\.venv\Scripts\python.exe" -E -X utf8 "%~dp0qwen_inpaint\start-baibai.py" turbo %*
if errorlevel 1 (
    pause
    exit /b 1
)
