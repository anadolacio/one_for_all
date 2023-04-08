SELECT 
    ar.nome_artista AS artista,
    al.album AS album,
    COUNT(f.artista_id) AS pessoas_seguidoras
FROM
    SpotifyClone.artist AS ar
INNER JOIN
    SpotifyClone.albuns AS al ON al.artista_id = ar.artista_id
INNER JOIN
    SpotifyClone.followers AS f ON ar.artista_id = f.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;