-- Day 24
-- SQL Conditional Functions 

-- Display employee names and classify their salary as High, Medium, or Low. 
-- Conditions:
-- Salary >= 70000 → High
-- Salary >= 50000 → Medium
-- Otherwise → Low

SELECT name, salary,
CASE WHEN salary >= 70000 THEN 'High'
WHEN salary >= 50000 THEN 'Medium'
ELSE 'Low' END AS salary_category
FROM employees;

-- Categorize employees based on their department.
-- Conditions:
-- IT → Technology
-- HR → Human Resources
-- Sales → Business

SELECT name, department,
CASE WHEN department = 'IT' THEN 'Technology'
WHEN department = 'HR' THEN 'Human Resources'
WHEN department = 'Sales' THEN 'Business'
ELSE 'Other' END AS department_group
FROM employees;

-- Display whether an employee is eligible for a bonus.
-- Condition:
-- Salary >= 60000 → Eligible
-- Otherwise → Not Eligible

SELECT name, salary,
CASE WHEN salary >= 60000 THEN 'Eligible'
ELSE 'Not Eligible'
END AS bonus_status
FROM employees;


-- COALESCE Function

-- Display salary, but show 0 if salary is NULL.

SELECT name, COALESCE(salary, 0) AS salary FROM employees;

-- Display the manager ID. If it is NULL, display "No Manager".

SELECT name, COALESCE(CAST(manager_id AS CHAR), 'No Manager') AS manager FROM employees;

