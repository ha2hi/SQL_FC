--Chapter13 컬럼 추가
CREATE TABLE TB_CUST (
CUST_ID SERIAL PRIMARY KEY
, CUST_NAME VARCHAR(50) NOT NULL
);

ALTER TABLE TB_CUST ADD COLUMN PHONE_NUMBER varchar(13);

ALTER TABLE TB_CUST 
ADD COLUMN FAX_NUMBER VARCHAR(13),
ADD COLUMN EMAIL_ADDR VARCHAR(50);

SELECT * FROM TB_CUST;
----------------------------------------------------------------------------
insert into tb_cust 
values
(1, '이경오', '02-123-1234', '02-123-1234', 'dbmsexpert@naver.com');
commit;

select * from tb_cust;

alter table tb_cust add column contact_nm varchar not null; --불가능
alter table tb_cust add column contact_nm varchar null;
update tb_cust set contact_nm = '홍길동' where cust_id = 1;
commit;
alter table tb_cust alter column contact_nm set not null;
