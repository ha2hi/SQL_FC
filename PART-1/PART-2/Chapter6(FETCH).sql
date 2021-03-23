-- Chapter6 FETCH절
--행의 수를 한정한다. = LIMIT
	  select 
			 film_id,
			 title
	    from 
			 film 
	order by title
	fetch first row only;
----------------------------------------------------------------------------
	  select 
			 film_id,
			 title
	    from 
			 film 
	order by title
	fetch first 10 row only;
-----------------------------------------------------------------------------
	  select 
			 film_id,
			 title
	    from 
			 film 
	order by title
	offset 5 rows -- 0 1 2 3 4 5
				  -- 1 2 3 4 5 6
	fetch first 5 row only;
