-- 1. 시퀀스 생성 = 자동으로 증가하는 고유한 값을제공할 수 있도록 함
-- 테이블에서 데이터를 사용할 때 기본키에 회원가입한 순서를 작성
-- 사용법 CREATE SEQUENCE 시퀀스이름 START WITH 1 INCREMENT BY 1;
-- ex) CREATE SEQUENCE 먹고간다 START WITH 100 INCREMENT BY 1;
-- 먹고 가는 사람 수를 100부터 100, 101, 102, 103 ... 인원 체크
--	   CREATE SEQUENCE 가져간다 START WITH 700 INCREMENT BY 1;
-- 가져가는 사람 수를 700번부터 700, 701, 702, 703 ... 인원 체크

CREATE SEQUENCE seq_user; -- START WITH 1 INCREMENT BY 1 (DEFAULT)

-- 테이블 생성 / user 예약어 이기 때문에 테이블 명으로 작성할 경우 `` 이나 ""\ 로 만들기
-- oracle : "" / mysql : `` 으로 테이블명 작성

CREATE TABLE student(
	studentid NUMBER PRIMARY KEY,
	studentname varchar2(100),
	studentage NUMBER
	);

-- 2. 트리거 생성 : 데이터 삽입 시 시퀸스를 자동으로 활용할 수 있도록 설정
-- 트리거를 이용해서 테이블에 새로운 숫자값이 삽입될 때 시퀸스에 저장된 번호를호출해서 ID값을 자동 설정
-- 무엇을 만들거나 수정하거나 삭제할 때 OR REPLACE 사용하면 새로 만들거나 존재하면 덮어쓰기가 됨

DROP TRIGGER TRG_USER;

CREATE OR REPLACE
TRIGGER trg_user
BEFORE INSERT ON student
FOR EACH ROW
BEGIN -- 시퀀스를 사용해서 student 테이블 내 studentid 번호를 자동으로 생성
	: NEW.studentid := SEQ_USER.NEXTVAL;
END;

/*oracle 구문에서 어쩌구*/

INSERT INTO STUDENT(STUDENTNAME, STUDENTAGE) VALUES ('홍길동', 11);
INSERT INTO STUDENT(STUDENTNAME, STUDENTAGE) VALUES ('강철수', 12);
INSERT INTO STUDENT(STUDENTNAME, STUDENTAGE) VALUES ('박길자', 13);
INSERT INTO STUDENT(STUDENTNAME, STUDENTAGE) VALUES ('오말숙', 14);
INSERT INTO STUDENT(STUDENTNAME, STUDENTAGE) VALUES ('안정미', 15);
INSERT INTO STUDENT(STUDENTNAME, STUDENTAGE) VALUES ('기타', 14);
SELECT * FROM STUDENT;

SELECT trigger_name, status
FROM user_triggers
WHERE trigger_name = 'trg_user';

