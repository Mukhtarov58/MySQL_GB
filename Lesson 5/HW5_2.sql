Task_1
-- ���������� ������� ������� �������������
select 
	avg(timestampdiff(year,birthday_at, now())) as age
from
	users;

Task_2
-- ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������.
 select 
	 date_format(date(concat_ws('-', year(now()), month(birthday_at), day(birthday_at))),
	 '%W') as day,
 	count(*) as total 
 from users 
 group by day 
 order by total desc;
 
Task_3
--  ����������� ������������ ����� � ������� �������

 SELECT round(exp(sum(ln(id)))) from catalogs;
