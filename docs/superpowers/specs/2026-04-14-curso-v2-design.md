# Spec: Curso Claude Code v2 — Reestructura + Diagramas

**Fecha:** 2026-04-14
**Proyecto:** `clients/Cristhian-White/curso-claude`
**Contexto:** El curso pasó de 5 a 6 clases. Se corrige el bug de MCP, se flexibiliza la clase de construcción, y se añaden 6 diagramas Excalidraw como material de apoyo para el video del curso.

---

## 1. Nueva estructura del curso

| # | Clase | Skill | Estado |
|---|-------|-------|--------|
| 1 | CLAUDE.md: memoria y personalidad | `skills/clase-1.md` | Sin cambios |
| 2 | Skills: tu primer comando | `skills/clase-2.md` | Sin cambios |
| 3 | Subagentes | `skills/clase-3.md` | Reescribir (extraída de clase-3 actual) |
| 4 | MCP: conecta tus apps | `skills/clase-4.md` | Reescribir (instala MCP real) |
| 5 | Construye algo | `skills/clase-5.md` | Reescribir (menú flexible de proyectos) |
| 6 | El sistema completo + cierre | `skills/clase-6.md` | Renombrar desde clase-5 + ajustes |

---

## 2. Clase 3 — Subagentes (nueva)

**Objetivo:** El alumno entiende qué son los subagentes, cuándo usarlos, y ve una demo en vivo de múltiples Claudes trabajando en paralelo.

**Contenido:**
- Qué es un subagente (Claude que trabaja dentro de otra conversación de Claude)
- Diferencia entre llamadas secuenciales vs. paralelas — por qué importa el tiempo
- Demo en vivo: lanzar 3 subagentes simultáneos con tareas distintas del negocio del alumno (lee `CLAUDE.md`). Opciones A/B/C según tipo de negocio, igual que en la clase-3 actual.
- Mostrar los resultados consolidados y hacer el cálculo: "esto habría tomado X minutos secuencial, tardó Y en paralelo"
- Regalo: `regalos/flujos-multiagente.md` — 5 recetas de multi-agente listas para usar

**Notas de implementación:**
- El contenido de multi-agente se extrae de la clase-3 actual
- El paso de MCP (conceptual) que estaba en clase-3 se elimina de aquí — pasa completo a clase-4

---

## 3. Clase 4 — MCP (reescritura)

**Objetivo:** El alumno instala un MCP real y ejecuta una tarea real con él. No es conceptual.

**Contenido:**
- Qué es MCP en 3 oraciones (igual que antes)
- Claude lee el `CLAUDE.md` del alumno e identifica su herramienta principal
- **Instalación real** del MCP correspondiente:
  - Si menciona Notion → MCP oficial de Notion
  - Si menciona Google Sheets / Drive → MCP de Google Workspace
  - Si menciona GitHub → MCP oficial de GitHub
  - Si no hay `CLAUDE.md` o las herramientas no tienen MCP oficial → instalar **MCP Filesystem** (ya viene con Claude Code, cero pasos extra)
- Ejecutar una tarea real con el MCP activo (ej: "crea una página en Notion con el resumen de mi negocio" o "lee este archivo y escríbelo en Sheets")
- El alumno debe ver que Claude interactuó con su app sin copiar y pegar nada

**Bug corregido:** La clase-3 actual decía explícitamente "No lo vamos a instalar ahora mismo". Esa línea se elimina. La instalación ocurre en esta clase, siempre.

---

## 4. Clase 5 — Construye algo (reescritura)

**Objetivo:** El alumno construye un proyecto tangible personalizado para su negocio en menos de 10 minutos.

**Lógica de recomendación:**
1. Claude lee el `CLAUDE.md` del alumno
2. Identifica el tipo de negocio y las herramientas mencionadas
3. Recomienda el proyecto más relevante del menú
4. El alumno puede aceptar la recomendación o elegir otro

**Menú de proyectos:**

