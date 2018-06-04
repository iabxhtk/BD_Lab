--Lab_02
--Aggregate SQL functions.

--Question 1.
--Group functions work across many rows to produce one result per group.
	TRUE
	
	
--Question 2.
--Group functions include nulls in calculations.
	FALSE
	
	
--Question 3.
--The WHERE clause restricts rows prior to inclusion in a group calculation.
	TRUE
	
	
--Question 4.
--Display the highest, lowest, sum, and average salary of all employees. Label the columnsMaximum,Minimum, Sum, Average, respectively. 
--Round your results to the nearest whole number. 
	SELECT MAX(salary) AS Maximum
	FROM employees
	SELECT MIN(salary) AS Minimum
	FROM employees
	SELECT Sum(salary) AS SUM
	FROM employees
	SELECT ROUND(AVG(salary)) AS Average
	FROM employees
	
	
--Question 6.
--Write a query to display the number of people with the same job.
	SELECT COUNT(DISTINCT(salary)) AS COUNT
	FROM employees


--Question 8.
--Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE.
	SELECT (MAX(salary) - MIN(salary)) AS Difference
	FROM employees
	
	
--Question 9.
--Display the manager number and the salary of the lowest paid employee for that manager.Exclude salary is less than $6,000. 
--Sort the output in descending order of salary.
	SELECT MANAGER_ID,
		   MIN(salary)
	FROM employees
	WHERE MANAGER_ID IS NOT NULL
	GROUP BY MANAGER_ID
	HAVING MIN(salary) > 6000
	ORDER BY MIN(salary) DESC
	
	
--Question 13.
--Displays the number of employees in department 50.
	SELECT COUNT(*) AS "Department 50 count"
	FROM employees
	WHERE DEPARTMENT_ID = 50
	
	
--Question 16.
--Display the number of distinct department values in the EMPLOYEES table.
	SELECT COUNT(DISTINCT(DEPARTMENT_ID)) AS "Department count"
	FROM employees
	
	
--Question 19.
--Display of average salaries of those departments that have an average salary greater than $8,000
	SELECT DEPARTMENT_ID,
		   AVG(salary)
	FROM employees
	GROUP BY DEPARTMENT_ID
	HAVING AVG(salary) >= 8000