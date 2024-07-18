-- Parte 1: Crear entorno de trabajo
-- Crear una base de datos
-- Crear un usuario con todos los privilegios para trabajar con la base de datos recién creada.

Create database grupal5;
CREATE USER 'ejercicio5'@'localhost' IDENTIFIED BY 'hola1234';
GRANT ALL PRIVILEGES ON  grupal5.*TO 'ejercicio5'@'localhost';
FLUSH PRIVILEGES;


use grupal5;

-- Parte 2: Crear dos tablas.
CREATE TABLE Usuarios (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) DEFAULT NULL,
  apellido VARCHAR(50) DEFAULT NULL,
  contraseña VARCHAR(40) DEFAULT NULL,
  zona_horaria VARCHAR(30)DEFAULT 'UTC-3',
  genero VARCHAR(20)DEFAULT NULL,
  telefono VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (id_usuario)
);

CREATE TABLE Ingresos (
  id_ingreso INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  fecha_hora_ingreso DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_ingreso),
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario));
  
-- Parte 3: Modificación de la tabla
-- Alternancia del parametro de la zona horaria en tabla usuarios
ALTER TABLE usuarios
MODIFY zona_horaria VARCHAR(50) DEFAULT 'UTC-2';

-- Ingreso de 8 registros a tabla usuarios
INSERT INTO usuarios (nombre, apellido, contraseña, zona_horaria, genero, telefono)
VALUES
('Sofia', 'Gonzalez', 'secreta123', 'UTC-3', 'femenino', '+56998765432'),
('Mateo', 'Rodriguez', 'clave456', 'UTC-3', 'masculino', '+56987654321'),
('Valentina', 'Perez', 'mypass789', 'UTC-3', 'otro', '+56976543210'),
('Lucas', 'Fernandez', 'securepwd', 'UTC-2', 'masculino', '+56965432109'),
('Isabella', 'Lopez', 'safe1234', 'UTC-3', 'femenino', '+56954321098'),
('Martin', 'Garcia', 'mysecret', 'UTC-2', 'masculino', '+56943210987'),
('Camila', 'Martinez', 'd12345', 'UTC-3', 'femenino', '+56932109876'),
('Benjamin', 'Sanchez', 'bs1995', 'UTC-2', 'otro', '+56921098765');  

-- Parte 4: Creación de registros.

-- Ingresa los registros a la tabla de ingresos en forma masiva:
INSERT INTO ingresos (id_usuario)
VALUES
(1),(2),(3),(4),(5),(6),(7),(8);

-- Y acá opcionalmente la forma de ingreso manual 1x1

INSERT INTO Ingresos (id_usuario) VALUES (1);
INSERT INTO Ingresos (id_usuario) VALUES (2);
INSERT INTO Ingresos (id_usuario) VALUES (3);
INSERT INTO Ingresos (id_usuario) VALUES (4);
INSERT INTO Ingresos (id_usuario) VALUES (5);
INSERT INTO Ingresos (id_usuario) VALUES (6);
INSERT INTO Ingresos (id_usuario) VALUES (7);
INSERT INTO Ingresos (id_usuario) VALUES (8);


-- Parte 7: Modifique la columna teléfono de contacto, para crear un vínculo entre la tabla Usuarios y la tabla Contactos.
ALTER TABLE Usuarios ADD UNIQUE (telefono);


-- Parte 6: Creen una nueva tabla llamada Contactos (id_contacto, id_usuario, numero de telefono, correo electronico).
CREATE TABLE Contactos (
  id_contacto INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  telefono VARCHAR(15),
  correo VARCHAR(50),
  PRIMARY KEY (id_contacto),
  FOREIGN KEY (telefono) REFERENCES usuarios(telefono)
);
