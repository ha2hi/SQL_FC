--Chapter17 테이블 제거
CREATE TABLE AUTHOR (
AUTHOR_ID INT NOT NULL PRIMARY KEY
, FIRSTNAME VARCHAR(50)
, LASTNAME VARCHAR(50)
);

CREATE TABLE PAGE (
PAGE_ID SERIAL PRIMARY KEY
, TITLE VARCHAR
(255) NOT NULL
, CONTENT TEXT
, AUTHOR_ID INT NOT NULL
, FOREIGN KEY (AUTHOR_ID) REFERENCES
AUTHOR (AUTHOR_ID)
);

INSERT INTO AUTHOR 
VALUES
(1, 'kyounhoh', 'Lee');

INSERT INTO PAGE 
VALUES
(1, 'SQL과 데이터베이스', 'drop table', 1);
COMMIT; 
-------------------------------------------------------------------------------------------
drop table author; --자식(페이지 테이블)이 있기 때문에
drop table page; --자식은 그냥날라감
drop table author cascade;--참조무결성 제약조건도 날라감
select * from author;
