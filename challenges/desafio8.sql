SELECT 
    ar.nome_artista AS artista,
    al.album AS album
FROM
    SpotifyClone.artist AS ar
INNER JOIN
    SpotifyClone.albuns AS al ON al.artista_id = ar.artista_id WHERE ar.nome_artista = "Elis Regina"
GROUP BY artista, album;