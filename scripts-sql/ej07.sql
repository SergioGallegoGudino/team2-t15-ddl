create database directores;
use directores;
create table despachos (
	numero int,
    capacidad int,
    primary key(numero)
);
create table directores (
    dni varchar(8),
    nomApels varchar(255),
    dniJefe varchar(8),
    despacho int,
    primary key(dni),
	FOREIGN KEY (dniJefe) references directores(dni) on delete cascade on update cascade,
	FOREIGN KEY (despacho) references despachos(numero) on delete cascade on update cascade
);