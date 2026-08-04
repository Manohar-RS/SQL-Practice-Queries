-- Day 5
-- NOT / Combine AND & OR conditions

-- Combine AND & OR with parentheses for complex logic

select * from Employees where ( Department = 'Sales' OR Department = 'Marketing') AND Salary > 70000;

-- Exclude a values using NOT

select * from Employees where NOT Department = 'IT';
