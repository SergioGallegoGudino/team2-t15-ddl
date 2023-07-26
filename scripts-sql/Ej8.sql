DROP DATABASE IF EXISTS Los_directores;
CREATE DATABASE Los_directores;
USE Los_directores;

CREATE TABLE Despachos (
	numero int PRIMARY KEY,
    capacidad int
);

CREATE TABLE Directores (
	dni varchar(10) PRIMARY KEY,
    nomApels nvarchar(255),
    despacho int,
    FOREIGN KEY (despacho) REFERENCES Despachos(numero)
    ON UPDATE CASCADE ON DELETE CASCADE
);

ALTER TABLE Directores ADD COLUMN dniJefe varchar(10);
ALTER TABLE Directores ADD FOREIGN KEY(dniJefe) REFERENCES Directores(dni) ON UPDATE CASCADE ON DELETE CASCADE;

