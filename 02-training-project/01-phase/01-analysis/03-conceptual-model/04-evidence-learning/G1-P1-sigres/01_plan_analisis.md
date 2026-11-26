# SIGRES — Plan de análisis y casos de uso

## A. Caracterización de la solución

| Aspecto | Caracterización | Estado / evidencia |
|---|---|---|
| Tipo de proyecto | Sistema Integral de Gestión para Restaurantes, con plataforma web, aplicación móvil y base de datos. Incluye gestión de usuarios, pedidos y cocina, menú, inventario, facturación/caja, mesas y reportes. | Descrito en el SRS y la normativa del proyecto. |
| Tamaño del equipo | El trabajo de SIGRES se desarrolló en un equipo de cuatro integrantes. | Dato del proyecto; para esta entrega, los ajustes y la autoría son individuales. |
| Estabilidad de requisitos | Se cuenta con una línea base de 17 requisitos funcionales y 31 no funcionales. Se estima una estabilidad media: los requisitos están documentados, pero hay referencias cruzadas que requieren validación y no consta una aprobación formal del cliente. | Estimación basada en el SRS; validar con instructor o representante del restaurante. |
| Disponibilidad del cliente | No se encontró un calendario de entrevistas, revisiones ni aprobaciones del cliente en los documentos revisados. | Pendiente de confirmar. Se propone solicitar una revisión de los requisitos y del prototipo. |

### Alcance y supuestos

- El modelo representa las funciones descritas en el SRS y el alcance de SIGRES; no incorpora funciones futuras como domicilios, reservas en línea o pasarelas externas.
- El cliente puede consultar el menú y su consumo mediante QR, pero no registra pedidos desde el menú QR.
- Se modelan como casos de uso los requisitos funcionales. Los RNF se conservan como restricciones de calidad y criterios de verificación, no como casos de uso.
- Los nombres y asociaciones de actores se deben validar con el instructor o con un representante del restaurante.

## B. Comparación de metodologías

| Criterio relacionado con SIGRES | RUP | Scrum | XP | RAD |
|---|---|---|---|---|
| Organización de los módulos y requisitos | Alta: fases y documentación ayudan a mantener una estructura formal. | Alta: un backlog permite priorizar módulos y requisitos. | Media: las historias ayudan a describir funciones, pero el foco está en desarrollar y probar. | Alta: facilita explorar módulos mediante prototipos. |
| Trazabilidad de 17 RF y 31 RNF | Alta si se mantiene la documentación del proceso. | Media-alta: requiere cuidar explícitamente la matriz de trazabilidad. | Media: la trazabilidad debe complementarse con documentación de análisis. | Media: hay que evitar que el prototipo sustituya el registro de requisitos. |
| Cambios y retroalimentación | Iterativo, pero con mayor carga de proceso. | Alta: permite revisar y ajustar prioridades en ciclos cortos. | Alta: incorpora retroalimentación frecuente, especialmente durante el desarrollo. | Alta: permite probar rápidamente ideas de interfaz con usuarios. |
| Adecuación a esta entrega de análisis | Puede ser más formal de lo necesario para el tiempo disponible. | Alta: permite organizar las actividades en entregables breves y revisables. | Menor para esta fase: varias prácticas se centran en programación y pruebas. | Útil para prototipos; por sí sola no asegura la trazabilidad requerida. |

### Metodología seleccionada: Scrum adaptado

Se propone Scrum adaptado porque SIGRES tiene varios módulos que pueden priorizarse y revisarse por partes. Para esta entrega se usarán un backlog de actividades, prioridades, entregables pequeños y revisiones periódicas del avance.

La adaptación no implica que esta carpeta sea un trabajo en equipo: la rúbrica exige que el ajuste y la autoría de la entrega sean individuales. La selección de Scrum es una propuesta para organizar el análisis de SIGRES; no afirma que el equipo ya lo haya aplicado formalmente.

## C. Plan de actividades de análisis

