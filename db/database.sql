-- Crea la base de datos si no existe
CREATE DATABASE IF NOT EXISTS users_crud_php; 
-- Selecciona la base de datos para usarla
USE users_crud_php; 

-- Crea la tabla 'users' si no existe
CREATE TABLE IF NOT EXISTS users (
    id INT(11) NOT NULL AUTO_INCREMENT, -- Columna ID, entero, no nulo, auto-incrementable, clave primaria
    name VARCHAR(100) NOT NULL,         -- Nombre del usuario, cadena de hasta 100 caracteres, no nulo
    lastname VARCHAR(100) NOT NULL,     -- Apellido del usuario, cadena de hasta 100 caracteres, no nulo
    username VARCHAR(50) NOT NULL,      -- Nombre de usuario, cadena de hasta 50 caracteres, no nulo
    password VARCHAR(255) NOT NULL,     -- Contraseña (hash), cadena de hasta 255 caracteres, no nulo
    email VARCHAR(100) NOT NULL,        -- Correo electrónico, cadena de hasta 100 caracteres, no nulo
    PRIMARY KEY (id)                    -- Define 'id' como la clave primaria
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; -- Usa el motor InnoDB y el conjunto de caracteres UTF8 de 4 bytes

-- Opcional: Insertar un usuario de prueba
-- Inserta un registro de ejemplo en la tabla 'users'
-- NOTA: 'admin123' aquí es una contraseña en texto plano, en una aplicación real debería ser un hash.
INSERT INTO users (name, lastname, username, password, email) VALUES ('Admin', 'Sistema', 'admin', 'admin123', 'admin@correo.com'); 