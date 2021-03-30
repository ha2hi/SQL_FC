--Chapter02 UNION ALL 연산
--중복된 데이터도 모두 출력 한다.
select 
	*
from 
	sales2007_1
union all
select
	*
from 
	sales2007_2;
-----------------------------------------------------------------
select 
	name
from 
	sales2007_1
union all
select
	name 
from 
	sales2007_2;
-----------------------------------------------------------------
select 
	amount
from 
	sales2007_1
union all
select
	amount
from 
	sales2007_2;
-----------------------------------------------------------------
select 
	*
from 
	sales2007_1
union all
select
	*
from 
	sales2007_2
order by amount desc;
