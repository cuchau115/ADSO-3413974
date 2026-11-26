# Modelo entidad-relación

**Notación declarada:** pata de gallo (Crow's Foot).

**Participación:** línea doble o nota `(T)` significa participación total; una línea simple o nota `(P)` significa participación parcial.

## Entidades e identificadores

| Entidad | Identificador | Otros atributos relevantes |
|---|---|---|
| Usuario | id_usuario | nombre, correo, estado |
| Rol | id_rol | nombre, descripción |
| Mesa | id_mesa | número, capacidad, estado |
| Pedido | id_pedido | fecha_hora, estado, comensales |
| Producto | id_producto | nombre, precio, disponibilidad |
| Categoria | id_categoria | nombre, descripción |
| PedidoProducto | id_pedido, id_producto | cantidad, precio_unitario, observacion |
| Inventario | id_inventario | cantidad_actual, cantidad_minima |
| MovimientoInventario | id_movimiento | fecha_hora, tipo, cantidad, responsable |
| Factura | id_factura | numero_consecutivo, fecha_hora, total |
| Pago | id_pago | metodo, monto_recibido, vuelto, estado |
| ReporteVentas | id_reporte | periodo_inicio, periodo_fin, total_vendido |
| MovimientoFactura | id_movimiento_factura | fecha_hora, tipo, justificacion |

## Relaciones

| Relación | Cardinalidad | Participación |
|---|---|---|
| Rol - Usuario | 1:N | Rol (P), Usuario (T) |
| Mesa - Pedido | 1:N | Mesa (P), Pedido (T) |
| Pedido - PedidoProducto | 1:N | Pedido (T), PedidoProducto (T) |
| Producto - PedidoProducto | 1:N | Producto (T), PedidoProducto (T) |
| Categoria - Producto | 1:N | Categoria (P), Producto (T) |
| Producto - Inventario | 1:1 | Ambos totales |
| Inventario - MovimientoInventario | 1:N | Inventario (T), Movimiento (T) |
| Pedido - Factura | 1:1 opcional | Pedido (P), Factura (T) |
| Factura - Pago | 1:1 | Ambos totales |
| Pedido - ReporteVentas | N:M | Pedido (P), Reporte (P) |

## Resolución de N:M

La relación N:M entre `Pedido` y `Producto` se resuelve mediante `PedidoProducto`. Esta entidad asociativa tiene una clave compuesta (`id_pedido`, `id_producto`) y atributos propios: `cantidad`, `precio_unitario` y `observacion`.

## Entidad débil

`PedidoProducto` se trata como entidad débil respecto de `Pedido` y `Producto`, porque su existencia depende del pedido y del producto asociados. Su clave incluye ambos identificadores y, adicionalmente, representa una parte esencial de cada comanda.

Como alternativa de trazabilidad, `MovimientoInventario` identifica sus movimientos con `id_movimiento` y depende del inventario que registra. Se conserva el identificador propio para evitar confundir movimientos de entradas y salidas.

## Exposición textual tipo pata de gallo

- `ROL ||--o{ USUARIO`
- `MESA ||--o{ PEDIDO`
- `PEDIDO ||--|{ PEDIDOPRODUCTO`
- `PRODUCTO ||--|{ PEDIDOPRODUCTO`
- `CATEGORIA ||--o{ PRODUCTO`
- `PRODUCTO ||--|| INVENTARIO`
- `INVENTARIO ||--o{ MOVIMIENTOINVENTARIO`
- `PEDIDO o|--o| FACTURA`
- `FACTURA ||--|| PAGO`
