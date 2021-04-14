--Chapter2 CHAR, VARCHAR, TEXT
--CHAR : 고정형 길이, 공간이 남을시 공백으로 패딩
--VARCHAR : 가변형 길이, 공간이 남을시 공백으로 패딩하지 않음
--TEXT : 무한대 길이의 문자열을 저장
CREATE TABLE CHARACTER_TESTS
(
ID SERIAL PRIMARY KEY,
X CHAR (3),
Y VARCHAR (10),
Z TEXT
);

INSERT INTO CHARACTER_TESTS
VALUES
(1, 'Y', 'YES', 'YESYESYES')
;
COMMIT;

select * from CHARACTER_TESTS;
-----------------------------------------------------------------
INSERT INTO CHARACTER_TESTS
VALUES
(2, 'Y', 'Y', 'YESYESYES')
;
COMMIT;

select * from CHARACTER_TESTS
where x=y;
