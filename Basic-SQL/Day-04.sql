-- Day 4
-- Topic : Distinct , Count , Where

-- Find Unique Values in a Column

select distinct Department from employees;

-- Count the number of not-null values in a column 

select count(salary) from employees;

-- Filter data using a WHERE clause

select * from employees where Department = 'Sales';
