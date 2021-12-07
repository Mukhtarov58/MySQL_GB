TASK_2

-- ������ ������� ������ firstname, ��� ���������� � ���������� �������

select distinct firstname
from users
order by
firstname;


TASK_3

--��������� ���� is_active � ������� profiles 

ALTER TABLE	profiles 
add is_active ENUM('true', 'false');

update profiles 
set is_active = true; --����������� �������� �� ��������� ���� �������������

--���� ���� ������ 18��� ������ �� False
update profiles 
set is_active = 'false'
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birthday, 5)) < 18;

TASK_4

--������ ��������� � ����� �� ��������
UPDATE messages
SET created_at='2222-12-12 12:12:12'
WHERE id = 10;

-- ������� ��� ��������� �� ���� ������ ��� ��� ������

DELETE FROM messages
WHERE created_at > now();