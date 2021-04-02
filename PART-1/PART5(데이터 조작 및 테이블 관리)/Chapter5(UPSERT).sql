--Chapter5 UPSERT문
--insert 시도할때 조건에 따라 update를 할 수 있는 구문이다.
CREATE TABLE CUSTOMERS 
(
CUSTOMER_ID SERIAL PRIMARY KEY
, NAME VARCHAR UNIQUE
, EMAIL VARCHAR NOT NULL
, ACTIVE BOOL NOT NULL DEFAULT TRUE
);

INSERT INTO CUSTOMERS (NAME, EMAIL)
VALUES
('IBM', 'contact@ibm.com'),
('Microsoft', 'contact@microsoft.com'),
('Intel', 'contact@intel.com');
COMMIT;
--------------------------------------------------
INSERT INTO CUSTOMERS (NAME, EMAIL)
VALUES
('Microsoft', 'hotline@microsoft.com')
on conflict(name)
do nothing;

COMMIT;
select * from customers;
--------------------------------------------------
insert into customers(name, email)
values
('Microsoft', 'hotline@microsoft.com')
on conflict(name)
do update 
	set email = EXCLUDED.EMAIL || ';' || CUSTOMERS.EMAIL;
commit;
select * from customers;
