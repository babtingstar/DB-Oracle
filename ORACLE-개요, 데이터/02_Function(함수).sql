/*
검색 대상과 조회대상 검색어를 모두 대문자나 소문자로 변환 후 비교

UPPER(컬럼명) : 컬럼명의 문자열을 모두 대문자로 변환
LOWER(컬럼명) : 컬럼명의 문자열을 모두 소문자로 변환


***** UPPER 대문자로 변환 *****
대소문자 구분 없이 특정 컬럼에서 데이터 조회하기
SELECT *
FROM 테이블명
WHERE UPPER(컬럼명) = UPPER('조회할데이터')

대소문자 구분 없이 특정 컬럼에서 조회할 데이터 이용해 찾기
SELECT *
FROM 테이블명
WHERE UPPER(컬럼명) LIKE UPPER('%조회할데이터%')

조회 결과를 대문자로 변환
SELECT UPPER(컬럼명) AS 대문자컬럼명
FROM 데이블명;



***** UPPER 소문자로 변환 *****
대소문자 구분 없이 특정 컬럼에서 데이터 조회하기
SELECT *
FROM 테이블명
WHERE LOWER(컬럼명) = LOWER('조회할데이터')

대소문자 구분 없이 특정 컬럼에서 조회할 데이터 이용해 찾기
SELECT *
FROM 테이블명
WHERE LOWER(컬럼명) LIKE LOWER('%조회할데이터%')

조회 결과를 소문자로 변환
SELECT LOWER(컬럼명) AS 소문자컬럼명
FROM 데이블명;



COUNT(컬럼명) : 특정 컬럼에서 조회된 행의 개수 반환
                컬럼 명이 들어가면 null 값은 제외되고 반환
COUNT(*) : 조회된 몯ㄴ 행의 개수 반환
COUNT(DISTINCT 컬럼명) : 특정 컬럼에서 중복값을 제외한 행의 개수 반환

AVG
*/