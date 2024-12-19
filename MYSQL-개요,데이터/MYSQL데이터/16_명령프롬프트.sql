/*
초기에 SQL 문을 명령 프롬프트(CMD) 창에서 작성 후 출력 결과 수정 확인
개발자가 직관적으로 확인할 화면이 필요

MYSQL - MYSQL Workbench
Oracle - Oracle Developer

DBeaver - 모든 SQL 회사 통합 화면 프로그램
UI 화면이 구현된 프로그램이 개발되어 SQL 개발을 편하게 할 수 있도록 제공

Microsoft Windows [Version 10.0.22631.4602]
(c) Microsoft Corporation. All rights reserved.

C:\Users\babti> mysql -u 유저명 -p

특정 데이터베이스 접속
C:\Users\babti> mysql -u 유저명 -p 데이터베이스명

-- 데이터베이스 관련 명령어

show databases; -- 데이터베이스 목록 확인
use 데이터베이스이름; -- 특정 데이터베이스 로 접속
show tables; -- 특정 데이터베이스 내에 존재하는 테이블들 목록 확인
show columns from 테이블명 -- 특정 테이블 내의 컬럼 구조 확인

이외 create delete commit 등 모든 명령어 사용 가능
세미콜론 작성하기 전까지 이어서 쿼리 작성 가능

mysql 종료 : exit quit 창닫기
*/