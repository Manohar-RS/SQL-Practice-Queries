-- Day 09
-- String Operations ( ILIKE , LIKE )

-- Find rows where a string contains substring (Case insensitive)

select * from employees where first_name LIKE '%jo%';

-- find rows where a string start with specific pattern

select * from employees where last_name LIKE 'Smi%';

-- find rows where a string ends with specific pattern

select * from employees where email LIKE '%@gmail.com';

-- Find rows with a pattern at a specific position

select * from employees where first_name '_a%';

