--chapter2 ORDER BY
select 
	first_name,
	last_name
from
customer 
order by first_name asc;
----------------------------------------------------------------
select 
	first_name,
	last_name
from
customer 
order by first_name DESC;
-------------------------------------------------------------------
select 
	first_name,
	last_name
from
customer 
order by first_name ASC, -- 가독성
		 last_name DESC
;
---------------------------------------------------------------------
select 
	first_name,
	last_name
from
customer 
order by 1 ASC,
		 2 DESC
;
