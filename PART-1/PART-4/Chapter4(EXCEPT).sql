--Chapter4 EXCEPT연산
--차집합
--자주 쓰임
select 
	distinct inventory.film_id,
	film.title
from 
	inventory 
inner join	film 
on film.film_id = inventory.film_id
order by film.title;
--재고가 있는 영화
--영화와 인벤토리는 1:m 관계 -> 두 테이블을 조인하면 -> 영화 하나당 여러개의 재고가 나옴
--재고가 없는 영화는 어떻게 추출하는가?
--필름 - 재고가 존재 = 재고 존재x
--------------------------------------------------------------------
--전체 영화
select 
	film_id,
	title
from
	film
except
--재고가 존재하는 영화를 뺀다
select 
	distinct inventory.film_id,
	film.title
from 
	inventory 
inner join	film 
on film.film_id = inventory.film_id
order by title;
