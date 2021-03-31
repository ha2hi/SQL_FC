--Chapter7 ALL연산자
--서브쿼리의 모든 값이 만족해야만 조건이 성립된다.
SELECT 
	TITLE,
	LENGTH
FROM
	FILM 
WHERE LENGTH >= ALL
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
WHERE LENGTH >= ALL
(
SELECT 
	ROUND(AVG(LENGTH), 2)
FROM 
	FILM 
GROUP BY LENGTH
);
