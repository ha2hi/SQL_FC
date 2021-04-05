--Chapter12 테이블 이름 변경
create table vendors(
id serial primary key,
name varchar not null
);

alter table vendors rename to suppliers;
select * from suppliers;
select * from vendors;
--------------------------------------------------------------------------
create table supplier_groups
(
id serial primary key,
name varchar not null
);
alter table suppliers add column group_id int not null;
alter table suppliers add foreign key (group_id) references supplier_groups(id);

create view supplier_data as 
select
	S.ID,
	S.NAME,
	S.NAME "GROUP"
from 
	suppliers S, supplier_groups G
where G.ID = S.GROUP_ID;

select * from supplier_data;
-------------------------------------------------------------------------------
alter table supplier_groups rename to groups;

select * from supplier_data;
--테이블 이름 변경 가능하다. alter table - rename to -
