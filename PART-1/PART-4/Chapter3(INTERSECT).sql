--Chapter03 INTERSECT연산
--두 개 이상의 SELECT 문들의 결과 집합을 하나의 결과 집합으로 결합한다.
CREATE TABLE EMPLOYEES 
(
EMPLOYEE_ID SERIAL PRIMARY KEY,
EMPLOYEE_NAME VARCHAR (255) NOT NULL
);

CREATE TABLE KEYS
(
EMPLOYEE_ID INT PRIMARY KEY,
EFFECTIVE_DATE DATE NOT NULL,
FOREIGN KEY (EMPLOYEE_ID)
REFERENCES EMPLOYEES (EMPLOYEE_ID)
);

CREATE TABLE HIPOS
(
EMPLOYEE_ID INT PRIMARY KEY,
EFFECTIVE_DATE DATE NOT NULL,
FOREIGN KEY (EMPLOYEE_ID)
REFERENCES EMPLOYEES(EMPLOYEE_ID)
);

insert into employees (employee_name)
values
('Joyce Edwards'),
('Diane Collins'),
('Alice Stewart'),
('Julie Sanchez'),
('Heather Morris'),
('Teresa Rogers'),
('Doris Reed'),
('Gloria Cook'),
('Evelyn Morgan'),
('Jean Bell');
commit;

insert into keys
values
(1, '2000-02-01'),
(2, '2001-06-01'),
(5, '2002-01-01'),
(7, '2005-06-01');
commit;

insert into hipos 
values
(9, '2000-01-01'),
(2, '2002-06-01'),
(5, '2006-06-01'),
(10, '2005-06-01');
commit;
------------------------------------------------------------------------
select 
	employee_id
from
	keys
intersect
select
	employee_id
from 
	hiops;
--inner조인 연산과 결과가 동일함
--성능상 이렇게 안쓰고 inner조인을 쓴다.
----------------------------------------------------------------------
select 
	A.employee_id
from 
	keys A, hipos B 
where A.employee_id = B.employee_id;
----------------------------------------------------------------------
select 
	employee_id
from
	keys
intersect
select
	employee_id
from 
	hipos
order by employee_id desc;
