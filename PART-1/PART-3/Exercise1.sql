--Part3 조인과 집계 데이터 실습문제 1
--RENTAL 테이블을 이용하여 여느연월, 연월일, 전체 각각의 기준으로 RENTAL_ID기준 렌탈이 일어난 횟수를 출력하라.
select * from rental;
--년
--연월
--연월일
--ROLLUP을 사용한다.

--년 별
select
	to_char(rental_date, 'yyyy'),
	count(*)
from rental 
group by
	to_char(rental_date, 'yyyy');


--연월 별
select
	to_char(rental_date, 'yyyymm'),
	count(*)
from rental 
group by
	to_char(rental_date, 'yyyymm');

--연월일 별
select
	to_char(rental_date, 'yyyymmdd'),
	count(*)
from rental 
group by
	to_char(rental_date, 'yyyymmdd');
	
select 
	to_char(rental_date, 'yyyy'),
	to_char(rental_date, 'mm'),
	to_char(rental_date, 'dd'),
	count(*)
from 
	rental 
group by
	rollup(
	to_char(rental_date, 'yyyy'),
	to_char(rental_date, 'mm'),
	to_char(rental_date, 'dd')
	);
