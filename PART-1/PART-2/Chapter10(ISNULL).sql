--Chapter10 IS NULL연산자
--값이 널 값인지 아닌지 판단하는 연산자
--where COLUMN_NAME = NULL (x)
--where COLUMN_NAME IS NULL(o)
CREATE TABLE CONTACTS
(
	ID INT GENERATED BY DEFAULT AS IDENTITY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(255) NOT NULL,
	PHONE VARCHAR(15),
	PRIMARY KEY(ID)
);
-----------------------------------------------
insert
 into
  CONTACTS(FIRST_NAME, LAST_NAME, EMAIL, PHONE)
values
  ('John', 'Doe', 'jone.doe@example.com', NULL),
  ('Lily','Bush', 'lily.bush@example.com', '(408-234-2764)');
commit;
----------------------------------------------------------
select *
from contacts;
----------------------------------------------------------
select *
from contacts
where phone = NULL; --안됨
-----------------------------------------------------------
select *
from contacts
where phone is NULL;
--------------------------------------------------------select *
select *
from contacts
where phone is not NULL;