Task_1
-- Подсчитать средний возраст пользователей
select 
	avg(timestampdiff(year,birthday_at, now())) as age
from
	users;

Task_2
-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
 select 
	 date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))),
	 '%W') as day,
 	count(*) as total 
 from users 
 group by day 
 order by total desc;
 
Task_3
--  Подсчитайте произведение чисел в столбце таблицы

 SELECT round(exp(sum(ln(id)))) from catalogs;
