-- Day 10 
-- Sorting And Limiting

-- Sort Results in Ascending Order

select * from employees ORDER BY last_name ASC;

-- Select Results in Desccending order

select * from employees ORDER BY salary DESC;

-- Sort Multiple Column

select * from employees ORDER BY department ASC , Salary DESC;
