# Modelo de dominio SIGRES

El modelo muestra conceptos del negocio y sus relaciones. No contiene métodos, identificadores técnicos como claves foráneas ni atributos de implementación.

## Clases conceptuales

| Clase | Atributos de negocio |
|---|---|
| Usuario | nombre, correo de acceso, contraseña protegida, estado activo |
| Administrador | permisos administrativos, nivel de autorización |
| Mesero | turno, estado laboral |
| Cajero | turno asignado, caja responsable |
| Cocinero | estación de trabajo, turno |
| Gerente | área de gestión, período de reporte |
| Rol | nombre, conjunto de permisos |
| Mesa | número de mesa, capacidad, estado |
| Pedido | identificador, fecha y hora, estado, número de comensales |
| LíneaPedido | cantidad, observaciones, precio registrado |
| Producto | nombre, descripción, precio, disponibilidad |
| Categoría | nombre, descripción, orden de presentación |
| Inventario | cantidad disponible, cantidad mínima |
| MovimientoInventario | fecha y hora, tipo de movimiento, cantidad |
| Factura | número consecutivo, fecha y hora, total |
| Pago | método, monto recibido, vuelto, estado |
| ReporteVentas | período, total vendido, cantidad de pedidos |
| ConsumoMesa | subtotal, estado de los pedidos, fecha de consulta |

## Generalización

- `Usuario` es superclase conceptual de `Administrador`, `Mesero`, `Cajero`, `Cocinero` y `Gerente`.
- Todas las especializaciones representan roles laborales con atributos propios. El rol no se convierte en un método ni una clave técnica del dominio.

## Asociación Pedido-Producto

`Pedido` tiene una asociación con `Producto`; se representa con la clase asociativa `LíneaPedido`, que contiene `cantidad`, `observaciones` y `precio registrado`. Se mantiene la explicación porque evita perder datos propios de la relación.

## Asociaciones y multiplicidades

| Asociación | Multiplicidades | Significado |
|---|---|---|
| Usuario - Rol | 1 Usuario - 1 Rol; 1 Rol - 0..* Usuarios | Cada usuario tiene exactamente un rol activo |
| Mesa - Pedido | 1 Mesa - 0..* Pedidos; 1 Pedido - 1 Mesa | La mesa puede tener varios pedidos a lo largo del tiempo, pero el pedido actual pertenece a una mesa |
| Pedido - LíneaPedido | 1 Pedido - 1..* Líneas | Todo pedido confirmado contiene al menos una línea |
| Producto - LíneaPedido | 1 Producto - 0..* Líneas; 1 Línea - 1 Producto | Un producto aparece en cero o más líneas históricas |
| Categoría - Producto | 1 Categoría - 0..* Productos; 1 Producto - 1 Categoría | La categoría agrupa productos |
| Producto - Inventario | 1 Producto - 1 Registro de inventario | Cada producto gestionado tiene control de existencias conceptual |
| Inventario - MovimientoInventario | 1 Inventario - 0..* Movimientos | Los ajustes generan un historial |
| Pedido - Factura | 1 Pedido - 0..1 Factura; 1 Factura - 1 Pedido | Una factura corresponde a un pedido pagado |
| Factura - Pago | 1 Factura - 1 Pago; 1 Pago - 1 Factura | El pago realiza el cierre de la factura |
| Mesa - ConsumoMesa | 1 Mesa - 0..* Consultas de consumo | El consumo presenta el estado actual de pedidos de la mesa |
| Pedido - ReporteVentas | 0..* Pedidos - 0..* Reportes | Los pedidos incluidos forman los totales de un reporte |

## Coherencia con las plantillas

Todos los conceptos usados en CU-04, CU-16 y CU-17 aparecen en este dominio: `Usuario/Mesero`, `Mesa`, `Pedido`, `LíneaPedido`, `Producto`, `Categoría`, `Inventario`, `Factura`, `Pago`, `ConsumoMesa`, `ReporteVentas` y sus atributos principales.
