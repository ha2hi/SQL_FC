--Chapter8 GROUP BY
select
	customer_id
from
	payment
group by customer_id;
----------------------------------------------------
select 
	distinct customer_id
from
	payment;
-------------------------------------------------
--거래액이 가장 많은 고객순으로 출력
select
	customer_id,
	sum(amount) as AMOUT_SUM
from
	payment
group by customer_id
order by sum(amount) desc;
-------------------------------------------------------
select
	customer_id,
	sum(amount) as AMOUT_SUM
from
	payment
group by customer_id
order by AMOUT_SUM desc;
--------------------------------------------------------
--실적
--직원 1번, 2번 -> 1번은 이름이 하나, 2번 이름이 하나
select
	a.staff_id,
	count(a.payment_id) as count,
	b.first_name ||''|| b.last_name as name
from
	payment a, staff b
where a.staff_id = b.staff_id
group by a.staff_id, b.first_name, b.last_name;
