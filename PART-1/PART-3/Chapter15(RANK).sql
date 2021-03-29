--Chapter15 ROW_NUMBER, RANK, DENSE_RANK함수
--특정 컬럼의 순위를 구하는 함수이다.
select 
	A.product_name,
	A.price,
	B.group_name,
	ROW_NUMBER() over (partition by B.group_name order by A.price desc) --누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
--같은 순위가 있어도 무조건 순차적으로 순위를 매긴다.
------------------------------------------------------------------
select 
	A.product_name,
	A.price,
	B.group_name,
	rank() over (partition by B.group_name order by A.price ) --누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
--같은 순위면 같은 순위면서 다음 순위가 건너 뜀 1,1,3,4...
-----------------------------------------------------------------
select 
	A.product_name,
	A.price,
	B.group_name,
	dense_rank() over (partition by B.group_name order by A.price ) --누적집계
from 
	product A
inner join	PRODUCT_GROUP B
on A.group_id = B.group_id;
--같은 순위면 같은 순위면서 다음 순위 건너뛰지 않음 1,1,2,3.....
