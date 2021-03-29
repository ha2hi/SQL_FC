--Chapter14 AVG함수
--분석함수를 쓰면 데이터 셋도 보여줌
select 
	avg(price)
from 
	product;
-------------------------------------------------------------------
select 
	A.group_name,
	avg(price)
from
	product_group A
inner join product B
on A.group_id = B.group_id
group by A.group_name;
-------------------------------------------------------------------
--결과집합을 그대로 출력하면서 GROUP NAME 기준의 평균을 출력한다.
select 
	A.product_name,
	A.price,
	B.group_name,
	avg(A.price) over (partition by B.group_name)
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
--집계함수의 한계를 극복
--보여줄거 다 보여주면서 group_name별 평균가격을 보고 싶을때
------------------------------------------------------------------
select 
	A.product_name,
	A.price,
	B.group_name,
	avg(A.price) over (partition by B.group_name order by B.group_name)
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
------------------------------------------------------------------
--누적평균을 구할 수 있다.
select 
	A.product_name,
	A.price,
	B.group_name,
	avg(A.price) over (partition by B.group_name order by A.price) --누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
