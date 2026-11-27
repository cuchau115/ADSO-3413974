PRAGMA foreign_keys = ON;

CREATE TABLE rol (
  id_rol INTEGER PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE usuario (
  id_usuario INTEGER PRIMARY KEY,
  id_rol INTEGER NOT NULL,
  nombre VARCHAR(80) NOT NULL,
  correo VARCHAR(120) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  password_salt VARCHAR(64) NOT NULL,
  FOREIGN KEY (id_rol) REFERENCES rol(id_rol) ON DELETE RESTRICT
);

CREATE TABLE mesa (
  id_mesa INTEGER PRIMARY KEY,
  numero INTEGER NOT NULL UNIQUE CHECK (numero > 0),
  capacidad INTEGER NOT NULL CHECK (capacidad > 0),
  estado VARCHAR(20) NOT NULL CHECK (estado IN ('disponible','ocupada','reservada'))
);

CREATE TABLE pedido (
  id_pedido INTEGER PRIMARY KEY,
  id_mesa INTEGER NOT NULL,
  id_usuario INTEGER NOT NULL,
  fecha_hora TEXT NOT NULL,
  estado VARCHAR(20) NOT NULL CHECK (estado IN ('abierto','enviado','cerrado','cancelado')),
  FOREIGN KEY (id_mesa) REFERENCES mesa(id_mesa) ON DELETE RESTRICT,
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE RESTRICT
);

CREATE TABLE categoria (
  id_categoria INTEGER PRIMARY KEY,
  nombre VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE producto (
  id_producto INTEGER PRIMARY KEY,
  id_categoria INTEGER NOT NULL,
  nombre VARCHAR(80) NOT NULL,
  precio DECIMAL(12,2) NOT NULL CHECK (precio >= 0),
  disponible BOOLEAN NOT NULL CHECK (disponible IN (0,1)),
  FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) ON DELETE RESTRICT
);

CREATE TABLE pedido_producto (
  id_pedido INTEGER NOT NULL,
  id_producto INTEGER NOT NULL,
  cantidad INTEGER NOT NULL CHECK (cantidad > 0),
  precio_unitario DECIMAL(12,2) NOT NULL CHECK (precio_unitario >= 0),
  observacion VARCHAR(200),
  PRIMARY KEY (id_pedido, id_producto),
  FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE CASCADE,
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto) ON DELETE RESTRICT
);

CREATE TABLE inventario (
  id_inventario INTEGER PRIMARY KEY,
  id_producto INTEGER NOT NULL UNIQUE,
  cantidad_actual INTEGER NOT NULL CHECK (cantidad_actual >= 0),
  cantidad_minima INTEGER NOT NULL CHECK (cantidad_minima >= 0),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto) ON DELETE CASCADE
);

CREATE TABLE movimiento_inventario (
  id_movimiento INTEGER PRIMARY KEY,
  id_inventario INTEGER NOT NULL,
  tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('entrada','salida','ajuste')),
  cantidad INTEGER NOT NULL CHECK (cantidad > 0),
  FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario) ON DELETE CASCADE
);

CREATE TABLE factura (
  id_factura INTEGER PRIMARY KEY,
  id_pedido INTEGER NOT NULL UNIQUE,
  numero_consecutivo VARCHAR(30) NOT NULL UNIQUE,
  fecha_hora TEXT NOT NULL,
  total DECIMAL(12,2) NOT NULL CHECK (total >= 0),
  FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido) ON DELETE RESTRICT
);

CREATE TABLE pago (
  id_pago INTEGER PRIMARY KEY,
  id_factura INTEGER NOT NULL UNIQUE,
  metodo VARCHAR(30) NOT NULL,
  monto DECIMAL(12,2) NOT NULL CHECK (monto > 0),
  estado VARCHAR(20) NOT NULL CHECK (estado IN ('pendiente','confirmado','reversado')),
  FOREIGN KEY (id_factura) REFERENCES factura(id_factura) ON DELETE RESTRICT
);

CREATE TABLE reporte_ventas (
  id_reporte INTEGER PRIMARY KEY,
  periodo_inicio TEXT NOT NULL,
  periodo_fin TEXT NOT NULL,
  total_vendido DECIMAL(12,2) NOT NULL CHECK (total_vendido >= 0),
  CHECK (periodo_fin >= periodo_inicio)
);
