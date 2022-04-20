SELECT so.song_name AS cancao,
COUNT(hi.song_id) AS reproducoes
FROM SpotifyClone.song AS so
INNER JOIN SpotifyClone.listening_history AS hi
ON hi.song_id = so.song_id GROUP BY so.song_name ORDER BY COUNT(hi.song_id) DESC, so.song_name LIMIT 2;