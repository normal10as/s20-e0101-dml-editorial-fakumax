#--TP 1 - by fakumax

SHOW databases;

USE editorial;

/*1.5. Mostrar por cada título su nombre y cuanto corresponde de regalías por cada 1000
títulos vendidos. Esta columna se debe mostrar como “Regalías x cada 1000
unidades”. Titulo.regalías es un porcentaje.*/

SELECT * FROM titulos;

SELECT titulos.titulo,titulos.precio, titulos.regalias, 'Regalías x cada 1000 unidades' = (titulos.regalias*titulos.precio/100)*1000,
	   titulos.venta_anual 
FROM titulos;

