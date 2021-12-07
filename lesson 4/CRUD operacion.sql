TASK_2

-- Делаем выборку только firstname, без повторений в алфавитном порядке

select distinct firstname
from users
order by
firstname;


TASK_3

--добавляем поле is_active в таблицу profiles 

ALTER TABLE	profiles 
add is_active ENUM('true', 'false');

update profiles 
set is_active = true; --проставляем значение по умолчанию всем пользователям

--всем кому меньше 18лет меняем на False
update profiles 
set is_active = 'false'
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birthday, 5)) < 18;

TASK_4

--создаём сообщение с датой из будущего
UPDATE messages
SET created_at='2222-12-12 12:12:12'
WHERE id = 10;

-- удаляем все сообщения чь дата больше той что сейчас

DELETE FROM messages
WHERE created_at > now();