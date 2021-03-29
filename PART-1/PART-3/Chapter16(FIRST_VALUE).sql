--Chapter16 FIRST_VALUE, LAST_VALUE 홤수
--최저가, 최고가 찾기
select 
	A.product_name,
	A.price,
	B.group_name,
	FIRST_VALUE(A.PRICE) over (partition by B.group_name order by A.price ) as lower_price_per_group--누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
--------------------------------------------------------------------
--최고가
select 
	A.product_name,
	A.price,
	B.group_name,
	FIRST_VALUE(A.PRICE) over (partition by B.group_name order by A.price desc) as lower_price_per_group--누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;	
---------------------------------------------------------------------
select 
	A.product_name,
	A.price,
	B.group_name,
	LAST_VALUE(A.PRICE) over (partition by B.group_name order by A.price 
							   range between unbounded preceding
							   and unbounded following) as lowest_price_per_group--누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
-----------------------------------------------------------------------
select 
	A.product_name,
	A.price,
	B.group_name,
	LAST_VALUE(A.PRICE) over (partition by B.group_name order by A.price desc
							   range between unbounded preceding
							   and unbounded following) as lowest_price_per_group--누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
------------------------------------------------------------------------\
select 
	A.product_name,
	A.price,
	B.group_name,
	LAST_VALUE(A.PRICE) over (partition by B.group_name order by A.price desc
) as lowest_price_per_group--누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
-- last_value를 사용할때는  range between unbounded preceding and unbounded following를 붙여줘야된다.
