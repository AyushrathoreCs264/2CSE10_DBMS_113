-- Employees who joined before 30-Jun-1980 OR after 31-Dec-1981
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE < '1980-06-30'
   OR HIREDATE > '1981-12-31';



-- Employees whose second alphabet is A
SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '_A%';




-- Employees whose name is exactly 5 characters long
SELECT ENAME
FROM EMPLOYEE
WHERE LENGTH(ENAME) = 5;


-- Employees whose second alphabet is A
-- (same logic, written again for practice)
SELECT ENAME
FROM EMPLOYEE
WHERE SUBSTRING(ENAME,2,1) = 'A';



-- Employees not working as salesman, clerk or analyst
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE JOB NOT IN ('SALESMAN','CLERK','ANALYST');


-- Employee name with annual salary, highest salary first
SELECT ENAME, (SAL * 12) AS ANNUAL_SALARY
FROM EMPLOYEE
ORDER BY SAL DESC;




-- Display name, sal, hra, pf, da, totalsal
-- Conditions:
-- HRA = 15% of SAL


-- DA = 10% of SAL


-- PF = 5% of SAL


-- TOTALSAL = (SAL + HRA + DA) − PF


-- Order by TOTALSAL


SELECT ENAME,
       SAL,
       (SAL * 0.15) AS HRA,
       (SAL * 0.10) AS DA,
       (SAL * 0.05) AS PF,
       (SAL + (SAL*0.15) + (SAL*0.10) - (SAL*0.05)) AS TOTALSAL
FROM EMPLOYEE
ORDER BY TOTALSAL;


-- Update salary by 10% increment for employees not eligible for commission
UPDATE EMPLOYEE
SET SAL = SAL + (SAL * 0.10)
WHERE COMM IS NULL OR COMM = 0;


--  Employees whose salary is more than 3000 after 20% increment
SELECT ENAME,
       SAL,
       (SAL + (SAL * 0.20)) AS UPDATED_SALARY
FROM EMPLOYEE
WHERE (SAL + (SAL * 0.20)) > 3000;


--  Employees whose salary contains at least 3 digits
SELECT ENAME, SAL
FROM EMPLOYEE
WHERE LENGTH(SAL) >= 3;
