SELECT us.nome AS pessoa_usuaria,
IF(MAX(YEAR(his.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.historic AS his
INNER JOIN SpotifyClone.users AS us ON his.user_id = us.user_id
GROUP BY us.nome
ORDER BY us.nome;