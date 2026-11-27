# Plan de entrega · Guía 2 (Diseño de la solución) · Caso SIGRES

**Entrega:** sábado 28 de noviembre de 2026, 6:00 a. m. (mismo día que G1)  
**Carpetas de entrega:** bajo `02-training-project/01-phase/02-planning/06-architecture/`  
- `G2-P1-sigres/` → Producto 1 de G2  
- `G2-P2-sigres/` → Producto 2 de G2  

> Este documento es un bosquejo inicial. Los artefactos exactos de G2-P1 y G2-P2 se definen con la rúbrica y plantilla de G2 (que aún no se han revisado en esta conversación). El plan se ajustará una vez se cuente con la rúbrica oficial de G2.

---

## 1. Contexto

G1 (Modelo conceptual) ya está completo en:
- `03-conceptual-model/04-evidence-learning/G1-P1-sigres/`
- `03-conceptual-model/04-evidence-learning/G1-P2-sigres/`

G2 (Diseño de la solución) es la siguiente guía. Se entrega el **mismo sábado 28 de noviembre a las 6:00 a. m.** que G1, por lo que el tiempo es crítico.

Cada guía vale lo mismo: prueba de conocimiento 25 %, producto 1 25 %, producto 2 25 %, prueba de desempeño 25 %.

---

## 2. Qué se espera de G2 (bosquejo preliminar)

Basándose en la estructura de G1 y en la ruta indicada por el instructor, G2 probablemente contenga:

| Producto | Enfoque probable | Artefactos posibles (por confirmar con rúbrica G2) |
|----------|------------------|---------------------------------------------------|
| **G2-P1** | Diseño de arquitectura y solución | Diagrama de componentes, diagrama de despliegue, diseño de capas, tecnologías, patrones de diseño |
| **G2-P2** | Propuesta técnica y verificación | Especificación técnica, diseño de base de datos (detalle), API endpoints, diagramas de secuencia, lista de chequeo técnica |

> **Nota:** Estos artefactos son suposiciones basadas en el nombre "Diseño de la solución". Debes confirmar con la rúbrica y plantilla oficiales de G2 antes de crear archivos.

---

## 3. Reglas de commits (importante para G2)

La rúbrica de G1 establece que **un commit de 40 o más archivos se revisa** y, si contiene material del instructor, plantillas sin diligenciar o trabajo ajeno, no cuenta como trabajo propio. Para evitar problemas:

- **No hacer commits de más de 40 archivos.**
- Si G2 genera muchos archivos, dividirlos en **varios commits pequeños** (por ejemplo, 10-20 archivos por commit).
- Cada commit debe tener un mensaje claro y ser tuyo.
- Commits en al menos **2 días distintos** (regla de autoría).

---

## 4. Próximos pasos para G2

1. Leer la rúbrica y plantilla de G2 (buscar en `06-architecture/03-support-material/` o equivalent).
2. Crear las carpetas `G2-P1-sigres/` y `G2-P2-sigres/` bajo `06-architecture/`.
3. Reutilizar lo aplicable de G1 (SIGRES, SRS, modelo de dominio, MER) declarándolo en el README.
4. Desarrollar los artefactos de diseño de G2.
5. Hacer commits en al menos 2 días distintos antes del sábado 28 a las 6:00 a. m.

---

## 5. Relación con G1

- G1 = Análisis (qué hace el sistema: casos de uso, dominio, MER, requisitos).
- G2 = Diseño (cómo se implementa: arquitectura, componentes, despliegue, técnica).
- Ambos usan SIGRES como caso de estudio.
- Los entregables son independientes: no terminar G1 no impide entregar G2, pero comparten la misma fecha límite.
