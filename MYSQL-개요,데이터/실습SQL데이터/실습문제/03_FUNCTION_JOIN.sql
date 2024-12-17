-- 함수 이용한 select 작성

-- 'mysql' ' ' 'is' 'awesome!' 붙여서 출력
select concat('mysql' ' ' 'is' 'awesome!');

-- hello.world.program 에서 hello.world 까지만 출력
select substring_index('hello.world.program', '.', 2);

-- 전화번호 5678 이 들어가는 인원 수 user 수 확인
use khtuser;
select count(*)
from user
where phone like '%5678%';

-- product / concat 이용해서 제품명 : 울트라 게이밍 키보드, 가격 89000 원 출력
use khtshopping;
select concat('제품명 : ', name, ', 가격 ', floor(price), '원')
from product
where product_id = 3;

-- review 테이블에서 제품 아이디 3번의 댓글 길이 확인
use khtshopping;
select length(comment) from review where product_id = 3;

select char_length(comment) from review where product_id = 3;

-- review 제품 아이디 4번에 작성된 댓글에서 좋고 -> 훌륭하고 바꿔서 출력
use khtshopping;
update review set comment = concat(substring_index(COMMENT, '좋고', 1), '훌륭하고', substring_index(COMMENT, '좋고', -1)) where product_id = 4;

select * from `order`;
select * from order_item;
select * from product;
select * from review;

-- order 테이블 order_item 테이블 join

select O.order_id, O.user_id, O.status, O.total_amount, OI.product_id, OI.quantity, OI.price
from `order` O
join order_item OI
on O.order_id = OI.order_id;


select O.order_id, O.user_id, O.status, O.total_amount, OI.product_id, OI.quantity, OI.price, p.name
from `order` O
join order_item OI
on O.order_id = OI.order_id;
join product p
on p.product_id = oi.product_id;


-- product 테이블과 review 테이블 inner join
select p.product_id, p.name, r.user_id, r.rating, r.comment
from product p
inner join review r
on p.product_id = r.product_id;

-- left join 사용 order reivew 테이블 연결해서 모든 주문이 포함되도록 하되
-- review가 없는 주문은 null 로 표시되게 처리

select o.order_id, o.user_id, o.status, r.product_id, r.rating, r.comment
from `order` o
left join review r
on o.user_id = r.user_id; -- 모든 제품에 리뷰가 존재하기 때문에 null 값이 생길 일이 없음


-- review 테이블과 order 테이블을 right join으로 연결해서 모든 리뷰가 포함되도록 하고,
-- 주문 정보가 없는 경우는 null 로 표기되게 처리

select r.product_id, r.user_id, r.rating, r.comment, o.order_id, o.status
from review r
right join `order` o
on r.user_id = o.user_id;


use khtcafe;
select * from snack_order;

-- inner join
select s.id, s.name, s.category, s.price, s.stock
from snack s
inner join snack_order o
on s.id = o.snack_id; -- id 와 snack_id 값이 일치하는 데이터만 가져오기

-- left join
select s.id, s.name, s.category, s.price, s.stockm o.quantity, o.order_date, o.status
from snack s
left join snack_order o
on s.id = o.snack_id; -- 4번 아이디 조회x

-- right join
select s.id, s.name, s.category, s.price, s.stockm o.quantity, o.order_date, o.status
from snack s
right join snack_order o
on s.id = o.snack_id; -- 4번 아이디 조회x
-- snack_order 에 일치하는 주문이 없으면 null 표기