| # | Proyecto | Output | Perfil recomendado |
|---|----------|--------|-------------------|
| 1 | Página de captura | `index.html` | Coaches, freelancers, infoproductores |
| 2 | Mini-CRM visual | `crm.html` | Agencias, consultores, negocios de servicios |
| 3 | Dashboard de métricas | `dashboard.html` | E-commerce, negocios con datos, agencias de marketing |
| 4 | Generador de contenido | Skill `.md` | Creadores de contenido, marketers, educadores |
| 5 | Flujo de onboarding automatizado | Carpeta con secuencia | Negocios con proceso de venta o incorporación |

**Restricciones:**
- Todos los outputs HTML son autónomos (sin dependencias externas, sin CDN)
- Se despliegan localmente con `python3 -m http.server 8080`
- El copy se personaliza 100% usando el `CLAUDE.md` del alumno
- Hard gate igual que siempre: no se avanza hasta que el alumno confirme que lo vio funcionar

---

## 5. Clase 6 — El sistema completo + cierre

**Cambio:** Renombrar `skills/clase-5.md` → `skills/clase-6.md`. Actualizar el inventario para incluir la nueva clase (subagentes + MCP real). Actualizar referencias internas (el cierre de clase-5 actual apunta a `/cw:clase-5`, hay que apuntar a `/cw:clase-6`).

---

## 6. Diagramas Excalidraw

**Estilo:** Sketchy (mano alzada, default Excalidraw). Fondo oscuro.
**Ubicación:** `diagrams/` en la raíz del repo del curso.
**Uso:** Material de apoyo para el video del curso — uno por clase.

| Archivo | Clase | Contenido del diagrama |
|---------|-------|----------------------|
| `clase-1-claude-code.excalidraw` | 1 | Cómo funciona Claude Code: terminal → Claude → CLAUDE.md → respuesta. El ciclo de memoria. |
| `clase-2-skills.excalidraw` | 2 | Anatomía de una skill: nombre / descripción / instrucciones. Claude lee el archivo → ejecuta → output. |
| `clase-3-subagentes.excalidraw` | 3 | Subagentes: orquestador Claude → lanza N agentes en paralelo → cada uno ejecuta su tarea → resultados se consolidan. |
| `clase-4-mcp.excalidraw` | 4 | Cómo funciona un MCP: Claude ↔ servidor MCP ↔ app externa. Flujo de lectura y escritura. |
| `clase-5-proyecto.excalidraw` | 5 | El cerebro digital del negocio: CLAUDE.md + skills + subagentes + MCP + proyecto construido. Todo conectado. |
| `clase-6-sistema.excalidraw` | 6 | El sistema completo: las 5 piezas integradas con flechas mostrando cómo se alimentan entre sí. |

---

## 7. Archivos a crear/modificar

```
curso-claude/
├── skills/
│   ├── clase-1.md          → sin cambios
│   ├── clase-2.md          → sin cambios
│   ├── clase-3.md          → REESCRIBIR (subagentes)
│   ├── clase-4.md          → REESCRIBIR (MCP real)
│   ├── clase-5.md          → REESCRIBIR (menú de proyectos)
│   └── clase-6.md          → NUEVO (= clase-5 actual + ajustes)
├── diagrams/
│   ├── clase-1-claude-code.excalidraw   → NUEVO
│   ├── clase-2-skills.excalidraw        → NUEVO
│   ├── clase-3-subagentes.excalidraw    → NUEVO
│   ├── clase-4-mcp.excalidraw           → NUEVO
│   ├── clase-5-proyecto.excalidraw      → NUEVO
│   └── clase-6-sistema.excalidraw       → NUEVO
└── install.sh              → actualizar mensajes (6 clases, nuevo /cw:clase-6)
```

---

## 8. Fuera de scope

- No se modifican los `regalos/` (siguen siendo los mismos 3 archivos)
- No se modifican los `templates/`
- No se actualiza el README todavía (depende de decisiones de Cristhian sobre comunidad/links)
- Los diagramas no se incluyen en el `install.sh` (son para el video, no para los alumnos)
