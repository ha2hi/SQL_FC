--Chapter12 CUBE절
--다차원 소계를 생성하는데 사용
--GROUP BY랑 같이 쓰임
--CUBE(A,B,C) => 2**3 모든 경우의 수 다보여줌
select 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	sales 
group by
	CUBE(BRAND, SEGMENT)
order by 
	BRAND,SEGMENT;
--CUBE() = GROUPBY 절 합계 + brand 합계 + segment별 + 전체합계
------------------------------------------------------------------------------
select 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	sales 
group by
	rollup(BRAND, SEGMENT)
order by 
	BRAND,SEGMENT;
--segment별 합계는 나오지 않는다.
----------------------------------------------------------------------------
--부분 CUBE()
select 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	sales 
group by brand,
	cube (SEGMENT)
order by 
	BRAND,SEGMENT;
-----------------------------------------------------------------------------
select 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
from 
	sales 
group by brand,
	rollup (SEGMENT)
order by 
	BRAND,SEGMENT;
