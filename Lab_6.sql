--Lab_6 
--SQL Ser operators


--Question 1.
SELECT department_id
FROM employees MINUS
SELECT department_id
FROM employees
WHERE job_id = 'ST_CLERK'


--Question 2.
SELECT country_id,
       country_name
FROM countries MINUS
SELECT country_id,
       country_name
FROM countries c
JOIN locations l USING(country_id)
JOIN departments d USING(location_id)
WHERE department_id IS NOT NULL;


--Question 3.
SELECT DISTINCT job_id,
                department_id
FROM employees
WHERE department_id = 10
UNION ALL
SELECT DISTINCT job_id,
                department_id
FROM employees
WHERE department_id = 50
UNION ALL
SELECT DISTINCT job_id,
                department_id
FROM employees
WHERE department_id = 20;


--Question 4.
SELECT employee_id,
       job_id
FROM employees INTERSECT
SELECT employee_id,
       job_id
FROM job_history