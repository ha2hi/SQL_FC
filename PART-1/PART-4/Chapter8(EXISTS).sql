--Chapter8 EXISTS연산자
--중요 중요 중요
--해당 집합이 존재하면 연산을 멈추므로 성능상 유리
select 
	first_name,
	last_name
from 
	customer c
where
exists ( select 1
		   from payment p 
		  where p.customer_id = c.customer_id
		    and p.amount > 11
	   )
order by first_name, last_name;
----------------------------------------------------------------------------
select 
	first_name,
	last_name
from 
	customer c
where
not exists ( select 1
		   from payment p 
		  where p.customer_id = c.customer_id
		    and p.amount > 11
	   )
order by first_name, last_name;
