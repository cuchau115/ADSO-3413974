# B2. Modelo lógico relacional

## Tablas

1. `rol`
2. `usuario`
3. `mesa`
4. `pedido`
5. `categoria`
6. `producto`
7. `pedido_producto`
8. `inventario`
9. `movimiento_inventario`
10. `factura`
11. `pago`
12. `reporte_ventas`

## Reglas de transformación

| Regla | Aplicación |
|---|---|
| Relación N:M | PedidoProducto con PK compuesta `(id_pedido, id_producto)` |
| Relación 1:N | `pedido.id_mesa` referencia mesa; `usuario.id_rol` referencia rol |
| Generalización | Se implementa como tabla rol con usuarios que comparten los atributos; no se duplica por subtipo |
| Relación recursiva | No existe en el alcance actual; se declara que no se transforma |
| Atributo multivaluado | Permisos se modelan como tabla `permiso` y `rol_permiso` si se amplía; aquí `permiso` no se almacena como cadena |
| Relaciones 1:1 | Factura-Pago: factura tiene `id_pago UNIQUE` o pago tiene `id_factura UNIQUE` |

Todas las tablas tienen clave primaria. Las relaciones tienen claves foráneas y restricciones `NOT NULL`, `UNIQUE` o claves compuestas según participación.
