Task_1
-- Пусть задан некоторый пользователь. Из всех пользователей соц.
-- сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).

select COUNT(from_user_id) messages_count, from_user_id , to_user_id
	FROM messages
	WHERE to_user_id = 190
	GROUP BY from_user_id, to_user_id
	ORDER BY messages_count DESC
	LIMIT 1
;


Task_2
-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT COUNT(*) as 'likes us'
FROM likes
WHERE user_id IN (
	SELECT user_id 
	FROM profiles
	WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10)
;

Task_3
-- Определить кто больше поставил лайков (всего): мужчины или женщины.

-- Не заполнил данные пока в столбце gender