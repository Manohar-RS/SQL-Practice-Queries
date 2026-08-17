-- Day 12

-- Orderd by a calculated field

select first_name , last_name , (salary * 0.1) AS bonus from employees ORDER BY bonus DESC;

-- Fetch Specific Range Of Rows ( eg: 11-20)  

select * from employees ORDER BY employee_id OFFSET 10 LIMIT 10;

-- Get the employee with the highest salary

select * from employees ORDER BY salary DESC LIMIT 1;

-- Get the second Highest salary

select DISTINCT salary from employees ORDER BY salary DESC LIMIT 1 OFFSET 1;
