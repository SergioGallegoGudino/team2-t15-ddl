CREATE DATABASE estaciones_database;

USE estaciones_database;

CREATE TABLE estaciones(
	identificador int auto_increment PRIMARY KEY,
    latitud float,
    longitud float,
    altitud float
);

CREATE TABLE muestras(
	identificador_estacion int PRIMARY KEY,
    fecha date,
    temperatura_minima float,
    temperatura_maxima float,
    precipitaciones float,
    humedad_minima float,
    humedad_maxima float,
    velocidad_viento_minima float,
    velocidad_viento_maxima float,
    FOREIGN KEY(identificador_estacion) REFERENCES estaciones(identificador)
    on update cascade
    on delete cascade
);
