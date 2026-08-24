-- Day 19 
-- Joins

-- Find the total salary of each department , including departmens with no employees

select d.department_name , SUM( e.salary ) AS total_salary 
from departments d 
LEFT JOIN employees e 
ON d.department_id = e.department_id 
GROUP BY d.department_name ;

-- Find the number of employees in each department , including those with zero

select d.department , COUNT( e.employees ) AS num_employees 
from departments d
LEFT JOIN employees e 
ON d.department_id = e.department_id 
GROUP BY d.department_name ;

-- Join Based on multiple conditions

select o.* , c.customer_name 
from orders o 
JOIN customers c 
ON o.customer_id = c.customer_id 
AND o.order_date = c.last_purchased_date ;

-- Find employees and their managers, and their managers departments

select e.first_name , m.first_name
AS m.manager_name , d.department_name 
from employees e
JOIN employees m 
ON e.manager_id = m.employee_id 
JOIN departments d 
ON m.department_id = d..department_id ;
