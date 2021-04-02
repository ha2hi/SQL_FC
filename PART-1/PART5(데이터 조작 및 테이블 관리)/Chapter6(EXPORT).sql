--Chapter06 EXPORT작업
--데이터로 추출하는 작업
copy category(category_id, name, last_update)
to 'c:\tmp\db_category.csv'
delimiter ',' -- csv
--delimiter '|' txt파일
csv header;
