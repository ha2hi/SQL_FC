--Chapter9 LIKE연산자
--컬럼의 값이 특정 값과 유사한 패턴을 갖는 집합을 출력
Select
	first_name,
	last_name
from
	customer
where
	first_name like 'Jen%';
--Jen으로 시작하는 집합을 출력
-------------------------------------
select
	'FOO' LIKE 'FOO',
	'FOO' LIKE 'F%',
	'FOO' LIKE '_O_',
	'BAR' LIKE 'B_';
-----------------------------------------------
Select
	first_name,
	last_name
from
	customer
where
	first_name like '%er%';
-----------------------------------------------
Select
	first_name,
	last_name
from
	customer
where
	first_name like '_her%';
-----------------------------------------------
Select
	first_name,
	last_name
from
	customer
where
	first_name not like 'Jen%';
