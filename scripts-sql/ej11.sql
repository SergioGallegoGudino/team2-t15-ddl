create database investigadores;
use investigadores;
create table facultad (
	codigo int,
    nombre varchar(255),
    primary key(codigo)
);
create table investigadores (
	dni varchar(8),
    nomApels varchar(255),
    facultad int,
    primary key(dni),
	FOREIGN KEY (facultad) references facultad(codigo) on delete cascade on update cascade    
);
create table equipos (
	numSerie char(4),
    nombre varchar(100),
    facultad int,
    primary key(numSerie),
	FOREIGN KEY (facultad) references facultad(codigo) on delete cascade on update cascade    
);
create table reserva (
	dni varchar(8),
    numSerie char(4),
    comienzo datetime,
    fin datetime,
    primary key(dni,numSerie),
	FOREIGN KEY (dni) references investigadores(dni) on delete cascade on update cascade,    
	FOREIGN KEY (numSerie) references equipos(numSerie) on delete cascade on update cascade    
);
