SELECT so.song_name AS nome,
COUNT(li.song_id) AS reproducoes
FROM SpotifyClone.listening_history AS li
INNER JOIN SpotifyClone.song AS so
ON li.song_id = so.song_id
INNER JOIN SpotifyClone.users AS us
ON us.user_id = li.user_id
WHERE us.plan_id IN (1, 3)
GROUP BY so.song_name ORDER BY so.song_name;