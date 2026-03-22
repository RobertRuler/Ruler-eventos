@echo off
echo.
echo ========================================
echo   RULER Craft Beer - Iniciando...
echo ========================================
echo.
echo Verificando Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python no esta instalado
    echo.
    echo Descarga Python desde: https://www.python.org/downloads/
    echo.
    pause
    exit /b
)

echo.
echo Python encontrado! Iniciando servidor...
echo.
echo ========================================
echo   Servidor iniciado en:
echo   http://localhost:8000
echo ========================================
echo.
echo Abre tu navegador en: http://localhost:8000
echo.
echo Presiona Ctrl+C para detener el servidor
echo.

start http://localhost:8000

python -m http.server 8000
