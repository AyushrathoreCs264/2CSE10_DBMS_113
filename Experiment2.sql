-- List all distinct jobs
SELECT DISTINCT JOB FROM EMPLOYEE;


-- Employees in department 30
SELECT * FROM EMPLOYEE
WHERE DEPTNO = 30;


-- Department numbers with department number greater than 20
SELECT * FROM DEPARTMENT
WHERE DEPTNO > 20;


-- Managers and clerks in department 30
SELECT * FROM EMPLOYEE
WHERE DEPTNO = 30
AND JOB IN ('MANAGER','CLERK');


-- Employee name, number, department of all clerks
SELECT ENAME, EMPNO, DEPTNO
FROM EMPLOYEE
WHERE JOB = 'CLERK';


-- Managers not in department 30
SELECT * FROM EMPLOYEE
WHERE JOB = 'MANAGER'
AND DEPTNO <> 30;


-- Employees in dept 10 who are not managers or clerks
SELECT * FROM EMPLOYEE
WHERE DEPTNO = 10
AND JOB NOT IN ('MANAGER','CLERK');


-- Employees earning between 1200 and 1400
SELECT ENAME, JOB, SAL
FROM EMPLOYEE
WHERE SAL BETWEEN 1200 AND 1400;


-- Clerks, analysts or salesman
SELECT ENAME, DEPTNO
FROM EMPLOYEE
WHERE JOB IN ('CLERK','ANALYST','SALESMAN');


--  Employees whose name starts with M
SELECT ENAME, DEPTNO
FROM EMPLOYEE
WHERE ENAME LIKE 'M%';
