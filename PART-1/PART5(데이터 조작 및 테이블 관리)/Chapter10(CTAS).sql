--Chapter10 CTAS
--CREATE TABLE AS SELECT약어
--select나온값을 테이블을 만든다.
select * from category where category_id = 1;
--액션영화의 정보
SELECT
  A.FILM_ID,
  A.TITLE,
  A.RELEASE_YEAR,
  A.LENGTH,
  A.RATING
FROM
  FILM A
, FILM_CATEGORY B 
WHERE A.FILM_ID = B.FILM_ID
AND B.CATEGORY_ID = 1
;
--------------------------------------------------------------------
CREATE TABLE ACTION_FILM AS
SELECT
A.FILM_ID
, A.TITLE
, A.RELEASE_YEAR
, A.LENGTH
, A.RATING
FROM
FILM A, FILM_CATEGORY B 
WHERE A.FILM_ID = B.FILM_ID
AND B.CATEGORY_ID = 1;

select * from action_film;
--------------------------------------------------------------------
 CREATE TABLE if not exists ACTION_FILM AS
SELECT
A.FILM_ID
, A.TITLE
, A.RELEASE_YEAR
, A.LENGTH
, A.RATING
FROM
FILM A, FILM_CATEGORY B 
WHERE A.FILM_ID = B.FILM_ID
AND B.CATEGORY_ID = 1;
--에러는 안나지만 변화는 없음
