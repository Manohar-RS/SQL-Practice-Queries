-- Day 25
-- Window functions


-- Display each employee along with the average salary of their department.

SELECT
    name,
    department,
    salary,
    AVG(salary) OVER(
        PARTITION BY department
    ) AS department_avg_salary
FROM employees;


--ROW_NUMBRS()
-- Assign a unique row number to employees based on salary from highest to lowest.

SELECT
    name,
    salary,
    ROW_NUMBER() OVER(
        ORDER BY salary DESC
    ) AS row_number
FROM employees;


-- RANK()
--Rank employees based on salary within each department. 

SELECT
    name,
    department,
    salary,
    RANK() OVER(
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;


-- DENSE_RANK()
-- Rank employees using DENSE_RANK() within each department.

SELECT
    name,
    department,
    salary,
    DENSE_RANK() OVER(
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;


-- LAG()
--  Display each employee's salary along with the previous salary.

SELECT
    name,
    salary,
    LAG(salary) OVER(
        ORDER BY salary
    ) AS previous_salary
FROM employees;


-- LEAD()
-- Display each employee's salary along with the next salary.

SELECT
    name,
    salary,
    LEAD(salary) OVER(
        ORDER BY salary
    ) AS next_salary
FROM employees;


-- 
