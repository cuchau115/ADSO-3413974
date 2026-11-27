# Guía 2 — Producto 1: Diseño de la solución SIGRES

## 1. Datos de la entrega

| Campo | Valor |
|---|---|
| Producto | P1 — artefactos de diseño |
| Usuario de GitHub del autor | cuchau115 |
| Ficha | 3413974 |
| Caso elegido | SIGRES — Sistema Integral de Gestión para Restaurantes |
| Informe de análisis / SRS | [G1-P1](../../../../01-analysis/03-conceptual-model/04-evidence-learning/G1-P1-sigres/) y [G1-P2](../../../../01-analysis/03-conceptual-model/04-evidence-learning/G1-P2-sigres/) |
| Trabajo en equipo del insumo | Sí: el SRS y el modelo parten del trabajo SIGRES del equipo de cuatro integrantes |

## 2. Origen del insumo y trabajo en equipo

- El SRS, la normativa, el plan de análisis y el modelo de G1 son insumos reutilizados del trabajo del equipo.
- Los ajustes, el diagrama de clases, patrones, arquitectura, componentes, despliegue y trazabilidad son de autoría individual de cuchau115.
- No se declararon como propios plantillas ni ejemplos del instructor; se utilizaron únicamente como formatos.

## 3. Qué reutilicé, qué ajusté y qué hice nuevo

| Artefacto | Archivo | Origen | Ajuste |
|---|---|---|---|
| Requisitos | `01-ficha-interpretacion.md` | G1 P1/P2 | Se seleccionaron 8 RF y 4 RNF medibles |
| Clases | `02-diagrama-clases.md` | Modelo de dominio G1 | Se añadieron atributos tipados, métodos, relaciones, composición y estrategia |
| Patrones | `02-diagrama-clases.md` | Nuevo | Se aplicaron Estrategia y Fachada |
| Arquitectura | `04-arquitectura.md` | Nuevo | Se definieron decisiones para 4 RNF |
| Componentes | `05-vista-componentes.md` | Nuevo | Se definieron 6 componentes e interfaces |
| Despliegue | `06-vista-despliegue.md` | Nuevo | Se definieron 3 nodos, artefactos y protocolos |
| Trazabilidad | `07-matriz-trazabilidad.md` | G1 matrices | Se llevó cada requisito a clase, tabla y componente |

Cambios con enlaces reales:

| # | Cambio | Commit |
|---|---|---|
| 1 | Diseño de clases y patrones | [30e8e51](https://github.com/cuchau115/ADSO-3413974/commit/30e8e51) |
| 2 | Arquitectura y componentes | [30e8e51](https://github.com/cuchau115/ADSO-3413974/commit/30e8e51) |
| 3 | Despliegue y trazabilidad | [30e8e51](https://github.com/cuchau115/ADSO-3413974/commit/30e8e51) |

**Qué reutilicé:** los 17 RF, 31 RNF, actores y modelo conceptual de G1.

**Qué ajusté:** convertí conceptos de negocio en clases diseñadas con responsabilidades, tipos, multiplicidades y decisiones técnicas trazables.

**Qué hice nuevo:** patrones GoF, arquitectura por capas, interfaces de componentes, nodos de despliegue y matriz de trazabilidad.

## 4. Artefactos entregados

- [A1 ficha de interpretación](./01-ficha-interpretacion.md)
- [A2 diagrama de clases](./02-diagrama-clases.md)
- [A2 fuente Mermaid](./02-diagrama-clases.mmd)
- [A2 imagen SVG](./02-diagrama-clases.svg)
- [A3 patrones de diseño](./03-patrones-diseno.md)
- [A4 arquitectura](./04-arquitectura.md)
- [A5 componentes](./05-vista-componentes.md)
- [A5 fuente Mermaid](./05-vista-componentes.mmd)
- [A5 imagen SVG](./05-vista-componentes.svg)
- [A6 despliegue](./06-vista-despliegue.md)
- [A6 fuente Mermaid](./06-vista-despliegue.mmd)
- [A6 imagen SVG](./06-vista-despliegue.svg)
- [A7 trazabilidad](./07-matriz-trazabilidad.md)

## 5. Autoverificación

- [x] A1: 8 RF, 4 RNF y plataforma justificada.
- [x] A2: 12 clases, tipos, métodos, multiplicidades, agregación/composición, generalización e interfaz con dos implementaciones.
- [x] A3: Estrategia y Fachada.
- [x] A4: arquitectura y decisiones para 4 RNF.
- [x] A5: 6 componentes e interfaces.
- [x] A6: 3 nodos, artefactos y protocolos.
- [x] A7: trazabilidad análisis-diseño.
- [x] Fuentes editables e imágenes SVG de los diagramas principales.

## 6. Historial de commits

| Día | Avance |
|---|---|
| 27/11/2026 | Diseños iniciales y artefactos P1 publicados |

## 7. Uso de inteligencia artificial

| Herramienta | Para qué | Verificación |
|---|---|---|
| GitHub Copilot en VS Code | Organizó borradores Markdown, Mermaid y trazabilidad a partir de G1. | Contraste manual con la rúbrica G2 y los requisitos de SIGRES. |
| Open Code | Apoyo previo de estructura y planificación. | No se entregó texto sin validar; revisé cantidades y coherencia. |

## 8. Enlaces

- Carpeta G1-P1: [G1-P1-sigres](../../../../01-analysis/03-conceptual-model/04-evidence-learning/G1-P1-sigres/)
- Carpeta G1-P2: [G1-P2-sigres](../../../../01-analysis/03-conceptual-model/04-evidence-learning/G1-P2-sigres/)
- Carpeta G2-P2: [G2-P2-sigres](../G2-P2-sigres/)

## 9. Declaración de autoría

Declaro que los ajustes y artefactos nuevos son de mi autoría, que identifiqué los insumos de equipo y que puedo explicar cada decisión sin leer un texto preparado.

**Usuario:** cuchau115 — **Fecha:** 27/11/2026
