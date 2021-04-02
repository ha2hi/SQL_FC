--Chapter7 IMPORT작업
create table CATERGORY_IMPORT
(
CATEGORY_ID SERIAL not null,
NAME VARCHAR(25) not null,
LAST_UPDATE TIMESTAMP not null default NOW(),
constraint CATEGORY_IMPORT_PKEY primary key (CATEGORY_ID)
);
