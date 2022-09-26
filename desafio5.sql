SELECT a.cancao cancao, COUNT(b.cancao_id) reproducoes
FROM SpotifyClone.historico_de_reproducoes b
INNER JOIN SpotifyClone.cancoes a ON a.cancao_id = b.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
