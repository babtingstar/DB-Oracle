use khtuser;

select * from user;
select * from address;
select * from user_activity;

-- table user address user_activity 테이블 삭제
drop table user_activity;
drop table user;

select * from user_activity;

-- USER 와 ADDRESS 는 서로 부모 자식 관계로 ID로 연결되어 있어
-- USER를 삭제하기 위해서 ADDRESS 먼저 삭제를 진행해야함
-- FOREIGN KEY 로 ON DELETE CASCADE를 걸어주지 않기 때문에
-- 현재 시점에서 USER를 사용하면 ADDRESS만 남아있으므로 USER먼저 삭제 불가
-- DROP TABLE user    Error Code: 3730. 
-- Cannot drop table 'user' referenced by a foreign key constraint 
-- 'address_ibfk_1' on table 'address'.    0.000 sec

drop table address;
drop table user;

-- 사용자 테이블
create table user(
	user_id int auto_increment primary key, -- 기본키로 순차적으로 숫자 증가
    user_name varchar(50) not null, -- 이름은 중복 가능
    email varchar(100) not null unique, -- 이메일은 중복 불가능
    age int check(age>=18), -- check 자체로 이미 not null, 18세 이상
    create_at datetime not null default current_timestamp -- 가입일은 자동으로 생성 기준 시간으로 기입
    );
-- DATE 자료형은 current_timestamp 사용 불가
-- DATE 자료형은 Y-M-D 저장, DATEIME Y-M-D T-M-S 저장이라 서로 자료형이 다름    

-- 주문 테이블
    CREATE TABLE order_item(
        order_id INT AUTO_INCREMENT PRIMARY KEY,
        USER_ID INT NOT NULL,
        product_name varchar(100) not null,
        quantity int check (quantity > 0),
        order_date datetime not null default current_timestamp,
        
        foreign key(user_id) references user(user_id)
        on update cascade
        on delete cascade
        );
        
select * from user;
select * from order_item;

INSERT INTO USER (user_name, email, age)
VALUES
('김민수', 'minsu.kim@example.com', 28),
('이영희', 'younghee.lee@example.com', 34),
('박철수', 'chulsoo.park@example.com', 21),
('최지연', 'jiyeon.choi@example.com', 29),
('정다은', 'daeun.jung@example.com', 25),
('한승우', 'seungwoo.han@example.com', 32),
('김서연', 'seoyeon.kim@example.com', 22),
('이준호', 'junho.lee@example.com', 27),
('장민지', 'minji.jang@example.com', 30),
('윤성호', 'seongho.yoon@example.com', 24),
('강유진', 'yujin.kang@example.com', 26),
('조은비', 'eunbi.cho@example.com', 23),
('배현우', 'hyunwoo.bae@example.com', 31),
('신재은', 'jaeeun.shin@example.com', 28),
('홍길동', 'gildong.hong@example.com', 35),
('오지훈', 'jihoon.oh@example.com', 29),
('서미경', 'mikyoung.seo@example.com', 22),
('노수민', 'sumin.no@example.com', 20),
('하윤아', 'yuna.ha@example.com', 26),
('황도영', 'doyoung.hwang@example.com', 33);

INSERT INTO order_item (USER_ID, PRODUCT_NAME, QUANTITY)
VALUES
(1, '노트북', 1),
(2, '무선 이어폰', 2),
(3, '휴대폰 케이스', 3),
(4, '커피 머신', 1),
(5, '스마트 워치', 1),
(6, '책상', 1),
(7, '게이밍 마우스', 1),
(8, '키보드', 2),
(9, '스탠드 조명', 1),
(10, '운동화', 1),
(11, '휴대폰', 1),
(12, '캠핑 의자', 2),
(13, '캠핑 텐트', 1),
(14, '블루투스 스피커', 1),
(15, '전자책 리더기', 1),
(16, 'HDMI 케이블', 3),
(17, '모니터', 1),
(18, '가습기', 1),
(19, '공기청정기', 1),
(20, '프라이팬 세트', 1);

commit;

select * from order_item;
select * from user;

-- user concat, substring_index 이용해서 이메일 모두 @kht.co.kr 로 변경
set sql_safe_updates = 0;
update user set email = concat(substring_index(email, '@', 1), '@kht.co.kr');
set sql_safe_updates = 1;
select * from user;

-- inner join 이용해서 user_id, user_name, email, age, order_id, product_name, quantity, order_date 출력
select u.user_id, u.user_name, u.email, u.age, o.order_id, o.product_name, o.quantity, o.order_date
from user u
join order_item o
on u.user_id = o.user_id;

-- 최근 주문순으로 정렬 order by
-- select username product_name, order_date

select u.user_name, o.product_name, o.order_date
from user u
join order_item o
on u.user_id = o.order_id
order by o.order_date desc;