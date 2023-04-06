SELECT s.cancoes AS cancao,
COUNT(his.cancoes_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historic AS his ON his.cancoes_id = s.cancoes_id
GROUP BY his.cancoes_id
ORDER BY reproducoes DESC
LIMIT 2;