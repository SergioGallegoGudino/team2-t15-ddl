create database almacenes;
use almacenes;
create table almacenes (
	codigo int,
    lugar varchar(100),
    capacidad int,
    primary key(codigo)
);
create table cajas (
	numReferencias char(5),
    contenido varchar(100),
    valor int,
    almacen int,
    primary key(numReferencias),
	FOREIGN KEY (almacen) references almacenes(codigo) on delete cascade on update cascade
);