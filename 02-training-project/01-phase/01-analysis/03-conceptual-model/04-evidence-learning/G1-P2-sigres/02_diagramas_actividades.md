# Diagramas de actividades

## Actividad 1 - CU-04 Registrar pedido

**Actores/calles:** Mesero, Sistema, Personal de cocina.

1. **Inicio**
2. **Mesero:** Accede a nuevo pedido y selecciona una mesa.
3. **Sistema:** [Mesa disponible o con pedido activo?]
   - `[Mesa con pedido activo]` -> pregunta si desea agregar productos.
     - `[Confirma agregar]` -> continúa en el paso 5.
     - `[No agrega]` -> termina sin modificar el pedido.
   - `[Mesa disponible]` -> continúa.
4. **Sistema:** carga el menú con productos disponibles.
5. **Mesero:** ingresa comensales y selecciona productos y cantidades.
6. **Sistema:** [¿Hay mesa y al menos un producto?]
   - `[No]` -> muestra campos requeridos y vuelve al paso 5.
   - `[Sí]` -> continúa.
7. **Sistema:** [¿Todos los productos están disponibles?]
   - `[No]` -> muestra producto no disponible y vuelve al paso 5.
   - `[Sí]` -> continúa.
8. **Mesero:** agrega observaciones si corresponde y confirma.
9. **Sistema:** genera identificador único y registra el pedido.
10. **Sistema:** [¿El pedido se registró correctamente?]
   - `[No]` -> muestra error de registro y ofrece reintento.
     - `[Reintenta]` -> vuelve al paso 9.
     - `[Cancela]` -> termina sin cambios.
   - `[Sí]` -> continúa.
11. **Bifurcación concurrente:**
   - Envío de la comanda a cocina.
   - Actualización de la mesa a ocupada y descuento automático de inventario.
12. **Unión** de las operaciones.
13. **Personal de cocina:** recibe la comanda.
14. **Sistema:** muestra confirmación al Mesero.
15. **Fin**

**Justificación de concurrencia:** hay operaciones independientes que deben completarse al confirmar el pedido. La comanda se entrega a cocina, mientras se actualiza la mesa y el inventario. Las decisiones cubren las salidas posibles.

## Actividad 2 - CU-16/CU-17 Ver menú y consultar consumo por QR

**Actores/calles:** Cliente, Sistema QR.

1. **Inicio**
2. **Cliente:** escanea el código QR de una mesa.
3. **Sistema:** [¿El código QR es válido y corresponde a una mesa?]
   - `[No]` -> muestra instrucción para solicitar un nuevo código y termina.
   - `[Sí]` -> continúa.
4. **Sistema:** carga el menú organizado por categorías.
5. **Sistema:** [¿Hay productos disponibles?]
   - `[No]` -> informa que no hay productos disponibles y termina.
   - `[Sí]` -> muestra productos, precios e imágenes.
6. **Cliente:** navega por las categorías.
7. **Sistema:** [¿El cliente selecciona consultar consumo?]
   - `[No]` -> permanece en el menú y puede finalizar.
   - `[Sí]` -> continúa.
8. **Sistema:** [¿Existe pedido activo para la mesa?]
   - `[Sí]` -> muestra productos, cantidades, precios, subtotal y estado.
   - `[No]` -> muestra “No hay consumo registrado para esta mesa”.
9. **Sistema:** [¿El cliente recarga la consulta?]
   - `[Sí]` -> actualiza la información.
   - `[No]` -> mantiene la información visible.
10. **Sistema:** [¿Ocurre un error al cargar información?]
   - `[Sí]` -> muestra el mensaje de error de servidor y ofrece escanear nuevamente.
   - `[No]` -> continúa.
11. **Fin**

**Justificación de concurrencia:** no se modela bifurcación/unión porque los pasos de consulta son secuenciales y no existe ejecución simultánea entre actividades del sistema. Todos los flujos alternos y excepciones están reflejados en la plantilla CU-16/CU-17.
