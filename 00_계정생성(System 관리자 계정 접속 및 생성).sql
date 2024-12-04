/* ���� �ּ� ctrl + shift + / */
-- �� �� �ּ� ctrl + /
/* 
SQL 1�� ���� : CTRL + ENTER 
SQL 2�� �̻� ���� : (�� �巡�� ��) ALT + X
CTRL + SPACE ������(�÷���, ���̺�� ��) �ڵ��ϼ�

SELECT FROM�� ���� SQL ������ �빮�ڷ� �ۼ��ϴ� ���� �����ڵ鰣�� ���� ��Ģ
�÷����̳� ���̺�� �� ���� �����ڰ� ��ȸ�� ���ϴ� �ܾ ����� �ҹ��ڷ� �ۼ����ִ� ���� ����!!
*/

/* SELECT (��ȸ) 
    - ������ ���̺��� ���ϴ� �����͸� �����ؼ� ��ȸ�ϴ� SQL
    - �ۼ��� ������ �´� ��, �� �����Ͱ� ��ȸ��
     -> ��ȸ�� ��� ���� ���� == RESULt SET(��� ����)
    
    - ����� 0 �� �̻��� ���Ե� �� �ִ�
     -> �ֳ��ϸ� ���ǿ� �´� ���� ���� �� �ֱ� ����
*/

/* SELECT �ۼ��ϴ� ���
1. SELECT       *            FROM              ���̺��̸�;
   ��ȸ�ϴ�  ��系����   �����ȸ�� ���ΰ�?   ��ȸ�����̺��̸�;
*/
SELECT * FROM department; --department ��� ���̺� �ִ� ��� ���� ��ȸ�ϱ�

--QUIZ 1   LOCATION ���̺� ��� ��ȸ�ϱ�
select * FoRm location;

--QUIZ 2   JOB ���̺� ��� ��ȸ�ϱ�
select * from job;

--QUIZ 3   NATIONAL ���̺� ��� ��ȸ�ϱ�
select * from national;

--QUIZ 4   SAL_GRADE ���̺� ��� ��ȸ�ϱ�
select * from sal_grade;

/*
2. SELECT �÷���, �÷���, ... FROM ���̺��̸�;
���̺� ���ο� �ִ� ��� �÷��� ��ȸ�ϴ� ���� �ƴ϶� ��ȸ�ϰ� ���� �÷��� �����ؼ� ��ȸ

*/

-- EMPLOYEE ���̺��� ���(EMP_ID) �̸�(EMP_NAME) �޿�(SALARY) ��ȸ
SELECT emp_id, emp_name, salary from employee;

-- EMPLOYEE ���̺��� �̸�(emp_name) ��ȸ

/* ���� �ּ� ctrl + shift + / */
-- �� �� �ּ� ctrl + /
/* 

asterisk (*) : ���, �����ϴ� �� ��Ÿ���� ��ȣ (ALL)

SQL 1�� ���� : CTRL + ENTER 
SQL 2�� �̻� ���� : (�� �巡�� ��) ALT + X
CTRL + SPACE ������(�÷���, ���̺�� ��) �ڵ��ϼ�

SELECT FROM�� ���� SQL ������ �빮�ڷ� �ۼ��ϴ� ���� �����ڵ鰣�� ���� ��Ģ
�÷����̳� ���̺�� �� ���� �����ڰ� ��ȸ�� ���ϴ� �ܾ ����� �ҹ��ڷ� �ۼ����ִ� ���� ����!!
*/

/* SELECT (��ȸ) 
    - ������ ���̺��� ���ϴ� �����͸� �����ؼ� ��ȸ�ϴ� SQL
    - �ۼ��� ������ �´� ��, �� �����Ͱ� ��ȸ��
     -> ��ȸ�� ��� ���� ���� == RESULt SET(��� ����)
    
    - ����� 0 �� �̻��� ���Ե� �� �ִ�
     -> �ֳ��ϸ� ���ǿ� �´� ���� ���� �� �ֱ� ����
*/

/* SELECT �ۼ��ϴ� ���
1. SELECT       *            FROM              ���̺��̸�;
   ��ȸ�ϴ�  ��系����   �����ȸ�� ���ΰ�?   ��ȸ�����̺��̸�;
*/
SELECT * FROM department; --department ��� ���̺� �ִ� ��� ���� ��ȸ�ϱ�

--QUIZ 1   LOCATION ���̺� ��� ��ȸ�ϱ�
select * FoRm location;

--QUIZ 2   JOB ���̺� ��� ��ȸ�ϱ�
select * from job;

--QUIZ 3   NATIONAL ���̺� ��� ��ȸ�ϱ�
select * from national;

