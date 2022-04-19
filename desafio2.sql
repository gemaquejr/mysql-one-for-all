SELECT
COUNT(DISTINCT song_name) AS cancoes,
COUNT(DISTINCT artist_name) AS artistas,
COUNT(DISTINCT album_name) AS albuns
FROM
SpotifyClone.song AS can,
SpotifyClone.artist AS art,
SpotifyClone.album AS alb;