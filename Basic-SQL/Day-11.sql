-- Day 11
-- Sorting & Limiting

-- Get the top 10 highest paid employees 

select * from employees ORDER BY salary DESC LIMIT 10;

-- Get the latest 5 hired employees

select * from employees ORDER BY hired_date DESC LIMIT 5;

-- Combined Distinct and Order By

select DISTINCT department from employees ORDER BY department;
