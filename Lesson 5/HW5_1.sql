Task_1
-- Добавляем текущими датами столбцы created_at и updated_at
UPDATE users
SET created_at = NOW() AND updated_at = NOW();

Task_2

-- Преобразовать значание даты VARCHAR в DATETIME 
-- функцией STR_TO_DATE преобразует строку в дату, определенного формата

UPDATE users
SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

-- Обновляем тип данных на DATETIME
ALTER TABLE users
MODIFY COLUMN created_at DATETIME,
MODIFY COLUMN updated_at DATETIME;

Task_3

SELECT * FROM storehouses_products;

INSERT INTO storehouses_products
(storehouse_id, product_id, value, created_at, updated_at) 
VALUES
(1, 1, 9, now(), now()),
(2, 2, 8, now(), now()),
(3, 3, 6, now(), now()),
(4, 4, 0, now(), now()),
(5, 5, 0, now(), now()),
(6, 6, 7, now(), now());

SELECT * FROM storehouses_products order by value;

select id, value, if(value > 0, 0, 1) as sort from storehouses_products order by value;

SELECT * FROM storehouses_products order by if(value > 0, 0, 1), value;

Task_4
-- Ищем пользователя родившегося в мае и августе

select name from users where date_format(birthday_at, '%M') in ('may', 'august'); 

Task_5
-- сортировка списка по заданному запросу
select id, name, field(id,5, 1, 2) as pos from catalogs where id in(5,1,2); 
select * from catalogs where id in (5, 1, 2) order by field(id, 5, 1, 2); 