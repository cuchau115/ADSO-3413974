# 5 preguntas específicas no cerradas en la documentación

Cada pregunta nace de una frase del enunciado `assignment/Prueba_Tecnica_Tech_Lead_1.pdf` y tiene la forma que dejó como modelo el instructor: **un caso concreto de cálculo**. No amplían ni recortan el alcance del PDF. Se excluye a propósito la del instructor ("cómo es el cálculo de los impuestos en un grupo de artículos") porque ya la dio él como ejemplo.

## Criterio

- **Dentro del alcance:** cada pregunta se apoya en una línea textual del PDF.
- **Específica:** escenario con datos y números, y sub-preguntas exactas (no "¿cómo se calcula?", sino "¿se calcula X o Y, y en este caso dan 2,750 o 6,250?").
- **No cerrada en la documentación:** se indica qué asume hoy el proyecto y qué queda abierto.

---

## Pregunta 1 — Escala en dos tramos: ¿el porcentaje es marginal y se redondea una vez, o es acumulativo y se redondea por tramo?

**Frase del PDF que la origina:**
> "A partir de N unidades de un SKU o familia, se aplica un % sobre el valor de esas unidades. Las escalas son acumulativas por tramos."

**Escenario.** SKU `BEV-COLA-350` a 2,500 COP (escala 0). Tramos: 1–9 → 0 %, 10–19 → 5 %, 20+ → 10 %. Carrito: 25 unidades.

**Preguntas exactas.**
1. El 5 % ¿aplica solo a las unidades 10–19 (10 × 2,500 × 5 % = 1,250) y el 10 % solo a las 20–25 (6 × 2,500 × 10 % = 1,500), para un descuento de **2,750**? ¿O al alcanzar 20 unidades el 10 % aplica a **todas** las 25 (25 × 2,500 × 10 % = **6,250**)?
2. El porcentaje se calcula sobre el **precio unitario de lista** o sobre un valor ya afectado por otra palanca en el mismo SKU.
3. Si cada tramo diera una fracción (p. ej. 1,250.5 y 1,500.5), ¿se redondea **una sola vez** el total de la línea (HALF_UP → 2,751) o se redondea **cada tramo** antes de sumar (1,251 + 1,501 = 2,752)?

**Qué asume hoy la documentación.** Marginal, con un único redondeo por línea (`SPEC.md` BR-02, `A-01`, `RP-2`, `RF-1`).
**Qué queda abierto.** Confirmar el significado de "acumulativas" y el punto exacto de redondeo entre tramos.

---

## Pregunta 2 — Escala por familia: ¿cómo se reparten las unidades del tramo y el descuento entre SKUs distintos?

**Frase del PDF que la origina:**
> "A partir de N unidades de un SKU **o familia** […]."

**Escenario.** Familia `colas` con dos SKUs: SKU-A y SKU-B. Regla familiar: 12 → 5 %, 24 → 8 %. Carrito: SKU-A = 20 unidades, SKU-B = 8 unidades (28 en total).

**Preguntas exactas.**
1. El umbral (12, 24) se cuenta **sumando los SKUs de la familia**; ¿las unidades se asignan a los tramos en **orden de código de SKU**, agotando SKU-A (20) antes de tocar SKU-B?
2. Del total de 28 unidades, 12 caen en el tramo 5 % (unidades 12–23) y 5 en el 8 % (unidades 24–28). Esas **5 unidades del segundo tramo**, ¿se toman de SKU-A o de SKU-B? ¿A qué línea se imputa ese descuento?
3. Si el cliente envía las líneas en orden distinto (SKU-B primero), ¿el descuento total cambia o es idéntico?

**Qué asume hoy la documentación.** Unidades familiares asignadas a tramos en orden de SKU normalizado (`A-03`); el carrito se normaliza antes de calcular (`BR-00`).
**Qué queda abierto.** La regla de reparto del descuento entre las dos líneas cuando el tramo cruza el límite entre SKUs.

---

## Pregunta 3 — Obsequio: reglas simultáneas/encadenadas, y si un obsequio cuenta para otras condiciones o umbrales

**Frase del PDF que la origina:**
> "Al cumplir una condición de compra, se agregan unidades gratis de un SKU."

**Escenario.** R1: "1 agua gratis por cada 10 papas". R2: "1 chips gratis si el subtotal bruto pagado ≥ 50.00". Carrito: papas ×20 (a 3.00 c/u → 60.00), más lo necesario para cotizar.

