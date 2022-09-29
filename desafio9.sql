SELECT COUNT(h.cancoes_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS h 
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
WHERE u.nome_usuario = 'Barbara Liskov';