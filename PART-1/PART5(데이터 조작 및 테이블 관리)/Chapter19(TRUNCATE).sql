--Chapter19 TRUNCATE
--대용량의 테이블을 빠르게 지우는 방법
--내용만 날리고 컬럼은 남김
--delete 와 비슷하지만 TRUNCATE는 속도가 빠른대신 되돌릴 수 없다.
create table big_table as
(select * from account);

select * from big_table;

truncate table big_table;

select * from big_table;
