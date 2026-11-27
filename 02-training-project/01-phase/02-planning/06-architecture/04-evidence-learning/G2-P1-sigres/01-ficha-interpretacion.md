# A1. Ficha de interpretación y plataforma

## Requisitos funcionales seleccionados

| ID | Requisito interpretado |
|---|---|
| RF-01 | Registrar usuarios y asignarles un rol |
| RF-03 | Gestionar roles y permisos |
| RF-04 | Registrar pedidos asociados a una mesa |
| RF-05 | Enviar automáticamente el pedido registrado a cocina |
| RF-08 | Administrar productos del menú |
| RF-10 | Registrar entradas y salidas de inventario |
| RF-12 | Generar factura para un pedido cerrado |
| RF-16 | Mostrar el menú digital mediante QR |

## Requisitos no funcionales

| ID | Métrica |
|---|---|
| RNF-01 | Consultar el menú y el consumo en 2 segundos con hasta 30 usuarios concurrentes |
| RNF-02 | Controlar el acceso por rol; una sesión no autorizada debe ser rechazada |
| RNF-03 | Mantener datos en tránsito cifrados mediante TLS 1.2 o superior |
| RNF-04 | La base de datos debe conservar integridad referencial ante operaciones de borrado |

## Actores y restricciones

- Actores: administrador, mesero, cajero, cocinero, gerente y cliente por QR.
- Restricciones: ficha 3413974, entrega en formato Markdown/Mermaid/SVG, presupuesto limitado y equipo pequeño.

## Plataforma propuesta

Se propone **Java con Spring Boot** para la lógica de negocio por su tipado fuerte, modularidad, soporte para servicios REST y experiencia técnica del grupo. La interfaz será web responsive. Se propone **PostgreSQL** por su integridad referencial, transacciones ACID, restricciones y soporte de claves foráneas con acciones referenciales.
