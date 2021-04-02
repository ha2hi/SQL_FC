--Chapter 4 DELETE문
--특정 데이터를 삭제하거나 테이블의 모든 데이터를 삭제
select * from link_tmp;

select * from link;
---------------------------------------------------
delete
  from link
where id = 5 ;
commit;
---------------------------------------------------
select * from link;

delete 
	from 
		link_tmp A
using link B
where A.id = B.id;
commit;
---------------------------------------------------
delete from link;
commit;

delete from link_tmp;
commit;

select count(*) from link;
select count(*) from link;
