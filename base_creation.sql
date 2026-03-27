-- Base de datos para registro de libros en una biblioteca (3NF)

SET FOREIGN_KEY_CHECKS = 1;

-- Tabla Autores
CREATE TABLE Autores (
    ID_Autor   INT PRIMARY KEY,
    Nombre_Autor VARCHAR(255) NOT NULL
);

-- Editores
CREATE TABLE Editores (
    ID_Editor   INT PRIMARY KEY,
    Nombre_Editor VARCHAR(255) NOT NULL
);

-- Libros
CREATE TABLE Libros (
    ID_Libro    INT PRIMARY KEY,
    Titulo_Libro VARCHAR(255) NOT NULL,
    ID_Autor    INT,
    ID_Editor   INT,
    FOREIGN KEY (ID_Autor) REFERENCES Autores(ID_Autor),
    FOREIGN KEY (ID_Editor) REFERENCES Editores(ID_Editor)
);

-- Insercion de datos
INSERT INTO Autores (ID_Autor, Nombre_Autor) VALUES
(1, 'Gabriel García Márquez'),
(2, 'Isabel Allende'),
(3, 'Mario Vargas Llosa');

INSERT INTO Editores (ID_Editor, Nombre_Editor) VALUES
(1, 'Editorial Sudamericana'),
(2, 'Editorial Alfaguara'),
(3, 'Editorial Seix Barral');

INSERT INTO Libros (ID_Libro, Titulo_Libro, ID_Autor, ID_Editor) VALUES
(1, 'Cien años de soledad', 1, 1),
(2, 'La casa de los espíritus', 2, 2),
(3, 'La fiesta del chivo', 3, 3);