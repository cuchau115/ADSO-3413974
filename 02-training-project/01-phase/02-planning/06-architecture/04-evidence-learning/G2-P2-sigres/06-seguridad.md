# B6. Políticas de seguridad

## Integridad

1. Todas las claves foráneas tienen `ON DELETE` declarado y no permiten huérfanos.
2. Los valores críticos usan `CHECK`: cantidades positivas, estado válido y rango de fechas.
3. Los registros financieros usan tipo decimal y no permiten montos negativos.
4. Los cambios de pedido y pago se ejecutan en transacciones ACID.

## Confidencialidad

5. Las contraseñas usan hash Argon2/bcrypt con sal aleatoria; no se almacenan ni cifran como texto reversible.
6. Los datos personales se usan solo con finalidad operativa y tráfico HTTPS/TLS 1.2+.
7. Los documentos fiscales requieren autorización y se registran los accesos.

## Disponibilidad

8. Se realizan respaldos diarios cifrados y una restauración de prueba mensual.
9. La aplicación mantiene el mínimo viable de servicios separados y el backup de PostgreSQL.

## Matriz de roles

| Rol | usuario | pedido / pedido_producto | producto / inventario | factura / pago | reporte_ventas |
|---|---|---|---|---|---|
| Administrador | SELECT, INSERT, UPDATE, DELETE | SELECT, UPDATE | CRUD completo | SELECT, UPDATE | SELECT, INSERT, UPDATE |
| Mesero | SELECT (perfil propio) | SELECT, INSERT, UPDATE del pedido asignado | SELECT | SELECT factura propia | No |
| Cajero | SELECT (perfil propio) | SELECT | SELECT | SELECT, INSERT, UPDATE | SELECT de ventas |
