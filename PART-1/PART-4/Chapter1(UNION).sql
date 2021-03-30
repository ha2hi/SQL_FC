--Part04 집합 연산자와 서브쿼리
--Chapter01 UNION연산
--집합을 합친다.
CREATE TABLE SALES2007_1
(
NAME VARCHAR(50),
AMOUNT NUMERIC(15, 2)
);

insert into sales2007_1
values
('Mile', 150000.25),
('Jon', 132000.75),
('Mary', 100000);
commit;

CREATE TABLE SALES2007_2
(
NAME VARCHAR(50),
AMOUNT NUMERIC(15, 2)
);

insert into sales2007_2
values
('Mike', 120000.25),
('Jon', 142000.75),
('Mary', 100000);
commit;
--------------------------------------------------------------
select 
	*
from 
	sales2007_1
union
select
	*
from 
	SALES2007_2;
--중복 제거됨
----------------------------------------------------------------
select 
	name
from 
	sales2007_1
union
select
	name
from 
	SALES2007_2;
---------------------------------------------------------------
select 
	*
from 
	sales2007_1
union
select
	*
from 
	SALES2007_2
order by amount desc;
-------------------------------------------------------------------
select 
	amount
from 
	sales2007_1
union
select
	amount
from 
	SALES2007_2;
