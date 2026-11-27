# B4. Diccionario de datos

Convención: tablas en singular, columnas en `snake_case`, PK `id_<tabla>` y claves externas `id_<tabla>`.

| Tabla | Columna | Tipo | Tamaño | Restricciones | Dominio/regla |
|---|---|---|---|---|---|
| rol | id_rol | INTEGER | n/a | PK | Entero positivo |
| rol | nombre | VARCHAR | 40 | NOT NULL, UNIQUE | Nombre único del rol |
| usuario | id_usuario | INTEGER | n/a | PK | Entero positivo |
| usuario | id_rol | INTEGER | n/a | FK rol, NOT NULL | Rol existente |
| usuario | nombre | VARCHAR | 80 | NOT NULL | Nombre visible |
| usuario | correo | VARCHAR | 120 | NOT NULL, UNIQUE | Formato de correo |
| usuario | password_hash | VARCHAR | 255 | NOT NULL | Hash Argon2/bcrypt, nunca texto plano |
| usuario | password_salt | VARCHAR | 64 | NOT NULL | Sal aleatoria |
| mesa | id_mesa | INTEGER | n/a | PK | Entero positivo |
| mesa | numero | INTEGER | n/a | NOT NULL, UNIQUE | Mayor que cero |
| mesa | capacidad | INTEGER | n/a | NOT NULL, CHECK (>0) | 1 o más |
| mesa | estado | VARCHAR | 20 | NOT NULL, CHECK | disponible, ocupada, reservada |
| pedido | id_pedido | INTEGER | n/a | PK | Entero positivo |
| pedido | id_mesa | INTEGER | n/a | FK mesa, NOT NULL | Mesa existente |
| pedido | id_usuario | INTEGER | n/a | FK usuario, NOT NULL | Mesero existente |
| pedido | fecha_hora | DATETIME | n/a | NOT NULL | Fecha válida |
| pedido | estado | VARCHAR | 20 | NOT NULL, CHECK | abierto, enviado, cerrado, cancelado |
| categoria | id_categoria | INTEGER | n/a | PK | Entero positivo |
| categoria | nombre | VARCHAR | 60 | NOT NULL, UNIQUE | Nombre único |
| producto | id_producto | INTEGER | n/a | PK | Entero positivo |
| producto | id_categoria | INTEGER | n/a | FK categoria, NOT NULL | Categoría existente |
| producto | nombre | VARCHAR | 80 | NOT NULL | Nombre visible |
| producto | precio | DECIMAL | 12,2 | NOT NULL, CHECK (>=0) | Precio base |
| producto | disponible | BOOLEAN | n/a | NOT NULL | 0/1 |
| pedido_producto | id_pedido | INTEGER | n/a | PK compuesta, FK pedido | Pedido existente |
| pedido_producto | id_producto | INTEGER | n/a | PK compuesta, FK producto | Producto existente |
| pedido_producto | cantidad | INTEGER | n/a | NOT NULL, CHECK (>0) | Cantidad positiva |
| pedido_producto | precio_unitario | DECIMAL | 12,2 | NOT NULL, CHECK (>=0) | Precio registrado |
| pedido_producto | observacion | VARCHAR | 200 | NULL | Nota opcional |
| inventario | id_inventario | INTEGER | n/a | PK | Entero positivo |
| inventario | id_producto | INTEGER | n/a | FK producto, NOT NULL, UNIQUE | Producto único |
| inventario | cantidad_actual | INTEGER | n/a | NOT NULL, CHECK (>=0) | Stock no negativo |
| inventario | cantidad_minima | INTEGER | n/a | NOT NULL, CHECK (>=0) | Umbral |
| movimiento_inventario | id_movimiento | INTEGER | n/a | PK | Entero positivo |
| movimiento_inventario | id_inventario | INTEGER | n/a | FK inventario, NOT NULL | Inventario existente |
| movimiento_inventario | tipo | VARCHAR | 20 | NOT NULL, CHECK | entrada/salida/ajuste |
| movimiento_inventario | cantidad | INTEGER | n/a | NOT NULL, CHECK (>0) | Cantidad absoluta |
| factura | id_factura | INTEGER | n/a | PK | Entero positivo |
| factura | id_pedido | INTEGER | n/a | FK pedido, NOT NULL, UNIQUE | Pedido único |
| factura | numero_consecutivo | VARCHAR | 30 | NOT NULL, UNIQUE | Consecutivo fiscal |
| factura | fecha_hora | DATETIME | n/a | NOT NULL | Fecha válida |
| factura | total | DECIMAL | 12,2 | NOT NULL, CHECK (>=0) | Total positivo |
| pago | id_pago | INTEGER | n/a | PK | Entero positivo |
| pago | id_factura | INTEGER | n/a | FK factura, NOT NULL, UNIQUE | Factura única |
| pago | metodo | VARCHAR | 30 | NOT NULL | efectivo, tarjeta, transferencia |
| pago | monto | DECIMAL | 12,2 | NOT NULL, CHECK (>0) | Monto recibido |
| pago | estado | VARCHAR | 20 | NOT NULL, CHECK | pendiente, confirmado, reversado |
| reporte_ventas | id_reporte | INTEGER | n/a | PK | Entero positivo |
| reporte_ventas | periodo_inicio | DATE | n/a | NOT NULL | Inicio válido |
| reporte_ventas | periodo_fin | DATE | n/a | NOT NULL | Fin posterior al inicio |
| reporte_ventas | total_vendido | DECIMAL | 12,2 | NOT NULL, CHECK (>=0) | Total consolidado |
