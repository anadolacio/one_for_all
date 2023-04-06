SELECT 
    us.nome AS pessoa_usuaria,
    COUNT(*) AS musicas_ouvidas,
    ROUND(SUM(s.duracao_segundos/60), 2) AS total_minutos
FROM
    SpotifyClone.users AS us
        INNER JOIN
    SpotifyClone.historic AS his ON us.user_id = his.user_id
        INNER JOIN
    SpotifyClone.songs AS s ON his.cancoes_id = s.cancoes_id
GROUP BY us.nome
ORDER BY us.nome;