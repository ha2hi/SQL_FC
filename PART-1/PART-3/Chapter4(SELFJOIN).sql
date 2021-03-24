--Chapter4 SELF조인
--같은 테이블 끼리 조인
CREATE TABLE EMPLOYEE
(
	EMPLOYEE_ID INT PRIMARY KEY,
	FIRST_NAME VARCHAR (255) NOT NULL,
	LAST_NAME VARCHAR (255) NOT NULL,
	MANAGER_ID INT, --관리자
	FOREIGN KEY (MANAGER_ID)
	REFERENCES EMPLOYEE (EMPLOYEE_ID)
	ON DELETE CASCADE
);
insert into employee(
	employee_id,
	first_name,
	last_name,
	manager_id
)
values
(1, 'Windy', 'Hays', NULL),
(2, 'Ava', 'Christensen', 1),
(3, 'Hassan', 'Conner', 1),
(4, 'Anna', 'Reeves', 2),
(5, 'Sau', 'Norman', 2),
(6, 'Kelsie', 'Hays', 3),
(7, 'Tory', 'Goff', 3),
(8, 'Salley', 'Lester', 3);
--조직도
commit;
--------------------------------------------------------------------------------
select 
	E.FIRST_NAME || '' || E.LAST_NAME as EMPLOYEE,
	M.FIRST_NAME || '' || M.LAST_NAME as MANAGER
from 
	EMPLOYEE E
inner join EMPLOYEE M
on M.EMPLOYEE_ID = E.MANAGER_ID
order by MANAGER;
--최상위 관리자는 안나옴
--------------------------------------------------------------------
select 
	E.FIRST_NAME || '' || E.LAST_NAME as EMPLOYEE,
	M.FIRST_NAME || '' || M.LAST_NAME as MANAGER
from 
	EMPLOYEE E
LEFT join EMPLOYEE M
on M.EMPLOYEE_ID = E.MANAGER_ID
order by MANAGER;
------------------------------------------------------------------
--영화의 상영 시간은 동일하면서 서로 다른영화
select 
	F1.TITLE,
	F2.TITLE,
	F1.LENGTH
from 
	FILM F1
inner join FILM F2
on F1.film_id <> F2.film_id 
and F1.length = F2.length
