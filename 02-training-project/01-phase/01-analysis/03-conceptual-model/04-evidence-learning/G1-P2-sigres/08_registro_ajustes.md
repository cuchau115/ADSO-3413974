# Anexo D - Registro de ajustes y segunda verificación

| # | Hallazgo | Artefacto | Antes | Después | Enlace al commit | ¿Se verificó de nuevo? |
|---|---|---|---|---|---|---|
| 1 | Referencia cruzada ambigua en consumo QR | Matriz P1 y plantillas | RF17 aparecía como menú o consumo sin separar ambos conceptos | RF16 se asignó al menú QR y RF17 al consumo por QR; RF08/RF09 documentan menú/categorías | [ENLACE_COMMIT] | Sí. Se verificó la matriz P1 y CU-16/CU-17 |
| 2 | El diagrama de pedido no cubría mesa ocupada | Actividad CU-04 | Solo se describía mesa disponible | Se añadió decisión mesa con pedido activo y opción válida de agregar productos | [ENLACE_COMMIT] | Sí. La rama aparece en la plantilla como FA-1 |
| 3 | Flujo QR tenía menos pasos que el mínimo | Plantilla CU-16 | La descripción era una vista resumida | Se completó un flujo principal de 8 pasos sin detalles técnicos | [ENLACE_COMMIT] | Sí. Se hizo conteo y se encontraron 8 pasos |
| 4 | Clase inventario mezclaba datos técnicos con conceptos | Modelo de dominio | Había intención de atributos tipo registro técnico | Se dejó cantidad disponible y mínima como atributos de negocio sin claves ni métodos | [ENLACE_COMMIT] | Sí. Se revisó el dominio contra la lista de conceptos |
| 5 | MER no resolvía la relación entre pedido y producto | Modelo entidad-relación | Relación potencial N:M sin entidad intermedia | Se creó PedidoProducto con clave compuesta y atributos propios | [ENLACE_COMMIT] | Sí. Se confirmó cardinalidad y entidad débil |
| 6 | Pantalla de consumo permitía modificar pedido | Prototipo CU-17 | Acciones generales de pedido visibles en el boceto | Se dejaron únicamente consulta, actualización y visualización de estado; la modificación quedó fuera | [ENLACE_COMMIT] | Sí. Se confirmó contra RN-02 del menú QR |
