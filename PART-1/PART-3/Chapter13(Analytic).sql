--Chapter13 분석 함수란?
--결과 건수의 변화 없이 해당 집합안에서 합계 및 카운트 등을 계산
CREATE TABLE PRODUCT_GROUP(
GROUP_ID SERIAL PRIMARY KEY,
GROUP_NAME VARCHAR (255) NOT NULL);

CREATE TABLE PRODUCT(
PRODUCT_ID SERIAL PRIMARY KEY,
PRODUCT_NAME VARCHAR (255) NOT NULL,
PRICE DECIMAL (11,2),
GROUP_ID INT NOT NULL,
FOREIGN KEY (GROUP_ID)
REFERENCES PRODUCT_GROUP (GROUP_ID)
);

insert into PRODUCT_GROUP(GROUP_NAME)
values
('Smartphone'),
('Laptop'),
('Tablet');

insert into PRODUCT(PRODUCT_NAME, GROUP_ID, PRICE)
values
('Microsoft Lumia', 1, 200),
('HTC One', 1, 400),
('Nexus', 1, 500),
('iPhone', 1, 900),
('HP Elite', 2, 1200),
('Lenovo Thinkpad', 2, 700),
('Sony VAIO', 2, 700),
('Dell Vostro', 2, 800),
('iPad', 3, 700),
('Kindle Fire', 3, 150),
('Samsung Galaxy Tab', 3, 200);
--------------------------------------------------------------------
select 
	count(*)
from 
	product;
--집계함수
--한계
---------------------------------------------------------------------
select 
	count(*) over(), A.*
from 
	product A;
--분석 함수
