# Anexo C - Matriz de trazabilidad requisito → artefactos

| Requisito | Caso de uso | Diagrama de actividades | Plantilla | Clase de dominio | Entidad del MER | Pantalla crítica |
|---|---|---|---|---|---|---|
| RF01 - Registro de usuarios | CU-01 Registrar usuario | No aplica: fuera de los dos casos críticos | P1 | Usuario, Rol | Usuario, Rol | No aplica |
| RF02 - Inicio de sesión | CU-02 Iniciar sesión | No aplica | P1 | Usuario, Rol | Usuario | No aplica |
| RF03 - Roles y permisos | CU-03 Gestionar roles y permisos | No aplica | P1 | Usuario, Administrador, Rol | Usuario, Rol | No aplica |
| RF04 - Registrar pedido | CU-04 Registrar pedido | [Actividad CU-04](./02_diagramas_actividades.md) | [Plantilla CU-04](./03_plantillas_casos_uso.md) | Mesero, Pedido, Mesa, LíneaPedido | Pedido, Mesa, PedidoProducto | [CU-04](./06_prototipo_inicial.md#pantalla-3---cu-04-registrar-pedido) |
| RF05 - Enviar pedido a cocina | CU-05 Enviar pedido a cocina; CU-04 incluye CU-05 | [Actividad CU-04](./02_diagramas_actividades.md) | [Plantilla CU-04](./03_plantillas_casos_uso.md) | Pedido, Cocinero | Pedido | No aplica |
| RF06 - Consultar estado del pedido | CU-06 Consultar estado del pedido | No aplica | P1 | Pedido | Pedido | No aplica |
| RF07 - Actualizar estado del pedido | CU-07 Actualizar estado del pedido | No aplica | P1 | Pedido, Cocinero | Pedido | No aplica |
| RF08 - Administrar productos | CU-08 Administrar productos | [Actividad QR](./02_diagramas_actividades.md) | [Plantilla CU-16](./03_plantillas_casos_uso.md) | Producto, Categoría | Producto, Categoria | [CU-16](./06_prototipo_inicial.md#pantalla-1---cu-16-ver-menú-digital-por-qr) |
| RF09 - Gestionar categorías | CU-09 Gestionar categorías | [Actividad QR](./02_diagramas_actividades.md) | [Plantilla CU-16](./03_plantillas_casos_uso.md) | Categoría, Producto | Categoria, Producto | [CU-16](./06_prototipo_inicial.md#pantalla-1---cu-16-ver-menú-digital-por-qr) |
| RF10 - Registrar inventario | CU-10 Gestionar inventario | [Actividad CU-04](./02_diagramas_actividades.md) | [Plantilla CU-04](./03_plantillas_casos_uso.md) | Inventario, MovimientoInventario | Inventario, MovimientoInventario | No aplica |
| RF11 - Alertas de stock mínimo | CU-11 Generar alerta de stock mínimo | No aplica | P1 | Inventario, MovimientoInventario | Inventario | No aplica |
| RF12 - Generar factura | CU-12 Generar factura | No aplica | P1 | Factura, Pedido, Pago | Factura, Pedido, Pago | No aplica |
| RF13 - Procesar pago | CU-13 Procesar pago | No aplica | P1 | Pago, Factura, Mesa | Pago, Factura, Mesa | No aplica |
| RF14 - Gestionar mesas | CU-14 Gestionar mesas | [Actividad CU-04](./02_diagramas_actividades.md) | [Plantilla CU-04](./03_plantillas_casos_uso.md) | Mesa | Mesa | [CU-04](./06_prototipo_inicial.md#pantalla-3---cu-04-registrar-pedido) |
| RF15 - Reportes de ventas | CU-15 Generar reportes de ventas | No aplica | P1 | ReporteVentas, Pedido | ReporteVentas, Pedido | No aplica |
| RF16 - Ver menú por QR | CU-16 Ver menú digital por QR | [Actividad QR](./02_diagramas_actividades.md) | [Plantilla CU-16](./03_plantillas_casos_uso.md) | Mesa, Categoría, Producto | Mesa, Categoria, Producto | [CU-16](./06_prototipo_inicial.md#pantalla-1---cu-16-ver-menú-digital-por-qr) |
| RF17 - Consultar consumo por QR | CU-17 Consultar consumo actual | [Actividad QR](./02_diagramas_actividades.md) | [Plantilla CU-17](./03_plantillas_casos_uso.md) | ConsumoMesa, Pedido, LíneaPedido | Pedido, PedidoProducto, Mesa | [CU-17](./06_prototipo_inicial.md#pantalla-2---cu-17-consultar-consumo-actual) |

**Cobertura funcional:** 17 de 17 RF tienen caso de uso, clase de dominio y entidad del MER = **100 %**.
