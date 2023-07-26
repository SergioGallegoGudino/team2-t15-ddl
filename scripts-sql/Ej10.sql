CREATE DATABASE grandes_almacenes;

USE grandes_almacenes;

CREATE TABLE cajeros(
	codigo int PRIMARY KEY,
    nomApels varchar(255)
);

CREATE TABLE productos(
	codigo int PRIMARY KEY,
    nombre varchar(100),
    precio int
);

CREATE TABLE maquinas_registradoras(
	codigo int PRIMARY KEY,
    piso int
);

CREATE TABLE ventas(
	cajero int,
    maquina int,
    producto int,
    PRIMARY KEY(cajero, maquina, producto),
    FOREIGN KEY(cajero) REFERENCES cajeros(codigo)
	on update cascade
    on delete cascade,
    FOREIGN KEY(maquina) REFERENCES maquinas_registradoras(codigo)
	on update cascade
    on delete cascade,
    FOREIGN KEY(producto) REFERENCES productos(codigo)
	on update cascade
    on delete cascade
);