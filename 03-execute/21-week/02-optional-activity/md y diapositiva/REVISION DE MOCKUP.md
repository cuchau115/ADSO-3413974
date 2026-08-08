# Revisión de mockup

## Partes que no me gustan en general

1. El logo.
2. **La combinación de dos navbars**, una lateral en la parte izquierda y otra horizontal en la parte superior, porque generan un desorden visual y ocupan espacio de forma poco eficiente.

### Propuesta de solución

Unificar la sección donde aparece el logo y el nombre del proyecto dentro de la navbar vertical, ya que actualmente se desaprovecha bastante espacio. Por otro lado, la sección de notificaciones y el menú desplegable podrían mantenerse en la parte superior, de una forma más ordenada, similar a la organización que tiene Gmail.

![alt text](image-4.png)


**Ejemplo gmail**

![alt text](image-5.png)

## 01. Auth y shell

### Login

Se observa un inicio de sesión sencillo y funcional, teniendo en cuenta que es solo un mockup. Incluye las opciones necesarias, como el acceso para iniciar sesión y la opción de recuperación de contraseña.

### Recuperar contraseña

No existen quejas.

### Nueva contraseña

No existen quejas.

### App shell por rol

No existen quejas.

### Panel de notificaciones

Existen algunos problemas que se detallan en [apartado de aprendiz](#apartado-de-aprendiz).

### Estados globales

No existen quejas.

## Apartado de aprendiz

En este apartado se visualizan dos navbars: una lateral y otra horizontal. La navbar lateral contiene dos opciones: **mi horario** y **notificaciones**. Por su parte, la navbar horizontal incluye el logo, el nombre del sistema, y en la parte izquierda se encuentran las notificaciones y un menú desplegable con algunas opciones.

No veo necesario tener dos apartados de notificaciones: el botón superior en la parte derecha y, además, volver a mostrar notificaciones en la navbar lateral. Esto puede hacer que la interfaz se sienta repetitiva y menos limpia visualmente.

![alt text](image-3.png)

### Mi horario, Mi disponibilidad y Notificaciones (aprendiz)

"Mi horario" está bien resuelto: se ve como una lista de tarjetas por día, con la hora, el nombre de la sesión, el ambiente y el instructor. Es fácil de leer y no le sobra nada.

La pantalla de "Notificaciones" del aprendiz confirma el problema que mencioné arriba: es literalmente el mismo listado que aparece en el panel desplegable de la parte superior (mismos títulos, mismos textos, mismos tiempos). No le veo mucho sentido a mantener las dos versiones completas; podría dejarse el panel desplegable solo para un vistazo rápido de 3-4 notificaciones y que "Ver todas" lleve a esta pantalla, en vez de que ambas muestren prácticamente lo mismo.

"Detalle de clase" y "Detalle de notificación" sí me gustaron. Son pantallas simples, con la información dividida en bloques pequeños, fáciles de escanear. No tengo quejas ahí.

### Observaciones generales del apartado de aprendiz

No encontré problemas adicionales relevantes en este apartado. La sección se siente completa para lo que un aprendiz necesita: ver su horario y revisar avisos.

## 02. Apartado de coordinador académico

### Inicio (dashboard)

Me gusta bastante esta pantalla. Los conflictos pendientes están arriba y en rojo, que es justo lo que un coordinador necesitaría ver primero. Debajo hay resumen de fichas activas y horarios en borrador, y más abajo una tabla de horarios recientes. La jerarquía tiene sentido: primero lo urgente, después lo informativo.

### Horarios (lista, detalle, crear/editar, publicar)

La lista de horarios tiene filtros claros y estados con colores consistentes (borrador, en revisión, publicado). Eso está bien logrado.

En la pantalla de "Nuevo horario", dentro del modal para agregar una sesión, noté que el campo de "Competencia" no alcanza a mostrar el texto completo de la opción seleccionada; el texto se corta y queda encimado con el borde del campo. Es un detalle chico pero se ve descuidado, sobre todo porque el nombre de una competencia puede ser largo.

También encontré algo que sí me parece un problema funcional, no solo visual: en el modal de "Publicar horario" de la ficha 3011550, aparece un mensaje en verde que dice "Sin conflictos pendientes — listo para publicar", pero justo arriba, en la misma pantalla, hay un aviso en rojo que dice "Este horario tiene 2 conflictos sin resolver". Son dos mensajes contradictorios en la misma vista, y si yo fuera el coordinador no sabría si en verdad puedo publicar o no.

### Panel de conflictos

Esta pantalla me gustó. Los conflictos están agrupados por tipo (instructor doble-asignado, ambiente doble-asignado, sesiones solapadas), cada uno con su descripción y la acción "Marcar como resuelto" a la mano. Se entiende rápido qué está mal y qué hay que hacer.

### Disponibilidad

La vista de ambientes e instructores disponibles, organizada en tarjetas con el estado "Disponible" / "No disponible", es clara y cómoda de escanear.


### Fichas

La lista de fichas está bien organizada, con buenos filtros.

El detalle de una ficha (por ejemplo la 2874412) sí me gustó: separa bien "Programa" de "Datos de la ficha" y no satura la pantalla.

## 03. Apartado de instructor

Las pantallas de instructor ("Mi horario", "Mi disponibilidad", "Seguimiento") reutilizan los mismos patrones que ya se ven en otras partes del sistema (tarjetas de sesión, tablas con filtros, modales de creación). Eso me parece positivo, porque da consistencia y hace que el sistema se sienta como una sola aplicación y no como partes pegadas.

## 04. Apartado de director de centro

### Panel de indicadores

Me gusta cómo se resume la información en tres números grandes (en seguimiento, en riesgo, crítico) antes de mostrar el gráfico y la tabla. Es fácil entender la urgencia de un vistazo.

El gráfico de barras de "Distribución por nivel de riesgo" se ve bien, aunque no tiene valores numéricos sobre las barras ni en el eje, solo el color. Podría ayudar agregar el número encima de cada barra para no depender solo del color (pensando también en alguien con dificultad para distinguir colores).

### Usuarios

La tabla de usuarios con filtros por rol y estado está bien pensada. El modal para crear usuario es corto y directo, sin campos de más.

En el detalle de un usuario (Juan Pérez) hay una tabla de "Sesiones activas" con una acción "Revocar" que queda cortada en el borde derecho de la pantalla, no se alcanza a leer completa. Es el mismo patrón de recorte que ya había visto antes en otras tablas.

### Datos de referencia

Aquí sí encontré un problema más molesto: en el modal "Editar parámetro — MAX_HOURS_PER_WEEK", aparece la advertencia "Este código ya existe en este catálogo", pero uno está editando ese mismo parámetro, no creando uno nuevo. No tiene sentido que el sistema le diga a uno que el código ya existe cuando se está editando el registro que ya tiene ese código.

## 05. Apartado de administrador de soporte

### Documentos y plantillas

Ambas pantallas están bien resueltas, con estados de color coherentes (disponible, generando, error de generación). Me gusta que se pueda ver el estado de generación de un documento sin tener que entrar al detalle.

### Auditoría

Esta pantalla usa un patrón de paginación distinto al resto: en vez de números de página, tiene un botón "Cargar más". No es necesariamente un error, pero sí es una inconsistencia frente a como se pagina en todas las demás tablas del sistema (Horarios, Fichas, Usuarios, Notificaciones, etc.), que sí usan números de página. Yo unificaría esto a un solo patrón, para que el usuario no tenga que aprender dos formas distintas de pasar de página según en qué pantalla esté.

### Parametrización (catálogos y parámetros)

Esta es la pantalla con el problema visual más notorio de todo el mockup. En el modal "Nuevo valor de catálogo", las etiquetas "Código", "Etiqueta" y "Catálogo padre" quedan superpuestas unas sobre otras, y los campos de texto también se encimen entre sí (se alcanza a leer "PRES-SENTIAL" en vez de "PRESENTIAL"). El mensaje de error "Este código ya existe en este catálogo" también queda montado sobre el campo "Orden". Esta pantalla necesitaría revisarse de nuevo porque, tal como está, es difícil de usar.

En el "Editor de plantilla de documento" también noto que el cuadro donde se escribe el HTML de la plantilla es muy pequeño para lo que se supone que hay que editar ahí (código HTML completo de un documento). Un editor de código tan chico obliga a hacer mucho scroll para algo que en la práctica puede ser largo.

## Observaciones transversales (que se repiten en varias pantallas)

Después de revisar las 45 pantallas, hay algunos problemas que no son de una sola sección sino que se repiten en varios apartados:

- **Contenido cortado en el borde derecho.** En varias tablas (Horarios, Fichas, Mi disponibilidad, Seguimiento, Usuarios, Documentos, Plantillas, Auditoría, Parametrización) los botones de acción o los controles de paginación quedan pegados al borde derecho de la pantalla y se alcanzan a cortar. Da la sensación de que el contenedor principal es un poco más angosto de lo que necesitan las tablas.
- **Sombra doble en algunos botones.** En varias pantallas (crear/editar horario, detalle de usuario, datos de referencia, editor de plantilla) los botones verdes y algunos outline muestran una especie de sombra o borde duplicado detrás, como si hubiera dos botones montados uno sobre el otro. En otras pantallas ese mismo tipo de botón no lo tiene, así que no es que sea el estilo del botón, sino que se aplica de forma inconsistente.
- **Menú de navegación no visible en móvil.** La pantalla "App Shell" explica que en móvil la navegación se vuelve un drawer (menú lateral desplegable), pero al revisar las capturas en tamaño móvil no encontré ningún ícono de menú (como las tres rayitas típicas) en la barra superior para abrirlo. Si el usuario entra desde el celular, no me queda claro cómo pasaría de "Horarios" a "Disponibilidad", por ejemplo.
- **Paginación con datos que no cuadran.** Ya lo mencioné en Fichas e Instructor, pero se repite en más de una pantalla: el selector dice "10 por página" y la tabla muestra menos de 10 filas en la primera página, sin que haya una razón visible (como un total menor a 10).

## Lo que sí funciona bien en general

Para no dejar todo en negativo, hay cosas que se repiten en casi todo el sistema y que sí me parecen bien logradas:

- Los estados (borrador, en revisión, publicado, activo, inactivo, disponible, etc.) siempre usan el mismo lenguaje visual de colores en toda la aplicación, lo cual ayuda mucho a entender una pantalla nueva rápido, aunque sea la primera vez que uno la ve.
- Las tablas con filtros arriba y "Limpiar filtros" al lado son un patrón que se repite de forma consistente en casi todos los apartados, y eso se agradece.
- Los formularios dentro de modales (crear usuario, resolver conflicto, agregar sesión) son cortos y piden solo lo necesario, sin campos de relleno.
- El dashboard del coordinador y el panel de indicadores del director hacen bien su trabajo de mostrar primero lo urgente y después lo informativo.


## Prioridad de mejoras

Revisando todo lo que encontré, no todos los problemas pesan igual. Los separo en tres niveles para que quede más claro qué arreglaría primero si esto fuera un proyecto real.

### Críticos (afectan si el usuario puede confiar en lo que ve)

1. **Mensaje contradictorio al publicar un horario.** El modal dice "sin conflictos pendientes" mientras la pantalla de atrás dice "2 conflictos sin resolver". Esto es grave porque le puede hacer creer al coordinador que puede publicar un horario que en realidad todavía tiene problemas.
2. **Validación que se contradice al editar un parámetro.** Que el sistema diga "este código ya existe" cuando uno está editando ese mismo registro puede hacer que un administrador piense que no puede guardar cambios, cuando sí debería poder.
3. **Superposición de campos en el modal de "Nuevo valor de catálogo".** No es solo estético: ahí literalmente no se alcanza a leer bien qué se está escribiendo en cada campo.

### Medianos (afectan la experiencia pero no bloquean el uso)

4. Duplicación de notificaciones entre el panel desplegable y la pantalla completa.
5. Datos que no cuadran entre sí en la misma pantalla (68% / 17 de 25 franjas vs. una tabla de 15; "10 por página" mostrando 5 resultados).
6. Falta de un ícono de menú visible en la versión móvil, a pesar de que el sistema dice que ahí debería aparecer un drawer.
7. Patrón de paginación distinto en Auditoría ("Cargar más") frente al resto del sistema (números de página).

### Menores (detalles visuales, no cambian el funcionamiento)

8. Texto cortado en el campo de "Competencia" dentro del modal de sesión.
9. Botones y controles que quedan pegados o cortados en el borde derecho de varias tablas.
10. Sombra doble en algunos botones, de forma inconsistente entre pantallas.
11. Editor de HTML muy pequeño en la plantilla de documento.
12. Falta de valores numéricos sobre las barras del gráfico de "Distribución por nivel de riesgo".

## Lo mejor del mockup

- El uso consistente de colores para los estados (borrador, publicado, activo, disponible, etc.) en todo el sistema, lo que ayuda a entender pantallas nuevas sin mucho esfuerzo.
- El dashboard del coordinador y el panel de indicadores del director, que priorizan bien lo urgente sobre lo informativo.
- El panel de conflictos, que explica claramente qué está mal y qué acción tomar.
- Los formularios en modales, que piden solo lo necesario sin campos de relleno.

## Lo más urgente por corregir

Si tuviera que elegir un solo punto para arreglar primero, sería el mensaje contradictorio del modal de publicación de horarios. De los tres problemas críticos, es el que más puede generar un error real de uso: alguien podría publicar un horario pensando que ya no tiene conflictos, cuando en realidad sí los tiene.

## Conclusión

En general el mockup me deja una buena impresión. Se nota que hay un sistema de diseño pensado detrás (mismos colores para los mismos estados, mismos patrones de tabla y de filtros, mismos tipos de modal), y eso hace que aunque uno esté viendo por primera vez una pantalla, ya sepa más o menos qué esperar. Ese es probablemente el punto más fuerte de todo el mockup.

Lo que más le pesa no son los detalles visuales sueltos (esos son fáciles de corregir), sino los pocos casos donde la interfaz le muestra al usuario dos mensajes que se contradicen entre sí, porque ahí es donde alguien podría tomar una decisión equivocada confiando en lo que ve en pantalla. Si esos tres puntos críticos se corrigen, y se revisa el problema de superposición en "Nuevo valor de catálogo", creo que el mockup queda en muy buen nivel para lo que se busca en esta etapa.