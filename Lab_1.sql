--Lab_1
--SQL language basics.

--Question 2. 
--The following SELECT statement executes successfully:
	SELECT * 
	FROM jobs --True
	
	
--Question 4.
--a) Show the structure of the DEPARTMENTS table.
	DESC departments
--b)Select all data from the table
	SELECT * 
	FROM departments
	
	
--Question 5.
--a) Show the structure of the EMPLOYEES table. 
	DESC EMPLOYEES
--b) Create a query to display the last name, job code, hire date, and employee number for each employee, with employee number appearing first.
	SELECT  employee_id, last_name, job_id, hire_date  
	FROM EMPLOYEES

	
--Question 7.
--Create a query to display unique job codes from the EMPLOYEES table.
	SELECT   DISTINCT job_id FROM EMPLOYEES
	
	
--Question 10.
--Show last name and salary for each employee concatenated with a string
	SELECT  last_name || ': 1 Month salary = ' || salary  
	FROM EMPLOYEES
	
	
--Question 12.
--Create a query to display the employee last name and department number for employee number 176.
	SELECT last_name,
		   department_id
	FROM EMPLOYEES
	WHERE employee_id = 176

	
--Question 14.
-- Display the employee last name, job ID, and start date of employees hired between February 20, 1998, and May 1, 1998. Order the query in ascending order by start date.
	SELECT last_name,
		   job_id,
		   hire_date
	FROM EMPLOYEES
	WHERE hire_date BETWEEN '20-FEB-1998' AND '01-MAY-1998'
	ORDER BY hire_date ASC
	
	
--Question 16.
--list the last name and salary of employees who earn between $5,000 and$12,000, and are in department 20 or 50. 
--Label the columns Employee and Monthly Salary, respectively
	SELECT last_name AS "Employee",
		   salary AS "Monthly Salary"
	FROM EMPLOYEES
	WHERE salary >= 5000
	  AND salary <= 12000
	  AND (department_id = 20
		   OR department_id = 50)	
		   
		   
--Question 18.
--Display the last name and job title of all employees who do not have a manager.
	SELECT last_name,

	  (SELECT job_title
	   FROM JOBS
	   WHERE job_id = EMPLOYEES.job_id) AS "Job title"
	FROM EMPLOYEES
	WHERE manager_id IS NULL

	
--Question 20.
--Display the last names of all employees where the third letter of the name is an 'a'.
	SELECT last_name
	FROM EMPLOYEES
	WHERE last_name LIKE '__a%'

--Question 22.
--Display the last name, job, and salary for all employees whose job is sales representative or stock clerk and whose salary is not equal to $2,500, $3,500, or $7,000.
	SELECT last_name,
		   job_id,
		   salary
	FROM EMPLOYEES
	WHERE (job_id = 'ST_CLERK'
		   OR job_id = 'SA_REP')
	  AND salary NOT IN(2500,
						3500,
						7500)