-- Question No 01
-- Answer is
SELECT
       SYSDATE "DATE"
FROM
       DUAL;

-- Question No 02 AND 03
-- Answer is
SELECT
       EMPLOYEE_ID,
       LAST_NAME,
       SALARY,
       round(salary * 1.15, 0) "New Salary "
FROM
       HR.EMPLOYEES;

-- Question No 04
-- Answer is
SELECT
       EMPLOYEE_ID,
       LAST_NAME,
       SALARY,
       round(salary * 1.15, 0) "New Salary ",
       round(salary * 1.15, 0) - salary "Increase"
FROM
       HR.EMPLOYEES;

-- Question No 05
-- Answer is
SELECT
       INITCAP(LAST_NAME) "NAME",
       LENGTH(LAST_NAME) "LENGTH"
FROM
       HR.EMPLOYEES
WHERE
       LAST_NAME LIKE 'A%'
       OR LAST_NAME LIKE 'J%'
       OR LAST_NAME LIKE 'M%'
ORDER BY
       LAST_NAME;

-- Question No 06
-- Answer is
SELECT
       last_name,
       Round(MONTHS_BETWEEN (sysdate, hire_date)) "Worked Month"
FROM
       HR.EMPLOYEES
ORDER BY
       MONTHS_BETWEEN(SYSDATE, hire_date);

-- Question No 07
-- Answer is
SELECT
       last_name || ' earns ' || TO_CHAR(salary, 'fm$99,999.00') || ' monthly but wants ' || TO_CHAR(salary * 3, 'fm$99,999.00') || '.' "Dream Salaries"
FROM
       hr.employees;

-- Question No 08
-- Answer is
SELECT
       last_name,
       LPAD(salary, 15, '$') SALARY
FROM
       hr.employees;

-- Question No 09
-- Answer is
select
       last_name,
       hire_date,
       to_char(
              next_day(Add_months(hire_date, 6), 'Monday'),
              'fmDay, "The" Ddspth "of" Month, YYYY'
       ) "review"
from
       hr.employees;

-- Question No 10
-- Answer is
SELECT
       last_name,
       hire_date,
       TO_CHAR(hire_date, 'DAY') DAY
FROM
       hr.employees
ORDER BY
       TO_CHAR(hire_date -1, 'd');

-- Question No 11
-- Answer is
SELECT
       last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission') COMM
FROM
       hr.employees;

-- Question No 12
-- Answer is
SELECT
       last_name || rpad('*', salary / 1000 + 1, '*') EMPLOYEES_AND_THEIR_SALARIES
FROM
       hr.employees
ORDER BY
       salary DESC;

-- Question No 13
-- Answer is
select
       job_id,
       decode(
              job_id,
              'ST_CLERK',
              'E',
              'SA_REP',
              'D',
              'IT_PROG',
              'C',
              'ST_MAN',
              'B',
              'AD_PRES',
              'A',
              0
       ) GRADE
FROM
       HR.EMPLOYEES;

-- Question No 14
-- Answer is
SELECT
       job_id,
       CASE
              job_id
              WHEN 'ST_CLERK' THEN 'E'
              WHEN 'SA_REP' THEN 'D'
              WHEN 'IT_PROG' THEN 'C'
              WHEN 'ST_MAN' THEN 'B'
              WHEN 'AD_PRES' THEN 'A'
              ELSE '0'
       END AS GRADE
FROM
       HR.EMPLOYEES;