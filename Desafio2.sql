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

