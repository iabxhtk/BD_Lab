--Lab_4 
--SQL Subqueries

--Question 1.
SELECT last_name,
       hire_date
FROM employees
WHERE department_id = ANY
    (SELECT department_id
     FROM employees
     WHERE last_name = 'Zlotkey')
  AND last_name <> 'Zlotkey')
  
--Question 2.
SELECT employee_id,
       last_name
FROM employees
WHERE salary >
    (SELECT AVG(salary)
     FROM employees)
	 
--Question 3.
SELECT employee_id,
       last_name
FROM employees
WHERE department_id = ANY
    (SELECT department_id
     FROM employees
     WHERE last_name LIKE '%u%')
	 
--Question 4.
SELECT last_name,
       department_id,
       job_id
FROM employees
WHERE department_id = ANY
    (SELECT department_id
     FROM departments
     WHERE location_id = 1700)
	 
--Question 5.
SELECT last_name,
       salary
FROM employees
WHERE manager_id = ANY
    (SELECT employee_id
     FROM employees
     WHERE last_name = 'King')
	 
--Question 6.
SELECT department_id,
       last_name,
       job_id
FROM employees
WHERE department_id =
    (SELECT department_id
     FROM departments
     WHERE department_name = 'Executive')
	 
--Question 7.
SELECT *
FROM employees
WHERE salary >
    (SELECT salary
     FROM employees
     WHERE last_name = 'Abel')
	 
--Question 8.
SELECT *
FROM employees
WHERE job_id =
    (SELECT job_id
     FROM employees
     WHERE employee_id = 141)
	 
--Question 9.
SELECT last_name,
       job_id,
       salary
FROM employees
WHERE salary =
    (SELECT MIN(salary)
     FROM employees)
	 
--Question 10.
SELECT department_id,
       MIN(salary)
FROM employees e
GROUP BY department_id
HAVING MIN(salary) >
  (SELECT MIN(salary)
   FROM employees
   WHERE department_id = 50)
   
--Question 11.
SELECT last_name,
       salary,
       department_id
FROM employees e
WHERE salary =
    (SELECT MIN(salary)
     FROM employees
     WHERE department_id = e.department_id)   