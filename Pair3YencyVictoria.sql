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

​
CREATE TABLE zapatillas(id_zapatillas INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatillas));

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