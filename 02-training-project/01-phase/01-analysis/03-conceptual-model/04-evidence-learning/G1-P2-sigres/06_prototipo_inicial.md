# Prototipo inicial

Las tres pantallas son bocetos conceptuales. Antes de implementarse, deben mantener los nombres y objetivos definidos en las plantillas y el modelo de dominio.

## Pantalla 1 - CU-16 Ver menú digital por QR

**Encabezado:** `SIGRES - Menú de mesa [número]`

Elementos:
- Código de mesa visible en el encabezado.
- Lista de categorías.
- Tarjetas con imagen, nombre, descripción, precio y disponibilidad.
- Estado “No disponible” para productos agotados o inactivos.
- Botón `Ver mi consumo`.
- Mensajes accesibles para QR inválido o menú vacío.
- Diseño responsive sin autenticación.

```text
+------------------------------------+
| Mesa 12                SIGRES      |
| Categorías: Entradas | Principales |
|------------------------------------|
| [Imagen] Hamburguesa clásica       |
| Precio: $[valor] | Disponible      |
| [Imagen] Jugo natural              |
| Precio: $[valor] | No disponible   |
|------------------------------------|
| [ Ver mi consumo ]                 |
+------------------------------------+
```

## Pantalla 2 - CU-17 Consultar consumo actual

**Encabezado:** `SIGRES - Consumo mesa [número]`

Elementos:
- Identificador de la mesa obtenido del QR.
- Tabla o tarjetas de productos pedidos.
- Cantidad, precio unitario, subtotal por línea y subtotal acumulado.
- Estado de cada pedido: Pendiente, En preparación o Entregado.
- Botón para actualizar el consumo.
- Mensaje de ausencia de consumo activo.
- Sin botones para crear o modificar pedidos.

```text
+------------------------------------+
| Consumo mesa 12                    |
|------------------------------------|
| Producto       Cant. Estado        |
| Hamburguesa      2   Entregado     |
| Jugo natural     2   Pendiente     |
|------------------------------------|
| Subtotal acumulado: $[valor]       |
| [ Actualizar ]                     |
+------------------------------------+
```

## Pantalla 3 - CU-04 Registrar pedido

**Encabezado:** `SIGRES - Nuevo pedido`

Elementos:
- Selección de mesa y estado actual.
- Campo de número de comensales.
- Categorías y productos disponibles.
- Cantidad por producto.
- Observaciones por producto.
- Resumen con subtotal.
- Confirmación del pedido.
- Mensajes de campos obligatorios y productos no disponibles.

```text
+------------------------------------+
| Nuevo pedido                       |
| Mesa: [lista]  Comensales: [ ]     |
|------------------------------------|
| Categoría: [lista]                 |
| Producto [ ] Cantidad [ ]          |
| Observaciones: [........................] |
|------------------------------------|
| Resumen                           |
| 2 x Producto = $[subtotal]         |
| [ Confirmar pedido ]               |
+------------------------------------+
```

## Referencia visual reutilizada

- Mockup aprobado: [Herramientas SIGRES](https://stitch.withgoogle.com/projects/12308260585995939873)
- Tablero del proyecto: [SIGRES en Trello](https://trello.com/b/J2QCldgd/sigres-gestion-y-desarrollo-del-proyecto)
