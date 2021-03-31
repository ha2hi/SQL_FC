--실습문제 1
--아래의 SQL문은 FILM테이블을 2번이나 스캔하고 있다. FILM테이블을 한번만 SCAN하여 동일한 결과 집합을 구하는 SQL을 작성하라
select 
	FILM_ID,
	TITLE,
	RENTAL_RATE
from 
	film 
where RENTAL_RATE >
(
	select 
		AVG(RENTAL_RATE)
	from 
		film
);
--------------------------------------------------------------------------------
select 
	FILM_ID,
	TITLE,
	RENTAL_RATE,
	AVG(RENTAL_RATE) over() as AVG_RENTAL_RATE
from 
	FILM A
---------------------------------------------------------------------------
select 
	FILM_ID,
	TITLE,
	RENTAL_RATE
from 
(
select 
	FILM_ID,
	TITLE,
	RENTAL_RATE,
	AVG(RENTAL_RATE) over() as AVG_RENTAL_RATE
from 
	FILM A
) A
where rental_rate > avg_rental_rate;
