-- Display the total number of employees working in the company
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE;


-- Display the total salary being paid to all employees
SELECT SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE;


-- Display the maximum salary from employee table
SELECT MAX(SAL) AS MAX_SALARY
FROM EMPLOYEE;


-- Display the minimum salary from employee table
SELECT MIN(SAL) AS MIN_SALARY
FROM EMPLOYEE;



-- Display the average salary from employee table
SELECT AVG(SAL) AS AVG_SALARY
FROM EMPLOYEE;


-- Display the maximum salary being paid to clerk
SELECT MAX(SAL) AS MAX_CLERK_SALARY
FROM EMPLOYEE
WHERE JOB = 'CLERK';


-- Display the maximum salary being paid in department number 20
SELECT MAX(SAL) AS MAX_DEPT20_SALARY
FROM EMPLOYEE
WHERE DEPTNO = 20;

Explanation:
 Department 20 ke employees me se max salary find karta hai.

-- Display the minimum salary paid to any salesman
SELECT MIN(SAL) AS MIN_SALESMAN_SALARY
FROM EMPLOYEE
WHERE JOB = 'SALESMAN';



-- Display the average salary drawn by managers
SELECT AVG(SAL) AS AVG_MANAGER_SALARY
FROM EMPLOYEE
WHERE JOB = 'MANAGER';


-- Display the total salary drawn by analyst working in dept no 40
SELECT SUM(SAL) AS TOTAL_ANALYST_SALARY
FROM EMPLOYEE
WHERE JOB = 'ANALYST'
AND DEPTNO = 40;



-- Display the names of the employee in UPPERCASE
SELECT UPPER(ENAME) AS EMP_NAME
FROM EMPLOYEE;



-- Display the names of the employee in LOWERCASE
SELECT LOWER(ENAME) AS EMP_NAME
FROM EMPLOYEE;


-- Display the names of the employee in PROPER CASE
SELECT CONCAT(
       UPPER(SUBSTRING(ENAME,1,1)),
       LOWER(SUBSTRING(ENAME,2))
) AS EMP_NAME
FROM EMPLOYEE;



-- Display the length of your name using appropriate function
SELECT LENGTH('YOUR_NAME') AS NAME_LENGTH;



-- Display the length of all the employee names
SELECT ENAME, LENGTH(ENAME) AS NAME_LENGTH
FROM EMPLOYEE;
