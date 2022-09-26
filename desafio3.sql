SELECT a.usuario usuario,
COUNT(b.cancao_id) qt_de_musicas_ouvidas,
ROUND((SUM(c.duracao_em_segundos)/60), 2) total_minutos
FROM SpotifyClone.usuarios a
INNER JOIN SpotifyClone.historico_de_reproducoes b ON b.usuario_id = a.usuario_id
INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = b.cancao_id
GROUP BY usuario
ORDER BY usuario;
