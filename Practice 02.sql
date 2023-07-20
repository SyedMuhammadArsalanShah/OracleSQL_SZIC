-- Question No 01
-- Answer is 
select
    last_name,
    salary
FROM
    hr.employees
where
    salary > 12000 

-- Question No 02
-- Answer is 

select
    last_name,
    department_id
FROM
    hr.employees
where
    employee_id = 176

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
    last_name ;