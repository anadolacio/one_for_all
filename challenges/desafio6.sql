SELECT FORMAT(MIN(pl.valor_plano), 2) AS faturamento_minimo,
FORMAT(MAX(pl.valor_plano), 2) AS faturamento_maximo,
FORMAT(AVG(pl.valor_plano), 2) AS faturamento_medio,
FORMAT(SUM(pl.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.plans AS pl
INNER JOIN  SpotifyClone.users AS us ON us.plano_id = pl.plano_id;