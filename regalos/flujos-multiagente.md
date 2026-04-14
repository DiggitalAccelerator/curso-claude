# 5 Flujos Multi-Agente Listos para Usar

> Desbloqueado en la Clase 3 del Curso Claude Code — por Cristhian White
>
> **Qué es esto:** Cada flujo lanza múltiples Claudes trabajando en paralelo. Pega el prompt en Claude Code y espera mientras trabajan simultáneamente.

---

## Cómo funcionan los flujos multi-agente

Cuando le pides a Claude que lance "subagentes", lanza copias de sí mismo trabajando en paralelo — cada una con una tarea específica. Al final, consolida los resultados.

Lo que tomaría 3x más tiempo de manera secuencial, sucede al mismo tiempo.

---

## FLUJO 1: Investigación de competidores

**Cuándo usarlo:** Antes de lanzar algo nuevo, o cuando quieres entender mejor tu mercado.

```
Lanza 3 subagentes en paralelo para investigar a estos competidores: [nombre 1], [nombre 2], [nombre 3].

Cada subagente debe investigar a un competidor diferente y reportar:
1. Propuesta de valor principal (qué prometen)
2. A quién le hablan (perfil de cliente)
3. Punto de precio (si es visible)
4. Qué dicen sus clientes (busca reseñas o comentarios)
5. Su punto más débil (dónde hay oportunidad para diferenciarse)

Al terminar, consolida los 3 reportes en una tabla comparativa y dame las 3 oportunidades de diferenciación más claras.
```

---

## FLUJO 2: Batch de contenido (semana completa)

**Cuándo usarlo:** Cuando necesitas producir contenido para la semana y quieres hacerlo de una sola vez.

```
Lanza 4 subagentes en paralelo. Cada uno debe crear contenido para un día diferente de la semana basándose en mi CLAUDE.md.

- Subagente 1: Contenido de LUNES — tema educativo (tip o concepto)
- Subagente 2: Contenido de MIÉRCOLES — caso de éxito o resultado (real o hipotético)
- Subagente 3: Contenido de VIERNES — contenido de conversión (habla del producto/servicio)
- Subagente 4: Contenido de DOMINGO — reflexión o motivación (más personal)

Formato por cada pieza:
- Post de Instagram (150 palabras máx)
- Caption corto para historia (1-2 líneas)
- Hashtags sugeridos (5-8)

Al terminar, consolida los 4 días en un documento ordenado listo para publicar.
```

---

## FLUJO 3: Revisión completa de un funnel o página

**Cuándo usarlo:** Cuando tienes una landing page, secuencia de emails o funnel y quieres auditarlo desde múltiples ángulos.

```
Lanza 3 subagentes en paralelo para auditar este material:

[pega el copy de tu landing/emails/funnel]

- Subagente 1: Auditoría de CLARIDAD — ¿Está claro qué es, para quién es y qué promete? Señala cada punto confuso.
- Subagente 2: Auditoría de PERSUASIÓN — ¿Está activando los gatillos correctos? ¿Hay urgencia, prueba social, autoridad, especificidad?
- Subagente 3: Auditoría de CONVERSIÓN — ¿El CTA está bien posicionado? ¿Hay fricción innecesaria? ¿Qué cambiaría para mejorar la tasa de conversión?

Al terminar, dame un reporte consolidado con los 5 cambios prioritarios.
```

---

## FLUJO 4: Análisis de métricas por canal

**Cuándo usarlo:** Al final del mes, cuando tienes números de múltiples canales y quieres un análisis integrado.

```
Lanza 3 subagentes en paralelo para analizar mis métricas del mes:

Datos:
- Instagram: [seguidores, alcance, interacciones, posts publicados]
- Email: [lista, tasa de apertura, clics, bajas]
- Ventas: [leads generados, ventas cerradas, ingresos]

- Subagente 1: Analiza Instagram — qué funcionó, qué no, tendencias del período
- Subagente 2: Analiza Email — salud de la lista, rendimiento, qué optimizar
- Subagente 3: Analiza el embudo completo — dónde se pierden los leads, qué tiene mejor ROI

Al terminar, consolida en: 3 puntos positivos del mes + 3 problemas a resolver + plan de acción para el próximo mes (5 acciones concretas).
```

---

## FLUJO 5: Onboarding de nuevo cliente

**Cuándo usarlo:** Cuando cierras un cliente nuevo y necesitas preparar todos los materiales de inicio.

```
Lanza 4 subagentes en paralelo para preparar el onboarding de mi nuevo cliente:

Cliente: [nombre]
Servicio contratado: [descripción]
Fecha de inicio: [fecha]
Información relevante: [contexto del cliente, nicho, objetivos]

- Subagente 1: Redacta el email de bienvenida (profesional, cálido, con los próximos pasos claros)
- Subagente 2: Crea el checklist de onboarding (todo lo que necesito hacer en las primeras 2 semanas)
- Subagente 3: Prepara la agenda de la primera reunión (60 min, con objetivos y preguntas clave)
- Subagente 4: Redacta el mensaje de WhatsApp de primer contacto post-contrato (corto, confirmando el inicio)

Al terminar, consolida los 4 entregables en un documento de onboarding listo para usar.
```

---

> **Pro tip:** Puedes combinar estos flujos. Por ejemplo, corre el Flujo 1 (investigación de competidores) y usa ese output como input para el Flujo 2 (batch de contenido), de modo que tu contenido de la semana responda directamente a lo que está haciendo la competencia.
