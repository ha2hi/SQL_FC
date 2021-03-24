--Chapter2 INNER JOIN
select 
	A.CUSTOMER_ID,
	A.FIRST_NAME,
	A.LAST_NAME,
	A.EMAIL,
	B.AMOUNT,
	B.PAYMENT_DATE
from 
	CUSTOMER A
inner join PAYMENT B
on A.customer_id = b.customer_id;
-- 한명의 고객은 여러건의 결제를 할수있다. -> 1:M 관계
select count(*) from payment
---------------------------------------------------------------------------------
select 
	A.CUSTOMER_ID,
	A.FIRST_NAME,
	A.LAST_NAME,
	A.EMAIL,
	B.AMOUNT,
	B.PAYMENT_DATE
from 
	CUSTOMER A
inner join PAYMENT B
on A.customer_id = b.customer_id
where A.customer_id = 2;
----------------------------------------------------------------------------------
SELECT 
	A.CUSTOMER_ID,
	A.FIRST_NAME,
	A.LAST_NAME,
	A.EMAIL,
	B.AMOUNT,
	B.PAYMENT_DATE,
	C.FIRST_NAME AS S_FIRST_NAME,
	C.LAST_NAME AS S_LAST_NAME
FROM 
	CUSTOMER A
INNER JOIN PAYMENT B
ON A.CUSTOMER_ID = B.CUSTOMER_ID
INNER JOIN STAFF C
ON B.STAFF_ID = C.STAFF_ID ;
