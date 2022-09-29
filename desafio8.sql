SELECT a.artista artista, b.album album FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns b ON b.artista_id = a.artista_id
WHERE a.artista = "Elis Regina";