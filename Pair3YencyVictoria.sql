CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;
CREATE TABLE empleados 
(id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT DEFAULT NULL,
fecha_de_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado));
​
CREATE TABLE clientes
(id_clientes INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,Views
numero_telefono INT(9) NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45) NOT NULL,
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL, 
PRIMARY KEY (id_clientes));
CREATE TABLE facturas
(id_facturas INT AUTO_INCREMENT NOT NULL,
numero_factura  Varchar(45) NOT NULL,
fecha DATE NOT NULL,
zapatilla INT NOT NULL,
cliente INT NOT NULL,
empleado INT NOT NULL,
PRIMARY KEY (id_facturas),
CONSTRAINT enlacezapatillas 
	FOREIGN KEY (zapatilla) 
    REFERENCES zapatillas (id_zapatillas),
CONSTRAINT enlaceclientes 
	FOREIGN KEY (cliente) 
    REFERENCES clientes (id_clientes),
CONSTRAINT enlaceEmpleados 
	FOREIGN KEY (empleado) 
    REFERENCES empleados (id_empleado));

CREATE TABLE zapatillas(id_zapatillas INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatillas));

-- Pair programming 20/06
INSERT INTO zapatillas (id_zapatillas, modelo, color, marca, talla)
VALUES (1, 'XQYUN', 'negro', 'Nike', 42 );
INSERT INTO zapatillas (id_zapatillas, modelo, color, marca, talla)
VALUES (2, 'UOPNM', 'rosa', 'Nike', 39 );
INSERT INTO zapatillas (id_zapatillas, modelo, color, marca, talla)
VALUES (3, 'OPNYT', 'verde', 'Adidas', 35 );

INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_de_incorporacion)
VALUES (1, 'Laura', 'Alcobendas', 25987, '2010-09-03');
INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_de_incorporacion)
VALUES (2, 'Maria', 'Sevilla', null, '2001-04-11');
INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_de_incorporacion)
VALUES (3, 'Esther', 'Oviedo', 30165.98 , '2000-11-29');

INSERT INTO clientes (id_clientes, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (1, 'Monica', 123456789, 'monica@email.com', 'Calle felicidad', 'Mostoles', 'Madrid', 28176);

INSERT INTO clientes (id_clientes, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (2, 'Lorena', 289345678, 'lorena@email.com', 'Calle Alegría', 'Barcelona', 'Barcelona', 123456);

INSERT INTO clientes (id_clientes, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (3, 'Carmen', 298463759, 'carmen@email.com', 'Calle Color', 'Vigo', 'Pontevedra', 23456);

INSERT INTO facturas (id_facturas, numero_factura, fecha, zapatilla, empleado, cliente, total)
VALUES (1, 123, '2001-12-11', 1, 2, 1, 54.98);
INSERT INTO facturas (id_facturas, numero_factura, fecha, zapatilla, empleado, cliente, total)
VALUES (2, 1234, '2005-05-23', 1, 1, 3, 89.91);
INSERT INTO facturas (id_facturas, numero_factura, fecha, zapatilla, empleado, cliente, total)
VALUES (3, 12345, '2015-09-18', 2, 3, 3, 76.23);

UPDATE zapatillas
SET color = 'amarillo'
WHERE id_zapatillas = 2;

UPDATE empleados
SET tienda = 'A Coruña'
WHERE id_empleado = 1;

UPDATE clientes 
SET numero_telefono = 12345678
WHERE id_clientes = 1;

UPDATE facturas
set total = 89.91
WHERE id_facturas = 2

Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`tienda_zapatillas`.`facturas`, CONSTRAINT `enlaceclientes` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id_clientes`))


​-- Pair programming 19/06

ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL;

ALTER TABLE zapatillas
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT;

ALTER TABLE clientes
DROP COLUMN pais; 

ALTER TABLE clientes
MODIFY COLUMN codigo_postal INT(5) NOT NULL;

ALTER TABLE facturas
ADD COLUMN total FLOAT NOT NULL;


ALTER TABLE facturas
ADD COLUMN total FLOAT NOT NULL;