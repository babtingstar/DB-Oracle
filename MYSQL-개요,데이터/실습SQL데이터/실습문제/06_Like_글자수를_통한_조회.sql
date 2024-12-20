use khtuser;

select * from user;
select * from order_item;

-- null data 생성

use khtshopping;

select * from snack;
select * from snack_order;

-- COALESCE
-- 컬럼에 null 값이 존재할 경우 null 을 0 으로 대체해서 합계 계산

select stock from snack;
/*
50
30
null -> 0 으로 변경해서 합 계산
40
20
*/
select coalesce(stock, 0) from snack;
--  coalsece 이용해서 stock 합을 조회 sum
select SUM(coalesce(stock, 0))
from snack;

--  null 값을 5 로 대체해서 snack_order quantity sum 조회
select sum(coalesce(quantity, 5))
from snack_order;

-- snack 테이블에서 카테고리별 재고 합계
-- select category, stock 에서 null 은 0으로 대체
select category, sum(coalesce(stock, 0))
from snack
group by category;

-- snack order 테이블에서 상태별 주문량 합계
-- select status, quantity null 은 0으로 대체
select status, sum(coalesce(quantity, 0))
from snack_order
group by status;

-- view 테이블을 이용해서 view_status_null 가상 테이블 명칭 사용해서
-- view 테이블로 snack_order 테이블에서 상태별 주문량 합계를 저장

create view view_status_null
as select status, sum(coalesce(quantity, 0))
from snack_order
group by status;
select * from view_status_null;

create view view_status_null
as select status, coalesce(status, '없음'), (coalesce(quantity, 0))
from snack_order
group by status;
select * from view_status_null;
-- error code 1050 table view status null already exists
-- drop view_status_null
-- create or replace view_status_null...

-- ORACLE 에서는 COALESCE 대신 NVL, NULL값을 특정 값으로 대체

select * from product;

-- 한 으로 시작하는 상품명 찾아 조회하기
select name
from product
where name like '한%';

-- 한으로 끝나는 상품명 찾아 조회하기
select name
from product
where name like '%한';

-- like 는 글자수도 지정해서 조회 가능

-- 한으로 시작하고 '한' 글자 뒤에 8글자만 있는 문자열
select name
from product
where name like '한________'; 

-- 한으로 시작하고 '한' 글자 뒤에 9글자만 있는 문자열
select name
from product
where name like '한_________';

use khtuser;
select * from user;

set 
update email set concat(substring_index(email, 'kht', 1), '@', substring_index(email, 'kht', -1))
from user;
-- @ 앞의 글자가 9 글자인 username 조회