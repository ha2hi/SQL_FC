--Part06 데이터 타입과 제약조건
--Chapter1 BOOLEAN
--BOOLEAN 데이터 타입은 참과 거짓에 대한 값을 저장하는 데이터 타입이다. 참(1), 거짓(0)
CREATE TABLE STOCK_AVAILABILITY 
(
PRODUCT_ID INT NOT NULL PRIMARY KEY
, AVAILABLE BOOLEAN NOT NULL
);
INSERT INTO STOCK_AVAILABILITY (PRODUCT_ID, AVAILABLE)
VALUES
(100, TRUE),
(200, FALSE),
(300, 't'),
(400, '1'),
(500, 'y'),
(600, 'yes'),
(700, 'no'),
(800, '0');
commit;

select * from STOCK_AVAILABILITY;
----------------------------------------------------------------------------------
select 
	*
from
	STOCK_AVAILABILITY
where available = 'YES';
---------------------------------------------------------------------------------
select 
	*
from 
	STOCK_AVAILABILITY
where available;
--------------------------------------------------------------------------
select 
	*
from 
	STOCK_AVAILABILITY
where available = 'no';
--------------------------------------------------------------
select 
	*
from 
	STOCK_AVAILABILITY
where not available;
