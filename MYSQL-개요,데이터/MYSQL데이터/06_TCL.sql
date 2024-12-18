/*
TLC(Transaction Control Language) : 트랜젝션 제어 언어

Transaction : 업무, 처리

-- 데이터 변경 사항을 ㅁㄲ어 하나의 트랜잭션에 담아 처리함
    (데이터 변경 사항을 묶어 하나의 업무로 담아 처리함)

-- 트랜잭션(업무, 처리)의 대상이 되는 데이터 변경 사항 : DML (INSERT, UPDATE, DELETE)

ex)
    INSERT 작업 / 완료 -----> DB 저장 X
    INSERT 작업 / 트랜잭션에 추가 / COMMIT / 완료 -----> DB에 저장 O

1) COMMIT : 최종 저장 완료료
                메모리 버퍼(트랜잭션)에 임시 저장된 데이터 변경 사항을 DB에 반영
2) ROLLBACK : 최종저장 취소소
                메모리 버퍼(트랜잭션)에 임시 저장된 데이터 변경사항을 삭제하고
                마지막 커밋 상태로 돌아감( == 작업내용 삭제)
3) SAVEPOINT : 메모리 버퍼(트랜잭션)에 저장 지점을 설정해서 ROLLBACK 수행 시 전체 작업을 삭제
                저장지점까지만 일부 ROLLBACK

            [SAVEPOINT 사용법]
            SAVEPOINT 임시저장이름1;

            SAVEPOINT 임시저장이름2;

            ROLLBACK TO 임시저장이름1; --> 임시저장이름1 까지 수정 삭제 삽입한 데이터 삭제하고 복구

            임시저장이름을 작성할 때 큰 따옴표로 감싸줌
            SAVEPOINT "SP3";
            ROLLBACK TO "SP3";
*/
/*
트랜잭션
Atomicity(원자성) : 트랜잭션에 포함된 작업이 모두 성공하거나 실패해야 함
			   중간의 일부만 실행 x
			   예) 은행 송금 시, 계좌 A 에서 출금 / 계좌 B 에서 입금 둘 중 하나만 실행할 수 없다

Consistency(일관성) : 트랜잭션이 실행되기 전과 후의 데이터 상태가 일관되어야 함
			      예) 은행 C 계좌 총액이 10만원이고, 입금/출금 행위가 없었다면, A-B 거래가 이뤄진 이후에도 10만원이여야 함

Isolation(격리성) : 여러 트랜잭션이 동시에 실행될 때, 서로의 작업에 영향을 주면 안됨
			  예) 두 사람이 동시에 같은 계좌에서 돈을 빼려 하면 충돌이 일어날 수 있으니, 하나씩 순서대로 처리

Durability(지속성) : 트랜잭션이 완료된 후의 결과는 영구적으로 저장
			   예) 시스템이 갑자기 다운되어도, 성공적으로 완료된 거래 결과는 유지되어야 함
				은행에서 5만원 송금 후, 서비스 점검으로 1시간 후에 계좌 확인을 했을때 송금내역이 존재해야 함
*/
/*
select * from khtuser.user;

start transaction; -- savepoint 를 사용하기 위해 transaction 시작 수동 제어
savepoint sp1; -- savepoint 지정
use khtuser; -- khtuser db 접속
update user set phone = substring_index(phone, ')', 1); -- update로 수정
select * from user; -- 수정 내용 확인(결과 : 실패)

rollback to sp1; -- savepoint로 롤백
update user set phone = substring_index(phone, ')', -1); -- 재수정
select * from user; -- 수정 내용 확인

commit; -- 결과 저장
*/