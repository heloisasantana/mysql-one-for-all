SELECT a.usuario usuario, IF (MAX(YEAR(b.data_hora_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') status_usuario
FROM SpotifyClone.usuarios a
INNER JOIN SpotifyClone.historico_de_reproducoes b ON b.usuario_id = a.usuario_id
GROUP BY usuario 
ORDER BY usuario;
