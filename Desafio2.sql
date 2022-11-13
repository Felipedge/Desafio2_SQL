/* ¿Cúantos registros hay? */
Respuesta: SElECT COUNT(*) FROM INSCRITOS;

/* ¿Cuántos insctitos hay en total? */
Respuesta: SELECT SUM(cantidad) FROM INSCRITOS;

/* ¿Cual o cuales son los registros de mayot antiguedad? */
Respuesta: SELECT fecha FROM INSCRITOS ORDER BY fecha ASC;

/* ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de
ahora en adelante) */
Respuesta: SELECT DISTINCT(fecha), SUM(cantidad) FROM INSCRITOS GROUP BY fecha;

/* ¿Cuántos inscritos hay por fuente? */
Respuesta: SELECT DISTINCT(fuente), SUM(cantidad) FROM INSCRITOS GROUP BY fuente;


/* Qué día se inscribieron la mayor cantidad de personas y cuántas personas se
inscribieron en ese día? */
Respuesta: SELECT DISTINCT(fecha), SUM(cantidad) FROM INSCRITOS GROUP by fecha ORDER BY SUM(cantidad);

/* ¿Qué días se inscribieron la mayor cantidad de personas utilizando el blog y cuántas personas fueron? */
Respuesta: SELECT * FROM INSCRITOS WHERE cantidad = (SELECT MAX(cantidad) FROM INSCRITOS WHERE fuente = 'Blog');

/* ¿Cuántas personas en promedio se inscriben en un día? */
Respuesta: SELECT AVG(total) FROM (SELECT fecha, SUM(cantidad) as total FROM INSCRITOS GROUP by fecha);

/* ¿Qué días se inscribieron más de 50 personas? */
SELECT fecha, SUM(cantidad) FROM INSCRITOS GROUP by fecha HAVING SUM(cantidad) > 50;
