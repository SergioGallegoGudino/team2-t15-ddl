CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE editoriales(
	clave_editorial smallint PRIMARY KEY,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15)
);

CREATE TABLE temas(
	clave_temas int PRIMARY KEY,
    nombre varchar(60)
);

CREATE TABLE autores(
	clave_autor int PRIMARY KEY,
    nombre varchar(60)
);

CREATE TABLE libros(
	clave_libro int PRIMARY KEY,
    titulo varchar(60),
    idioma varchar(15),
    formato varchar(15),
    clave_editorial smallint,
    FOREIGN KEY (clave_editorial) REFERENCES editoriales(clave_editorial)
    on update cascade
);

CREATE TABLE ejemplar(
	clave_ejemplar int PRIMARY KEY,
    clave_libro int,
    numero_orden int,
    edicion varchar(60),
    ubicacion varchar(60),
    categoria varchar(60),
    FOREIGN KEY(clave_libro) REFERENCES libros(clave_libro)
);

CREATE TABLE socios(
	clave_socio int PRIMARY KEY,
    nombre varchar(60),
    direccion varchar(60),
    telefono int,
    categoria varchar(60)
);

CREATE TABLE prestamos(
	clave_socio int,
    clave_ejemplar int,
    numero_orden int,
    fecha_prestamos date,
	fecha_devolucion date,
    notas int,
    PRIMARY KEY(clave_socio, clave_ejemplar),
    FOREIGN KEY(clave_socio) REFERENCES socios(clave_socio)
	on update cascade
    on delete cascade,
	FOREIGN KEY(clave_ejemplar) REFERENCES ejemplar(clave_ejemplar)
	on update cascade
    on delete cascade
);

CREATE TABLE trata_sobre(
	clave_libro int,
    clave_tema int,
    PRIMARY KEY(clave_libro, clave_tema),
    FOREIGN KEY(clave_libro) REFERENCES libros(clave_libro)
	on update cascade
    on delete cascade,
    FOREIGN KEY(clave_tema) REFERENCES temas(clave_temas)
);

CREATE TABLE escrito_por(
	clave_libro int,
    clave_autor int,
	PRIMARY KEY(clave_libro, clave_autor),
    FOREIGN KEY(clave_libro) REFERENCES libros(clave_libro)
	on update cascade
    on delete cascade,
    FOREIGN KEY(clave_autor) REFERENCES autores(clave_autor)
	on update cascade
    on delete cascade
);
