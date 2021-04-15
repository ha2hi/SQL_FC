--Chapter7 기본키
--유일, not null
--uniqe + not null (실체 무결성)
create table tb_product_pk_test
(
product_no integer,
description text,
product_cost numeric
);

alter table tb_product_pk_test add primary key (product_no);
---------------------------------------------------------------------------
create table tb_product_pk_test2
(
name varchar(255)
);

insert into tb_product_pk_test2 (name)
values
('microsoft'),
('IBM'),
('APPLE'),
('SAMSUNG');
commit;

select * from tb_product_pk_test2;

alter table tb_product_pk_test2 add column id serial primary key;
select * from tb_product_pk_test2;
----------------------------------------------------------------------
insert into tb_product_pk_test2
values
('LG');
----------------------------------------------------
--기본키제거
alter table tb_product_pk_test drop constraint tb_product_pk_test_pkey;
alter table tb_product_pk_test2 drop constraint tb_product_pk_test2_pkey;
select * from tb_product_pk_test2;
