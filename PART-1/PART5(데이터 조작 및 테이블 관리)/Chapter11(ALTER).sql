--Chapter11 테이블 구조 변경
create table links(
link_id serial primary key,
title varchar(512) not null,
url varchar(1024) not null unique);
select * from links;

alter table links add column active boolean;
select * from links;

alter table links drop column active;
select * from links;

alter table links rename column title to link_title;  --컬럼 이름 변경
select * from links;

alter table links add column target varchar(10);
select * from links;

alter table links alter column target
set default '_blanks';
select * from links;
-----------------------------------------------------------------------
INSERT INTO LINKS (LINK_TITLE, URL)
VALUES
('PostgreSQL Tutorial','http://www.postgresqltutorial.com/');
COMMIT;

select * from links;
---------------------------------------------------------------------
ALTER TABLE LINKS ADD CHECK (TARGET IN ('_self', '_blank', '_parent', '_top'));
INSERT INTO LINKS(LINK_TITLE,URL,TARGET) 
VALUES('PostgreSQL','http://www.postgresql.org/','whatever');
--whatever은 check 제약조건을 위반한다.
