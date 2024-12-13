/*
 n = 초대 문자 수
 p = 정수 개수
 s = 소수점 이하 최대 몇 자리 까지 올 수 있는지 자릿수 지정

 대표적으로 VARCHAR2 NUMBER TIMESTAMP 많이 사용

 1. 문자열 타입(Character Data Types)
    CHAR(n)         : 고정 길이 문자열
                      한 글자씩 최대 몇 글자씩 작성할 지 설정
                      미작성 시 1byte, 컬럼 하나에 [숫자/영어] 만, 한 글자 가능
    VARCHAR(n)      : Oracle 에서는 사용 불가, 표준 SQL 에서는 사용 가능
    VARCHAR2(n)     : VARCHAR 보다 더 큰 공간 사용 가능
                      필수로 길이를 지정해야 함(보통 255byte 로 작성)
                      Oracle 이외 어디든 사용 가능
                      가변 길이 문자열을 저장할 때 사용하는 데이터 타입
    CLOB(n)         : 메일이나 대량의 글자를 담을 때 사용하는 타입

 2. 숫자 데이터 타입(Numeric Data Types)
    Number(p, s)    : 숫자나 실수를담는 타입
                      p나 s를 작성하지 않는 경우, default 는 Number(38, 0)으로 설정
                      Number(38, 0) : 최대 38자리 정수 + 소수점 밑 실수 0 자리

 3. 날짜 및 시간 데이터 타입(Date And Time Data Types)
    DATE(n)         : 날짜 시간 시 분 초           기본크기 7byte
    TIMESTAMP       : 날짜 시간 시 분 초(nanoSec)  기본크기 7byte

 4. 이진 데이터 타입(Binary Data Type)
    BLOB            : 크기 제한 x
                      이미지, 동영상 등 여러 데이터 파일 저장 가능
                      최대 4GB 까지 저장 가능
                      유지비용이 높아서 현재는 주로 사용 x

 5. 논리형 데이터 타입(Oracle 에서만 사용 가능)
    BOOLEAN         : TRUE, FALSE, NULL 사용 가능   1byte 고정


 */