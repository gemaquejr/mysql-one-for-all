SELECT us.user_name AS usuario,
IF(MAX(hi.listening_date) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.listening_history AS hi
ON us.user_id = hi.user_id GROUP BY us.user_name;