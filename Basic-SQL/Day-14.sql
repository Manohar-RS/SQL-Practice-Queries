-- Day 14
-- Aggregation and Grouping

-- Filtered Group using HAVING

select department ,  AVG(salary) from employees GROUP BY deparment HAVING AVG(salary) > 60000;

-- COUNT employees in department with more than 5 employees

select department , COUNT(*) from employees Group BY department HAVING COUNT(*) > 5;

-- Filterd and then group

select department , AVG(salary) from employees where hire_date > '2022-01-01' GROUP BY department;

-- Group by multipe columns

select department , job_title , AVG(salary) from employees GROUP BY department , job_title;

-- Find the first and last name of the highest earner in each department

select department , MAX(salary) from employees Group BY department;

