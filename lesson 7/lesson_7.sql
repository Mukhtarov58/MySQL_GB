
-- Сложные запросы
Task_1
-- USER сделавший заказ
insert into orders (user_id)
	select id from users where name = 'Геннадий';

insert into orders_products (order_id, product_id, total)
	select last_insert_id(), id, 2 from products
	where name = 'Intel Core i5-7400';
	
insert into orders (user_id)
	select id from users where name = 'Наталья';

insert into orders_products (order_id, product_id, total)
	select last_insert_id(), id, 2 from products
	where name in( 'Intel Core i5-7400', 'Gigabyte H310M S2H');
	
insert into orders (user_id)
	select id from users where name = 'Иван';

insert into orders_products (order_id, product_id, total)
	select last_insert_id(), id, 2 from products
	where name in( 'AMD FX-8320', 'ASUS ROG MAXIMUS X HERO');
	
select distinct user_id from orders;

select 	id, name from users
	where id in(select distinct user_id from orders);

-- второй вариант
SELECT name FROM users U
WHERE EXISTS(SELECT 1 FROM orders WHERE user_id = U.id);
-- третий варик
select u.id, u.name from users as u
	join orders as o 
	on u.id = o.user_id;

Task_2
-- Товары в каталоге

select p.id, p.name, p.price, c.name as `catalog`
	from products as p
	left join catalogs as c 
	on p.catalog_id = c.id;

