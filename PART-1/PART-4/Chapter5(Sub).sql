--Chapter5 서브쿼리란?
--두개의 SQL을 결합하여 하나의 SQL문으로 결과를 도출 할 수 없을까?
--중첩 서브쿼리
select
	avg(rental_rate)
from 
	film;
---------------------------------------------------------------------
select 
	film_id,
	title,
	rental_rate
from
	film;
---------------------------------------------------------------------
select 
	film_id,
	title,
	rental_rate
from
	film
where rental_rate > 
(select
	avg(rental_rate)
from 
	film
);
------------------------------------------------------------------------
--인라인뷰 서브쿼리
--from에 있는 서브쿼리를 인라인뷰라고 한다.
select 
	A.film_id,
	A.title,
	A.rental_rate
from 
	film A,
	(select 
		avg(rental_rate) as avg_rental_rate
	 from
	 	film 
	) B
where A.rental_rate > B.avg_rental_rate;
----------------------------------------------------------------------------
--스칼라 서브쿼리
select 
	A.film_id,
	A.title,
	A.rental_rate
from 
(
select 
	A.film_id,
	A.title,
	A.rental_rate,
	(
	 select 
	 	avg(L.rental_rate)
	 from
	 	film L
	 ) as avg_rental_rate
from
	film A
) A
where A.rental_rate > A.avg_rental_rate;
