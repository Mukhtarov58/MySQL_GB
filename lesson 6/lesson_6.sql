Task_1
-- ����� ����� ��������� ������������. �� ���� ������������� ���.
-- ���� ������� ��������, ������� ������ ���� ������� � ��������� ������������� (������� ��� ���������).

select COUNT(from_user_id) messages_count, from_user_id , to_user_id
	FROM messages
	WHERE to_user_id = 190
	GROUP BY from_user_id, to_user_id
	ORDER BY messages_count DESC
	LIMIT 1
;


Task_2
-- ���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.

SELECT COUNT(*) as 'likes us'
FROM likes
WHERE user_id IN (
	SELECT user_id 
	FROM profiles
	WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10)
;

Task_3
-- ���������� ��� ������ �������� ������ (�����): ������� ��� �������.

-- �� �������� ������ ���� � ������� gender