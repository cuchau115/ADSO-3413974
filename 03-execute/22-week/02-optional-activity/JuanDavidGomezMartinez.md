# Revisión UX/UI — Mockup Sistema de Gestión de Horarios SENA

> **Autor:** Juan David Gomez Martinez
> **Fecha:** 15 de agosto de 2026
> **Rol de análisis:** Aprendiz SENA / evaluador UX
> **Objeto de evaluación:** Mockup navegable del Sistema de Gestión de Horarios del SENA — [code-sena.github.io/design-software-mockup](https://code-sena.github.io/design-software-mockup/)
> **Tipo de prototipo:** Mockup estático (sin backend, datos ficticios, acciones que no persisten)

---

## 1. Resumen Ejecutivo

Se revisó el mockup navegable del Sistema de Gestión de Horarios del SENA, un prototipo estático con 53 pantallas y modales organizados en 7 áreas (Auth y shell, Coordinador Académico, Instructor, Aprendiz, Director de Centro, Administrador de Soporte y Parametrización). La revisión cubre los 6 roles del sistema y se hizo navegando el prototipo pantalla por pantalla, contrastando datos entre módulos y revisando el código del prototipo para las pantallas sin capturas (46 a 53).

La impresión general es positiva: hay un sistema de diseño consistente detrás (mismos colores para los mismos estados, mismos patrones de tabla, filtros y modales en casi todo el sistema), y eso hace que una pantalla nueva se entienda rápido. Lo que más le pesa no son los detalles visuales sueltos, sino los pocos casos donde la interfaz muestra dos mensajes que se contradicen entre sí, porque ahí es donde alguien podría tomar una decisión equivocada confiando en lo que ve.

Los hallazgos más relevantes son los 3 críticos: el mensaje contradictorio al publicar un horario (el modal dice "sin conflictos" mientras la vista dice "2 conflictos sin resolver"), la validación que bloquea la edición de un parámetro propio y la superposición de campos en "Nuevo valor de catálogo". A estos se suman hallazgos altos de navegación y de coherencia de datos, entre ellos que el programa 233104 se llama distinto en Fichas que en Currículo académico.

> **Veredicto en una línea:** El mockup está bien resuelto en diseño y consistencia; su deuda principal está en los mensajes contradictorios y en la coherencia de datos entre módulos, no en lo visual.

---

## 2. Metodología y Alcance

### 2.1 Qué se revisó

- **Pantallas y modales:** 53 del inventario oficial, organizadas en 7 bloques: Auth y shell, Coordinador Académico, Instructor, Aprendiz, Director de Centro, Administrador de Soporte y Parametrización.
- **Roles:** Público (no autenticado), Coordinador Académico, Instructor, Aprendiz, Director de Centro y Administrador de Soporte.
- **Dispositivos:** Versión escritorio y móvil (donde aplica).
- **Componentes compartidos:** tablas, filtros, paginación, modales, estados (carga/vacío/error), calendario semanal y panel de notificaciones.

### 2.2 Cómo se hizo la revisión

Se navegó el prototipo rol por rol (login por correo de demostración: `coordinador@sena.edu.co`, `instructor@sena.edu.co`, `aprendiz@soy.sena.edu.co`, `director@sena.edu.co`, `soporte@sena.edu.co`), se compararon los datos entre pantallas (fichas, horarios, programas, ambientes, usuarios) y se revisó la estructura del proyecto (rutas, guard RBAC, componentes y datos ficticios) para las pantallas 46 a 53, que no tienen captura publicada. Los hallazgos se documentan solo cuando son observables en pantalla o comprobables en el código.

### 2.3 Nota sobre la naturaleza del mockup

Este es un **prototipo estático con datos ficticios y sin backend**. Por lo tanto:

- **No se cuentan como errores** las limitaciones esperadas de un mockup: números que no cuadran entre pantallas (contadores, totales, alturas de gráficos), datos que no "persisten" al recargar, notificaciones que no desaparecen al abrir el menú desplegable, ni porcentajes imposibles como el "105% de asistencia" de un registro de seguimiento. Esos valores son solo datos de ejemplo para maquetar la pantalla.
- **Sí se documentan** los problemas que afectan la experiencia de uso: mensajes contradictorios, elementos que se cortan, navegación confusa, enlaces que aparentan funcionar y no lo hacen, inconsistencias de patrones y fallas de coherencia entre pantallas.
- Donde algo depende de un backend real y no puede comprobarse, se marca como **[NO VERIFICABLE EN EL MOCKUP]**.

### 2.4 Alcance y limitaciones

- Fuera de alcance: rendimiento real, seguridad en producción, integración con SofiaPlus/ZAJUNA (todo ello depende de un backend que el prototipo no tiene).
- Los estados 46 a 53 (parametrización) se revisaron desde el código del prototipo, no desde capturas, porque el propio proyecto las dejó pendientes de captura.

---

## 3. Marco Normativo SENA

La revisión se fundamenta en la normatividad y los sistemas institucionales del SENA.

### 3.1 Sistema Integrado de Gestión y Autocontrol (SIGA) — MIPG

El SIGA articulado con el Modelo Integrado de Planeación y Gestión (MIPG) exige gestión orientada a resultados, transparencia, trazabilidad y mejora continua. Un sistema de horarios debe garantizar que el aprendiz ejerza su derecho a una formación profesional trazable, con información confiable y sin contradicciones.

- **Dimensión "Gestión con Valores para el Resultado":** los trámites y la información deben ser claros y confiables. Un mensaje contradictorio (ej. "sin conflictos" y "2 conflictos sin resolver" a la vez) viola este principio.
- **Trazabilidad:** toda modificación relevante (crear/editar/publicar horario, resolver conflicto, cambiar estado) debe poder responder a *qué ocurrió, quién lo hizo, cuándo, qué cambió, por qué y a quién afectó*.

### 3.2 Proceso de Gestión de Formación Profesional Integral (GFPI)

- **Diseño curricular:** cadena jerárquica estricta: Línea Tecnológica → Red Tecnológica → Red de Conocimiento → Programa de Formación → Competencia → Resultado de Aprendizaje (RAP).
- **Ejecución de la formación:** planeación pedagógica, guías de aprendizaje y horarios coherentes con la intensidad horaria del programa.
- **Seguimiento y evaluación:** registro de juicios y avances; el aprendiz debe poder ver la coherencia entre el programa de su ficha y su horario.

### 3.3 Otras normas y referencias aplicables

- **ISO/IEC 27001 (seguridad de la información):** autenticación, control de accesos (RBAC) y protección de datos personales.
- **Ley 1581 de 2012 (protección de datos personales):** manejo responsable de datos de aprendices e instructores.
- **Acuerdo 007 de 2012 (SENA):** reglamento del aprendiz y lineamientos de la formación.
- **SofiaPlus / ZAJUNA:** plataformas oficiales de matrícula y seguimiento con las que el sistema debe mantener coherencia de datos.
- **RBAC (Control de Acceso Basado en Roles):** la separación de permisos por rol (GLOBAL, TRAINING_CENTER, OWN_*) respalda la confidencialidad y la segregación de funciones.

### 3.4 Principios de diseño que guían las propuestas

| Principio | Cómo se aplica |
|---|---|
| Confianza en la información | Nunca mostrar dos mensajes contradictorios sobre el mismo estado |
| Consistencia visual | Mismo color y lenguaje para el mismo estado en todo el sistema |
| Trazabilidad | Toda acción relevante queda registrada (quién, cuándo, qué, por qué) |
| Accesibilidad | No depender solo del color; incluir texto y valores numéricos |
| Orientado al usuario | Lo urgente primero, lo informativo después |

---

## 4. Tabla Maestra de Hallazgos

**Convención de severidad:** C = Crítico · A = Alto · M = Medio · B = Bajo.

| ID | Área / Pantalla (ruta) | Rol | Categoría | Sev. | Problema | Propuesta | Fundamento SENA |
|---|---|---|---|---|---|---|---|
| H-01 | Coordinador — Publicar horario (`#/horarios/sch-02?modal=publish`) | Coordinador | Validación / Mensajes | C | El modal dice en verde "Sin conflictos pendientes — listo para publicar", pero la vista de atrás muestra en rojo "Este horario tiene 2 conflictos sin resolver" (ficha 3011550). Dos mensajes contradictorios sobre el mismo estado. | Unificar la fuente de verdad de los conflictos; deshabilitar "Publicar" si existen conflictos sin resolver y mostrar un solo mensaje de estado coherente. | SIGA/MIPG: confianza en la información; GFPI: ejecución sin errores operativos |
| H-02 | Soporte — Nuevo valor de catálogo (`#/backoffice/parametrizacion?modal=crud`) | Soporte | UI / Formularios | C | Las etiquetas "Código", "Etiqueta" y "Catálogo padre" quedan superpuestas unas sobre otras y los campos se enciman (se lee "PRES-SENTIAL" en vez de "PRESENTIAL"); el error se monta sobre el campo "Orden". | Rediseñar el modal con el patrón de formulario estándar del sistema (`.form-field`), revisar superposición de capas y mensajes. | MIPG: trámites claros y usables; calidad del servicio al usuario |
| H-03 | Director — Editar parámetro (`#/admin/datos-referencia?modal=reference`) | Director | Validación | C | Al editar `MAX_HOURS_PER_WEEK` aparece "Este código ya existe en este catálogo", aunque se está editando ese mismo registro, no creando uno nuevo. | Validar unicidad solo en creación, o excluir el registro en edición de la validación. | SIGA: confianza en la información; no bloquear un guardado legítimo |
| H-04 | Shell — Panel de notificaciones, "Ver todas" | Todos | Navegación | A | El enlace "Ver todas" del panel lleva a la pantalla de notificaciones del aprendiz y, en modo revisión, cambia el rol activo a aprendiz sin aviso. Un coordinador, instructor, director o soporte termina viendo el sistema con otro rol. | Crear una vista de notificaciones propia por rol, o no mostrar el panel en los roles sin pantalla de notificaciones. | RBAC: contexto y segregación por rol |
| H-05 | Coordinador — Validar/Confirmar publicación de horario | Coordinador | Navegación | A | Los botones "Validar" y "Confirmar publicación" navegan siempre al horario `sch-02` (hardcodeado). Si se edita el horario `sch-01` (ADSO), al validar se termina viendo el horario de la ficha 3011550 (Contabilidad). | Vincular las acciones al horario en edición mediante un identificador dinámico. | SIGA: trazabilidad e integridad de la operación |
| H-06 | Parametrización — Currículo académico vs. Fichas (`#/admin/parametrizacion/curriculo`) | Director / Soporte | Datos | A | El programa 233104 se llama "Análisis y Desarrollo de Software (ADSO)" en Fichas, en el Mi horario del aprendiz y en las sesiones del instructor, pero en Currículo es "Análisis y Desarrollo de Sistemas de Información" (2.440 h, v3); el ADSO real es el 228106 (2.640 h). El mismo código significa dos programas distintos según la pantalla. | Usar una sola fuente de verdad para el catálogo de programas y validar coherencia código–nombre–horas entre módulos. | GFPI: diseño curricular (cadena programa→competencia); coherencia con SofiaPlus |
| H-07 | Aprendiz — Notificaciones (`#/notificaciones`) | Aprendiz | Contenido | M | El panel desplegable superior y la pantalla "Notificaciones" muestran el mismo listado (mismos títulos, textos y tiempos). Contenido duplicado sin valor agregado. | Dejar el panel solo para una vista rápida de 3-4 notificaciones y que "Ver todas" lleve a la pantalla completa. | Eficiencia; evitar duplicación de contenido |
| H-08 | Soporte — Auditoría (`#/backoffice/auditoria`) | Soporte | UI / Patrones | M | Esta pantalla pagina con "Cargar más", distinto al patrón de números de página usado en Horarios, Fichas, Usuarios y Notificaciones. El usuario debe aprender dos formas de paginar. | Unificar el patrón de paginación en todo el sistema. | Consistencia de patrones UX |
| H-09 | Director — Usuarios, filtro de rol (`#/admin/usuarios`) | Director | Funcional | M | El desplegable "Rol" no incluye "Administrador de Soporte", aunque la tabla sí lista usuarios con ese rol (Ana Torres). Se puede filtrar 4 de los 5 roles mostrados. | Agregar el rol faltante al filtro (o alimentarlo del mismo catálogo de roles). | RBAC: catálogo de roles completo y coherente |
| H-10 | Instructor — Registrar seguimiento (`#/instructor/seguimiento?modal=tracking`) | Instructor | Mensajes | M | Sobre el total de asistentes se muestra a la vez el error "Los asistentes no pueden superar el total de aprendices" y la ayuda "→ 105% de asistencia". El valor (105%) es dato ficticio del mockup, pero el patrón de dos mensajes con tonos opuestos sobre lo mismo confunde. | Unificar los mensajes de validación: uno solo, con un único tono, para cada campo. | SIGA: mensajes claros y no contradictorios |
| H-11 | Transversal — Tablas (Horarios, Fichas, Mi disponibilidad, Seguimiento, Usuarios, Documentos, Plantillas, Auditoría, Parametrización) | Varios | UI | M | Los botones de acción o controles de paginación quedan pegados al borde derecho y se cortan. El contenedor parece más angosto de lo que necesitan las tablas. | Ampliar el contenedor o dar a las tablas un área de scroll con espaciado interno. | MIPG: trámites claros; estética funcional |
| H-12 | General — App shell | Todos | UI / Arquitectura de información | M | Se combinan dos barras de navegación (sidebar lateral + topbar superior), lo que genera desorden visual y desaprovecha espacio; el logo y el nombre del sistema se repiten. | Unificar el logo y el nombre del proyecto en la barra lateral; dejar arriba solo notificaciones y menú de usuario, en un orden similar a Gmail. | Eficiencia del espacio y claridad visual |
| H-13 | Transversal — Vista móvil | Todos | Responsive | M | En las capturas en tamaño móvil no se ve el ícono de menú (hamburguesa) para abrir el drawer. El código sí lo implementa (menú en pantallas menores a 768 px); las capturas publicadas quedaron desactualizadas. | Regenerar las capturas móviles con el menú visible. | Coherencia del entregable; navegabilidad en móvil |
| H-14 | Transversal — Enlaces sin destino | Coordinador / Director | Funcional | M | "Ver reporte de carga" (Disponibilidad) y "Ver reporte de utilización (horas)" (Detalle de ambiente) no abren ninguna pantalla. | Crear esas pantallas o eliminar los enlaces. | Confianza del usuario; evitar puntos muertos |
| H-15 | Coordinador — Modal agregar sesión (`#/horarios/sch-01?modal=session`) | Coordinador | UI | B | El campo "Competencia" corta el texto de la opción seleccionada y lo encima contra el borde del campo; los nombres de competencia son largos. | Ajustar altura del campo y truncar con tooltip o texto completo visible. | Estética y legibilidad |
| H-16 | Director — Panel de indicadores (`#/admin/indicadores`) | Director | Accesibilidad | B | El gráfico de barras "Distribución por nivel de riesgo" no muestra valores numéricos sobre las barras ni en el eje, solo color. | Agregar el número sobre cada barra para no depender solo del color (accesibilidad). | Accesibilidad: no depender únicamente del color |
| H-17 | Parametrización — Catálogos de monitoreo | Soporte | Datos | B | Los umbrales por defecto se muestran como "80,0000", "20,0000", "3,0000" (formato técnico de base de datos). | Mostrarlos ya formateados: 80 %, 20 %, 3. | Claridad de la información |
| H-18 | Soporte — Auditoría | Soporte | Datos | B | Las columnas "Recibido" y "Ocurrido en origen" muestran el mismo valor en todas las filas; se lee como información duplicada. | Dejar una sola columna o diferenciarlas de verdad. | Evitar datos duplicados |
| H-19 | Soporte — Editor de plantilla (`#/backoffice/documentos/plantillas/tpl-01/editar`) | Soporte | UI | B | El cuadro para editar el HTML de la plantilla es muy pequeño para el contenido que debe alojar. | Ampliar el editor (pantalla completa o panel colapsable). | Productividad del usuario |
| H-20 | Director — Drill-down de KPI (`#/admin/indicadores/track-01/attendance`) | Director | UI | B | El filtro "Rango" es un único campo de fecha; no queda claro si es inicio o fin. | Usar dos campos "Desde" / "Hasta". | Claridad de la información |
| H-21 | Parametrización — Geografía institucional | Soporte | UI | B | Al abrir, la pestaña activa es "Centros de formación" (la quinta de seis) y no la primera (Macroregiones). | Abrir la pantalla en la primera pestaña. | Estado inicial coherente |
| H-22 | Shell — Índice del mockup | Todos | Contenido | B | Los textos del menú y del índice dicen "45 pantallas", pero el sistema tiene 53 (las 8 de parametrización no actualizaron los contadores). | Actualizar contadores, inventario y capturas. | Coherencia del contenido |
| H-23 | Transversal — Botones | Varios | UI | B | Algunos botones verdes y outline muestran una sombra o borde duplicado detrás, de forma inconsistente entre pantallas. | Unificar el estilo de los botones en el design system. | Consistencia visual |
| H-24 | Parametrización — RBAC (`#/admin/parametrizacion/rbac`) | Soporte | UI | B | La matriz rol ↔ permiso tiene 9 columnas, pide scroll horizontal y la columna de acción se corta en el borde derecho. | Usar contenedor con scroll o fijar columnas clave. | Accesibilidad; no cortar información |

**Resumen de severidad:** 3 críticos · 3 altos · 8 medios · 10 bajos (24 hallazgos).

---

## 5. Análisis por Área

### 5.1 Auth y shell

**Qué funciona**

- El login es sencillo y funcional: tiene acceso para iniciar sesión y recuperación de contraseña, y el rol se detecta por el correo de demostración.
- La "App Shell por rol" es coherente: cada rol ve su menú y los estados globales (403, 404, 500, sesión) usan el mismo lenguaje visual.
- Los paneles de notificaciones y el menú de usuario están bien ubicados en la barra superior.

**Qué encontramos**

- **H-04 — "Ver todas" cambia de rol.** El enlace del panel de notificaciones lleva al aprendiz y cambia el rol activo sin aviso.
- **H-22 — Contadores desactualizados.** El índice dice "45 pantallas" cuando el sistema tiene 53.
- **H-12 — Doble barra de navegación.** La combinación de sidebar y topbar desaprovecha espacio y repite el logo.

**Propuestas**

- Vista de notificaciones propia por rol (o quitar el panel donde no existe pantalla).
- Actualizar contadores e inventario, y unificar logo y navegación (estilo Gmail) para aprovechar el espacio.

---

### 5.2 Coordinador Académico

**Qué funciona**

- El dashboard prioriza bien: conflictos pendientes arriba y en rojo, luego resumen de fichas y horarios en borrador, y al final los horarios recientes.
- El panel de conflictos agrupa por tipo (instructor doble-asignado, ambiente doble-asignado, sesiones solapadas) con la acción "Marcar como resuelto" a la mano.
- La lista de horarios tiene filtros claros y estados con colores consistentes (borrador, en revisión, publicado).

**Qué encontramos**

- **H-01 — Mensaje contradictorio al publicar.** El modal dice "sin conflictos" mientras la vista dice "2 conflictos sin resolver" (ficha 3011550).
- **H-05 — Navegación hardcodeada a sch-02.** Validar o publicar un horario distinto al `sch-02` termina mostrando el horario de la ficha 3011550.
- **H-15 — Competencia cortada** en el modal de sesión.

**Propuestas**

- Deshabilitar "Publicar" con conflictos sin resolver y unificar el mensaje de estado.
- Hacer dinámico el identificador de horario en "Validar"/"Confirmar publicación".
- Ajustar el campo "Competencia" para mostrar el texto completo.

---

### 5.3 Instructor

**Qué funciona**

- Las pantallas del instructor (Mi horario, Mi disponibilidad, Seguimiento) reutilizan los patrones del resto del sistema (tarjetas de sesión, tablas con filtros, modales). Eso da consistencia y hace que se sienta como una sola aplicación.

**Qué encontramos**

- **H-10 — Doble mensaje en "Registrar seguimiento".** Error "Los asistentes no pueden superar el total" y ayuda "→ 105% de asistencia" a la vez. El 105 % es dato ficticio del mockup; el patrón de dos mensajes con tonos opuestos es lo que confunde.

**Propuestas**

- Un solo mensaje de validación por campo, con un único tono.

---

### 5.4 Aprendiz

**Qué funciona**

- "Mi horario" está bien resuelto: lista de tarjetas por día con hora, sesión, ambiente e instructor. Es fácil de leer y no le sobra nada.
- El detalle de clase y el detalle de notificación dividen la información en bloques pequeños, fáciles de escanear.

**Qué encontramos**

- **H-07 — Notificaciones duplicadas.** El panel desplegable superior y la pantalla "Notificaciones" muestran el mismo listado completo.

**Propuestas**

- Panel solo para vista rápida (3-4 notificaciones) y "Ver todas" hacia la pantalla completa.

---

### 5.5 Director de Centro

**Qué funciona**

- El panel de indicadores resume la urgencia en tres números grandes (en seguimiento, en riesgo, crítico) antes del gráfico y la tabla.
- El drill-down de un KPI es útil: muestra valor actual, umbral y evolución por mes, con barras rojas cuando se pasa por debajo del umbral.

**Qué encontramos**

- **H-03 — Validación que bloquea la edición.** "Este código ya existe" al editar `MAX_HOURS_PER_WEEK`.
- **H-09 — Filtro de rol incompleto.** "Administrador de Soporte" no está en el filtro de Usuarios, aunque aparece en la tabla.
- **H-16 — Gráfico sin valores.** Las barras solo usan color para comunicar el nivel de riesgo.

**Propuestas**

- Excluir el registro en edición de la validación de unicidad.
- Alimentar el filtro de rol desde el catálogo de roles.
- Agregar números sobre las barras del gráfico.

---

### 5.6 Administrador de Soporte

**Qué funciona**

- "Documentos" y "Plantillas" están bien resueltas, con estados de color coherentes (disponible, generando, error de generación) visibles sin entrar al detalle.

**Qué encontramos**

- **H-02 — Superposición de campos en "Nuevo valor de catálogo".** Literalmente no se alcanza a leer qué se escribe en cada campo.
- **H-08 — Paginación distinta en Auditoría** ("Cargar más" vs. números de página).
- **H-18 — Columnas duplicadas** ("Recibido" / "Ocurrido en origen") y **H-19 — editor de HTML muy pequeño**.

**Propuestas**

- Rediseñar el modal de catálogo con el patrón de formulario estándar.
- Unificar paginación, eliminar la columna duplicada y ampliar el editor de plantillas.

---

### 5.7 Parametrización

**Qué funciona**

- El hub de parametrización orienta muy bien: nueve tarjetas que explican qué se configura en cada módulo y un aviso de prerrequisitos ("crear fichas requiere currículo, construir horarios requiere jornadas…").
- La máquina de estados de actores (categorías → estados → transiciones, con el permiso requerido en cada transición) está muy bien pensada.
- La matriz RBAC (roles, features y scopes GLOBAL / TRAINING_CENTER / OWN_*) es una herramienta sólida para la parametrización.

**Qué encontramos**

- **H-06 — El programa 233104 tiene dos nombres.** En Fichas es ADSO; en Currículo es "Análisis y Desarrollo de Sistemas de Información", y el ADSO real es el 228106.
- **H-17 — Umbrales sin formatear** ("80,0000") en Catálogos de monitoreo.
- **H-21 — Geografía abre en la quinta pestaña** y **H-24 — la matriz RBAC pide scroll horizontal** y corta su columna de acción.

**Propuestas**

- Una sola fuente de verdad para programas (código → nombre → horas) validada entre módulos.
- Formatear umbrales, abrir en la primera pestaña y dar a la matriz un área de scroll controlada.

---

## 6. Hallazgos Transversales

Problemas que no son de una sola sección sino que se repiten en varias:

- **Contenido cortado en el borde derecho (H-11).** En varias tablas los botones de acción y la paginación quedan pegados al borde y se cortan.
- **Doble barra de navegación (H-12).** Sidebar + topbar desaprovechan espacio y repiten el logo.
- **Menú móvil ausente en capturas (H-13).** El código implementa el drawer, pero las capturas móviles no lo muestran; hay que regenerarlas.
- **Enlaces que no llevan a ninguna parte (H-14).** "Ver reporte de carga" y "Ver reporte de utilización (horas)" no abren ninguna pantalla.
- **Sombra doble en botones (H-23).** Algunos botones muestran un borde duplicado de forma inconsistente entre pantallas.

---

## 7. Lo que Funciona Bien

- **Consistencia de estados en todo el sistema.** Borrador, en revisión, publicado, activo, disponible, etc. siempre usan el mismo lenguaje visual de colores; ayuda a entender una pantalla nueva rápido.
- **Patrón de tablas con filtros.** Las tablas con filtros arriba y "Limpiar filtros" al lado se repiten de forma consistente en casi todos los apartados.
- **Formularios en modales.** Crear usuario, resolver conflicto, agregar sesión: son cortos y piden solo lo necesario.
- **Dashboard del coordinador y panel de indicadores del director.** Priorizan lo urgente sobre lo informativo.
- **Hub de parametrización, máquina de estados y matriz RBAC.** Demuestran que la parametrización se pensó de verdad y no como catálogos decorativos.

---

## 8. Priorización de Mejoras

### 8.1 Críticos (afectan la confianza del usuario o bloquean una tarea clave)

1. **Mensaje contradictorio al publicar un horario (H-01).** Puede hacer que el coordinador publique un horario que aún tiene conflictos. *→ SIGA: confianza en la información.*
2. **Validación que bloquea la edición de un parámetro (H-03).** Hace creer que no se puede guardar un cambio legítimo. *→ SIGA: confianza; GFPI: operación continua.*
3. **Superposición de campos en "Nuevo valor de catálogo" (H-02).** No se puede leer lo que se escribe; el modal es difícil de usar. *→ MIPG: trámites claros.*

### 8.2 Medios (afectan la experiencia, no bloquean)

1. **"Ver todas" cambia de rol (H-04).**
2. **Programa 233104 con dos nombres entre Fichas y Currículo (H-06).**
3. **Navegación hardcodeada al publicar/validar (H-05).**
4. **Duplicación de notificaciones (H-07), paginación distinta en Auditoría (H-08), filtro de rol incompleto (H-09) y doble mensaje en seguimiento (H-10).**
5. **Menú móvil ausente en capturas (H-13), enlaces sin destino (H-14), contenido cortado (H-11) y doble barra (H-12).**

### 8.3 Menores (detalles visuales)

Competencia cortada (H-15), gráfico sin valores (H-16), umbrales "80,0000" (H-17), columnas duplicadas (H-18), editor HTML pequeño (H-19), filtro "Rango" de una fecha (H-20), Geografía en la quinta pestaña (H-21), contadores "45 pantallas" (H-22), sombra doble (H-23) y scroll horizontal de RBAC (H-24).

### 8.4 Orden sugerido de ejecución

| Orden | Mejora | Esfuerzo (S/M/L) | Impacto (A/M/B) | Fundamento |
|---|---|---|---|---|
| 1 | Unificar el mensaje de publicación de horarios (H-01) | M | Alto | SIGA: confianza en la información |
| 2 | Corregir validación de unicidad al editar (H-03) | S | Alto | SIGA: no bloquear guardados legítimos |
| 3 | Rediseñar modal "Nuevo valor de catálogo" (H-02) | M | Alto | MIPG: trámites claros |
| 4 | "Ver todas" por rol (H-04) | S | Alto | RBAC: contexto por rol |
| 5 | Unificar nombre del programa 233104 (H-06) | M | Alto | GFPI: coherencia curricular con SofiaPlus |
| 6 | Vincular validar/publicar al horario en edición (H-05) | S | Medio | SIGA: trazabilidad |
| 7 | Unificar patrones (paginación, notificaciones, filtros) (H-07/08/09) | M | Medio | Consistencia UX |
| 8 | Regenerar capturas móviles (H-13) | S | Medio | Coherencia del entregable |

---

## 9. Historias de Usuario con Criterios de Aceptación

### HU-01 — Publicar solo horarios sin conflictos

> **Como** coordinador académico, **quiero** que el sistema me impida publicar un horario con conflictos sin resolver, **para** no publicar información incorrecta y no perder la confianza del aprendiz.

**Criterios de aceptación:**

- [ ] El botón "Publicar" se deshabilita si existe al menos un conflicto sin resolver en el horario.
- [ ] El modal de publicación muestra el mismo estado de conflictos que la pantalla de conflictos (una sola fuente de verdad).
- [ ] No se muestran a la vez mensajes contradictorios ("sin conflictos" y "2 conflictos sin resolver").

### HU-02 — Catálogos legibles y editables

> **Como** administrador de soporte, **quiero** que los campos del modal "Nuevo valor de catálogo" se vean completos y sin superposición, **para** poder ingresar valores correctamente sin errores de lectura.

**Criterios de aceptación:**

- [ ] Las etiquetas "Código", "Etiqueta" y "Catálogo padre" no se superponen entre sí ni con los campos.
- [ ] El texto ingresado se lee completo (ej. "PRESENTIAL", no "PRES-SENTIAL").
- [ ] Los mensajes de error aparecen debajo de su campo correspondiente, sin montarse sobre otros controles.

### HU-03 — Un solo nombre por programa

> **Como** director de centro, **quiero** que el nombre y código de un programa sean los mismos en Fichas, en Currículo académico y en los horarios, **para** evitar confusiones entre módulos al comparar pantallas.

**Criterios de aceptación:**

- [ ] El código 233104 tiene un único nombre en todo el sistema.
- [ ] El nombre del programa de una ficha coincide con el del catálogo de currículo.
- [ ] Horas y versión del programa mostrados en Fichas coinciden con el currículo.

### HU-04 — Notificaciones de mi rol

> **Como** usuario de cualquier rol, **quiero** que "Ver todas" en el panel de notificaciones me lleve a mis propias notificaciones sin cambiar mi rol, **para** no perder el contexto de mi sesión.

**Criterios de aceptación:**

- [ ] Al hacer clic en "Ver todas", el rol activo no cambia.
- [ ] Cada rol con panel de notificaciones tiene una vista propia, o el panel no se muestra donde no existe esa vista.

### HU-05 — Editar sin bloqueos falsos

> **Como** director de centro, **quiero** que la validación "el código ya existe" no se dispare al editar el registro que ya posee ese código, **para** poder guardar mis cambios sin confusiones.

**Criterios de aceptación:**

- [ ] La unicidad se valida excluyendo el registro en edición.
- [ ] Al guardar sin cambios reales no aparece ningún error de duplicidad.

---

## 10. Conclusión

El mockup deja una buena impresión general. Se nota que hay un sistema de diseño pensado detrás: los mismos colores representan los mismos estados en todo el sistema, los patrones de tabla, filtros y modales se repiten de forma consistente, y las pantallas nuevas se entienden rápido. Ese es su punto más fuerte.

Lo que más le pesa no son los detalles visuales sueltos (fáciles de corregir), sino los pocos casos donde la interfaz muestra dos mensajes que se contradicen entre sí: el publicar horario que dice "sin conflictos" mientras hay 2 sin resolver, y la validación que impide editar un parámetro propio. Ahí es donde alguien podría tomar una decisión equivocada confiando en lo que ve en pantalla. Si esos tres puntos críticos se corrigen y se revisa la superposición de "Nuevo valor de catálogo", el mockup queda en muy buen nivel para esta etapa.

La sección de parametrización es la más densa del mockup y, contra lo esperado, está bien lograda conceptualmente: el hub, la máquina de estados y la matriz RBAC se defienden solas. Su deuda no es de diseño sino de datos: el desfase del programa 233104 entre Fichas y Currículo es de esos que alguien va a notar apenas compare dos pantallas, y en un sistema real con datos de SofiaPlus esa inconsistencia no debería pasar.

---

## 11. Anexos

### 11.1 Glosario

| Término | Significado |
|---|---|
| RBAC | Control de Acceso Basado en Roles |
| GFPI | Gestión de Formación Profesional Integral |
| SIGA | Sistema Integrado de Gestión y Autocontrol |
| MIPG | Modelo Integrado de Planeación y Gestión |
| RAP | Resultado de Aprendizaje |
| ADSO | Análisis y Desarrollo de Software |
| SofiaPlus / ZAJUNA | Plataformas oficiales de matrícula y seguimiento del SENA |

### 11.2 Evidencias

- Recorrido de navegación verificado por rol: coordinador (dashboard, horarios, panel de conflictos, disponibilidad, fichas), instructor (mi horario, disponibilidad, seguimiento), aprendiz (mi horario, notificaciones), director (indicadores, usuarios, datos de referencia), soporte (documentos, plantillas, auditoría, parametrización) y parametrización (hub y sus 8 módulos, revisados desde el código por no tener captura publicada).
- Casos concretos documentados: ficha 2874412 (ADSO) y 3011550 (Contabilidad) en publicación de horarios; `MAX_HOURS_PER_WEEK` en edición de parámetro; programa 233104 vs 228106 entre Fichas y Currículo; "PRES-SENTIAL" en el modal de catálogo.

---

*Documento entregable de revisión del mockup Sistema de Gestión de Horarios SENA. Generado aplicando la plantilla de revisión del proyecto.*
