# Anexo B - Lista de chequeo diligenciada

| # | Criterio verificable | Artefacto | ¿Cumple? | Evidencia | Hallazgo |
|---|---|---|---|---|---|
| 1 | Los 17 requisitos funcionales aparecen en al menos un caso de uso | Matriz P1 | Sí | [Matriz P1](../G1-P1-sigres/01_plan_analisis.md) | 17 de 17 RF cubiertos |
| 2 | CU-04 tiene flujo principal de al menos 6 pasos | Plantilla CU-04 | Sí | [Plantilla CU-04](./03_plantillas_casos_uso.md) | Paso 1 a 9 completos |
| 3 | CU-16 tiene flujo principal de al menos 6 pasos | Plantilla CU-16 | Sí | [Plantilla CU-16](./03_plantillas_casos_uso.md) | Paso 1 a 8 completos |
| 4 | CU-17 tiene flujo principal de al menos 6 pasos | Plantilla CU-17 | Sí | [Plantilla CU-17](./03_plantillas_casos_uso.md) | Paso 1 a 8 completos |
| 5 | Cada plantilla tiene al menos un flujo alterno y una excepción | Plantillas | Sí | [Tres plantillas](./03_plantillas_casos_uso.md) | Cada plantilla contiene ambos |
| 6 | Cada concepto usado en las plantillas existe en el dominio | Dominio | Sí | [Modelo de dominio](./04_modelo_dominio.md) | Mesa, Pedido, Producto, Factura, Inventario y otros están definidos |
| 7 | Las ramas de los diagramas aparecen en la plantilla correspondiente | Actividades y plantillas | Sí | [Actividades](./02_diagramas_actividades.md) y [Plantillas](./03_plantillas_casos_uso.md) | Se verificaron pedido activo, datos incompletos, QR válido y consumo vacío |
| 8 | Las decisiones cubren todas las alternativas de salida | Actividades | Sí | [Ambas actividades](./02_diagramas_actividades.md) | Hay ramas positivas y negativas; el final usa resultado alterno |
| 9 | El dominio tiene 8 o más clases conceptuales | Dominio | Sí | [Modelo de dominio](./04_modelo_dominio.md) | Se incluyen 18 clases distintas |
| 10 | Al menos 5 clases tienen 2 o más atributos de negocio | Dominio | Sí | [Lista de clases](./04_modelo_dominio.md) | Usuario, Pedido, Mesa, Producto, Factura, Pago y otras cumplen |
| 11 | El dominio no contiene métodos ni claves foráneas | Dominio | Sí | [Modelo de dominio](./04_modelo_dominio.md) | Solo conceptos y atributos de negocio |
| 12 | El MER declara la notación utilizada | MER | Sí | [Encabezado del MER](./05_modelo_entidad_relacion.md) | Pata de gallo declarada |
| 13 | La relación Pedido-Producto N:M está resuelta | MER | Sí | [Resolución N:M](./05_modelo_entidad_relacion.md) | PedidoProducto con cantidad, precio y observación |
| 14 | Existe entidad débil o relación recursiva | MER | Sí | [Entidades débiles](./05_modelo_entidad_relacion.md) | PedidoProducto depende de Pedido y Producto |
| 15 | Las tres pantallas están rotuladas con su caso de uso | Prototipo | Sí | [Pantallas](./06_prototipo_inicial.md) | CU-16, CU-17 y CU-04 rotulados |
| 16 | Los RNF críticos están considerados en la verificación | Informe | Sí | [Informe](./09_informe_analisis.md) | Seguridad, rendimiento, usabilidad y fiabilidad identificados |
| 17 | La matriz relaciona cada RF con CU, clase y entidad | Matriz | Sí | [Matriz P2](./10_matriz_trazabilidad.md) | Cobertura funcional 17/17 |
| 18 | El README declara reutilización, ajustes, autoría e IA | README | Sí | [README P2](./README.md) | Campos completos y marcadores de commits pendientes |
