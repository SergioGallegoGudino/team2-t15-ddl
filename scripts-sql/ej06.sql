create database cine;
use cine;
create table peliculas (
	codigo int,
    nombre varchar(100),
    calificacionEdad int,
    primary key(codigo)
);
create table salas (
	codigo int,
    nombre varchar(100),
    pelicula int,
    primary key(codigo),
	FOREIGN KEY (pelicula) references peliculas(codigo) on delete cascade on update cascade
);