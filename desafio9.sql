SELECT COUNT(li.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.listening_history AS li
INNER JOIN SpotifyClone.users AS us
WHERE us.user_name = 'Bill' AND li.user_id = us.user_id;