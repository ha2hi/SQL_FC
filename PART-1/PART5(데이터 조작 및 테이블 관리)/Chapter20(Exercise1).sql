--Chapter20 실습문제1
--고객별 매출 순위를 알고 싶다. 신규 테이블을 생성해서 고객의 매출 순위를 구하여라
create table customer_rank as
select a.customer_id, row_number() over(order by a.sum_amount desc) as customer_rank
from 
(
select a.customer_id,
	   sum(amount) as sum_amount
from   payment a
group by customer_id
) a;
