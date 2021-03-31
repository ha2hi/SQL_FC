--Chapter6 ANY연산자
--서브쿼리를 쓸때 ANY연산자를 가지고 어떻게 집합을 뽑을건가
--어떠한 값이라도 만족을 하면 다 나옴
SELECT 
	TITLE,
	LENGTH
FROM
	FILM 
WHERE LENGTH >= ANY
(
SELECT 
	MAX(LENGTH)
FROM 
	FILM A, FILM_CATEGORY B
WHERE A.FILM_ID = B.FILM_ID 
GROUP BY B.CATEGORY_ID 
);
----------------------------------------------------------------------
SELECT 
	TITLE,
	LENGTH
FROM
	FILM 
WHERE LENGTH = ANY
(
SELECT 
	MAX(LENGTH)
FROM 
	FILM A, FILM_CATEGORY B
WHERE A.FILM_ID = B.FILM_ID 
GROUP BY B.CATEGORY_ID 
);
--in과 동일
-----------------------------------------------------------------------
SELECT 
	TITLE,
	LENGTH
FROM
	FILM 
WHERE LENGTH IN
(
SELECT 
	MAX(LENGTH)
FROM 
	FILM A, FILM_CATEGORY B
WHERE A.FILM_ID = B.FILM_ID 
GROUP BY B.CATEGORY_ID 
);
