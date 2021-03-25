--Chapter06 CROSS조인
create table cross_t1
(
	label char(1) primary key
);
create table cross_t2
(
	score int primary key
);

insert into cross_t1 (label)
values
('a'),
('b');
commit;

insert into cross_t2 (score)
values
('1'),
('2'),
('3');
commit;
-------------------------------------------------------------------------
--카디션곱 연산 
--on절이 없다
select 
	*
from 
	cross_t1 
cross join 
	cross_t2;
--------------------------------------------------------------------------
select * 
from cross_t1, cross_t2;
--cross조인과 동일
------------------------------------------------------------------------
select label,
	case when label = 'a' then sum(score)
		 when label = 'b' then sum(score) * -1
	else 0
	end as calc
from cross_t1 
cross join cross_t2
group by label
order by label;
