#--TP 1 - by fakumax

SHOW databases;

USE editorial;

#--1.7. Listar los países de las editoriales sin repetirlos.

SELECT * FROM editoriales;

SELECT DISTINCT editoriales.pais
FROM editoriales;

