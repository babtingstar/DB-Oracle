/*
JOIN

두 개 이상의 테이블에서 데이터를 결합 할 때 사용하는 SQL 명령어

INNER JOIN
        두 테이블에 공통된 값이 있는 행만 조회회
LEFT JOIN(LEFT OUTER JOIN)
        왼쪽(첫 번째) 테이블의 모든 행을 가져오고,
        오른쪽 테이블의 값이 없으면 NULL로 채움
RIGHT JOIN(RIGHT OUTER JOIN)
        오른쪽(두 번째) 테이블의 모든 행을 가져오고,
        왼쪽 테이블의 값이 없으면 NULL 채움움
FULL JOIN(MYSQL 에서 직접적으로 지원 X, UNION 사용)
        LEFT JOIN과 RIGHT JOIN 을 합친 결과

*/