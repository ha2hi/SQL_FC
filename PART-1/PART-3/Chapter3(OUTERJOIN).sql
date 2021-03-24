--Chapter3 OUTER조인
select 
	A.ID as ID_A,
	A.FRUIT as FRUIT_A,
	B.ID as ID_B,
	B.FRUIT as FRUIT_B
from 
	basket_a A
left join basket_b B
on A.FRUIT = B.FRUIT;
-------------------------------------------------------------------------------------
--LEFT ONLY
select 
	A.ID as ID_A,
	A.FRUIT as FRUIT_A,
	B.ID as ID_B,
	B.FRUIT as FRUIT_B
from 
	basket_a A
left join basket_b B
on A.FRUIT = B.FRUIT
where B.ID is null;
---------------------------------------------------------------------------------------
select 
	A.ID as ID_A,
	A.FRUIT as FRUIT_A,
	B.ID as ID_B,
	B.FRUIT as FRUIT_B
from 
	basket_a A
RIGHT join basket_b B
on A.FRUIT = B.FRUIT;
---------------------------------------------------------------------------------------
--RIGHT ONLY
select 
	A.ID as ID_A,
	A.FRUIT as FRUIT_A,
	B.ID as ID_B,
	B.FRUIT as FRUIT_B
from 
	basket_a A
RIGHT join basket_b B
on A.FRUIT = B.FRUIT
where A.ID is null;
