# A3. Patrones de diseño

| Patrón | Problema SIGRES | Aplicación | Mejora |
|---|---|---|---|
| Estrategia | El total puede calcularse con IVA o promoción según la política vigente | `Pedido` usa `ICalculadoraFactura`; `CalculadoraIVA` y `CalculadoraPromocional` implementan la interfaz | Permite agregar políticas sin modificar el flujo de facturación |
| Fachada | Los casos de uso deben coordinar pedidos, stock y cocina sin exponer servicios internos | `SIGRESFacade` ofrece métodos como `registrarPedido()`, `generarFactura()` y `consultarConsumo()` | Reduce acoplamiento de la presentación y simplifica los casos de uso |

Los patrones son diferentes de Singleton y están trazados a clases del diagrama A2.
