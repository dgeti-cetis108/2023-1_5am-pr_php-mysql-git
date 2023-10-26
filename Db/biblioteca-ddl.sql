-- DDL: Data Definition Language
-- 1. Crear la base de datos
CREATE DATABASE biblioteca_grupoa
CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 2. Poner en uso la base recien creada
USE biblioteca_grupoa;

-- 3. Crear la tabla Autores
CREATE TABLE IF NOT EXISTS Autores (
    Id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Nombres VARCHAR(50) NOT NULL,
    PrimerApellido VARCHAR(25) NOT NULL,
    SegundoApellido VARCHAR(25) DEFAULT NULL
);

-- 4. Crear la tabla Editoriales
CREATE TABLE IF NOT EXISTS Editoriales (
    Id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) DEFAULT NULL,
    Domicilio VARCHAR(300) DEFAULT NULL,
    CorreoElectronico VARCHAR(200) DEFAULT NULL
);

-- 5. Crear la tabla Usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
    Id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Alias VARCHAR(20) NOT NULL UNIQUE,
    Contrasenia VARCHAR(200) NOT NULL,
    CorreoElectronico VARCHAR(200) NOT NULL UNIQUE,
    Recordatorio VARCHAR(200) DEFAULT NULL,
    Nombres VARCHAR(50) NOT NULL,
    PrimerApellido VARCHAR(25) NOT NULL,
    SegundoApellido VARCHAR(25) DEFAULT NULL
);

-- 6. Crear la tabla Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    Id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Nombres VARCHAR(50) NOT NULL,
    PrimerApellido VARCHAR(25) NOT NULL,
    SegundoApellido VARCHAR(25) DEFAULT NULL,
    Tipo ENUM('Alumno', 'Administrativo', 'Docente') NOT NULL,
    Telefono VARCHAR(20) NOT NULL
);

-- 7. Crear la tabla Libros
CREATE TABLE IF NOT EXISTS Libros (
    Id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(100) NOT NULL,
    Edicion YEAR(4) NOT NULL,
    Isbn VARCHAR(20) NOT NULL UNIQUE,
    Genero VARCHAR(50) NOT NULL,
    NumeroDePaginas SMALLINT UNSIGNED,
    Idioma VARCHAR(30) NOT NULL,
    EditorialId INT UNSIGNED NOT NULL,
    CONSTRAINT FK_Libros_Editoriales
        FOREIGN KEY (EditorialId)
        REFERENCES Editoriales (Id)
            ON UPDATE CASCADE
            ON DELETE RESTRICT
);

-- 8. Crear la tabla Ejemplares
CREATE TABLE IF NOT EXISTS Ejemplares (
    Id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    LibroId INT UNSIGNED NOT NULL,
    FechaDeIngreso DATE NOT NULL,
    Costo DOUBLE NOT NULL,
    Condiciones VARCHAR(200) NOT NULL,
    CONSTRAINT FK_Ejemplares_Libros
        FOREIGN KEY (LibroId)
        REFERENCES Libros (Id)
            ON UPDATE CASCADE
            ON DELETE RESTRICT
);