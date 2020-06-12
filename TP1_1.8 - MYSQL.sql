#--TP 1 - by fakumax

SHOW databases;

USE editorial;

#--1.8. Listar los nombres de almacén que hayan tenido ventas sin repetirlos.

SELECT DISTINCT  almacen_nombre
FROM almacenes, ventas
WHERE almacenes.almacen_id = ventas.almacen_id AND ventas.cantidad>1 ;

