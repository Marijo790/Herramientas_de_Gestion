CREATE DATABASE sabia;
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT NOW()
);
INSERT INTO usuarios (nombre, correo, password, rol)
VALUES (
    'Docente SABIA',
    'docente@gmail.com',
    '$2b$10$R./x0MdQ3EJpWJYHabGn5edxoh0EzvAljFLBF.hcCoDa9TCID4Wx.',
    'docente'
);



/*aqui vamos empezamos con las tablas alumnos */

CREATE TABLE alumnos (
    id_alumno SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido_paterno VARCHAR(100),
    apellido_materno VARCHAR(100),
    edad INTEGER,
    nivel_alfabetizacion VARCHAR(50),
    id_docente INTEGER,
    
    CONSTRAINT fk_docente
    FOREIGN KEY(id_docente)
    REFERENCES usuarios(id_usuario)
);