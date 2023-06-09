SELECT
ROUND(MIN(pl.plan_value), 2) AS faturamento_minimo,
MAX(pl.plan_value) AS faturamento_maximo,
ROUND(AVG(pl.plan_value), 2) AS faturamento_medio,
ROUND(SUM(pl.plan_value), 2) AS faturamento_total
FROM SpotifyClone.plan AS pl
INNER JOIN SpotifyClone.users AS us
ON us.plan_id = pl.plan_id;

-- Terminei com a ajuda do Tiago Lourinho