--- 21-04-2025 22:05:44 sanoyfresco.db
SELECT COUNT(DISTINCT id_pedido) AS total_pedidos
FROM tickets;


--- 21-04-2025 22:12:53 sanoyfresco.db
/***** ERROR ******
SELECT AVG(total_pedido) AS valor_promedio_pedido
FROM (
  SELECT id_pedido SUM(precio_total) AS total_pedido
  FROM tickets
  GROUP BY id_pedido) subconsulta;
 ----- 
SQLITE_ERROR: sqlite3 result code 1: near "(": syntax error
*****/


--- 21-04-2025 22:13:02 sanoyfresco.db
SELECT AVG(total_pedido) AS valor_promedio_pedido
FROM (
  SELECT id_pedido, SUM(precio_total) AS total_pedido
  FROM tickets
  GROUP BY id_pedido) subconsulta;