| # | Actividad | Responsable | Fecha objetivo | Entregable |
|---|---|---|---|---|
| 1 | Revisar el alcance, el SRS, la normativa y las fuentes de SIGRES; identificar información pendiente. | Aprendiz autor de la entrega | 25/11/2026 | Registro de fuentes, alcance y dudas |
| 2 | Clasificar los 17 RF y distinguirlos de los 31 RNF; revisar identificadores y referencias cruzadas. | Aprendiz autor de la entrega | 25/11/2026 | Lista de requisitos validada para el análisis |
| 3 | Comparar RUP, Scrum, XP y RAD y seleccionar el enfoque de trabajo para el análisis. | Aprendiz autor de la entrega | 25/11/2026 | Comparación y justificación metodológica |
| 4 | Identificar actores, objetivos y casos de uso a partir del SRS; validar que el menú QR no permita registrar pedidos. | Aprendiz autor de la entrega | 25/11/2026 | Catálogo de actores y casos de uso |
| 5 | Elaborar y revisar la trazabilidad de cada RF hacia uno o más casos de uso. | Aprendiz autor de la entrega | 25/11/2026 | Matriz requisito → caso de uso y cálculo de cobertura |
| 6 | Dibujar el diagrama UML, comprobar frontera, asociaciones y relaciones, y exportar la imagen. | Aprendiz autor de la entrega | 26/11/2026 | Fuente `.drawio` e imagen `.svg` |
| 7 | Verificar los artefactos con la rúbrica, completar el README y preparar la explicación oral. | Aprendiz autor de la entrega; consulta al instructor si está disponible | 27/11/2026 | Checklist personal, README y versión lista para publicar |

Las fechas son objetivos del plan, no evidencia de que las actividades ya estén realizadas. La disponibilidad del instructor o de un representante del cliente para validar requisitos queda pendiente de confirmar.

## D. Matriz requisito → caso de uso

| Requisito | Función resumida | Caso de uso asociado | Actor relacionado | Cobertura / nota |
|---|---|---|---|---|
| RF01 | Registro de usuarios | CU-01 Registrar usuario | Administrador | Cubierto |
| RF02 | Inicio de sesión | CU-02 Iniciar sesión | Usuario del restaurante (roles autorizados) | Cubierto |
| RF03 | Gestión de roles y permisos | CU-03 Gestionar roles y permisos | Administrador | Cubierto |
| RF04 | Registrar pedido | CU-04 Registrar pedido | Mesero | Cubierto |
| RF05 | Enviar pedido a cocina | CU-05 Enviar pedido a cocina | Personal de cocina (receptor) | Cubierto; incluido en CU-04 |
| RF06 | Consultar estado del pedido | CU-06 Consultar estado del pedido | Mesero, cliente por QR | Cubierto |
| RF07 | Actualizar estado del pedido | CU-07 Actualizar estado del pedido | Personal de cocina | Cubierto |
| RF08 | Administrar productos del menú | CU-08 Administrar productos del menú | Administrador | Cubierto |
| RF09 | Gestionar categorías del menú | CU-09 Gestionar categorías del menú | Administrador | Cubierto |
| RF10 | Registrar y actualizar inventario | CU-10 Gestionar inventario | Administrador | Cubierto |
| RF11 | Alertas de existencias mínimas | CU-11 Generar alertas de stock mínimo | Administrador (receptor) | Cubierto; activación automática según el stock |
| RF12 | Generar factura | CU-12 Generar factura | Cajero | Cubierto |
| RF13 | Procesar pago | CU-13 Procesar pago | Cajero | Cubierto |
| RF14 | Gestionar mesas | CU-14 Gestionar mesas | Administrador, mesero | Cubierto; acciones disponibles según rol |
| RF15 | Generar reportes de ventas | CU-15 Generar reportes de ventas | Gerente, administrador | Cubierto |
| RF16 | Ver menú digital por QR | CU-16 Ver menú digital por QR | Cliente | Cubierto; acceso sin autenticación |
| RF17 | Consultar consumo actual por QR | CU-17 Consultar consumo actual | Cliente | Cubierto; extiende CU-16 si existe consumo activo |

**Cobertura funcional preliminar:** 17 de 17 RF trazados = **100 %**. No se declaran RF sin cubrir en esta versión. Los RNF no se cuentan en este porcentaje porque son requisitos no funcionales; deben considerarse transversalmente en el diseño y la verificación.

### Observaciones de validación del SRS

- En RF10, la referencia a alertas parece apuntar a RF12, aunque el requisito de alertas está identificado como RF11.
- En RF14, la referencia al registro de pedido parece indicar RF05, aunque el requisito correspondiente es RF04.
- En RF17, una referencia parece citar RF17 como menú QR; el menú digital está identificado como RF16.
- Revisar también las referencias cruzadas de RF05 y RF07 antes de congelar la matriz.

Estas observaciones no cambian los identificadores de la matriz; señalan referencias que conviene validar con el instructor o el equipo.
