-- Crear la tabla de usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Canciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    duracion INT NOT NULL,
    portada LONGTEXT NOT NULL,
    likes INT NULL DEFAULT 0,
    dislikes INT NULL DEFAULT 0,
    reproducciones INT NULL DEFAULT 0,
    fecha_lanzamiento DATE NOT NULL,
    archivo_mp3 LONGTEXT NOT NULL,
    genero VARCHAR(50) NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);

-- Insertar datos de ejemplo (opcional)

