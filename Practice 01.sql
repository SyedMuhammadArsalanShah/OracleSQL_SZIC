--Question No 02
-- Answer is False

--Question No 03
-- Answer is True

--Question No 04
-- Answer is True

--Question No 05
-- Answer 

/*
 Four Coding Error are
 
 SELECT employee_id, last_name
 sal x 12 ANNUAL SALARY
 FROM employees;
 
 1= Comma (,) missing after  last_name
 2= sal is not the Column 
 3= multiplication opr is * 
 4= alias column name is not in double quoted""
 
 
 */

-- Question No 06
-- Answer is 

desc hr.departments
select
    *
from
    hr.departments 

-- Question No 07
-- Answer is 

    DESC employees
SELECT
    employee_id,
    last_name,
    job_id,
    hire_date "Start Date"
FROM
    hr.employees;

-- Question No 08
-- Answer is 

SELECT
    employee_id,
    last_name,
    job_id,
    hire_date
FROM
    hr.employees;

-- Question No 09
-- Answer is 

select
    distinct job_id
from
    hr.employees

 -- Question No 10
 -- Answer is 

SELECT
    employee_id "Emp #",
    last_name "Employee",
    job_id "Job",
    hire_date "Hire Date"
FROM
    hr.employees
    
-- Question No 11
-- Answer is 

select
    last_name || ',' || job_id " Employee and Title"
FROM
    hr.employees 

-- Question No 12
-- Answer is 

SELECT
    employee_id || ',' || first_name || ',' || last_name || ',' || email || ',' || phone_number || ',' || job_id || ',' || manager_id || ',' || hire_date || ',' || salary || ',' || commission_pct || ',' || department_id "THE_OUTPUT"
FROM
    hr.employees;