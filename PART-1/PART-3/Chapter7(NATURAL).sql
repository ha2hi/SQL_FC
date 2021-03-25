--Chapter7 NATURAL조인
--실무에서 X -> INNER조인을 더 깊게 이해할 수 있음
-- ON을 안쓰고 자동적으로 비슷한 컬럼 매칭
create table categories
(
	category_id serial primary key,
	category_name varchar (255) not null
);

create table products
(
	product_id serial primary key,
	product_name varchar (255) not null,
	category_id int not null,
	foreign key (category_id)
	references categories (Category_id)
);

insert into categories
(category_name)
values
	('smart phone'),
	('laptop'),
	('tablet')
;
commit;

insert into products
(product_name, category_id)
values
	('iphone', 1),
	('samsung galaxy', 1),
	('hp elite', 2),
	('lenovo thinkpad', 2),
	('ipad', 3),
	('kindle fire', 3);
commit;
-----------------------------------------------------------------
--inner조인을 자동으로 (안정성이 없다)
--둘 다 category_id가 있음
select 
	*
from categories A
natural join products B;
---------------------------------------------------------------
--natural조인과 동일
--natural조인을 사용하지말고 가급적 inner조인을 사용해라
select 
	*
from
	categories A
inner join products B
on A.category_id = B.category_id;
---------------------------------------------------------------
--inner조인과 비슷
select 
	*
from
	categories A, products B
where A.category_id = B.category_id;
--------------------------------------------------------------
-- 두 테이블 모두 city_id, last_update동일 컬럼 존재 그래서 안나옴
select 
	*
from
	city A
natural join
	country B;
