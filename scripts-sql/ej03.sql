create database tienda_informatica;
use tienda_informatica;
create table fabricantes (
	codigo int,
    nombre varchar(100),
    primary key(codigo)
);
create table articulos (
	codigo int,
    nombre varchar(100),
    precios int,
    cod_fabricante int,
    primary key(codigo),
	FOREIGN KEY (cod_fabricante) references fabricantes(codigo) on delete cascade on update cascade
);