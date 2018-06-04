--Lab_5 
--SQL Data manipulation

--Question 1.
CREATE TABLE employee_230748 
(id NUMBER(4) CONSTRAINT employee_230748_id_nn NOT NULL,
last_name VARCHAR2(25),
first_name VARCHAR2(25),
userid VARCHAR2(8),
salary NUMBER(9,2));

--Question 2.
DESC employee_230748

--Question 3.
INSERT INTO employee_230748
VALUES(1,
       'Patel',
       'Ralph',
       'rpatel',
       895);

--Question 4.
INSERT INTO employee_230748(id, last_name, first_name, userid, salary)
VALUES(2,
       'Dancs',
       'Betty',
       'bdancs',
       860);



--Update and delete data in the EMPLOYEE_NRINDEKSU table.
--Question 1.
UPDATE employee_xxx
SET first_name = 'Drexler'
WHERE id = 3

--Question 2.
UPDATE employee_xxx
SET salary = 1000
WHERE salary < 900

--Question 4.
DELETE
FROM employee_xxx
WHERE id = 2

--Question 7.
CREATE TABLE dept_xxx  (
id NUMBER(7)
name VARCHAR2(25)
);

--Question 8.
INSERT INTO dept_xxx
SELECT department_id,
       department_name
FROM DEPARTMENTS;