-- Day 13
-- Aggregation And Grouping

-- Count rows for each group

select department , COUNT(*) from employees GROUP BY department;

-- Calculate the average salary per department

select department , AVG(salary) from employees GROUP BY department;

-- Find the total salary expenditure in each department

select department , SUM(salary) from employees GROUP BY department;

-- Find the maximum salary  in each department

select deparment , MAX(salary) from employees GROUP BY department;

-- Find the minimum salary in each department

select department , MIN(salary) from employees GROUP BY department;
