--Chapter11 실습문제1
--PAYMENT 테이블에서 단일 거래의 AMOUNT의 액수가 가장 많은 고객들의 CUSTOMER_ID를 추출하라
select 
	customer_id
from
	payment
order by amount desc
limit 1;   --내 풀이
---------------------------------------------------------------------------------------
select 
	customer_id
from
	payment
order by amount desc
fetch first 1 row only;-- 내풀이
---------------------------------------------------------------------------------------
SELECT DISTINCT 
	A.CUSTOMER_ID 
FROM 
	PAYMENT A
WHERE A.AMOUNT IN (
					SELECT
						K.AMOUNT
					FROM
						PAYMENT K 
					ORDER BY K.AMOUNT DESC
					LIMIT 1) -- 강사님 풀이
