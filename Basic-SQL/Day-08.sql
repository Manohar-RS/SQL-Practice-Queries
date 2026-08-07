-- Day 08
-- Filtering BETWEEN , NULL , NOT NULL Values

-- Filter values with in a range using BETWEEN

select * from employees where salary BETWEEN 50000 AND 70000;

-- Find rows with NULL values 

select * from employees where manager_id IS NULL;

-- Find rows with NOT NULL values

select * from employees where manager_id IS NOT NULL;
