# Instalador del Curso Claude Code — Cristhian White
# Compatible con Windows (PowerShell)

$DEST = "$env:USERPROFILE\.claude\commands\cw"
$SCRIPT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
Write-Host "   Curso Claude Code — por Cristhian White"
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
Write-Host ""

# Verificar que Claude Code está instalado
if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
    Write-Host "⚠️  Claude Code no está instalado."
    Write-Host "   Instálalo con: npm install -g @anthropic-ai/claude-code"
    Write-Host "   Luego vuelve a correr este script."
    exit 1
}

# Crear carpeta de comandos
New-Item -ItemType Directory -Force -Path $DEST | Out-Null

# Copiar skills y regalos
Copy-Item "$SCRIPT_DIR\skills\*.md" -Destination $DEST -Force
New-Item -ItemType Directory -Force -Path "$DEST\regalos" | Out-Null
Copy-Item "$SCRIPT_DIR\regalos\*.md" -Destination "$DEST\regalos" -Force

Write-Host "✅ ¡Curso instalado correctamente!"
Write-Host ""
Write-Host "   Comandos disponibles:"
Write-Host "   /cw:start    → Bienvenida al curso"
Write-Host "   /cw:clase-1  → Clase 1: Tu Claude personalizado"
Write-Host "   /cw:clase-2  → Clase 2: Tu primera skill"
Write-Host "   /cw:clase-3  → Clase 3: Subagentes en paralelo"
Write-Host "   /cw:clase-4  → Clase 4: MCP — conecta tus apps"
Write-Host "   /cw:clase-5  → Clase 5: Construye algo real"
Write-Host "   /cw:clase-6  → Clase 6: El sistema completo"
Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
Write-Host "   Abre Claude Code y escribe /cw:start"
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
Write-Host ""
