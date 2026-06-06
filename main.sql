CREATE TABLE employees (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

INSERT INTO employees VALUES
(1,'John','Smith','Sales',55000,'1995-03-12'),
(2,'Emma','Stone','Marketing',62000,'1998-06-21'),
(3,'David','Scott','Sales',48000,'1992-11-10'),
(4,'Sarah','Wilson','HR',45000,'2001-05-15'),
(5,'Michael','Stewart','Sales',70000,'1997-08-25'),
(6,'Olivia','Brown','IT',80000,'2020-01-10'),
(7,'James','Simmons','Sales',52000,'1999-09-18'),
(8,'Sophia','Taylor','Marketing',58000,'2018-04-30'),
(9,'Daniel','Sanders','Sales',61000,'1994-07-12'),
(10,'Ava','Johnson','IT',75000,'2021-12-05');

SELECT first_name, last_name FROM employees;

SELECT * FROM employees
WHERE department = 'Sales';

SELECT * FROM employees
WHERE department='Sales'
AND salary > 50000;

SELECT * FROM employees
WHERE department='IT'
OR department='HR';

SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 70000;

SELECT * FROM employees
WHERE last_name LIKE 'S%';

SELECT * FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
LIMIT 5;

SELECT * FROM employees
WHERE hire_date IS NULL;

SELECT * FROM employees
WHERE department='Sales'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND last_name LIKE 'S%';

SELECT
COUNT(*) AS total_filtered,
MIN(salary) AS min_salary,
MAX(hire_date) AS latest_hire
FROM employees
WHERE department='Sales'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND last_name LIKE 'S%';


