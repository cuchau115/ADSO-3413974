# A4. Arquitectura del software

## Estilo

SIGRES usa una arquitectura por **tres capas**, con comunicación HTTP/JSON entre presentación y servicios REST:

`Presentación -> Negocio -> Datos`

La presentación no accede directamente a PostgreSQL. Las capas se mantienen separadas para que los cambios de interfaz o persistencia tengan impacto limitado.

| RNF | Decisión | Alternativa descartada | Razón |
|---|---|---|---|
| RNF-01 ≤ 2 s con 30 usuarios | Caché del menú y consultas indexadas | Consulta directa sin índice | Reducir volumen y latencia en catálogo y consumo |
| RNF-02 autorización por rol | Filtro JWT y autorización en servicios | Validación solo en pantalla | Evita que llamadas REST omitan controles |
| RNF-03 TLS | HTTPS/TLS 1.2+ en el nodo cliente-aplicación | HTTP sin cifrado | Protege credenciales y datos personales |
| RNF-04 integridad referencial | Restricciones FK y transacciones ACID | Validación exclusiva en aplicación | PostgreSQL impide estados huérfanos |
