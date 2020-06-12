#--TP 1 - by fakumax

SHOW databases;

USE editorial;

#--1.9. Listar las primeras 5 ventas.

SELECT * FROM ventas;

SELECT * FROM ventas
ORDER BY fecha_orden ASC
LIMIT 5;
