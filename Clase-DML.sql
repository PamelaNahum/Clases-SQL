#insertar datos
INSERT INTO generation_schema.articulo (nombre, precio) VALUES ('Celular', 150000);
INSERT INTO generation_schema.articulo (nombre, precio) VALUES ('Audifonos inalam', 3.5);
INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (8, 'Mouse', 50000);
INSERT INTO generation_schema.articulo (nombre, precio) VALUES ('PadMouse', 2000);
INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (7, 'Lapiz', 50000);
INSERT INTO generation_schema.articulo (nombre, precio) VALUES ('Goma', 500);
INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (7, 'LapizMina', 50000);

#modificar datos

INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (7, 'Lapiz', 50000)
ON duplicate key update nombre = 'LapizMina';

INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (8, 'Mouse', 50000)
ON duplicate key update nombre = 'Mouse RGB';


INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (8, 'Mouse RGB', 50000)
ON duplicate key update precio = 70000;

INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (3, 'Celular', 150000)
ON duplicate key update nombre='Celular Iphone',  precio = 1200000;

UPDATE generation_schema.articulo
SET nombre='Audifonos new'
WHERE articulo_id = 4;

UPDATE generation_schema.articulo
SET nombre='Audifonos',  precio = 30000
WHERE nombre = 'Audifonos inalam';

UPDATE generation_schema.articulo
SET precio = 2000
WHERE nombre = 'PadMouse';

UPDATE generation_schema.articulo
SET precio = 2500
WHERE precio >= 30000;

UPDATE generation_schema.articulo
SET precio = 20000
WHERE precio = 5000 OR nombre = 'Audifonos';

UPDATE generation_schema.articulo
SET precio = precio*0.5
WHERE nombre='Celular Samsung';

SELECT * FROM generation_schema.articulo;

DELETE FROM generation_schema.articulo
WHERE nombre = 'Celular Samsung';

DELETE FROM generation_schema.articulo;
