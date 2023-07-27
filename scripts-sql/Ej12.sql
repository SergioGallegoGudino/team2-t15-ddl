CREATE DATABASE academia_idiomas;
USE academia_idiomas;
CREATE TABLE profesores(
	nombre varchar(60),
    apellido1 varchar(60),
    apellido2 varchar(60),
    dni varchar(9) PRIMARY KEY,
    direccion varchar(200),
    titulo varchar(100),
    gana float
);

CREATE TABLE cursos(
	nombre_curso varchar(60) UNIQUE,
    codigo_curso int,
    dni_profesor varchar(9),
    maximo_alumnos int,
    fecha_inicio date,
    fecha_fin date,
    num_horas int NOT NULL,
	PRIMARY KEY(codigo_curso, dni_profesor, maximo_alumnos),
    FOREIGN KEY (dni_profesor) REFERENCES profesores(dni)
    on update cascade
    on delete cascade
);

CREATE TABLE alumnos(
	nombre varchar(60) UNIQUE,
    apellido1 varchar(60),
    apellido2 varchar(60),
    dni varchar(9) PRIMARY KEY,
    direccion varchar(200),
    sexo varchar(1),
    fecha_nacimiento date,
    codigo_curso int NOT NULL,
    FOREIGN KEY (codigo_curso) REFERENCES cursos(codigo_curso)
    on update cascade
    on delete cascade
);

INSERT INTO profesores (nombre, apellido1, apellido2, dni, direccion, titulo, gana) VALUES ('Ana', 'Pérez', 'Gómez', '12345678A', 'Calle Principal 123', 'Licenciatura en Idiomas', 2500.50);
INSERT INTO profesores (nombre, apellido1, apellido2, dni, direccion, titulo, gana) VALUES ('Carlos', 'López', 'Martínez', '98765432B', 'Avenida Secundaria 456', 'Máster en Enseñanza', 2800.75);
INSERT INTO profesores (nombre, apellido1, apellido2, dni, direccion, titulo, gana) VALUES ('María', 'García', 'Torres', '45678912C', 'Plaza Docente 789', 'Doctorado en Lingüística', 3100.25);
INSERT INTO profesores (nombre, apellido1, apellido2, dni, direccion, titulo, gana) VALUES ('Pedro', 'Sánchez', 'Ramírez', '78945612D', 'Paseo Profesor 101', 'Licenciatura en Filología', 2700.30);
INSERT INTO profesores (nombre, apellido1, apellido2, dni, direccion, titulo, gana) VALUES ('Laura', 'Fernández', 'Rodríguez', '65432198E', 'Carrera Maestro 202', 'Máster en Traducción', 3000.00);

INSERT INTO cursos (nombre_curso, codigo_curso, dni_profesor, maximo_alumnos, fecha_inicio, fecha_fin, num_horas) VALUES ('Inglés Básico', 101, '12345678A', 20, '2023-09-01', '2023-12-15', 80);
INSERT INTO cursos (nombre_curso, codigo_curso, dni_profesor, maximo_alumnos, fecha_inicio, fecha_fin, num_horas) VALUES ('Francés Intermedio', 102, '98765432B', 15, '2023-10-01', '2023-11-30', 60);
INSERT INTO cursos (nombre_curso, codigo_curso, dni_profesor, maximo_alumnos, fecha_inicio, fecha_fin, num_horas) VALUES ('Alemán Avanzado', 103, '45678912C', 12, '2023-11-01', '2024-02-29', 100);
INSERT INTO cursos (nombre_curso, codigo_curso, dni_profesor, maximo_alumnos, fecha_inicio, fecha_fin, num_horas) VALUES ('Italiano Básico', 104, '78945612D', 18, '2023-09-15', '2023-12-30', 75);
INSERT INTO cursos (nombre_curso, codigo_curso, dni_profesor, maximo_alumnos, fecha_inicio, fecha_fin, num_horas) VALUES ('Chino Intermedio', 105, '65432198E', 10, '2023-10-15', '2024-01-31', 90);

INSERT INTO alumnos (nombre, apellido1, apellido2, dni, direccion, sexo, fecha_nacimiento, codigo_curso) VALUES ('Juan', 'Gómez', 'Sánchez', '11111111A', 'Calle Principal 456', 'H', '2000-05-20', 101);
INSERT INTO alumnos (nombre, apellido1, apellido2, dni, direccion, sexo, fecha_nacimiento, codigo_curso) VALUES ('Elena', 'López', 'Martínez', '22222222B', 'Avenida Secundaria 789', 'M', '1998-09-12', 102);
INSERT INTO alumnos (nombre, apellido1, apellido2, dni, direccion, sexo, fecha_nacimiento, codigo_curso) VALUES ('Antonio', 'Ramírez', 'García', '33333333C', 'Plaza Docente 101', 'H', '2002-02-28', 103);
INSERT INTO alumnos (nombre, apellido1, apellido2, dni, direccion, sexo, fecha_nacimiento, codigo_curso) VALUES ('Isabel', 'Torres', 'Fernández', '44444444D', 'Paseo Profesor 202', 'M', '2001-11-05', 104);
INSERT INTO alumnos (nombre, apellido1, apellido2, dni, direccion, sexo, fecha_nacimiento, codigo_curso) VALUES ('David', 'Rodríguez', 'Sánchez', '55555555E', 'Carrera Maestro 404', 'H', '1999-07-18', 105);

update profesores set nombre = 'Carla' where dni = '12345678A';
update cursos set maximo_alumnos = 30 where codigo_curso = 3;
update alumnos set apellido1 = 'Carlos' where dni = '12345678A';

delete from cursos where codigo_curso = 101;
delete from profesores where dni = '65432198E';

select * from alumnos;
select * from cursos;
select * from profesores;