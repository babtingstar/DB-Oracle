SELECT * FROM khtshopping.view_order_summary;

use khtcafe;
select * from menu;

select * from khtcafe.menu;

-- use khtuser를 사용하지 않고 khtuser 내에 있는 user 테이블 조회
select * from khtuser.user;

-- user phone 앞에 작성된 kor) 제거
select * from khtuser.user;

-- set sql_safe_updates = 0;
-- update khtuser.user
-- set phone = concat('', substring_index(phone, ')', 1));
-- set sql_safe_updates = 1;
-- select * from khtuser.user;

start transaction; -- savepoint 를 사용하기 위해 transaction 시작 수동 제어
savepoint sp1; -- savepoint 지정
use khtuser; -- khtuser db 접속
update user set phone = substring_index(phone, ')', 1); -- update로 수정
select * from user; -- 수정 내용 확인(결과 : 실패)

rollback to sp1; -- savepoint로 롤백
update user set phone = substring_index(phone, ')', -1); -- 재수정
select * from user; -- 수정 내용 확인

commit; -- 결과 저장