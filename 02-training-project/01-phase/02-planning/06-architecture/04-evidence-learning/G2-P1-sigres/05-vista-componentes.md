# A5. Vista de componentes

La fuente editable está en `05-vista-componentes.mmd` y la imagen en `05-vista-componentes.svg`.

| Componente | Interfaz provista | Interfaz requerida | Clases agrupadas | Requisitos |
|---|---|---|---|---|
| Autenticación | `IIdentidad` | `IDatosUsuarios`, `IAutorizacion` | Usuario, Rol, Administrador | RF-01, RF-03 |
| Pedidos | `IPedidos` | `IInventario`, `ICocina`, `IDatos` | Pedido, LineaPedido, Mesa | RF-04, RF-05 |
| Menú QR | `IMenuQR` | `IProducto`, `IConsumo` | Producto, Categoria, Mesa | RF-16, RF-17 |
| Inventario | `IInventario` | `IDatos` | Inventario, MovimientoInventario | RF-10 |
| Facturación | `IFacturacion` | `IPagos`, `IDatos` | Factura, Pago, Estrategia factura | RF-12, RF-13 |
| Reportes | `IReportes` | `IDatos` | ReporteVentas | RF-15 |
