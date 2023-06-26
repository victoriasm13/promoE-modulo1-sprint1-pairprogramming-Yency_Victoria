CREATE TABLE productos3
(id_producto INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) DEFAULT NULL,
color ENUM('rojo','amarillo','azul') DEFAULT NULL,
precio INT DEFAULT NULL,
stock FLOAT DEFAULT NULL,
PRIMARY KEY(id_producto),
CONSTRAINT precio_positivo CHECK(precio>0)
);