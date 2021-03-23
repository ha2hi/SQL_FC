--Chapter1 조인이란?
-- 2개 이상의 테이블에 있는 정보 중 사용자가 필요한 집합에 맞게 가상의 테이블처럼 만들어서 결과를 보여주는 것이다.
--INNER 조인 : 특정 컬럼을 기준으로 정확히 매칭된 집합을 출력한다.
--OUTER 조인 : 특정 컬럼을 기준으로 매칭된 집합을 출력하지만 한쪽의 집합은 모두 출력하고 다른 한쪽의 집합은 매칭되는 컬럼의 값 만을 출력한다.
--SELF 조인 : 동일한 테이블 끼리의 특정 컬럼을 기준으로 매칭되는 집합을 출력한다.
--FULL OUTER 조인 : INNER, LEFT OUTER, RIGHT OUTER 조인 집합을 모두 출력한다.
--CROSS 조인 : Cartesian Product이라고도 하며 조인되는 두 테이블에서 곱집합을 반환한다.
--NATURAL 조인 : 같은 이름을 가진 컬럼 간의 조인집합을 출력한다.
CREATE table BASKET_A
(
	ID INT primary key,
	FRUIT VARCHAR (100) not null
);
create table BASKET_B
(
	ID INT primary key,
	FRUIT VARCHAR (100) not null
);
------------------------------------------------------------------------------------
insert into BASKET_A(ID, FRUIT)
values
(1, 'Apple'),
(2, 'Orange'),
(3, 'Banana'),
(4, 'Cucumber')
;
commit;

insert into BASKET_B(ID, FRUIT)
values
(1, 'Orange'),
(2, 'Apple'),
(3, 'Watermelon'),
(4, 'Pear')
;
commit;
