# Guía 2 — Producto 2: Modelo de datos y verificación SIGRES

## 1. Datos de la entrega

| Campo | Valor |
|---|---|
| Producto | P2 — modelo de datos y verificación |
| Usuario de GitHub del autor | cuchau115 |
| Ficha | 3413974 |
| Caso elegido | SIGRES — Sistema Integral de Gestión para Restaurantes |
| Insumo G1 reutilizado | [G1-P2](../../../../01-analysis/03-conceptual-model/04-evidence-learning/G1-P2-sigres/) |

## 2. Origen del insumo y trabajo en equipo

El modelo conceptual, MER y trazabilidad inicial proceden del trabajo colectivo de SIGRES declarado en G1. La adaptación a modelo físico y la verificación son trabajo individual. No se entrega como propio el material vacío del instructor.

## 3. Qué reutilicé, qué ajusté y qué hice nuevo

| Artefacto | Archivo | Origen | Ajuste |
|---|---|---|---|
| MER conceptual | `01-modelo-conceptual.md` | G1 P2 | Se ajustaron 12 entidades, cardinalidades y participaciones |
| Modelo lógico | `02-modelo-logico.md` | Nuevo | Se creó la estructura de 10 tablas, PK, FK y reglas |
| Normalización | `03-normalizacion.md` | Nuevo | Se llevaron pedido_detalle y editorial a 3FN |
| Diccionario | `04-diccionario-datos.md` | Nuevo | Se definieron 100 % de columnas y restricciones |
| Script SQL | `modelo-sigres.sql` | Nuevo | Se creó e ejecutó sin errores en SQLite |
| Evidencia SQL | `ejecucion-sql.log` | Nuevo | Registro real de ejecución y conteo |
| Seguridad | `06-seguridad.md` | Nuevo | Se añadieron políticas y matriz de roles |
| Verificación | `07-lista-chequeo.md` | Nuevo | Se diligenciaron 24 criterios sobre P1 y P2 |

**Qué reutilicé:** entidad Pedido, Producto, Mesa, Usuario, Rol, Factura y Inventario de G1.

**Qué ajusté:** agregué identificadores técnicos, reglas de transformación, acciones referenciales y controles de seguridad.

**Qué hice nuevo:** normalización demostrada, diccionario completo, script ejecutable, evidencia y lista de chequeo.

Cambios con enlaces:

| # | Cambio | Enlace |
|---|---|---|
| 1 | Ajuste del MER a relaciones 1:N y N:M | [ENLACE_COMMIT_G2](ENLACE_COMMIT_G2) |
| 2 | Normalización 0FN-3FN y reglas de transformación | [ENLACE_COMMIT_G2](ENLACE_COMMIT_G2) |
| 3 | Script SQL, seguridad y verificación | [ENLACE_COMMIT_G2](ENLACE_COMMIT_G2) |

## 4. Artefactos entregados

- [Modelo conceptual](./01-modelo-conceptual.md)
- [Modelo lógico](./02-modelo-logico.md)
- [Normalización](./03-normalizacion.md)
- [Diccionario de datos](./04-diccionario-datos.md)
- [Script SQL](./modelo-sigres.sql)
- [Evidencia de ejecución](./ejecucion-sql.log)
- [Seguridad](./06-seguridad.md)
- [Lista de chequeo](./07-lista-chequeo.md)

## 5. Autoverificación

- [x] B1: 12 entidades, cardinalidades y relaciones N:M/1:N.
- [x] B2: 10 tablas, PK/FK y reglas de transformación.
- [x] B3: dos tablas normalizadas con llave compuesta y dependencia transitiva.
- [x] B4: diccionario completo.
- [x] B5: script ejecutado sin errores y tres FK con ON DELETE.
- [x] B6: 8 políticas, dos por principio; hash con sal, TLS y matriz de 3 roles.
- [x] B7: 24 criterios con evidencia.

## 6. Historial de commits

| Día | Avance |
|---|---|
| 27/11/2026 | Modelo lógico, SQL y verificación publicados |

## 7. Uso de inteligencia artificial

| Herramienta | Para qué | Verificación |
|---|---|---|
| GitHub Copilot en VS Code | Redacción inicial y organización de los artefactos. | Revisé nombres, relaciones, tipos y ejecuté el SQL con SQLite. |
| Open Code | Planificación previa de G2. | Verifiqué manualmente la rúbrica y eliminé contenido no evidenciado. |

## 8. Enlaces

- Producto G1 relacionado: [G1-P2-sigres](../../../../01-analysis/03-conceptual-model/04-evidence-learning/G1-P2-sigres/)
- Carpeta G2-P1: [G2-P1-sigres](../G2-P1-sigres/)

## 9. Declaración de autoría

Declaro que el ajuste y los artefactos nuevos son de mi autoría, que identifiqué el insumo colectivo y que puedo explicar el MER, las normalizaciones, el script y las políticas.

**Usuario:** cuchau115 — **Fecha:** 27/11/2026
