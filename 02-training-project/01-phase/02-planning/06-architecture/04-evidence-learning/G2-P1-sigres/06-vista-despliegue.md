# A6. Vista de despliegue

La fuente editable está en `06-vista-despliegue.mmd` y la imagen exportada en `06-vista-despliegue.svg`.

| Nodo | Artefactos alojados | Conexión | RNF atendido |
|---|---|---|---|
| Cliente web | Aplicación responsive, caché de menú | HTTPS/TLS 1.2, puerto 443 | RNF-01, RNF-03 |
| Servidor de aplicación | Spring Boot, servicios REST, caché local, logs | TCP privado hacia datos; puerto 5432 | RNF-01, RNF-02 |
| Servidor de datos | PostgreSQL, backups cifrados | Solo acepta conexiones del servidor de aplicación | RNF-04 y confidencialidad |