--QUIZ 4   SAL_GRADE ���̺� ��� ��ȸ�ϱ�
select * from sal_grade;

/*
2. SELECT �÷���, �÷���, ... FROM ���̺��̸�;
���̺� ���ο� �ִ� ��� �÷��� ��ȸ�ϴ� ���� �ƴ϶� ��ȸ�ϰ� ���� �÷��� �����ؼ� ��ȸ

*/

-- EMPLOYEE ���̺��� ���(EMP_ID) �̸�(EMP_NAME) �޿�(SALARY) ��ȸ
SELECT emp_id, emp_name, salary from employee;

-- EMPLOYEE ���̺��� �̸�(emp_name) ��ȸ
select emp_name from employee;

-- Employee ���̺��� emp_name hire_date ��ȸ
select emp_name, hire_date from employee;

-- DEPARTMENT ���̺��� �μ��ڵ� �μ��� ��ȸ (DEPT_ID, DEPT_TITLE)
select dept_id, dept_title from department;

-- DEPARTMENT ���̺��� ��� ������ ��ȸ
select * from department;

/* �÷� �� ��� ���� */
-- �÷� �� : ��� ���� �����Ǵ� ���̺��� �� ĭ�� �ۼ��� ��
-- select �� �ۼ� �� �÷��� ��� ������ ���� �ۼ��ϸ� ��ȸ����� �������� �ݿ��Ǿ� ��ȸ�ȴ�.

-- EMPLOYEE ���̺��� ��� ����� �̸�, �޿�, �޿� * 12�� �ؼ� ���� ��ȸ

SELECT EMP_ID, EMP_NAME, SALARY * 12 FROM employee;

SELECT EMP_ID, EMP_NAME, SALARY,  SALARY * 12 FROM employee;

-- SALAY * 12�� ��Ī�� �ٿ��� �����̶� ǥ���ϱ�
-- ������ �ٿ� �÷����� ��ȸ�Ǳ� ���Ѵٸ� AS ���� �� �ۼ����ָ� �ȴ�.
-- AS : Alias = ���� = ��Ī

SELECT EMP_ID, EMP_NAME, SALARY,  SALARY * 12 AS ���� FROM employee;

-- employee ���̺��� EMP_ID AS �������̵� , EMP_NAME = �����̸�, SALARY = ���� ���� ǥ���ؼ� ���
SELECT emp_id as �������̵� ,  emp_name as �����̸�, salary as ���� from employee;

/* SYSDATE  SYSTIMESTAMP */
-- (�ý����� ��Ÿ���� �ִ�) ���� �ð�

-- SYSDATE : ���� �ð� (�� �� �� �� �� ��) ��ȸ
-- SYSTIMESTAMP : ���� �ð� (�� �� �� �� �� �� ms+����(local)) ��ȸ

/* DUAL(DUmmy TAble) ��¥ ���̺�*/
-- ����̳� �ܼ� ������ ��ȸ�� ���� SQL���� �����ϴ� �������� �ʴ� ��¥ ���̺�

-- ��¥ ���̺��� �̿��ؼ� �ð� ��� ��ȸ�ϱ�

SELECT SYSDATE FROM DUAL; -- 24/12/04
SELECT SYSTIMESTAMP FROM DUAL; --24/12/04 14:37:05.941000000 +09:00

/*
��¥ ������ �����ϱ� ( + / - �� ����)
--> +1 == 1�� �߰�
--> -1 == 1�� ����
--> 1�� ������ ���
*/

-- ��¥ ���̺��� �̿��ؼ� [   ] AS ����, [  ] AS ����, [  ] AS ����, [  ] AS �� ��ȸ
SELECT SYSDATE-1 AS ����, SYSDATE AS ����, SYSDATE+1 AS ����, SYSDATE+2 AS ��, FROM DUAL;

-- TO_DATE('���ڿ�', '����');
-- ���ڿ��� ���� ���·� �ؼ��ؼ� DATE Ÿ������ �����ϴ� �Լ�

SELECT TO_DATE('2024-12-04', 'YYYY-MM-DD') FROM DUAL;

-- EMPLOYEE ���� ��� ����� �̸�, �Ի���, �ٹ� �ϼ�(SYSDATE - �Ի���) ��ȸ

SELECT EMP_NAME, HIRE_DATE, SYSDATE-HIRE_DATE FROM employee;

/*
3. SELECT Ư�� ������ ������ �����͸� ��ȸ

SELECT ��ȸ���÷���
FROM ��ȸ�����̺��
WHERE �����ۼ�;

WHERE ���� ���� ���� Ȯ��
IS NOT NULL = �� ���� �ƴ� ĭ

ex) �̸��� ��� �ִ� ��� ��ȸ :
select emp_name
from employee
whrere emp_name is null;

ex) �̸��� ��� ���� ���� ��� ��ȸ :
select emp_name
from employee
whrere emp_name is not null;
*/

