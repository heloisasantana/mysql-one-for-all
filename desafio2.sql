SELECT COUNT(*) cancoes,(
    SELECT COUNT(*) FROM SpotifyClone.artistas) artistas, (
        SELECT COUNT(*) FROM SpotifyClone.albuns) albuns FROM SpotifyClone.cancoes;