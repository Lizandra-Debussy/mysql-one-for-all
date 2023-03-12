SELECT
    c.nome_cancoes AS nome,
    COUNT(h.cancoes_id) AS  reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancoes_id = h.cancoes_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY nome
ORDER BY nome