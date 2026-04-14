#!/bin/bash

# Instalador del Curso Claude Code — Cristhian White
# Compatible con macOS y Linux

set -e

DEST="$HOME/.claude/commands/cw"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "   Curso Claude Code — por Cristhian White"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Verificar que Claude Code está instalado
if ! command -v claude &> /dev/null; then
  echo "⚠️  Claude Code no está instalado."
  echo "   Instálalo con: npm install -g @anthropic-ai/claude-code"
  echo "   Luego vuelve a correr este script."
  exit 1
fi

# Crear carpeta de comandos
mkdir -p "$DEST"

# Copiar skills
cp "$SCRIPT_DIR/skills/"*.md "$DEST/"

echo "✅ ¡Curso instalado correctamente!"
echo ""
echo "   Comandos disponibles:"
echo "   /cw:start    → Bienvenida al curso"
echo "   /cw:clase-1  → Clase 1: Tu Claude personalizado"
echo "   /cw:clase-2  → Clase 2: Tu primera skill"
echo "   /cw:clase-3  → Clase 3: MCP + multi-agente"
echo "   /cw:clase-4  → Clase 4: Página web real"
echo "   /cw:clase-5  → Clase 5: El sistema completo"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "   Abre Claude Code y escribe /cw:start"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
