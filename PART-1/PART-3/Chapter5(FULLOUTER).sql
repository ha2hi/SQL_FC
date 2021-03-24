--Chapter05 FULL OUTER 조인
-- INNER, LEFT OUTER, RIGHT OUTER조인 집합을 모두 출력하는 조인
select 
	A.ID as ID_A,
	A.FRUIT as FRUIT_A,
	B.ID as ID_B,
	B.FRUIT as FRUIT_B
from basket_a A
full outer join basket_b B
on A.fruit = B.fruit; 
-------------------------------------------------------------------------------
--ONLY OUTER 조인
select 
	A.ID as ID_A,
	A.FRUIT as FRUIT_A,
	B.ID as ID_B,
	B.FRUIT as FRUIT_B
from basket_a A
full outer join basket_b B
on A.fruit = B.fruit
where A.id is null -- RIGHT OUTER
or B.id is null; -- left outer
-------------------------------------------------------------------------------
CREATE TABLE
IF NOT EXISTS DEPARTMENTS 
(
DEPARTMENT_ID SERIAL PRIMARY KEY
, DEPARTMENT_NAME VARCHAR (255) NOT NULL
);
CREATE TABLE
IF NOT EXISTS EMPLOYEES 
(
EMPLOYEE_ID SERIAL PRIMARY KEY
, EMPLOYEE_NAME VARCHAR (255)
, DEPARTMENT_ID INTEGER
);

INSERT INTO DEPARTMENTS
(DEPARTMENT_NAME)
VALUES
('Sales')
,('Marketing')
,('HR')
,('IT')
,('Production')

insert into EMPLOYEES(
EMPLOYEE_NAME, 
DEPARTMENT_ID)

VALUES
('Bette Nicholson', 1),
('Christian Gable', 1),
('Joe Swank', 2),
('Fred Costner', 3),
('Sandra Kilmer', 4),
('Julia Mcqueen', NULL);
------------------------------------------------------------------------
select 
	E.employee_name,
	D.department_name
from 
	employees E
full outer join departments D
on D.department_id = E.department_id;
------------------------------------------------------------------------
--right only
--left가 null인거
select 
	E.employee_name,
	D.department_name
from 
	employees E
full outer join departments D
on D.department_id = E.department_id
where E.employee_name is null;
--------------------------------------------------------------------
select 
	E.employee_name,
	D.department_name
from 
	employees E
right outer join departments D
on D.department_id = E.department_id
where E.employee_name is null; --소속된 직원이 없는 부서
--------------------------------------------------------------------
 --left only
--left가 null인거
select 
	E.employee_name,
	D.department_name
from 
	employees E
full outer join departments D
on D.department_id = E.department_id
where D.department_name is null; 
---------------------------------------------------------------------
select 
	E.employee_name,
	D.department_name
from 
	employees E
left outer join departments D
on D.department_id = E.department_id
where D.department_name is null; --부서가 없는 직원
