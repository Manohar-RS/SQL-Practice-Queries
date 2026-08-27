-- Day 22
-- Subquery ( Exists , Non-exists)

-- Using EXISTS of check exixtance of rows

select department_name from department d where 
EXISTS ( select 1 from employees where department_id = d.department_id AND salary > 1000000 ) ;

-- Using NOT EXISTS for find non-matching rows

select department_name from department d where 
NOT EXISTS ( select 1 from employees where department_id = d.department_id ) ;

-- Find departments with at least one employees

select * from departments where department_id 
IN ( select DISTINCT department_id from employees ) ;

-- Find empoyees who have placed on order

select * from employees e where 
EXISTS ( select 1 from orders o where o.emloyee_id = e.employee_id ) ;

-- Find the total salary for each department using subquery

select department_name , ( select SUM(salary) from employees where department_id = d.department_id ) 
AS total_department_salary from departments d ;
