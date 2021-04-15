--Chapter6 DATE, TIME, TIMESTAMP
select now()::date;
select current_date;
select to_char(now()::date, 'dd/mm/yyyy');
select to_char(now()::date, 'Mon dd, yyyy');

select 
	first_name,
	last_name,
	now() - current_date as diff
from 
	customer;

select 
	first_name,
	last_name,
	age(create_date) as diff
from 
	customer;
-------------------------------------------------------------------------
select 
	first_name,
	last_name,
	extract(year from create_date) as year,
	extract(month from create_date) as month,
	extract(day from create_date) as day
from
	customer;
-----------------------------------------------------------------------
select current_time;
select localtime;

select 
	localtime,
	extract(hour from localtime) as hour,
	extract(minute from localtime) as minute,
	extract(second from localtime) as second;
------------------------------------------------------------------------
select time '10:00' - time '02:00' as diff;
select time '10:59' - time '02:01' as diff;
select time '10:59:59' - time '02:01:01' as diff;

select 
	localtime,
	localtime + interval '2 hours' as plus_2hours,
	localtime - interval '2hours' as minus_2hours;
--------------------------------------------------------------------
--TIMESTAMP 데이터 타입
select now();
select current_timestamp;
select timeofday();

SELECT
TO_CHAR(current_timestamp, 'YYYY')
, TO_CHAR(current_timestamp, 'YYYY-MM')
, TO_CHAR(current_timestamp, 'YYYY-MM-DD')
, TO_CHAR(current_timestamp, 'YYYY-MM-DD HH24')
, TO_CHAR(current_timestamp, 'YYYY-MM-DD HH24:MI')
, TO_CHAR(current_timestamp, 'YYYY-MM-DD HH24:MI:SS')
, TO_CHAR(current_timestamp, 'YYYY-MM-DD HH24:MI:SS.MS')
, TO_CHAR(current_timestamp, 'YYYY-MM-DD HH24:MI:SS.US');
