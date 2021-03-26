--Chapter10 GROUPING SET절
create table SALES
(
BRAND VARCHAR not null,
SEGMENT VARCHAR not null,
QUANTITY INT not null,
primary key (BRAND, SEGMENT)
);

insert into SALES (BRAND, SEGMENT, QUANTITY)
values
('ABC', 'PREMIUM', 100),
('ABC', 'BASIC', 200),
('XYZ', 'PREMIUM', 100),
('XYZ', 'BASIC', 300);
-----------------------------------------------------------------------
select 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	SALES
group by BRAND, SEGMENT;
---------------------------------------------------------------
select 
	BRAND,
	SUM(QUANTITY)
from 
	SALES
group by BRAND;
----------------------------------------------------------------
select 
	SEGMENT,
	SUM(QUANTITY)
from 
	SALES
group by SEGMENT;
-----------------------------------------------------------------
select 
	SUM(QUANTITY)
from 
	SALES;
-----------------------------------------------------
select 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	SALES
group by BRAND, SEGMENT
union all 
select 
	BRAND,
	null,
	SUM(QUANTITY)
from 
	SALES
group by BRAND
union all 
select 
	null,
	SEGMENT,
	SUM(QUANTITY)
from 
	SALES
group by SEGMENT
union ALL
select 
	null,
	null,
	SUM(QUANTITY)
from 
	SALES;
----------------------------------------------------------------------
select 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	SALES
group by
grouping sets 
(
(BRAND, SEGMENT),
(BRAND),
(SEGMENT),
()
);
-------------------------------------------------------------------------
-- 그굽핑 되었으면0 안되어 있으면 1
--집계 기준이 뭔지 알 수 있다.
select 
	GROUPING(BRAND) as GROUPING_BRAND,
	GROUPING(SEGMENT) as GROUPING_SEGMENT,
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	SALES
group by
grouping sets 
(
(BRAND, SEGMENT),
(BRAND),
(SEGMENT),
()
);
------------------------------------------------------------
select 
case 
	when GROUPING(BRAND) = 0 and GROUPING(SEGMENT) = 0 then '브랜드+등급별'
	when GROUPING(BRAND) = 0 and GROUPING(SEGMENT) = 1 then '브랜드별'
	when GROUPING(BRAND) = 1 and GROUPING(SEGMENT) = 0 then '등급별'
	when GROUPING(BRAND) = 1 and GROUPING(SEGMENT) = 1 then '전체합계'
	else ''
	end as "집계기준",
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	SALES
group by
grouping sets 
(
(BRAND, SEGMENT),
(BRAND),
(SEGMENT),
()
);
