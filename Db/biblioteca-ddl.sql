-- DDL: Data Definition Language
-- 1. Crear la base de datos
CREATE DATABASE biblioteca_php_a
CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 2. Poner en uso la base recien creada
USE biblioteca_php_a;

-- 3. Crear la tabla Autores
CREATE TABLE IF NOT EXISTS Autores (
    Id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Nombres VARCHAR(50) NOT NULL,
    PrimerApellido VARCHAR(25) NOT NULL,
    SegundoApellido VARCHAR(25) DEFAULT NULL
);

-- TODO: Definir el resto de las tablas para el modelo de biblioteca
