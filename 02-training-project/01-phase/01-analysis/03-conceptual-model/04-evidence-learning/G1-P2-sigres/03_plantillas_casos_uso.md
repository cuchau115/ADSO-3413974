# Plantillas extendidas de casos de uso

## Anexo A - CU-04 Registrar pedido

| Campo | Contenido |
|---|---|
| Identificador y nombre | CU-04 - Registrar pedido |
| Requisitos que atiende | RF04, RF10 (descuento de inventario asociado), RN-01 a RN-06 del pedido, RNF-07 y RNF-17 |
| Actor primario | Mesero |
| Actor secundario | Personal de cocina; Sistema QR no inicia pedidos |
| Objetivo | Registrar un pedido válido y enviarlo a cocina con el inventario actualizado |
| Precondiciones | El Mesero inició sesión; la mesa existe; el menú tiene productos disponibles |
| Disparador | El Mesero selecciona “Nuevo pedido” |
| Flujo principal | 1. El Mesero selecciona una mesa. 2. El sistema carga el menú disponible. 3. El Mesero indica el número de comensales. 4. El Mesero selecciona productos y cantidades. 5. El sistema actualiza cantidades y subtotales. 6. El Mesero confirma el pedido. 7. El sistema valida el pedido y genera un identificador único. 8. El sistema registra el pedido y envía la comanda a cocina. 9. El sistema actualiza la mesa e informa la confirmación. |
| Flujo alterno | 4a. Si la mesa ya tiene un pedido activo, el sistema pregunta si desea agregar productos. Si acepta, el Mesero selecciona los nuevos productos y continúa desde el paso 5. |
| Excepción | 7a. Si no hay mesa seleccionada o no hay al menos un producto, el sistema informa los campos requeridos y no registra el pedido. |
| Postcondiciones | Queda registrado el pedido, la mesa permanece ocupada y la comanda está disponible en cocina |
| Reglas de negocio | RN-01 Solo Mesero o Administrador registra pedidos. RN-02 Debe haber al menos un producto. RN-03 Comanda en máximo 5 segundos. RN-04 Identificador único. RN-05 Descuento automático de inventario. RN-06 Observaciones visibles en cocina. |
| Pantalla del prototipo | [PANTALLA CU-04](./06_prototipo_inicial.md#pantalla-3---cu-04-registrar-pedido) |

## Anexo A - CU-16 Ver menú digital por QR

| Campo | Contenido |
|---|---|
| Identificador y nombre | CU-16 - Ver menú digital por QR |
| Requisitos que atiende | RF16, RF08, RF09, IU-12, RN-01 a RN-06 del menú QR |
| Actor primario | Cliente |
| Actor secundario | Ninguno |
| Objetivo | Consultar el menú disponible de su mesa sin iniciar sesión |
| Precondiciones | Existe un código QR vigente asociado a una mesa; el cliente dispone de un dispositivo móvil |
| Disparador | El Cliente escanea el código QR |
| Flujo principal | 1. El Cliente escanea el QR. 2. El sistema valida el QR y identifica la mesa. 3. El sistema presenta el menú responsive organizado por categorías. 4. El Cliente selecciona una categoría. 5. El sistema muestra productos disponibles con precio e imagen. 6. El Cliente selecciona un producto. 7. El sistema muestra la descripción y disponibilidad del producto. 8. El Cliente puede finalizar la consulta o solicitar información de consumo. |
| Flujo alterno | 5a. Si un producto cambió de disponibilidad, el sistema lo muestra como “No disponible” sin permitir seleccionarlo para pedido. |
| Excepción | 2a. Si el QR es inválido, alterado o vencido, el sistema solicita escanear el código correcto y no muestra el menú. |
| Postcondiciones | El Cliente conserva una consulta válida del menú; no se crea ni modifica ningún pedido |
| Reglas de negocio | RN-01 Acceso público. RN-02 El QR no permite pedidos directos. RN-03 Productos agotados o inactivos marcados no disponibles. RN-04 Actualización en tiempo real. RN-05 QR único por mesa. RN-06 Interfaz responsive sin descarga. |
| Pantalla del prototipo | [PANTALLA CU-16](./06_prototipo_inicial.md#pantalla-1---cu-16-ver-menú-digital-por-qr) |

## Anexo A - CU-17 Consultar consumo actual

| Campo | Contenido |
|---|---|
| Identificador y nombre | CU-17 - Consultar consumo actual |
| Requisitos que atiende | RF17, RF16, RF04, IU-12, RN-01 a RN-06 del menú QR |
| Actor primario | Cliente |
| Actor secundario | Ninguno |
| Objetivo | Conocer el consumo registrado para su mesa sin modificarlo |
| Precondiciones | El Cliente accedió por un QR válido; existe acceso a los pedidos de la mesa |
| Disparador | El Cliente selecciona “Ver mi consumo” |
| Flujo principal | 1. El Cliente abre el menú desde el QR. 2. El sistema identifica la mesa. 3. El Cliente selecciona “Ver mi consumo”. 4. El sistema consulta los pedidos activos de la mesa. 5. El sistema lista productos y cantidades. 6. El sistema muestra precios unitarios y subtotal acumulado. 7. El sistema muestra el estado de cada pedido. 8. El Cliente recarga o abandona la consulta. |
| Flujo alterno | 4a. Si el Cliente recarga la página, el sistema actualiza el consumo y mantiene el contexto de la mesa. |
| Excepción | 4b. Si no existe pedido activo, el sistema informa que no hay consumo registrado y no presenta un total distinto de cero sin evidencia. |
| Postcondiciones | El Cliente obtiene la información actual; el pedido y la mesa no sufren cambios |
| Reglas de negocio | RN-01 Consulta pública sin autenticación. RN-02 No modifica pedidos ni permite registrar nuevos pedidos desde el QR. RN-03 Disponibilidad visible. RN-04 Información actualizada. RN-05 Mesa identificada por el QR. RN-06 Consulta móvil responsive. |
| Pantalla del prototipo | [PANTALLA CU-17](./06_prototipo_inicial.md#pantalla-2---cu-17-consultar-consumo-actual) |
