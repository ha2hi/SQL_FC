--Chapter9 Having절
--GROUP BY의 결과를 특정 조건으로 필터링하는 기능
select 
	customer_id,
	sum(amount) as amount
from
	payment
group by customer_id
HAVING sum(amount) > 200;
---------------------------------------------------
select 
	a.customer_id,
 	b.email,
	sum(a.amount) as amount
from
	payment a, 
	customer b
where a.customer_id = b.customer_id
group by a.customer_id, b.email
HAVING sum(amount) > 200;
------------------------------------------------
select
	store_id,
	count(customer_id) as count
from
	customer
group by store_id
HAVING count(customer_id) > 300;
