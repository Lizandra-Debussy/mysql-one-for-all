SELECT
	  a.nome_artista AS artista,
    alb.nome_album AS album,
    COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS alb
ON a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo AS s
ON a.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;