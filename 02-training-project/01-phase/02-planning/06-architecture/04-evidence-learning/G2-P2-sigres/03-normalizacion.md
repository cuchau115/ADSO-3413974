# B3. Normalización

## Tabla A: pedido_detalle de 0FN a 3FN

**0FN, llave compuesta:** `pedido_detalle(id_pedido, id_producto, nombre_producto, precio_producto, cantidad, observacion, nombre_categoria)`

**1FN:** se separan teléfonos o datos repetidos; en este diseño la observación y atributos son una sola valor por celda.

**2FN:** la llave compuesta implica depender parcialmente de sus componentes:

- `id_producto -> nombre_producto, precio_producto, nombre_categoria`
- `(id_pedido, id_producto) -> cantidad, observacion`

Resultado:

- `producto(id_producto PK, nombre, precio, id_categoria FK)`
- `pedido_producto(id_pedido, id_producto, cantidad, observacion, PRIMARY KEY(id_pedido,id_producto))`

## Tabla B: factura_cliente de 0FN a 3FN

**0FN:** `factura(id_factura, id_pedido, nombre_mesero, turno_mesero, id_mesa, numero_mesa, fecha_hora, total)`

**DF:**

- `id_pedido -> id_mesa, fecha_hora, total`
- `id_mesa -> numero_mesa`
- `id_pedido -> nombre_mesero, turno_mesero`

**2FN:** se separan pedido y datos de mesa.

**3FN:** se elimina la dependencia transitiva `pedido -> mesa -> numero_mesa` y las responsabilidades del mesero se mantienen en usuario/rol.

Resultado:

- `pedido(id_pedido PK, id_mesa FK, id_usuario FK, fecha_hora, estado)`
- `mesa(id_mesa PK, numero, capacidad, estado)`
- `usuario(id_usuario PK, id_rol FK, nombre, turno)`

No se desnormalizó ninguna tabla en el script entregado.
