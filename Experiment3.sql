-- List all employees and jobs in Department 30 in descending order by salary
SELECT ENAME, JOB, SAL
FROM EMPLOYEE
WHERE DEPTNO = 30
ORDER BY SAL DESC;



-- List job and department number of employees
whose name is five letters long, begins with A and ends with N
SELECT JOB, DEPTNO
FROM EMPLOYEE
WHERE ENAME LIKE 'A___N';


-- Display names of employees whose name starts with S
SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE 'S%';


-- Display names of employees whose name ends with S
SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '%S';


-- Display names of employees
-- working in department 10 or 20 or 40
-- OR working as clerk, salesman or analyst
SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO IN (10,20,40)
OR JOB IN ('CLERK','SALESMAN','ANALYST');



-- Display employee number and names for employees who earn commission
SELECT EMPNO, ENAME
FROM EMPLOYEE
WHERE COMM IS NOT NULL
AND COMM > 0;



-- Display employee number and total salary for each employee
SELECT EMPNO, (SAL + IFNULL(COMM,0)) AS TOTAL_SALARY
FROM EMPLOYEE;




-- Display employee number and annual salary for each employee
SELECT EMPNO, (SAL * 12) AS ANNUAL_SALARY
FROM EMPLOYEE;




-- Display names of employees
-- working as clerks and drawing salary more than 3000
SELECT ENAME
FROM EMPLOYEE
WHERE JOB = 'CLERK'
AND SAL > 3000;



-- Display names of employees
-- working as clerk, salesman or analyst
-- and drawing salary more than 3000
SELECT ENAME
FROM EMPLOYEE
WHERE JOB IN ('CLERK','SALESMAN','ANALYST')
AND SAL > 3000;
