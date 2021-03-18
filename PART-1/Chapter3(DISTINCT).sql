--Chapter3 SELECT DISTINCT문
--중복제거
create table T1(ID SERIAL not null primary key, BCOLOR VARCHAR, FCOLOR VARCHAR);
insert 
 into T1(BCOLOR, FCOLOR)
values
('red', 'red'),
('red', 'red'),
('red', NULL),
(NULL, 'red'),
('red', 'green'),
('red', 'blue'),
('green', 'red'),
('green', 'blue'),
('green', 'green'),
('blue', 'red'),
('blue', 'green'),
('blue', 'blue');
commit;
select * from t1;
-----------------------------------------------------------------------------
select
	distinct BCOLOR
from 
 t1 
order by
 bcolor; 
 ------------------------------------------------------------------------------
select

	distinct BCOLOR, fcolor 
from 
 t1 
order by
 bcolor, fcolor;
---------------------------------------------------------------------------
--BCOLOR기준으로 FcolOR 오름차순에서 위에값 가지고옴
select 
	distinct on (BCOLOR) BCOLOR,
				FCOLOR
from 
 	t1 
 order by
 	bcolor, fcolor ;
 ---------------------------------------------------------------------------
 select 
	distinct on (BCOLOR) BCOLOR,
				FCOLOR
from 
 	t1 
 order by
 	bcolor, fcolor desc ;
