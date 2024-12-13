/*
문자 자료형

고정 길이
CHAR(n) : 길이를 고정적으로 설정ㅇ
          무조건 초기에 작성한 길이만큼 공간 설정
VARCHAR : 변수 공간의 길이를 변경가능한 문자열
          실제 데이터의 길이만큼 저장                   255자자
TEXT    : 긴 글자를 저장할 때 사용                      65,535자자
MEDIUMTEXT : TEXT 보다 큰 텍스트를 저장 가능            16MB
LONGTEXT : TEXT, MEDIUMTEXT 보다 큰 텍스트를 저장       4GB

기타 자료형
BLOB : 이미지, 동영상 등과 같은 이진 데이터 저장
ENUM : 미리 정의된 값을 선택하는데 사용
       HTML에서 RADIO 처럼 지정된 벙뮈에서만 선택 가능
       작음 중간 큼 중에 하나를 선택해서 DB에 저장장
       ex) ENUM('small', 'medium', 'large')
SET  : 여러 값을 가질 수 있는 집합을 정의하는자료형 (다수 선택 가능)
       HTML CHECKBOX 처럼 다수 선택 DB에 저장
       ex) SET('독서', '낚시', '쇼핑')


CREATE TABLE 테이블명(
        USER_ID INT PRIMARY AUTO_INCREMENT
        GRANT ENUM('female', 'male')
        HOBBIES SET('reading', 'sports', 'traveling')
);

날짜자료형
DATE : 날짜만 저장 (YYYY-MM-DD)
DATETIME : 날짜와 시간을 함께 저장 (YYYY_MM_DD HH:mm:ss)
TIMESTAMP : 날짜와 시간을함께 저장, 값이 저장될 때 자동으로 현재시간으로 갱신
            TIMESTAMP DEFAULT CURRENT_TIMESTAMP 기본으로 현재시간 저장
TIME : 시간만 저장 (HH:mm:ss)
YEAR : 연도만 저장 (YYYY)
