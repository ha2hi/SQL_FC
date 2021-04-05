--Chapter9 테이블 생성
--NOT NULL : 컬럼은 NULL이 저장될 수 없다.
--UNIQUE : 컬럼의 값은 유일해야 한다. NULL가능
--PRIMARY KEY : 컬럼의 값이 유일해야하고 반드시 NOT NULL이어야 한다.
--CHECK : 컬럼은 지정하는 조건에 맞는 값이 들어가야 한다.
--REFERENCE : 다른테이블의 값을 참조한다.
CREATE TABLE ACCOUNT
(
USER_ID SERIAL PRIMARY KEY
, USERNAME VARCHAR (50) UNIQUE NOT NULL
, PASSWORD VARCHAR (50) NOT NULL
, EMAIL VARCHAR (355) UNIQUE NOT NULL
, CREATED_ON TIMESTAMP NOT NULL
, LAST_LOGIN TIMESTAMP
);

CREATE TABLE ROLE
(
ROLE_ID SERIAL PRIMARY KEY
, ROLE_NAME VARCHAR (255) UNIQUE NOT NULL
)
;

CREATE TABLE ACCOUNT_ROLE
(
USER_ID INTEGER NOT NULL
, ROLE_ID INTEGER NOT NULL
, GRANT_DATE TIMESTAMP WITHOUT TIME ZONE
, PRIMARY KEY (USER_ID, ROLE_ID)
, CONSTRAINT ACCOUNT_ROLE_ROLE_ID_FKEY FOREIGN KEY (ROLE_ID) 
REFERENCES ROLE (ROLE_ID) MATCH SIMPLE
ON UPDATE NO ACTION ON DELETE NO ACTION
, CONSTRAINT ACCOUNT_ROLE_USER_ID_FKEY FOREIGN KEY (USER_ID) 
REFERENCES ACCOUNT (USER_ID) MATCH SIMPLE ON
UPDATE NO ACTION ON DELETE NO ACTION
);
--------------------------------------------------------------------------------
insert into account
 VALUES (1, '이경오', '1234', 'dbmsexpert@naver.com', CURRENT_TIMESTAMP, null );
COMMIT;

select * from account;
-------------------------------------------------------------------
insert into role
values(1,'DBA');
commit;

select * from role;
--------------------------------------------------------------------
insert into account_role
values(1, 1, CURRENT_TIMESTAMP);
commit;

select * from account_role;
--------------------------------------------------------------------
update account_role 
set user_id = 2
where user_id = 1; --안됨 참조무결성 위배
------------------------------------------------------------------
delete from account 
where user_id = 1; -- 안됨 참조무결성 위배