-- ��翩�ΰ� Y �� ����� �̸��� ����� ��ȸ
SELECT EMP_NAME, ENT_DATE
FROM EMPLOYEE
WHERE ENT_YN = 'Y';

-- ���ʽ��� �ִ� ����� �̸��� ���ʽ� �ݾ� ��ȸ WHERE BONUS IS NOT NULL;
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
WHERE BONUS IS NOT NULL;

-- �޿��� 300���� �̻��� ����� �̸��� �޿��� ��ȸ
-- �޿� >= 30000000
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY >= 3000000;

-- DEPARTMENT ���̺��� LOCATION_ID �� 'L1' ������ ��ġ�� �μ��� ��� ���� ��ȸ
SELECT *
FROM DEPARTMENT
WHERE LOCATION_ID = 'L1';

-- EMPLOYEE ���̺��� �̸��� �ּҰ� ���� ����� �̸� ��ȸ
SELECT EMP_NAME
FROM EMPLOYEE
WHERE EMAIL IS NULL; -- ��� �ο��� �̸��� �ּҰ� �����ϱ� ������ �ƹ��͵� ǥ�õ��� �ʴ°� ����

-- EMPLOYEE ���̺��� �����ڰ� ���� ����� ���� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE MANAGER_ID IS NULL;

-- EMPLOYEE ���̺��� ��� ����� �̸�, �Ի���, �ٹ��ϼ�(���� �ð� - �Ի���) ��ȸ
SELECT EMP_NAME, HIRE_DATE, SYSDATE-HIRE_DATE
FROM EMPLOYEE;

-- FORMATTING�� Ȱ���ؼ� ���� ���� ����
-- FLOOR (�Ҽ��� �Ʒ� ��� ������) �̿��ؼ� ����
-- CELL (�ø� ó��)
-- ROUND (�ݿø�)
-- �ζ� ��ȣ �����ϱ� MATH.FLOOR(MATH.RANDOM());
SELECT EMP_NAME, HIRE_DATE, FLOOR(SYSDATE - HIRE_DATE) -- FLOOR �� ���� : �ݿø��ϸ� �Ի����� �Ϸ� �߰��ǹǷ�
FROM EMPLOYEE;

-- EMPLOYEE ���̺��� �μ� �ڵ尡 D9 �μ��� �ƴ� ����鸸 �÷��� ��� ��ȸ
SELECT *
FROM EMPLOYEE
WHERE DEPT_CODE != 'D9';


-- QUIZ 1.
-- EMPLOYEE ���̺��� ������ 5000���� ������ ����� ���, �̸�, ���� ��ȸ
-- EMP_ID EMP_NAME SALARY*12 AS ����
-- WHERE �� �䱸���׿� �°� �ۼ�
SELECT EMP_ID, EMP_NAME, SALARY*12 AS ����
FROM EMPLOYEE
WHERE SALARY*12 <= 50000000;

-- QUIZ 2.
-- EMPLOYEE ���̺��� �μ��ڵ尡 D6 �� �ƴ� ����� �̸� �μ��ڵ� ��ȭ��ȣ ��ȸ
SELECT EMP_NAME, DEPT_CODE, PHONE
FROM EMPLOYEE
WHERE DEPT_CODE != 'D6';

-- EMPLOYEE ���̺��� �μ��ڵ尡 D1, D3 �� �ƴ� ����� �̸� �μ��ڵ� ��ȸ
SELECT EMP_NAME, DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE != 'D3'
OR    DEPT_CODE != 'D1';

/*
WHERE ������ Ư�� ���� ������ ������ �� Ư�� ���� ������ ������ ����
AND = ���� ������ ���ÿ� �����ϴ� ���� AND�� �ۼ��� ������ ��� TRUE �̾�� ��
OR = �ϳ��� ���Ǹ� TRUE �̾ �ش� ���� ���õ�

IN () = ���ǿ� ���� ���� ������ �� ��� ���� ��� �� �ϳ��� ��ġ�ϴ� ���� ����
        OR�� ������ ǥ�� ���
NOT IN () = IN �� �ݴ��, ���ǿ��� ������ ��Ͽ� ���Ե��� �ʴ� ���� ����
            ���� ��ϰ� ��ġ���� �ʴ� �ุ ����
*/

-- EMPLOYEE ���̺��� �μ��ڵ尡 D1 D3 �� �ƴ� ��� ��ȸ
SELECT EMP_NAME, DEPT_CODE
FROM EMPLOYEE
WHERE DEPT_CODE NOT IN('D1', 'D3'); 
