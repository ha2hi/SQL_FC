 --Chapter4 WHERE절
 select last_name,
 		FIRST_NAME
 from 
 	customer
 where first_name = 'Jamie';
 -----------------------------------------------------------------------
--ctrl + shift + enter 정렬해줌
 select last_name,
 		FIRST_NAME
   from 
 	    customer
  where first_name = 'Jamie'
    and last_name  = 'Rice';
 ----------------------------------------------------------------------
    select 
   		  customer_id,
   		  amount,
   		  payment_date
     from 
  	      payment
    where amount <= 1
  	   OR amount >= 8;
