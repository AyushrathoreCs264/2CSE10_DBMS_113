-- Display empno, ename, deptno but show department name instead of deptno (using DECODE)
SELECT EMPNO,
       ENAME,
       CASE DEPTNO
           WHEN 10 THEN 'RESEARCH'
           WHEN 20 THEN 'ACCOUNTING'
           WHEN 30 THEN 'SALES'
           WHEN 40 THEN 'OPERATIONS'
           ELSE 'UNKNOWN'
       END AS DEPARTMENT_NAME
FROM EMPLOYEE;


-- Display your age in days
SELECT DATEDIFF(CURDATE(), '2000-01-01') AS AGE_IN_DAYS;



-- Display your age in months
SELECT TIMESTAMPDIFF(MONTH, '2000-01-01', CURDATE()) AS AGE_IN_MONTHS;



-- Display current date as
-- 15th August Friday Nineteen Ninety-Seven
SELECT DATE_FORMAT(CURDATE(),
'%D %M %W %Y') AS FORMATTED_DATE;



-- Display following output for each employee
-- (Name + joining date in sentence form)
SELECT CONCAT(
       ENAME,' has joined the company on ',
       DATE_FORMAT(HIREDATE,'%W %D %M %Y')
) AS EMP_INFO
FROM EMPLOYEE;



-- Scott has joined the company on Wednesday 13th August Nineteen Ninety
SELECT CONCAT(
       ENAME,' has joined the company on ',
       DATE_FORMAT(HIREDATE,'%W %D %M %Y')
) AS OUTPUT
FROM EMPLOYEE
WHERE ENAME = 'SCOTT';


-- Find the date for nearest Saturday after current date
SELECT DATE_ADD(
       CURDATE(),
       INTERVAL (6 - DAYOFWEEK(CURDATE())) DAY
) AS NEXT_SATURDAY;


-- Display current time
SELECT CURTIME() AS CURRENTTIME;


-- Display the date three months before current date
SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AS DATE_BEFORE_3_MONTHS;



-- Display employees who joined in December
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE MONTH(HIREDATE) = 12;



-- Employees whose
-- first 2 chars of hiredate = last 2 chars of salary
SELECT ENAME, HIREDATE, SAL
FROM EMPLOYEE
WHERE LEFT(YEAR(HIREDATE),2) = RIGHT(SAL,2);


-- Employees whose 10% salary = year of joining
SELECT ENAME, SAL, HIREDATE
FROM EMPLOYEE
WHERE (SAL * 0.10) = YEAR(HIREDATE);



-- Employees who joined before 15th of the month
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE DAY(HIREDATE) < 15;



-- Employees who joined before 15th day of month
-- (same logic – exam repetition type)
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE DAY(HIREDATE) <= 14;


-- Employees whose joining date is available in deptno
SELECT ENAME, HIREDATE, DEPTNO
FROM EMPLOYEE
WHERE DEPTNO IS NOT NULL;
