@echo off
setlocal

cd /d "%~dp0"

uv sync --quiet
if %errorlevel% neq 0 (
    echo Failed to sync dependencies.
    pause
    exit /b %errorlevel%
)

uv run heretic %*
if %errorlevel% neq 0 pause
