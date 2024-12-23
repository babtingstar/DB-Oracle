/*
DML(Data Manipulation Language) : 데이터 조작 언어

-- 주의 : 혼자서 commit rollback 하지 말 것

UPDATE

테이블에 기록된 컬럼의 값을 수정하는 구문

[작성법]
UPDATE 테이블명 SET 컬럼명 = 바꿀값 [WHERE 컬럼명 비교연산자 비교값];

-- 주의할 점
Error Code : 1265. Data truncated for column '컬럼명' at row

1. VARCHAR(25) 최대 25자 작성가능한 컬럼에 25자 초과해서 데이터를 작성하려 했을 경우

2. 자료형 ENUM 이나 SET 과 같이 컬럼에 들어갈 수 있는 데이터가 정해져 있고,
   정해진 데이터의 범위를 벗어났을 때 발생하는 에러
    ex) 컬럼값으로 shopping, reading 만 설정한 컬럼에 쇼핑, 책읽기 같은 데이터를 넣으려 했을 때 발생

        alter 를 이용해서 컬럼명에 들어갈 수 잇는 데이터로 쇼핑, 책읽기 추가
        Error Code : 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column
        안전 업데이트 모드를 사용중이고, 안전모드가 존재하는 경우 where 에서 key 값을 이용해서 업데이트 하거나
        To disable safe mode, toggle the option in Preference -> SQL Editor and reconnect
        안전 모드를 비활성화 한 다음에 수정 후 안전모드로 전환하기

        SET SQL_SAFE_UPDATES = 0; -- 안전모드 종료
        ALTER 이용해서 컬럼 수정 후 UPDATE 
        SET SQL_SAFE_UPDATES = 1; -- 안전모드 시작