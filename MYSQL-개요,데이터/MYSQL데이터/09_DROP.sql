/*

DDL(DATA DEFINITION LANGUAGE) : 데이터 정의 언어

만들고(CREATE)
수정하고(ALTER)
삭제(DROP)
등 데이터 전체 구조를 정의 하는 언어로 주로 DB관리자, DB설계자가 사용함

ORACLE
TABLE, VIEW, SEQUENCE, INDEX, PACKAGE, TRIGGER, PROCEDURE, FUNCTION, USER 등 생성성

PRIMARY KEY : 기준이 되는 키(중복 값이 가능하지만, 있으면 안됨)
AUTO_INCREMENT = 자동으로 번호가 증가 설정정

*/

-- DROP (삭제하다)
-- 테이블이나 컬럼을 삭제하는 정의어

-- [정의어]
-- 테이블을 삭제하는 경우
-- DROP TABLE 테이블명;

-- 특정 테이블에 존재하는 특정 컬럼을 삭제하는 경우
-- ALTER TABLE 테이블명 DROP 삭제할컬럼명;
-- ALTER TABLE 테이블명 DROP COLUMN 삭제컬럼명;