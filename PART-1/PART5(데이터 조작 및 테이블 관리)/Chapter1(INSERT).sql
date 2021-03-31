--Part5 데이터 조작 및 테이블 관리
--Chapter1 INSERT문
create table link(
id serial primary key,
url varchar (255) not null,
name varchar (255) not null,
description varchar (255),
rel varchar(50)
);

insert 
	into link(url, name)
values
('http://naver.com', 'naver');
commit;

insert 
	into link(url, name)
values
('''http://naver.com''', '''naver'''); --작은 따옴표 2개는 1개로인식
commit;

insert 
	into link(url, name)
values
('http://naver.com', 'naver'),
('http://yahoo.com', 'yahoo'),
('http://bing.com', 'bing')
;
commit;
-----------------------------------------------------------
create table link_tmp as
select * from link where 0=1;

insert 
	into link_tmp 
select *
	from link;
commit;

select * from link_tmp
except
select * from link;
