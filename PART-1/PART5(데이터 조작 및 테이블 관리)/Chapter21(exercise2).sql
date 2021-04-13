--Chapter21 실습문제2
--매달 마다 매출 순위 1위를 한 고객에게 특별한 선물을 주고자 한다.
select a.customer_id, a.yyyymm, a.sum_amount,
row_number() over(partition by a.yyyymm order by a.sum_amount desc) as rank_yyyymm
from 
(
select a.customer_id, 
	   to_char(payment_date, 'yyyymm') as yyyymm,
	   sum(a.amount) as sum_amount
from   payment a
group by a.customer_id,
		 to_char(payment_date, 'yyyymm')
) a
order by yyyymm, rank_yyyymm;
