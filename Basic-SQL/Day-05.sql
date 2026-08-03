-- Day 5
-- AND / OR Conditions

-- Filter with multiple conditions using AND

select * from Employees where Department = 'Sales' AND Salary > 60000;

-- Filter with multiple conditions using AND

select * from Employees where Department = 'Sales' OR Department = 'Marketing';
