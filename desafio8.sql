SELECT 
	  a.nome_artista AS artista,
    alb.nome_album AS album
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS alb
ON a.artista_id = alb.artista_id
WHERE a.nome_artista = 'Elis Regina';