--Chapter18 임시 테이블
--임시 테이블은 DB접속 세션의 활동 기간동안만 존재하는 테이블이다.
DROP TABLE TB_CUST_TEMP_TEST;

CREATE TEMP TABLE TB_CUST_TEMP_TEST(CUST_ID INT); --임시 테이블
insert into TB_CUST_TEMP_TEST values(1);
select * from TB_CUST_TEMP_TEST;
----------------------------------------------------------------------------
--기존의 테이블과 같은 이름의 임시테이블을 생성하면 어떻게 되는가?
DROP TABLE TB_CUST_TEMP_TEST;
CREATE TABLE TB_CUST_TEMP_TEST --일반 테이블
(CUST_ID SERIAL PRIMARY KEY,
CUST_NM VARCHAR NOT NULL);

CREATE TEMP TABLE TB_CUST_TEMP_TEST(CUST_ID INT); --임시 테이블
select * from TB_CUST_TEMP_TEST --임시테이블을 바라본다(연결을 끊고 재연결하면 일반테이블을 바라본다)
drop table TB_CUST_TEMP_TEST --임시테이블 부터 날라감(연결을 끊고 재연결하면 일반테이블을 바라본다)
