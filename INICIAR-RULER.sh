#!/bin/bash

echo ""
echo "========================================"
echo "  RULER Craft Beer - Iniciando..."
echo "========================================"
echo ""

# Verificar Python
if ! command -v python3 &> /dev/null
then
    if ! command -v python &> /dev/null
    then
        echo "❌ ERROR: Python no está instalado"
        echo ""
        echo "Instala Python desde: https://www.python.org/downloads/"
        echo ""
        exit 1
    fi
    PYTHON_CMD="python"
else
    PYTHON_CMD="python3"
fi

echo "✅ Python encontrado! Iniciando servidor..."
echo ""
echo "========================================"
echo "  Servidor iniciado en:"
echo "  http://localhost:8000"
echo "========================================"
echo ""
echo "Abre tu navegador en: http://localhost:8000"
echo ""
echo "Presiona Ctrl+C para detener el servidor"
echo ""

# Abrir navegador automáticamente
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    open http://localhost:8000
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    xdg-open http://localhost:8000 2>/dev/null
fi

# Iniciar servidor
$PYTHON_CMD -m http.server 8000
