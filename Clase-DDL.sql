CREATE SCHEMA IF NOT EXISTS generation_schema;
#ESTE ES UN COMENTARIO EN SQL :D#
CREATE TABLE `generation_schema`.`articulo`(
`articulo_id` INT NOT NULL AUTO_INCREMENT,
`nombre`  VARCHAR(20) NOT NULL,
`precio` INT NOT NULL,
PRIMARY KEY (`articulo_id`));

CREATE TABLE `generation_schema`.`cliente`(
`cliente_id` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(20) NOT NULL,
`email` VARCHAR(40) NOT NULL,
`fechaNacimiento` DATE NOT NULL,
`rut` VARCHAR(15) NOT NULL,
PRIMARY KEY(`cliente_id`));

CREATE TABLE `generation_schema`.`historial`(
`historial_id` INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`historial_id`));

#para FK
ALTER TABLE generation_schema.cliente ADD historial_id INT NOT NULL;
#PARA ACTUALIZAR TABLA
ALTER TABLE generation_schema.cliente CHANGE COLUMN nombre nombre_usuario VARCHAR(20);
#altera la tabla cliente, agrega una relacion que se va a llamar clienteHistorial, que será una foreign key (llamda historial_id) 
#que hace referencia a la tabla historial y a su id
ALTER TABLE generation_schema.cliente ADD CONSTRAINT clienteHistorial FOREIGN KEY (historial_id) REFERENCES generation_schema.historial(historial_id);

#para eliminar tablas SIN RELACIONES
DROP TABLE generation_schema.historial;

#para eliminar tablas CON relaciones
#primero borrar la FK CON EL NOMBRE DE LA FK
ALTER TABLE generation_schema.cliente DROP foreign key clienteHistorial;
ALTER TABLE generation_schema.historial DROP foreign key clienteHistorial;

DROP TABLE generation_schema.historial;
