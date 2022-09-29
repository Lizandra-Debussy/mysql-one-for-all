SELECT
	  c.nome_cancoes AS cancao,
    COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancoes_id = h.cancoes_id
GROUP BY nome_cancoes
ORDER BY reproducoes DESC, cancao
LIMIT 2;