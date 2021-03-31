--실습문제2
--아래의 SQL문은 EXCEPT연산을 사용하여 재고가 없는 영화를 구하고 있다.
--EXCEPT연산을 사용하지 말고 같은 결과를 도출하라.
select 
	film_id,
	title
from 
	film 
except
select 
	distinct inventory.film_id,
	title
from 
	inventory 
inner join film 
on film.film_id = inventory.film_id 
order by title;
-------------------------------------------------------------------------------
select 
	film_id,
	title
from 
	film a
where not exists(
			select
				1
			from 
				inventory b, film c
			where b.film_id = c.film_id 
			and a.film_id = c.film_id 
		 		 );
------------------------------------------------------------------------
select 
	film_id,
	title
from 
	film a
where not exists(
			select
				1
			from 
				inventory b
			where 1=1
			and a.film_id = b.film_id 
		 		 );		
