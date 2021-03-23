--Chapter5 LIMIT절
--출력하는 행의 수를 한정한다
--OFFSET은 시작위치를 정한다 시작위치는 0
  	  select 
  	  		   FILM_ID,
  	  		   TITLE,
  	  		   RELEASE_YEAR
  	    from
  	  		   film
  	order by   film_id --ORDER BY를 한 결과중에서 5건만
  	   limit   5;
------------------------------------------------------------------------
  	  select 
  	  		   FILM_ID,
  	  		   TITLE,
  	  		   RELEASE_YEAR
  	    from
  	  		   film
  	order by   film_id --ORDER BY를 한 결과중에서 5건만
  	   limit   4
  	  offset   3;  	  --4번째 행부터 시작
------------------------------------------------------------------------
  	  select 
  	  		   FILM_ID,
  	  		   TITLE,
  	  		   rental_rate 
  	    from
  	  		   film
  	order by   rental_rate desc --ORDER BY를 한 결과중에서 5건만
  	   limit   100;
