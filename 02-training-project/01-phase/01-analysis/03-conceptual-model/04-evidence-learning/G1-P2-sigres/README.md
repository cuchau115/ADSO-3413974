# Guía 1 - Producto 2: SIGRES

## 1. Datos de la entrega

- **Producto:** P2 - Modelo de análisis y verificación.
- **Usuario de GitHub del autor:** cuchau115.
- **Caso de estudio:** SIGRES - Sistema Integral de Gestión para Restaurantes.
- **Trabajo en equipo del año:** Sí; se reutilizó como base el trabajo del equipo SIGRES de cuatro integrantes. El ajuste y todo lo construido nuevo en este producto son individuales.

## 2. Qué reutilicé

| Artefacto | Ruta original en mi fork | ¿Lo hice solo o en equipo? |
|---|---|---|
| SRS - SIGRES | `03-execute/28-week/02-optional-activity/SRS - SIGRES.docx` | En equipo |
| Normativa del proyecto | `03-execute/14-week/02-optional-activity/Normativa del Proyecto.docx` | En equipo |
| Herramientas, mockup y tablero SIGRES | `03-execute/28-week/02-optional-activity/Herramientas SIGRES.md` | En equipo |
| Caracterización y decisiones UML | `01-Caracterizacion-y-Metodologia.md` | Material del instructor |
| Plan de análisis y matriz P1 | `../G1-P1-sigres/01_plan_analisis.md` | Producto individual ajustado |

## 3. Qué ajusté

> Sustituir los marcadores por los enlaces reales a los commits propios de P2.

| # | Artefacto | Qué cambié y por qué | Enlace al commit |
|---|---|---|---|
| 1 | Identificadores y referencias del SRS | Normalicé las referencias RF16/RF17, RF08/RF09 y RF04 para mantener una trazabilidad consistente y corregir referencias cruzadas ambiguas. | [ENLACE_COMMIT] |
| 2 | Diagramas de actividades | Adapté los procesos de pedido y consulta QR a UML de actividades, incluyendo decisiones con guardas, flujos alternos y excepciones visibles en las plantillas. | [ENLACE_COMMIT] |
| 3 | Modelo de dominio | Organicé 11 clases conceptuales, 5 generalizaciones y una asociación Pedido-Producto sin métodos ni atributos técnicos. | [ENLACE_COMMIT] |
| 4 | MER y trazabilidad | Resolví el pedido N:M con una entidad asociativa y añadí matriz completa de los 17 RF hasta modelo de datos y pantalla crítica. | [ENLACE_COMMIT] |
| 5 | Verificación | Registré hallazgos, correcciones y segunda verificación en la lista de chequeo y el registro de ajustes. | [ENLACE_COMMIT] |

## 4. Qué construí nuevo

- Dos diagramas de actividad de casos críticos.
- Tres plantillas extendidas de casos de uso.
- Modelo de dominio conceptual.
- Modelo entidad-relación con identificadores y participación.
- Prototipo inicial de tres pantallas.
- Lista de chequeo de 18 criterios.
- Registro de cinco ajustes con segunda verificación.
- Informe de análisis de dos páginas.
- Matriz de trazabilidad de los 17 RF.

## 5. Artefactos entregados

**Producto 2**

- [x] Diagramas de actividades: [02_diagramas_actividades.md](./02_diagramas_actividades.md)
- [x] Plantillas extendidas: [03_plantillas_casos_uso.md](./03_plantillas_casos_uso.md)
- [x] Modelo de dominio: [04_modelo_dominio.md](./04_modelo_dominio.md)
- [x] Modelo entidad-relación: [05_modelo_entidad_relacion.md](./05_modelo_entidad_relacion.md)
- [x] Prototipo inicial: [06_prototipo_inicial.md](./06_prototipo_inicial.md)
- [x] Lista de chequeo: [07_lista_chequeo.md](./07_lista_chequeo.md)
- [x] Registro de ajustes: [08_registro_ajustes.md](./08_registro_ajustes.md)
- [x] Informe de análisis: [09_informe_analisis.md](./09_informe_analisis.md)
- [x] Matriz de trazabilidad: [10_matriz_trazabilidad.md](./10_matriz_trazabilidad.md)

## 6. Declaración de autoría

- [x] Declaro que el ajuste y lo construido nuevo en esta carpeta es mi trabajo individual.
- [x] Declaro que lo tomado del trabajo de equipo o de otra fuente está identificado en la sección 2.
- [x] Entiendo que el sábado 28 de noviembre debo explicar las decisiones y los cambios.

**Firma:** cuchau115 - 26/11/2026

## 7. Uso de inteligencia artificial

| Herramienta | Para qué la usé | Qué verifiqué o corregí yo |
|---|---|---|
| GitHub Copilot en VS Code | Redacción inicial de diagramas, plantillas, modelos, chequeos e informe. | Contraste los artefactos con P1, el SRS, la normativa, las reglas del menú QR y la rúbrica; revisaré personalmente la coherencia antes del push. |
| Open Code | Apoyo inicial para organizar el plan de entrega del día 2 y confirmar los mínimos. | Verifiqué manualmente las cantidades, las referencias RF y que las plantillas no contengan detalles de implementación. |

## 8. Autocontrol antes del push

- [ ] Tengo commits propios publicados en al menos 2 días distintos.
- [ ] Todos los artefactos obligatorios alcanzan sus cantidades mínimas.
- [ ] Puedo explicar las relaciones UML, las reglas QR y las multiplicidades del dominio.
- [ ] La matriz trazó al menos el 90 % de los 17 RF.
- [ ] Hice push y comprobé la carpeta publicada en GitHub.
