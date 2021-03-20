-- Chapter8 BETWEEN 연산자
--특정 범위안에 들어가는 집합을 출력하는 연산자
Select
		customer_id,
		payment_id,
		amount
from
		payment
where	amount	between 8 and 9;
-----------------------------------------------------
select
		customer_id,
		payment_id,
		amount
from
		payment
where	amount >= 8 and	amount <= 9;
------------------------------------------------------
select
		customer_id,
		payment_id,
		amount
from	
		payment
where amount	not Between 8 and 9;
-----------------------------------------------------
select
		customer_id,
		payment_id,
		amount
from	
		payment
where amount < 8 or	amount > 9;
------------------------------------------------------
select
		customer_id,
		payment_id,
		amount,
		payment_date
from
		payment
where 	cast(payment_date as date) between '2007-02-07' and '2007-02-15';
--payment_date는 timestamp형식
---------------------------------------------------------
select
		customer_id,
		payment_id,
		amount,
		payment_date
from
		payment
where	to_char(payment_date, 'yyyy-mm-dd') between '2007-02-07' and '2007-02-15';
--cast as <=> to_char
