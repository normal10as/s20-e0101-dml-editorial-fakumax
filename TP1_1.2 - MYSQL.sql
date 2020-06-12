#--TP 1 - by fakumax

SHOW databases;

USE editorial;

#--1.2. Listar todAS lAS columnAS de empleados y la descripción del cargo que tienen.

SELECT empleados.*,cargos.cargo_descripcion
FROM empleados,cargos
WHERE empleados.cargo_id= cargos.cargo_id;

