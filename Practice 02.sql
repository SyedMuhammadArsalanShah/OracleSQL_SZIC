-- Question No 01
-- Answer is 
select
    last_name,
    salary
FROM
    hr.employees
where
    salary > 12000;

-- Question No 02
-- Answer is 
select
    last_name,
    department_id
FROM
    hr.employees
where
    employee_id = 176;

-- Question No 03
-- Answer is 
SELECT
    last_name,
    salary
FROM
    hr.employees
WHERE
    salary NOT BETWEEN 5000
    AND 12000;

-- Question No 04
-- Answer is 
SELECT
    last_name,
    job_id,
    hire_date
FROM
    hr.employees
WHERE
    hire_date BETWEEN '20-Feb-1998'
    AND '01-May-1998'
ORDER BY
    hire_date;

-- Question No 05
-- Answer is 
SELECT
    last_name,
    department_id
FROM
    hr.employees
WHERE
    department_id IN (20, 50)
ORDER BY
    last_name;

-- Question No 06
-- Answer is 
SELECT
    last_name,
    salary,
    department_id
FROM
    hr.employees
WHERE
    salary between 5000
    and 12000
    and department_id IN (20, 50);

-- Question No 07
-- Answer is 
SELECT
    last_name,
    hire_date
FROM
    hr.employees
WHERE
    hire_date LIKE '%94';

-- Question No 08
-- Answer is 
SELECT
    last_name,
    job_id
FROM
    hr.employees
WHERE
    manager_id is null;

-- Question No 09
-- Answer is 
SELECT
    last_name,
    salary,
    COMMISSION_PCT
FROM
    hr.employees
WHERE
    COMMISSION_PCT is not null
ORDER BY
    salary desc,
    COMMISSION_PCT desc;

-- Question No 10
-- Answer is 
SELECT
    last_name
FROM
    hr.employees
WHERE
    last_name LIKE '__a%';

-- Question No 11
-- Answer is 
SELECT
    last_name
FROM
    hr.employees
WHERE
    last_name LIKE '%a%'
    and last_name LIKE '%e%';

-- Question No 12
-- Answer is 
SELECT
    last_name,
    job_id,
    salary
FROM
    hr.employees
WHERE
    job_id IN ('SA_REP', 'ST_CLERK')
    AND salary NOT IN (2500, 3500, 7000);

-- Question No 13
-- Answer is 
SELECT
    last_name as "Employee",
    salary as "Monthly Salary",
    COMMISSION_PCT
FROM
    hr.employees
WHERE
    COMMISSION_PCT =.2;