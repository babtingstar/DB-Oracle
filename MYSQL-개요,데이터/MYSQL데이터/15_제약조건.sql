/*
제약조건(CONSTRAINTS)

    사용자가 원하는 조건의 데이터만 유지하기 위해 특정 컬럼에 설정하는 제약
    데이터 무결성 보장을 목적으로 함

    *無缺性, INTEGRITY

    + 입력 데이터에 문제가 없는지 자동으로 검사하는 목적
    + 데이터의 수정/삭제 가능여부 검사 등을 목적으로 함
        -> 조약조건을 위배하는 DML은 

    제약조건 종류
    PRIMARY KEY, NOT NULL, UNIQUE, CHECK, FOREIGN KEY


    제약조건 확인하는 방법
    
    (ORACLE) 
    USER_CONSTRAINTS : 사용자가 작성한 제약조건을 확인하는 딕셔너리 뷰
    
    (MYSQL)
    테이블 제약조건 확인
    SELECT *
    FROM INFORMATION_SCHEMAS.TABLE_CONSTRAINTS
    WHERE TABLE_NAME = '테이블명'
    AND TABLE_SCHEMA = '데이터베이스명';

    컬럼 수준 제약조건 확인
    SELECT *
    FROM INFORMATION_SCHEMAS.KEY_COLUMN_USAGE
    WHERE TABLE_NAME = '테이블명'
    AND TABLE_SCHEMA = '데이터베이스명';
*/

/*
PRIMARY KEY(기본 키)
    - 각 행을 고유하게 식별하는 컬럼 또는 컬럼 조합
    - 테이블 당 하나의 PRIMARY KEY 만 설정
    - 기본 키로 설정된 컬럼은자동으로 UNIQUE와 NOT NULL 제약 조건을 가짐
        EX) 가입한 시간 순으로 회원번호가 순차적으로 부여
        
    [작성법]
    CREATE TABLE 테이블명(
      테이블_ID INT AUTO_INCREMENT PRIMARY KEY,
      유저명 VARCHAR(50)
      가입일자
      );
    
    TABLE_ID 컬럼은 PRIMARY 키이며, 각 키 값이 고유하고 NULL 값을 가질 수 없음

NOT NULL
    - 특정 컬럼이 NULL 값을 가질 수 없도록 제한
    - 데이터 입력 시 반드시 값을 제공해야하만함
    - DEFAULT 를 설정해서빈NULL 값 방지 가능

    [작성법]
    CREATE TABLE 테이블명(
      테이블_ID INT         AUTO_INCREMENT PRIMARY KEY,
      유저명 VARCHAR(50) NOT NULL DEFAULT CURRENT_DATE
      가입일자
      );
    -- DATE 자료형은 current_timestamp 사용 불가
    -- DATE 자료형은 Y-M-D 저장, DATEIME Y-M-D T-M-S 저장이라 서로 자료형이 다름    
    
    유저명 과 가입일자 모두 NULL 값 작성 X
    유저명 : 회원가입 시 유저가 유저명 작성하지 않으면 회운가입 X
    가입일자 : 회원 가입 시 유저가 일자를 작성하지 않아도 DB에 회원가입이 저장되는 시간 기준으로 저장

UNIQUE
    - 컬럼의 값이 고유해야 함을 보장
    - 테이블 내에서 중복된 값을 허용하지 않음
    - UNIQUE 쟈엑 조건은 NULL 값을 단 1회 허용
    - 한 테이블에여러 UNIQUE 컬럼 값을 가질 수 있음

[작성법]
    CREATE TABLE 테이블명(
      테이블_ID INT AUTO_INCREMENT PRIMARY KEY,
      이메일 VARCHAR(100) UNIQUE
      주민번호 VARCHAR(100) UNIQUE
      휴대폰번호 VARCHAR(100) UNIQUE
      가입일자
      );
    
    회원간에 이메일이 동일한 이메일이 없어야 함
    주민번호, 회원번호 또하 ㄴ다르 ㄴ유저하는 일칳ㄴ는 번호값이 없어야함

     kim@googlea.co.kr 000101-0101010
     kim@googlea.co.kr 000101-0101010
     kim@googleb.co.kr 000101-0202020 : 이메일이 중복이라 unique 조건 통과 x : db에 저장 안됨
     kim@googlec.co.kr 000101-0101010 : 주민번호가 중복이라 unique 조건 통화 x : db에 저장 안됨
     
CHECK
    - 특정 컬럼 값이 지정된 조건을 만족해야 함을 보장
    - MYSQL 8.0 이상에서 지원

    - 데이터 삽입 또는 업데이트 시 조건 검증
    - 조건 불만족할 경우 DB 저장 x

    [작성법]
    CREATE TABLE 테이블명(
      테이블_ID INT AUTO_INCREMENT PRIMARY KEY,
      가격 DECIMAL(10,2) CHECK (가격 > 0)
      );
    
    가격 컬럼은 0보다 큰 숫자값만 허용

FOREIGN KEY
    - 한 테이블의 컬럼이 다른 테이블의 PRIMARY KEY나 UNIQUE 컬럼을 참조하도록 설정
    - 데이터베이스내에서 테이블 가의 관계를 정의하는데 사용

    - 참조 무결성 유지
    - 부모 테이블의 데이터 변경 시 행동(삭제/업데이트) 제어할 수 있음

    ON DELETE 와 ON UPDATE 동작
        CASCADE : 참조하는 데이터가 변경되면 참조된 데이터도 함께 변경
        SET NULL : 참조된 데이터를NULL 로 변경
        RESTRICT : 변경을 제한

    CREATE TABLE 이츠(
    이츠회원번호
    카테고리이름
    가게번호
    )
    CREATE TABLE 이츠가게들(
    가게번호
    가게이름
    가게주소
    )
    CREATE TABLE 메뉴들 (
    메뉴번호
    가게번호
    메뉴이름
    메뉴가격
    )

    [작성법]
    CREATE TABLE customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
    );
    
    CREATE TABLE orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT FOREIGN KEY (customer id) REFERENCES customers(customer_id) ON DELETE CASCADE
    
    무조건 외래키 제약을 걸어 삭제하는 것이 좋은 게 아니라 상황에 따라 사용


*/