**Preguntas exactas.**
1. R1 genera 2 aguas gratis con `unitPrice = 0`. Esas líneas de obsequio, ¿**cuentan o no** para el "subtotal bruto pagado ≥ 50.00" que evalúa R2?
2. Si R2 también se cumple, su obsequio (chips) ¿puede **reactivar R1** (encadenamiento), o cada regla se evalúa **una sola vez** sobre las líneas pagadas originales?
3. Cuando varias reglas de obsequio están activas a la vez, ¿en qué **orden** se evalúan y sus obsequios **se acumulan**?
4. Las unidades de obsequio, ¿cuentan como "unidades" para el **umbral de un descuento por escala** del mismo SKU?

**Qué asume hoy la documentación.** El obsequio se evalúa sobre cantidades **pagadas** y sobre un subtotal bruto **antes de descuentos** (`A-10`, `BR-04`), y las unidades de obsequio se excluyen de escalas y combos (`A-04`).
**Qué queda abierto.** El **encadenamiento entre varias reglas** y si un obsequio suma al subtotal de otra regla (la documentación no lo define).

---

## Pregunta 4 — Combo y escala sobre el mismo SKU: ¿las unidades consumidas por el combo cuentan para el umbral de escala?

**Frase del PDF que la origina:**
> "Sobre el precio actúan varias palancas comerciales que **pueden coexistir** en el mismo pedido […] Define y documenta el orden de aplicación."

**Escenario.** Combo {COLA ×2, CHIPS ×1} a 5,000. Descuento por escala sobre COLA: 20+ → 10 %. Carrito: COLA = 25, CHIPS = 10.

**Preguntas exactas.**
1. ¿Cuántas unidades de COLA consume el combo (múltiplos de su `minQty`) y cuántas quedan libres?
2. Las unidades libres, ¿alcanzan el tramo 20+ **contando** o **sin contar** las que consumió el combo? Ejemplo: si solo quedaran 5 libres, ¿reciben 10 % porque en el pedido hay 25 COLA, o 0 % porque libres < 20?
3. Si el precio de combo **no es beneficioso** (comboPrice ≥ valor de lista de las unidades), ¿se descarta el combo y esas unidades vuelven a la escala?

**Qué asume hoy la documentación.** El combo consume unidades primero; las consumidas no cuentan para el umbral ni reciben escala; el residual sí va a escala; un combo no beneficioso no consume nada (`BR-01`, `BR-03`, `A-04`).
**Qué queda abierto.** Confirmar esa precedencia y el conteo de unidades para el umbral.

---

## Pregunta 5 — Cupo de crédito: comparación exacta, qué total se compara y cuándo se refleja el consumo

**Frase del PDF que la origina:**
> "Un pedido a crédito solo procede si el total cabe en el cupo, y el cupo debe reflejar el consumo."

**Escenario.** Cupo = 500,000; consumido = 0; disponible = 500,000. Pedido cotizado con total = 500,000.

**Preguntas exactas.**
1. Un total **exactamente igual** al disponible, ¿**cabe** (`total ≤ disponible`) o **no cabe** (`total < disponible`)?
2. El "total" que se compara con el cupo, ¿incluye el **impuesto del obsequio** cuando la política del país es `TAXED`?
3. El cupo se refleja **al confirmar** (consumo) o debe **reservarse** al cotizar? Si dos cotizaciones caben y una se confirma, ¿la segunda debe fallar (409) aunque cuando se cotizó cabía?

**Qué asume hoy la documentación.** `fits = total ≤ available` (un total igual al disponible cabe); la cotización es **advisory** y no reserva; el consumo es **condicional** al confirmar (`BR-06`, `A-08`, `SPEC.md` §10.4).
**Qué queda abierto.** Confirmar el borde de igualdad, la composición del total comparado y si se espera reserva de cupo en el checkout.

---

## Nota

Las cinco apuntan a **cálculo y comportamiento exactos** (umbrales, redondeo, reparto, encadenamiento, comparación), no a decisiones de alto nivel. Si alguna quiere sustituirse, quedan como candidatas del mismo estilo: el **punto de redondeo del descuento de combo repartido por línea** y el **redondeo del impuesto cuando la base exacta queda a media unidad** — ambas descartadas aquí para no acercarse a la pregunta del instructor sobre impuestos.
