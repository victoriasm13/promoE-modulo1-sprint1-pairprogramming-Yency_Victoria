CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;
CREATE TABLE empleados 
(id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT DEFAULT NULL,
fecha_de_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado));

CREATE TABLE clientes
(id_clientes INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
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
id_zapatilla FOREIGN KEY INT NOT NULL,

CREATE TABLE zapatillas(id_zapatillas INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL);


