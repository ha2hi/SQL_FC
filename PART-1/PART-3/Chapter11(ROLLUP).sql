--Chapter 11 ROLLUP절
--SQL할때 수고를 덜어준다.
--GROUP BY와 같이 쓴다.
--1.ROLLUP 괄호안에 있는 컬림 기준으로 GROUPBY
--2.ROLLUP 괄호안에 있는 맨앞에 있는 컬럼 기준 GROUPBY
--3.전체 컬럼 기준 GROUP BY
SELECT 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
FROM 
	SALES 
GROUP BY
	BRAND, SEGMENT
ORDER BY
	BRAND, SEGMENT;

----------------------------------------------------------------------------
SELECT 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
FROM 
	SALES 
GROUP BY
	ROLLUP(BRAND, SEGMENT)
ORDER BY
	BRAND, SEGMENT;
------------------------------------------------------------------------------------
SELECT 
	SEGMENT,
	SUM(QUANTITY)
FROM 
	SALES 
GROUP BY
	SEGMENT;
-----------------------------------------------------------------------------------
SELECT 
	SEGMENT,
	SUM(QUANTITY)
FROM 
	SALES 
group by
rollup(segment)
order by
	segment;
----------------------------------------------------------------------------------
--GROUP BY별 합계 + ROLLUP절에 맨 앞에 쓴 컬럼 합계도 나오고 + 전체합계
--부분 ROLLUP은 전체 합계는 구하지 않는다
SELECT 
	SEGMENT,
	BRAND,
	SUM(QUANTITY)
FROM 
	SALES 
GROUP BY
	SEGMENT,
ROLLUP (BRAND)
ORDER BY 
	SEGMENT, BRAND;
--ROLLUP은 전체 합계는 구하지 않는다.
-------------------------------------------------------------------------
SELECT 
	BRAND,
	SEGMENT,
	SUM(QUANTITY)
FROM 
	SALES 
GROUP by BRAND,
	rollup (SEGMENT)
ORDER BY
	BRAND, SEGMENT;
