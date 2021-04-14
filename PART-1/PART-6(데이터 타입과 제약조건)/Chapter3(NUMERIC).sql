--Chapter3 NUMERIC
--NUMERIC 데이터 타입은 정수부터 실수형까지의 숫자를 표현하며 각각의 자릿수를 지정할 수 있는 타입이다.
CREATE TABLE PRODUCTS 
(
ID SERIAL PRIMARY KEY
, NAME VARCHAR NOT NULL
, PRICE NUMERIC (5, 2) --소수점 2자리까지 좋은 방법이 아님 소수점 3까지해서 다 나오게 해야됨
);
INSERT INTO PRODUCTS (NAME, PRICE)
VALUES
('Phone',500.215), 
('Tablet',500.214)
;
COMMIT;

select * from PRODUCTS;
------------------------------------------------------------------
INSERT INTO PRODUCTS (NAME, PRICE)
VALUES
('공기청정기',123456.21) --5자리 초과하여 에러 나옴
;
