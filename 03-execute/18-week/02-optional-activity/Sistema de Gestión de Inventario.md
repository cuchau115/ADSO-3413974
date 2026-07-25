# Sistema de Gestión de Inventario

## Planteamiento General

### Problema

La empresa **Cóndor** cuenta con un sistema que permite registrar la llegada de productos y realizar las ventas. Sin embargo, durante su funcionamiento se identificaron dos problemas principales:

1. El sistema no controla el nivel de inventario de cada producto, permitiendo que se intenten realizar ventas cuando un producto ya no cuenta con existencias.
2. El sistema utiliza el método **LIFO (Last In, First Out)** para despachar los productos, ocasionando que los lotes más antiguos permanezcan almacenados hasta llegar a su fecha de vencimiento, generando pérdidas económicas.

### Objetivo

Desarrollar una solución que permita controlar automáticamente el inventario de los productos, alertando cuando el stock sea bajo, bloqueando la venta de productos agotados y administrando los lotes mediante el método **FIFO (First In, First Out)** para garantizar una adecuada rotación del inventario.

---

# Solución Propuesta

Se propone implementar un módulo de gestión de inventario que permita administrar el stock de cada producto desde su ingreso hasta su venta.

El sistema registrará cada lote de productos con su información correspondiente y controlará automáticamente el inventario disponible. Además, notificará cuando un producto alcance un nivel bajo de existencias, bloqueará las ventas cuando el inventario llegue a cero y utilizará el método **FIFO (First In, First Out)** para garantizar que los productos más antiguos sean vendidos primero.

### Características principales

- Registro de productos por lotes.
- Almacenamiento de la fecha de ingreso, cantidad y fecha de vencimiento.
- Monitoreo automático del porcentaje de inventario disponible.
- Alerta automática de **Stock Bajo**.
- Bloqueo automático de productos sin existencias.
- Despacho de productos mediante el método **FIFO**.
- Actualización automática del inventario después de cada venta.

---

# Funcionamiento General del Sistema

## Registro de Productos

### El encargado de inventario

1. Registra la llegada de un nuevo lote.
2. Ingresa la cantidad recibida.
3. Registra la fecha de vencimiento del lote.

### El sistema

1. Crea un nuevo lote para el producto.
2. Registra la fecha de ingreso.
3. Almacena la cantidad disponible.
4. Registra la fecha de vencimiento.
5. Actualiza el inventario total del producto.

---

## Control Automático del Inventario

### El sistema

1. Calcula continuamente el porcentaje de inventario disponible para cada producto.
2. Compara el porcentaje disponible con el límite mínimo configurado por la empresa.
3. Cuando el inventario alcanza el límite establecido, muestra una alerta de **Stock Bajo**.
4. Mantiene el producto disponible para la venta mientras existan unidades.

---

## Venta de Productos

### El vendedor

1. Selecciona el producto solicitado.
2. Indica la cantidad a vender.

### El sistema

1. Verifica que exista inventario disponible.
2. Si el inventario es igual a cero, bloquea la venta.
3. Muestra el estado **Sin stock**.
4. Si existe inventario, identifica el lote con mayor antigüedad.
5. Descuenta las unidades vendidas del lote aplicando el método **FIFO**.
6. Si el lote se agota, continúa con el siguiente lote más antiguo.
7. Actualiza automáticamente el inventario del producto.

---

## Actualización del Inventario

Después de cada venta, el sistema:

1. Actualiza la cantidad disponible del lote utilizado.
2. Recalcula el porcentaje de inventario del producto.
3. Verifica si el producto alcanzó el nivel de **Stock Bajo**.
4. Si el inventario llega a cero, cambia automáticamente el estado del producto a **Sin stock** y bloquea nuevas ventas.

---

# Control de Inventario

## Alerta de Stock Bajo

Cuando el porcentaje de inventario disponible alcance el límite mínimo configurado por la empresa, el sistema mostrará una alerta para informar que el producto requiere reabastecimiento.

Esta alerta permitirá tomar acciones antes de que el producto se agote.

---

## Producto Sin Stock

Cuando el inventario disponible llegue a cero, el sistema:

- Cambiará el estado del producto a **Sin stock**.
- Bloqueará automáticamente su venta.
- Informará al usuario que el producto no se encuentra disponible.

---

## Gestión de Lotes

Cada lote registrado almacenará la siguiente información:

| Campo | Descripción |
|--------|-------------|
| Fecha de ingreso | Fecha en la que el lote ingresó al inventario. |
| Cantidad | Número de unidades disponibles del lote. |
| Fecha de vencimiento | Fecha límite para su comercialización. |

Esta información permitirá identificar el orden de ingreso de los productos y controlar adecuadamente su rotación.

---

## Método FIFO

El sistema utilizará el método **FIFO (First In, First Out)** para realizar las ventas.

De esta forma, el primer lote que ingrese al inventario será el primero en salir, reduciendo el riesgo de vencimiento y mejorando la rotación de los productos.

---

# Riesgos Identificados

## Inventario insuficiente

**Solución**

- El sistema mostrará automáticamente una alerta cuando el inventario alcance el porcentaje mínimo configurado.

---

## Venta de productos agotados

**Solución**

- El sistema bloqueará la venta cuando el producto no tenga unidades disponibles.

---

## Vencimiento de productos

**Solución**

- El sistema administrará los lotes mediante el método **FIFO**, garantizando que los productos con mayor antigüedad sean vendidos primero.

---

## Registro incorrecto de lotes

**Solución**

- El sistema solicitará obligatoriamente la fecha de ingreso, la cantidad y la fecha de vencimiento de cada lote antes de almacenarlo.

---

# Reglas de Negocio

- **RN-01.** Cuando el porcentaje de inventario alcance el límite mínimo configurado, el sistema mostrará una alerta de **Stock Bajo**.

- **RN-02.** Mientras exista al menos una unidad disponible, el producto podrá seguir siendo vendido.

- **RN-03.** Cuando el inventario de un producto llegue a cero, el sistema cambiará automáticamente su estado a **Sin stock** y bloqueará nuevas ventas.

- **RN-04.** Cada lote registrado deberá almacenar la fecha de ingreso, la cantidad disponible y la fecha de vencimiento.

- **RN-05.** Las ventas se realizarán utilizando el método **FIFO**, seleccionando siempre el lote con mayor antigüedad.

- **RN-06.** Cuando un lote se agote, el sistema continuará automáticamente con el siguiente lote más antiguo.

- **RN-07.** Después de cada venta, el sistema actualizará el inventario y verificará si debe generar una alerta de **Stock Bajo** o cambiar el estado del producto a **Sin stock**.

