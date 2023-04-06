SELECT COUNT(s.cancoes_id) AS cancoes,
COUNT(DISTINCT a.artista_id) AS artistas,
COUNT(DISTINCT ab.album_id) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.albuns AS ab ON s.album_id = ab.album_id
INNER JOIN SpotifyClone.artist AS a ON ab.artista_id = a.artista_id ;