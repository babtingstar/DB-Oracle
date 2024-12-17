/*
case 문은 조건에 따라 다른결과를 반환하는데 사용
if-else 문과 비슷한 역할을 수행, 다양한 상황에 맞게 조건을 검사할 수 있음

특정 결과 값을 검사 후 도출하거나, 삽입 및 수정을 한 번에 처리할 때 사용하기도 함

1. case ... when ... then 문법 (다중 조건 처리)

여러 조건을 순서대로 검색하고, 조건에 맞는첫 번째 결과를 반환

조건이 일치하지 않으면 else 절에 지정된 값이 반환

[작성법]
case
    when 조건1 then 결과1
    when 조건2 then 결과2
    ...
    else 결과n
end



2. case 컬럼 비교 문법 (단일 값 비교)

단일 컬럼 값이 여러 조건 중 하나와 일치하는지를 검사하고, 일반적으로 값이 같은지 비교하는 데 사용

[작성법]
case
    when 조건1 then 결과1
    when 조건2 then 결과2
    ...
    else 결과n
end
*/

-- order 테이블에 작성된 컬럼 내 값을 한 번에 변경할 때 사용하는 예제

update `order'
set status = case
    when status = 'pending' then '대기'
    when status = 'shipped' then '배송중'
    when status = 'delivered' then '배송 완료'
    when status = 'cancelled' then '취소'
end;