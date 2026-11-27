# B7. Lista de chequeo aplicada a P1 y P2

Se registran 24 criterios medibles. Evidencia remite a archivos de las carpetas G2-P1 y G2-P2.

| ID | Artefacto | Criterio | Severidad | Cumple | Evidencia |
|---|---|---|---|---|---|
| LC-01 | Ficha | Hay 8 RF con ID | Crítico | Sí | P1/01-ficha-interpretacion.md |
| LC-02 | Ficha | Hay 4 RNF medibles | Crítico | Sí | P1/01-ficha-interpretacion.md |
| LC-03 | Clases | Hay al menos 12 clases | Mayor | Sí | P1/02-diagrama-clases.md |
| LC-04 | Clases | Los atributos tienen tipo | Mayor | Sí | P1/02-diagrama-clases.md |
| LC-05 | Clases | Las asociaciones tienen multiplicidad | Mayor | Sí | P1/02-diagrama-clases.md |
| LC-06 | Clases | Hay composición o agregación | Mayor | Sí | Mesa-Pedido y Pedido-Línea |
| LC-07 | Clases | Hay herencia o interfaz con dos implementaciones | Crítico | Sí | Usuario generaliza y calculadoras |
| LC-08 | Patrones | Hay Estrategia y Fachada | Mayor | Sí | P1/03-patrones-diseno.md |
| LC-09 | Arquitectura | Hay decisiones para 4 RNF | Crítico | Sí | P1/04-arquitectura.md |
| LC-10 | Componentes | Hay 6 componentes e interfaces | Mayor | Sí | P1/05-vista-componentes.md |
| LC-11 | Despliegue | Hay 3 nodos y protocolos | Mayor | Sí | P1/06-vista-despliegue.md |
| LC-12 | Trazabilidad | RF principales llegan a clase, tabla y componente | Crítico | Sí | P1/07-matriz-trazabilidad.md |
| LC-13 | Conceptual | Hay 12 entidades | Mayor | Sí | P2/01-modelo-conceptual.md |
| LC-14 | Conceptual | Todas las relaciones muestran cardinalidad | Mayor | Sí | P2/01-modelo-conceptual.md |
| LC-15 | Conceptual | Existe relación N:M | Crítico | Sí | Pedido-PedidoProducto-Producto |
| LC-16 | Conceptual | Existe relación 1:N | Crítico | Sí | Mesa-Pedido |
| LC-17 | Lógico | Hay al menos 10 tablas | Mayor | Sí | P2/02-modelo-logico.md |
| LC-18 | Lógico | Todas las tablas tienen PK | Crítico | Sí | modelo-sigres.sql |
| LC-19 | Lógico | Las N:M usan tabla intermedia | Crítico | Sí | pedido_producto |
| LC-20 | Normalización | Hay una llave compuesta y dependencia parcial | Crítico | Sí | P2/03-normalizacion.md |
| LC-21 | Normalización | Hay dependencia transitiva llevada a 3FN | Crítico | Sí | Pedido-Mesa |
| LC-22 | Diccionario | Todas las tablas y columnas tienen restricciones | Mayor | Sí | P2/04-diccionario-datos.md |
| LC-23 | SQL | Hay al menos 3 CHECK y 3 ON DELETE | Crítico | Sí | modelo-sigres.sql |
| LC-24 | Seguridad | Hay 8 políticas y 3 roles | Crítico | Sí | P2/06-seguridad.md |

## Registro de hallazgos

| Hallazgo | Evidencia | Corrección |
|---|---|---|
| La relación Pedido-Producto podía perder cantidad y observación | Modelo inicial | Se creó PedidoProducto con clave compuesta |
| Una consulta podía saltar el control por rol | Dependencia directa pantalla-datos | Se añadió autenticación entre presentación y servicios |
| El borrador inicial mezclaba dependencias de mesa en pedido | Modelo lógico preliminar | Se separaron mesa y pedido y se documentó 3FN |
