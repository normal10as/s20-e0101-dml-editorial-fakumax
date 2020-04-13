--TP 1 - by fakumax

USE editorial
SELECT * FROM INFORMATION_SCHEMA.TABLES

--1.1. Listar los cargos.

SELECT * FROM cargos

--1.2. Listar todAS lAS columnAS de empleados y la descripci�n del cargo que tienen.
SELECT empleados.*,cargos.cargo_descripcion
FROM empleados,cargos
WHERE empleados.cargo_id= cargos.cargo_id

/*1.3. Listar la tabla empleados y reemplazar los nombres de columnAS que tengan guion
 bajo por espacio*/

SELECT * FROM empleados

SELECT empleado_id AS 'empleado id', nombre, inicial_segundo_nombre AS 'inicial segundo nombre',apellido,
	   cargo_id AS 'cargo id', nivel_cargo AS 'nivel cargo', editorial_id AS 'editorial id', fecha_contratacion AS 'fecha contratacion'
FROM empleados

--1.4. Calcular A = (pi * r)^2 donde r = 10 y la funci�n Pi() para pi

SELECT  PI()*(POWER(10,2)) 

/*1.5. Mostrar por cada t�tulo su nombre y cuanto corresponde de regal�as por cada 1000
t�tulos vendidos. Esta columna se debe mostrar como �Regal�as x cada 1000
unidades�. Titulo.regal�as es un porcentaje.*/

SELECT * FROM titulos

SELECT titulos.titulo,titulos.precio, titulos.regalias, 'Regal�as x cada 1000 unidades' = (titulos.regalias*titulos.precio/100)*1000,
	   titulos.venta_anual 
FROM titulos

--1.6. Listar los nombres de autores sin repetirlos.

SELECT * FROM autores

SELECT DISTINCT autor_nombre,autor_apellido 
FROM autores

--1.7. Listar los pa�ses de las editoriales sin repetirlos.

SELECT * FROM editoriales

SELECT DISTINCT editoriales.pais
FROM editoriales

--1.8. Listar los nombres de almac�n que hayan tenido ventas sin repetirlos.

SELECT DISTINCT  almacen_nombre
FROM almacenes, ventas
WHERE almacenes.almacen_id = ventas.almacen_id AND ventas.cantidad>1 

--1.9. Listar las primeras 5 ventas.

SELECT * FROM ventas

SELECT TOP 5 * FROM ventas
ORDER BY fecha_orden ASC

