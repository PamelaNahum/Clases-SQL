
INSERT INTO generation_schema.cliente (nombre, email, fechaNacimiento, rut)
VALUES('Benjamin Bustos', 'benja.bustos@gmail.com', 16/11/1995, '12456985-9');

INSERT INTO generation_schema.cliente (nombre, email, fechaNacimiento, rut)
VALUES('Nicolas Noimann', 'nico.noimann@gmail.com', 15/09/1995, '12456985-9');

INSERT INTO generation_schema.cliente (nombre, email, fechaNacimiento, rut)
VALUES('Kiara Diaz', 'kiara.diaz@gmail.com', '1995-03-10', '12456985-9');

INSERT INTO generation_schema.cliente (nombre, email, fechaNacimiento, rut)
VALUES('Nicole Opazo', 'nico.opazo@gmail.com', '1995-03-10', '12456985-9');

INSERT INTO generation_schema.historial (pedido, cliente_id) VALUES ('tres tazas',1);
INSERT INTO generation_schema.historial (pedido, cliente_id) VALUES ('dos zapatillas',2);
INSERT INTO generation_schema.historial (pedido, cliente_id) VALUES ('cinco calcetines',2);
INSERT INTO generation_schema.historial (pedido, cliente_id) VALUES ('5 sobres de te',1);

SELECT * FROM generation_schema.articulo;
select * from generation_schema.cliente;
select * from generation_schema.historial;
#quiero taer los datos de las compras que ha hecho Nico

#TABLA1 = cliente, TABLA2 = historial
# RIGHT JOIN llama a todo lo que tiene tabla 2 con los datos de tabla 1, si tabla 1 no tiene match con tabla 2 esos datos NO los trae
SELECT cliente.nombre, cliente.email, cliente.rut, historial.pedido
FROM generation_schema.cliente 
RIGHT JOIN generation_schema.historial on generation_schema.cliente.cliente_id = generation_schema.historial.cliente_id;

#LEFT JOIN llama a todo lo que tiene tabla 1 con los datos de tabla 2, si la tabla 1 no tiene match 
#con la tabla 2, trae los datos pero con el datos de tabla 2 como null
SELECT cliente.nombre, cliente.email, cliente.rut, historial.pedido
FROM generation_schema.cliente 
LEFT JOIN generation_schema.historial on generation_schema.cliente.cliente_id = generation_schema.historial.cliente_id;

#estos se ocupan mas con consultas que involucran 3 o mas tablas
#en general no son tan ocupados como los anteriores
# TRAE solo los datos que tienen informacion en ambas tablas y hacer match
SELECT cliente.nombre, cliente.email, cliente.rut, historial.pedido
FROM generation_schema.cliente 
INNER JOIN generation_schema.historial on generation_schema.cliente.cliente_id = generation_schema.historial.cliente_id;

# TRAE solo los datos que tienen informacion en ambas tablas y hacer match
SELECT cliente.nombre, cliente.email, cliente.rut, historial.pedido
FROM generation_schema.cliente 
CROSS JOIN generation_schema.historial on generation_schema.cliente.cliente_id = generation_schema.historial.cliente_id;
#-----------------------------------------------#

#para contar cuantos RESULTADOS me trae mi consulta
SELECT COUNT(cliente.nombre) 
FROM generation_schema.cliente 
RIGHT JOIN generation_schema.historial on generation_schema.cliente.cliente_id = generation_schema.historial.cliente_id
WHERE cliente.nombre = 'Nicolas Noimann';

#para sumar valores
SELECT SUM(precio) 
FROM generation_schema.articulo
WHERE nombre = 'Lapiz' OR nombre = 'PadMouse';

#para sacar el promedio
SELECT AVG(precio) 
FROM generation_schema.articulo
WHERE nombre = 'Lapiz' OR nombre = 'PadMouse';

#--------------------------------------#

select * from generation_schema.articulo;

#Me traer todos los datos que hay entre los parámetros ingresados
SELECT * 
FROM generation_schema.articulo
WHERE precio BETWEEN 4 and 2000;

#me trae todos los resultados que en su nombre TERMINENE con 'mou'
SELECT * 
FROM generation_schema.articulo
WHERE nombre LIKE '%mou';

#me trae todos los resultados que su nombre COMIENCE con 'mou'
SELECT * 
FROM generation_schema.articulo
WHERE nombre LIKE 'mou%';

#me trae todos los resultados que en su nombre contenga en cualquier posicion la plaraba 'mou'
SELECT * 
FROM generation_schema.articulo
WHERE nombre LIKE '%mou%';












