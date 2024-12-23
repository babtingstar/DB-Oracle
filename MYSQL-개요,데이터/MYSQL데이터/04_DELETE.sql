/*
DML(Data Manipulation Language) : 데이터 조작 언어

-- 주의 : 혼자서 commit rollback 하지 말 것

DELETE

테이블에 행을 삭제하는 구문문

[작성법]
DELETE 테이블명 WHERE 조건설정;
-- 만약 WHERE 조건을 설정하지 않으면 모든 행이 다 삭제됨
-- 테이블 내에 있는 모든 ~ 데이터 삭ㅈ게를 원할 경우 ↓ 와 같이 작성
    DELETE 테이블명;

    만약에 데이터를 수정하거 삭제해야 하는 경우 발생

    -- 테이블과 테이블 내에 있는 데이터를 모두 복제해서 사용
    CREATE TABLE 복제해서 사용할 테이블명 AS SELECT * FROM 원본테이블명;
    복제해놓은 테이블 명에서 수정하고 추가하고 삭제할 수 있음
*/