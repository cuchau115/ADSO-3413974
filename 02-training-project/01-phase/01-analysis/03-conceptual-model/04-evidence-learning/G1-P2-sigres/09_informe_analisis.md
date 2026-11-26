# Informe de análisis — SIGRES

## Alcance e interpretación de requisitos

El análisis de SIGRES cubre pedidos, cocina, menú, inventario, caja, mesas, clientes por QR y reportes. Los 17 requisitos funcionales se interpretaron como objetivos de actores y se relacionaron con los casos CU-01 a CU-17. Los tres casos más relevantes para este producto son:

- **CU-04 Registrar pedido:** relacionado con RF04 y RF10. El pedido tiene al menos un producto, genera identificador único, ocupa la mesa y envía una comanda a cocina.
- **CU-16 Ver menú digital por QR:** relacionado con RF16, RF08, RF09 y IU-12. El acceso es público, no permite crear pedidos y depende de un QR asociado a una mesa.
- **CU-17 Consultar consumo actual:** relacionado con RF17. El cliente consulta productos, cantidades, subtotales y estados sin modificar el pedido.

Los requisitos no funcionales se consideran restricciones transversales. Para CU-04 se destacan la usabilidad móvil (RNF-07), la actualización en menos de 5 segundos (RNF-17) y la persistencia ante fallos (RNF-19). Para el QR se destacan carga y visualización móvil (RNF-09 y RNF-15), disponibilidad (RNF-18) y acceso público seguro (RNF-03). La trazabilidad funcional completa se muestra en [10_matriz_trazabilidad.md](./10_matriz_trazabilidad.md).

## Enlaces a los modelos

- Procesos críticos: [02_diagramas_actividades.md](./02_diagramas_actividades.md)
- Intención y acciones: [03_plantillas_casos_uso.md](./03_plantillas_casos_uso.md)
- Conceptos del negocio: [04_modelo_dominio.md](./04_modelo_dominio.md)
- Datos persistentes: [05_modelo_entidad_relacion.md](./05_modelo_entidad_relacion.md)
- Pantallas: [06_prototipo_inicial.md](./06_prototipo_inicial.md)
- Resultados de validación: [07_lista_chequeo.md](./07_lista_chequeo.md)
- Correcciones: [08_registro_ajustes.md](./08_registro_ajustes.md)

## Resultado de la verificación

La matriz funcional reporta una cobertura de 17/17 RF, equivalente al 100 %. Los dos diagramas contienen inicio, fin, calles por actor, decisiones con guardas y una justificación escrita de concurrencia. Las tres plantillas incluyen precondiciones, 6 pasos o más, flujo alterno, excepción y postcondiciones. El dominio contiene 18 clases, 5 especializaciones y multiplicidades. El MER declara pata de gallo, identificadores, cardinalidades y participación.

La relación Pedido-Producto se resolvió con PedidoProducto y atributos propios. PedidoProducto es débil respecto de Pedido y Producto. Las pantallas están rotuladas con CU-16, CU-17 y CU-04. Aún no existe evidencia de pruebas físicas o datos reales; las verificaciones son revisión documental del análisis y deben completarse en el siguiente nivel de la metodología.

## Ajustes realizados

Se separó claramente el menú digital del consumo por mesa. Se completaron las ramas de mesa ocupada, pedido activo vacío y QR inválido. Se verificó que el modelo de dominio no contiene métodos ni claves técnicas. Se añadió la entidad asociativa PedidoProducto y se eliminó del prototipo QR cualquier acción de registro o modificación de pedidos. Finalmente, se revisó la matriz para asegurar que los 17 RF lleguen hasta un CU, una plantilla o diagrama, una clase de dominio y una entidad del MER.
