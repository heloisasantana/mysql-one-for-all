SELECT DISTINCT a.artista artista, b.album album, COUNT(c.artista_id) seguidores
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns b ON b.artista_id = a.artista_id
INNER JOIN SpotifyClone.artistas_seguidos c ON c.artista_id = b.artista_id
GROUP BY artista, album 
ORDER BY seguidores DESC, artista, album;