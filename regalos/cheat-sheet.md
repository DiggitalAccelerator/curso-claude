# Cheat Sheet — Curso Claude Code

> Desbloqueado en la Clase 5 del Curso Claude Code — por Cristhian White
>
> Tu referencia completa en una página.

---

## COMANDOS DEL CURSO

| Comando | Qué hace |
|---------|---------|
| `/cw:start` | Bienvenida al curso |
| `/cw:clase-1` | Entrevista + crea tu CLAUDE.md |
| `/cw:clase-2` | Anatomía de skill + construyes la tuya |
| `/cw:clase-3` | MCP + demo de multi-agente |
| `/cw:clase-4` | Página de captura + deploy local |
| `/cw:clase-5` | Cierre + sistema completo |

---

## CLAUDE.md — REFERENCIA RÁPIDA

**¿Qué es?** El archivo que le da memoria y personalidad a Claude para tu proyecto.

**¿Dónde va?** En la raíz de la carpeta donde trabajas. Claude lo lee automáticamente.

**¿Qué incluir?**
- Quién eres y a qué te dedicas
- Tu cliente ideal (problema, deseo, lenguaje)
- Tu voz y tono (cómo hablas, qué evitas)
- Tus herramientas y plataformas
- Tu prioridad principal
- Instrucciones específicas para Claude

**Tip:** Actualízalo cuando tu negocio cambie. Es un documento vivo.

---

## ANATOMÍA DE UNA SKILL

```markdown
---
name: nombre-de-tu-skill
description: Qué hace y cuándo usarla (aparece en autocompletar)
---

Aquí van las instrucciones en texto plano.
Claude las lee y las sigue exactamente.

Pasos, reglas, formato de output, ejemplos.
Todo lo que necesites para que la tarea salga exactamente como quieres.
```

**¿Dónde se guardan?** `~/.claude/commands/` para que estén disponibles en cualquier proyecto.

**¿Cómo se llaman?** Con `/nombre-de-tu-skill` en Claude Code.

---

## MCP — REFERENCIA RÁPIDA

**¿Qué es MCP?** Model Context Protocol. El sistema que conecta Claude con apps externas.

**MCPs más comunes:**

| App | MCP disponible |
|-----|---------------|
| Notion | Sí (oficial) |
| Google Drive/Sheets | Sí |
| GitHub | Sí (oficial) |
| Slack | Sí (oficial) |
| Postgres/Supabase | Sí |
| Brave Search | Sí |
| Filesystem local | Sí (viene con Claude Code) |

**¿Cómo instalar?**
1. `npm install -g @modelcontextprotocol/server-[nombre]` (o `pip install`)
2. `claude mcp add [nombre]`
3. Reinicia Claude Code

---

## MULTI-AGENTE — REFERENCIA RÁPIDA

**¿Qué es?** Lanzar múltiples Claudes trabajando en paralelo, cada uno con una tarea específica.

**¿Cómo pedirlo?**
```
Lanza X subagentes en paralelo:
- Subagente 1: [tarea]
- Subagente 2: [tarea]
- Subagente 3: [tarea]
Al terminar, consolida los resultados.
```

**Cuándo usarlo:**
- Investigar múltiples temas simultáneamente
- Crear contenido para múltiples plataformas a la vez
- Analizar un problema desde varios ángulos
- Auditar un funnel o estrategia completa

---

## DEPLOY LOCAL — REFERENCIA RÁPIDA

Para ver una página web local en tu browser:

```bash
# En la carpeta donde está el index.html
python3 -m http.server 8080
```

Luego abre: `http://localhost:8080`

Para detener: `Ctrl+C` en la terminal.

Si el puerto 8080 ya está en uso: cambia el número (`8888`, `3000`, etc.)

---

## ATAJOS ÚTILES EN CLAUDE CODE

| Acción | Cómo |
|--------|------|
| Ver todos tus comandos | Escribe `/` y espera el autocompletar |
| Adjuntar un archivo | Arrastra el archivo a la terminal |
| Cancelar una acción | `Ctrl+C` |
| Limpiar la conversación | `/clear` |
| Salir | `Ctrl+D` o escribe `exit` |

---

> **Lo más importante que aprendiste en este curso:**
> Claude no es una herramienta genérica. Es una herramienta que puedes configurar, personalizar y extender para que trabaje exactamente como tú necesitas.
> `CLAUDE.md` + Skills + MCP = Tu sistema de IA personalizado.
