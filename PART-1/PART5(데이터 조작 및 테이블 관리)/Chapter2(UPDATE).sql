--Chapter2 UPDATE문
--테이블의 존재하는 데이터를 수정하는 작업이다.
--UPDATE를 한 후 재빨리 COMMIT해야 RDBMS의 동시성이 높아진다.
alter table link add column last_update date;
alter table link alter column last_update set default current_date;
select * from link;

update link 
set last_update = default 
where 
	last_update is null;

commit;

select * from link;
-----------------------------------------------------------
update link 
set rel = 'no data';

commit;

select * from link;
-----------------------------------------------------------
update link 
set description = name;

commit;

select * from link;
