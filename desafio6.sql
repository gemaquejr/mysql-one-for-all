SELECT MIN(plan_value) AS faturamento_minimo,
MAX(plan_value) AS faturamento_maximo,
ROUND(AVG(plan_value), 2) AS faturamento_medio,
ROUND(SUM(plan_value), 2) AS faturamento_total
FROM SpotifyClone.plan AS pl
INNER JOIN SpotifyClone.users AS us
ON us.plan_id = pl.plan_id;