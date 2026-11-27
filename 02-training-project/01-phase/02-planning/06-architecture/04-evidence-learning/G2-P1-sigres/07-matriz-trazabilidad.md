# A7. Matriz de trazabilidad análisis → diseño

| Requisito | Clase(s) | Tabla(s) | Componente | Decisión |
|---|---|---|---|---|
| RF-01 | Usuario, Rol | usuario, rol | Autenticación | RBAC |
| RF-03 | Usuario, Administrador, Rol | usuario, rol, permiso | Autenticación | Autorización por rol |
| RF-04 | Mesa, Pedido, LineaPedido | mesa, pedido, pedido_producto | Pedidos | Composición y FK |
| RF-05 | Pedido, Cocinero | pedido, movimiento_pedido | Pedidos | Inclusión obligatoria |
| RF-08 | Producto, Categoria | producto, categoria | Menú QR | CRUD por componente |
| RF-10 | Inventario, MovimientoInventario | inventario, movimiento_inventario | Inventario | Trazabilidad de ajustes |
| RF-12 | Factura, ICalculadoraFactura | factura | Facturación | Estrategia |
| RF-13 | Pago, Factura | pago, factura | Facturación | Transacción |
| RF-16 | Producto, Categoria, Mesa | producto, categoria, mesa | Menú QR | Caché y acceso público |
| RF-17 | Pedido, LineaPedido, Mesa | pedido, pedido_producto, mesa | Menú QR | Consulta solo lectura |
| RNF-01 | todas las consultas críticas | índices por estado, mesa y producto | caché de menú | Índices y caché |
| RNF-02 | Usuario, Rol | usuario, rol | Autenticación | JWT y autorización |
| RNF-03 | n/a | cifrado de transporte | Nodos cliente/servidor | TLS |
| RNF-04 | todas las entidades relacionadas | todas las FK | Datos | ON DELETE definido |
