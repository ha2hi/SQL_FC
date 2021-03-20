-- chapter7 IN 연산자
  select 
		 customer_id,
		 rental_id,
		 return_date
    from rental
   where
	     customer_id in (1,2) --1혹은 2이냐
order by return_date DESC;
--가독성, 알아보기 쉽다.
-- 옵티마이저의 특성상 in조건 성능상 유리할때가 많다.
-- or
------------------------------------------
  select 
		 customer_id,
		 rental_id,
		 return_date
    from rental
   where
	     customer_id = 1
	  or
	  	 customer_id = 2
order by return_date DESC;
-------------------------------------------
  select 
		 customer_id,
		 rental_id,
		 return_date
    from rental
   where
	     customer_id not in (1,2) 
order by return_date DESC;
--------------------------------------------
  select 
		 customer_id,
		 rental_id,
		 return_date
    from rental
   where
	     customer_id <> 1
	 and customer_id <> 2
order by return_date DESC;
------------------------------------------------
select 
			customer_id
from
			rental
where
		cast(rental_date as date) ='2005-05-27';
-------------------------------------------------
--서브 쿼리
select 
			first_name,
			last_name
from 		customer
where 		customer_id in(
select                    --서브 쿼리
			customer_id
from 
			rental
where
cast(rental_date as date) ='2005-05-27');
