SELECT FORMAT((MIN(valor)), 2) faturamento_minimo, MAX(valor) faturamento_maximo,
ROUND((AVG(a.valor)), 2) faturamento_medio, ROUND((SUM(a.valor)), 2) faturamento_total
FROM SpotifyClone.planos a
INNER JOIN SpotifyClone.usuarios b ON b.plano_id = a.plano_id;