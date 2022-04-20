SELECT ar.artist_name AS artista,
al.album_name AS album,
COUNT(fo.artist_id) AS seguidores
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.following_artist AS fo
ON fo.artist_id = ar.artist_id GROUP BY ar.artist_name, al.album_name ORDER BY COUNT(fo.artist_id) DESC, ar.artist_name, al.album_name;