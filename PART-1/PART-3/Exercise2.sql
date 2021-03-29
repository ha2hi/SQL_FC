--Part3 실습문제2
--RENTAL과 CUSTOMER 테이블을 이용하여 현재 까지 가장 많이 RENTAL을 한 고객의 ID, 렌탈 순위, 누적렌탈횟수, 이름을 출력하라
select
	*
from
	rental;

select 
	*
from 
	customer;

select 
	A.customer_id,
	count(*) as rental_count
from 
	rental A
inner join	customer B
on A.customer_id = B.customer_id
group by A.customer_id
order by rental_count desc;

select 
	A.customer_id,
	row_number() over (order by count(A.rental_id ) desc) as rental_rank,
	count(*) as rental_count,
	B.first_name,
	B.last_name
from 
	rental A
inner join	customer B
on A.customer_id = B.customer_id
group by A.customer_id, b.first_name, b.last_name
order by rental_rank 
limit 1;

--or

select 
	A.customer_id,
	row_number() over (order by count(A.rental_id ) desc) as rental_rank,
	count(*) as rental_count,
	max(B.first_name) as first_name,
	max(B.last_name) as last_name
from 
	rental A
inner join	customer B
on A.customer_id = B.customer_id
group by A.customer_id
order by rental_rank 
limit 1;
