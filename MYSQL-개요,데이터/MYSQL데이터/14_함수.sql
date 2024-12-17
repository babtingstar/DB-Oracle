/*
함수

concat = 여러 문자열을 하나의문자열로 결합하는 함수
[작성법]
concat(string1, string2, string3, ..., stringN)

ex) select concat('hello', ' ', 'world, '!');
    => 출력결과 : hello world!


substring_index = 문자열에서 특정 구분자를 기준으로 일부만 잘라서 가져오는 함수
[작성법]
substring_index(string, 구분기준, count);
                                    count : +(양수)일 때, 구분 기준으로 왼쪽부터 count 만큼 가져오기
                                    count : -(음수)일 때, 구분 기준으로 오른쪽부터 count 만큼 가져오기기

ex) select substring_index('user@example.com', '@', 1);
@기준으로 왼쪽 부분 첫 번째만 가져오기
=> 출력결과 : user

ex) select substring_index('user@example.com', '@', -1);
@기준으로 오른쪽쪽 부분 첫 번째만 가져오기
=> 출력결과 : example.com

<null 연산> : IS NULL / IS NOT NULL;

EXTRACT() : 지정된 년, 월,일 을 선택해서 추출

SYSDATE : 현재시간(ms 미포함)
SYSTIMESTAMP : 현재시간

REPLACE() : 문자열 바꾸기
LENGTH() : 문자열 길이 반환

INSTR() : 찾을 시작 위치부터 지정된 순번째 찾은 문자열의 시작 위치를 반환
SUBSTR() : 문자열을 시작 위치부터 지정된 길이만큼 잘라내서 반환

TRIM() : 주여진 문자열의        앞  /     뒤     /    양쪽      에 존재하는 지정된 문자열 제거
                           LEADING / TRAILING  /    BOTH


TRUNC() : 버림
FLOOR() : 내림
CEIL() : 올림
ROUND() : 반올림

AVG() : 평균
MAX() : 최대
MIN() : 최소
SUM() : 합
        select sum(*) from user; --> 회원 총 인원 수
        select sum(*) from product where product_name like (%?);
COUNT() : 총 합 -> 추후 로그인 시 사용될 예정
                select count(*) from user where id = ? and pw = ?;
                => id 와 pw 가 일치하는 회원이 존재하면 count 1, 존재하지 않으면 count 0;